const mysql = require('mysql2/promise');
require('dotenv').config();

async function checkSessionsTable() {
    if (!process.env.DATABASE_URL) {
        console.error('DATABASE_URL not set');
        process.exit(1);
    }

    try {
        console.log('Connecting to DB...');
        const connection = await mysql.createConnection(process.env.DATABASE_URL);
        console.log('Connected. Checking sessions table...');

        const [rows] = await connection.execute("SHOW TABLES LIKE 'sessions'");
        console.log('Table exists check:', rows);

        if (rows.length > 0) {
            const [columns] = await connection.execute("DESCRIBE sessions");
            console.log('Columns:', columns);

            const [count] = await connection.execute("SELECT COUNT(*) as count FROM sessions");
            console.log('Session count:', count);
        } else {
            console.log('Table sessions does NOT exist.');
        }

        await connection.end();
    } catch (err) {
        console.error('Error checking DB:', err);
    }
}

checkSessionsTable();
