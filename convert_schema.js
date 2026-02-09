
import fs from 'fs';
import readline from 'readline';
import mysql from 'mysql2/promise';
import 'dotenv/config';

async function convertAndCreate() {
    const connection = await mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'auditops',
        multipleStatements: true
    });

    const logFile = 'schema_log.txt';
    // Clear log file at the start
    fs.writeFileSync(logFile, '');
    const log = (msg) => {
        fs.appendFileSync(logFile, msg + '\n');
        console.log(msg);
    };

    const fileStream = fs.createReadStream('backup.sql');
    const rl = readline.createInterface({
        input: fileStream,
        crlfDelay: Infinity
    });

    let inTable = false;
    let currentTable = '';
    let tableBody = '';

    for await (const line of rl) {
        const trimmed = line.trim();

        if (trimmed.startsWith('CREATE TABLE public.')) {
            inTable = true;
            const match = trimmed.match(/CREATE TABLE public\.([a-z0-9_]+) \(/);
            if (match) {
                currentTable = match[1];
                tableBody = '';
                log(`Found table: ${currentTable}`);
            }
        } else if (inTable) {
            if (trimmed.startsWith(');')) {
                inTable = false;
                await createTable(connection, currentTable, tableBody, log);
            } else {
                tableBody += line + '\n';
            }
        }
    }

    await connection.end();
    log('Schema conversion complete.');
    process.exit(0);
}

async function createTable(conn, tableName, body, log) {
    // Transpile Postgres body to MySQL
    // Remove "public." references
    // Convert types

    const lines = body.split('\n').filter(l => l.trim() !== '');
    const mysqlLines = lines.map(l => {
        let clean = l.trim();
        if (clean.endsWith(',')) clean = clean.slice(0, -1);

        const parts = clean.split(/\s+/);
        const colName = parts[0];
        const rest = clean.substring(colName.length).trim();

        let mysqlType = rest;

        // Type Mappings
        mysqlType = mysqlType.replace(/character varying/g, 'VARCHAR(255)'); // Default to 255 for compatibility
        mysqlType = mysqlType.replace(/text/g, 'LONGTEXT'); // Postgres text is unlimited
        mysqlType = mysqlType.replace(/timestamp without time zone/g, 'DATETIME');
        mysqlType = mysqlType.replace(/timestamp with time zone/g, 'DATETIME');
        mysqlType = mysqlType.replace(/jsonb/g, 'JSON');
        mysqlType = mysqlType.replace(/boolean/g, 'TINYINT(1)');
        mysqlType = mysqlType.replace(/numeric\(/g, 'DECIMAL(');
        mysqlType = mysqlType.replace(/integer/g, 'INT');

        // Defaults and Constraints
        mysqlType = mysqlType.replace(/DEFAULT gen_random_uuid\(\)/g, ''); // Remove UUID default (cannot polyfill easily in MySQL < 8 or without triggers)
        mysqlType = mysqlType.replace(/DEFAULT now\(\)/g, 'DEFAULT CURRENT_TIMESTAMP');
        mysqlType = mysqlType.replace(/DEFAULT 'daily'::text/g, "DEFAULT 'daily'");
        mysqlType = mysqlType.replace(/DEFAULT 'active'::text/g, "DEFAULT 'active'");
        mysqlType = mysqlType.replace(/DEFAULT 'pending'::text/g, "DEFAULT 'pending'");
        mysqlType = mysqlType.replace(/DEFAULT 'open'::text/g, "DEFAULT 'open'");
        mysqlType = mysqlType.replace(/DEFAULT 'draft'::text/g, "DEFAULT 'draft'");
        mysqlType = mysqlType.replace(/::text/g, ""); // Remove casting
        mysqlType = mysqlType.replace(/text\[\]/g, 'JSON'); // Arrays to JSON

        // Fix ID primary keys that were "varying"
        if (colName === 'id' || colName.endsWith('_id')) {
            if (mysqlType.includes('VARCHAR(255)')) {
                mysqlType = mysqlType.replace('VARCHAR(255)', 'VARCHAR(36)');
            }
        }

        // PRIMARY KEY definition
        if (colName === 'id' && !mysqlType.includes('PRIMARY KEY')) {
            mysqlType += ' PRIMARY KEY';
        }

        return `  ${colName} ${mysqlType}`;
    });

    const createSql = `CREATE TABLE IF NOT EXISTS ${tableName} (\n${mysqlLines.join(',\n')}\n) ENGINE=InnoDB DEFAULT CHARSET=utf8mb4 COLLATE=utf8mb4_unicode_ci;`;


    try {
        await conn.query(createSql);
        log(`Created ${tableName}`);
    } catch (err) {
        log(`Failed to create ${tableName}: ${err.message}`);
        // debug
        // log(createSql); 
    }
}

convertAndCreate();
