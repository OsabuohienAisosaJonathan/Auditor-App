
import fs from 'fs';
import readline from 'readline';
import mysql from 'mysql2/promise';
import 'dotenv/config';

// Explicitly use the v2 file
const DUMP_FILE = 'mysql_dump_v2.sql';
const LOG_FILE = 'import_v2_log.txt';

fs.writeFileSync(LOG_FILE, ''); // Clear log

function log(msg) {
    fs.appendFileSync(LOG_FILE, msg + '\n');
    if (process.stdout.isTTY) {
        console.log(msg);
    }
}

async function importDump() {
    if (!fs.existsSync(DUMP_FILE)) {
        log(`Error: ${DUMP_FILE} not found. Run pg_to_mysql_converter.js first.`);
        process.exit(1);
    }

    log(`Connecting to database...`);
    const connection = await mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'auditops',
        multipleStatements: true
    });

    log(`Reading ${DUMP_FILE} (Verified V2)...`);

    const fileStream = fs.createReadStream(DUMP_FILE);
    const rl = readline.createInterface({
        input: fileStream,
        crlfDelay: Infinity
    });

    let buffer = '';
    let statementCount = 0;

    for await (const line of rl) {
        const trimmed = line.trim();
        if (!trimmed || trimmed.startsWith('--')) continue;

        buffer += line + '\n';

        if (trimmed.endsWith(';')) {
            try {
                await connection.query(buffer);
                statementCount++;
            } catch (err) {
                log(`\nError executing statement:\n${buffer}\nError: ${err.message}`);
            }
            buffer = '';
        }
    }

    log(`Import complete. Executed ${statementCount} statements.`);
    await connection.end();
}

importDump().catch(err => {
    log(`Fatal Error: ${err.message}`);
    console.error(err);
});
