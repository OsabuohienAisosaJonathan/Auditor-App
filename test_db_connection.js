
const mysql = require('mysql2/promise');

async function testConnection() {
    const connectionString = "mysql://root:@localhost:3306/auditops"; // Hardcoded for test matching .env
    console.log('Testing connection to:', connectionString);
    try {
        const connection = await mysql.createConnection(connectionString);
        console.log('Successfully connected to database!');
        await connection.end();
    } catch (err) {
        if (err.code === 'ER_BAD_DB_ERROR') {
            console.log('Database "auditops" does not exist. Attempting to create...');
            try {
                const rootConnection = await mysql.createConnection("mysql://root:@localhost:3306");
                await rootConnection.query("CREATE DATABASE IF NOT EXISTS auditops");
                console.log('Database "auditops" created successfully!');
                await rootConnection.end();
            } catch (createErr) {
                console.error('Failed to create database:', createErr.message);
            }
        } else {
            console.error('Connection failed:', err.message);
        }
    }
}

testConnection();
