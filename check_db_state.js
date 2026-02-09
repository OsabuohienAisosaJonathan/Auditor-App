
const mysql = require('mysql2/promise');

async function checkDb() {
    const config = {
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'auditops'
    };

    try {
        const connection = await mysql.createConnection(config);
        const [rows] = await connection.query('SHOW TABLES');
        console.log('Current tables in auditops:', rows);
        await connection.end();
    } catch (err) {
        console.error('Check failed:', err.message);
    }
}

checkDb();
