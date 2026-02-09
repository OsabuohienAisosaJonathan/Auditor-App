
import mysql from 'mysql2/promise';
import fs from 'fs';
import 'dotenv/config';

async function listTables() {
    const connection = await mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'auditops'
    });

    const [rows] = await connection.query("SHOW TABLES");
    const tables = rows.map(r => Object.values(r)[0]);
    fs.writeFileSync('tables_log.txt', tables.join('\n'));
    console.log('Tables written to logs');
    await connection.end();
    process.exit(0);
}

listTables();
