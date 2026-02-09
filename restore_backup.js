import fs from 'fs';
import readline from 'readline';
import mysql from 'mysql2/promise';
import 'dotenv/config';
import { fileURLToPath } from 'url';
import { dirname } from 'path';

const BATCH_SIZE = 500;
const LOG_FILE = 'restore_log.txt';

// Helper for logging since we might not have __dirname
function log(msg) {
    const timestamp = new Date().toISOString();
    fs.appendFileSync(LOG_FILE, `[${timestamp}] ${msg}\n`);
    console.log(msg);
}

// ESM wrapper
const __filename = fileURLToPath(import.meta.url);
const __dirname = dirname(__filename);

async function restore() {
    log('Starting restore process...');
    let connection;
    try {
        connection = await mysql.createConnection({
            host: 'localhost',
            user: 'root',
            password: '',
            database: 'auditops',
            multipleStatements: true
        });
        log('Connected to DB');
    } catch (e) {
        log('Connection failed: ' + e.message);
        process.exit(1);
    }

    // 1. Fetch Schema Information to handle Booleans
    const [columns] = await connection.query(`
    SELECT TABLE_NAME, COLUMN_NAME, DATA_TYPE 
    FROM INFORMATION_SCHEMA.COLUMNS 
    WHERE TABLE_SCHEMA = 'auditops'
  `);

    const tableTypes = {};
    columns.forEach(col => {
        if (!tableTypes[col.TABLE_NAME]) tableTypes[col.TABLE_NAME] = {};
        tableTypes[col.TABLE_NAME][col.COLUMN_NAME] = col.DATA_TYPE;
    });

    log('Schema info loaded.');

    // Disable FK checks
    await connection.query('SET FOREIGN_KEY_CHECKS = 0;');

    const fileStream = fs.createReadStream('backup.sql');
    const rl = readline.createInterface({
        input: fileStream,
        crlfDelay: Infinity
    });

    let currentTable = null;
    let currentCols = [];
    let buffer = [];
    let totalRows = 0;

    for await (const line of rl) {
        if (line.startsWith('COPY public.')) {
            const match = line.match(/COPY public\.([a-z0-9_]+) \((.+)\) FROM stdin;/);
            if (match) {
                currentTable = match[1];
                currentCols = match[2].split(',').map(s => s.trim());
                buffer = [];
                log(`Processing table: ${currentTable}`);

                // Use DELETE instead of TRUNCATE to be safer with constraints (even if checks are off)
                try {
                    await connection.query(`DELETE FROM ${currentTable}`);
                } catch (e) {
                    log(`Could not empty ${currentTable}: ${e.message}`);
                    if (e.code === 'ER_NO_SUCH_TABLE') {
                        log(`Table ${currentTable} does not exist, skipping...`);
                        currentTable = null;
                        continue;
                    }
                    // If delete failed for other reasons, we might still try to insert? 
                    // Or maybe it's safer to skip. Let's try to proceed to Insert.
                }
            }
        } else if (line === '\\.' && currentTable) {
            if (buffer.length > 0) {
                await insertBatch(connection, currentTable, currentCols, buffer);
            }
            log(`Finished ${currentTable}.`);
            currentTable = null;
            buffer = [];
        } else if (currentTable) {
            if (line.trim() === '') continue;

            const rawVals = line.split('\t');
            const row = rawVals.map((val, idx) => {
                if (val === '\\N') return null;

                const colName = currentCols[idx];
                const colType = tableTypes[currentTable] ? tableTypes[currentTable][colName] : null;

                // Handle Boolean conversions (Postgres t/f -> 1/0)
                if (colType === 'tinyint' || colType === 'boolean' || colType === 'bool') {
                    if (val === 't') return 1;
                    if (val === 'f') return 0;
                }
                return val;
            });

            buffer.push(row);

            if (buffer.length >= BATCH_SIZE) {
                await insertBatch(connection, currentTable, currentCols, buffer);
                buffer = [];
            }
        }
    }

    // Re-enable FK checks
    await connection.query('SET FOREIGN_KEY_CHECKS = 1;');
    await connection.end();
    log('Restore complete.');
    process.exit(0);
}

async function insertBatch(conn, table, cols, rows) {
    if (rows.length === 0) return;
    const placeholders = rows.map(() => `(${cols.map(() => '?').join(',')})`).join(',');
    const sql = `INSERT INTO ${table} (${cols.join(',')}) VALUES ${placeholders}`;
    const flatValues = rows.flat();
    try {
        await conn.query(sql, flatValues);
    } catch (err) {
        log(`Error inserting into ${table}: ` + err.message);
    }
}

restore().catch(err => {
    log('Unhandled error: ' + err.message);
    process.exit(1);
});
