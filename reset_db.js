
const mysql = require('mysql2/promise');

async function resetDatabase() {
    const config = {
        host: 'localhost',
        user: 'root',
        password: '',
        multipleStatements: true
    };

    console.log('Connecting to MySQL...');
    try {
        const connection = await mysql.createConnection(config);

        console.log('Dropping database "auditops" if it exists...');
        await connection.query('DROP DATABASE IF EXISTS auditops');

        console.log('Creating database "auditops"...');
        await connection.query('CREATE DATABASE auditops');

        console.log('Database reset successfully! "auditops" is now empty.');
        await connection.end();
    } catch (err) {
        console.error('Failed to reset database:', err);
        process.exit(1);
    }
}

resetDatabase();
