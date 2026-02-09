
import fs from 'fs';
import readline from 'readline';

const INPUT_FILE = 'backup.sql';
const OUTPUT_FILE = 'mysql_dump_v2.sql';
const LOG_FILE = 'conversion_log.txt';

const stream = fs.createWriteStream(OUTPUT_FILE, { flags: 'w' });
fs.writeFileSync(LOG_FILE, ''); // Clear log

function log(msg) {
    fs.appendFileSync(LOG_FILE, msg + '\n');
    console.log(msg);
}

async function convert() {
    log(`Converting ${INPUT_FILE} to ${OUTPUT_FILE} (v2 with backticks)...`);

    stream.write(`-- MySQL dump converted from PostgreSQL
SET FOREIGN_KEY_CHECKS=0;
SET SQL_MODE="NO_AUTO_VALUE_ON_ZERO";
SET time_zone = "+00:00";
\n`);

    const fileStream = fs.createReadStream(INPUT_FILE);
    const rl = readline.createInterface({
        input: fileStream,
        crlfDelay: Infinity
    });

    let inTable = false;
    let inCopy = false;
    let currentTable = '';
    let tableBody = '';
    let copyColumns = [];
    const columnTypes = {}; // table: { col: type }

    for await (const line of rl) {
        const trimmed = line.trim();

        // 1. Handle CREATE TABLE
        if (trimmed.startsWith('CREATE TABLE public.')) {
            inTable = true;
            const match = trimmed.match(/CREATE TABLE public\.([a-z0-9_]+) \(/);
            if (match) {
                currentTable = match[1];
                tableBody = '';
                columnTypes[currentTable] = {};
                log(`Parsing table schema: ${currentTable}`);
            }
            continue;
        }

        if (inTable) {
            if (trimmed.startsWith(');')) {
                inTable = false;
                const createSql = convertCreateTable(currentTable, tableBody, columnTypes);
                stream.write(createSql + '\n\n');
                currentTable = '';
            } else {
                tableBody += line + '\n';
            }
            continue;
        }

        // 2. Handle COPY (Data)
        if (line.startsWith('COPY public.')) {
            const match = line.match(/COPY public\.([a-z0-9_]+) \((.+)\) FROM stdin;/);
            if (match) {
                inCopy = true;
                currentTable = match[1];
                copyColumns = match[2].split(',').map(s => s.trim());
                log(`Processing data for: ${currentTable}`);
                stream.write(`-- Data for ${currentTable}\n`);
            }
            continue;
        }

        if (inCopy) {
            if (line === '\\.') {
                inCopy = false;
                currentTable = '';
                copyColumns = [];
                stream.write('\n');
            } else {
                // Convert row to INSERT
                const insertSql = convertCopyRow(currentTable, copyColumns, line, columnTypes);
                if (insertSql) {
                    stream.write(insertSql + ';\n');
                }
            }
            continue;
        }
    }

    stream.write('SET FOREIGN_KEY_CHECKS=1;\n');
    stream.end();
    log('Conversion complete!');
}

function convertCreateTable(tableName, body, typeMap) {
    const lines = body.split('\n').filter(l => l.trim() !== '');
    const mysqlLines = lines.map(l => {
        let clean = l.trim();
        if (clean.endsWith(',')) clean = clean.slice(0, -1);

        const parts = clean.split(/\s+/);
        const colName = parts[0];
        const rest = clean.substring(colName.length).trim();

        let mysqlType = rest;
        let rawType = rest.split(' ')[0].toLowerCase(); // capture raw pg type for map

        // Map types for data conversion later
        if (rawType.includes('boolean')) typeMap[tableName][colName] = 'boolean';
        else if (rawType.includes('json')) typeMap[tableName][colName] = 'json';

        // Type Mappings - Order Matters!
        // 1. Arrays first
        mysqlType = mysqlType.replace(/text\[\]/g, 'JSON');
        mysqlType = mysqlType.replace(/character varying\[\]/g, 'JSON');

        // 2. Standard types
        mysqlType = mysqlType.replace(/character varying/g, 'VARCHAR(255)');
        mysqlType = mysqlType.replace(/text/g, 'LONGTEXT');
        mysqlType = mysqlType.replace(/timestamp without time zone/g, 'DATETIME');
        mysqlType = mysqlType.replace(/timestamp\(\d+\) without time zone/g, 'DATETIME');
        mysqlType = mysqlType.replace(/timestamp with time zone/g, 'DATETIME');
        mysqlType = mysqlType.replace(/jsonb/g, 'JSON');
        mysqlType = mysqlType.replace(/boolean/g, 'TINYINT(1)');
        mysqlType = mysqlType.replace(/numeric\(/g, 'DECIMAL(');
        mysqlType = mysqlType.replace(/integer/g, 'INT');

        // 3. Defaults & Constraints
        mysqlType = mysqlType.replace(/DEFAULT gen_random_uuid\(\)/g, '');
        mysqlType = mysqlType.replace(/DEFAULT now\(\)/g, 'DEFAULT CURRENT_TIMESTAMP');
        mysqlType = mysqlType.replace(/DEFAULT \(CURRENT_DATE\)/g, "DEFAULT CURRENT_TIMESTAMP");

        // 4. Remove Postgres Casting (::type) - CRITICAL FIX
        mysqlType = mysqlType.replace(/::[a-zA-Z0-9_\[\]]+/g, "");

        mysqlType = mysqlType.replace(/true/g, '1');
        mysqlType = mysqlType.replace(/false/g, '0');

        // Fix ID primary keys
        if ((colName === 'id' || colName.endsWith('_id')) && mysqlType.includes('VARCHAR(255)')) {
            mysqlType = mysqlType.replace('VARCHAR(255)', 'VARCHAR(36)');
        }

        if (colName === 'id' && !mysqlType.includes('PRIMARY KEY')) {
            mysqlType += ' PRIMARY KEY';
        }

        return `  \`${colName}\` ${mysqlType}`;
    });

    return `DROP TABLE IF EXISTS \`${tableName}\`;\nCREATE TABLE \`${tableName}\` (\n${mysqlLines.join(',\n')}\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4;`;
}

function convertCopyRow(table, columns, line, typeMap) {
    if (!line.trim()) return null;

    const vals = line.split('\t');
    const escapedVals = vals.map((val, idx) => {
        if (val === '\\N') return 'NULL';

        const colName = columns[idx];
        const type = typeMap[table] ? typeMap[table][colName] : null;

        // Handle Booleans
        if (type === 'boolean') {
            if (val === 't') return '1';
            if (val === 'f') return '0';
        }

        // Simple SQL escaping
        let safe = val.replace(/\\/g, '\\\\').replace(/'/g, "\\'");
        return `'${safe}'`;
    });

    const escapedCols = columns.map(c => `\`${c}\``).join(',');
    return `INSERT INTO \`${table}\` (${escapedCols}) VALUES (${escapedVals.join(',')})`;
}

convert();
