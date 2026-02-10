
const mysql = require('mysql2/promise');

async function testConnection() {
    // Explicitly use 127.0.0.1 to force IPv4
    const dbUrl = 'mysql://root:@127.0.0.1:3306/auditops';
    console.log(`Testing connection to: ${dbUrl}`);

    try {
        const connection = await mysql.createConnection({
            uri: dbUrl,
            connectTimeout: 5000 // 5 seconds timeout
        });

        console.log('✅ Connection SUCCESSFUL!');

        const [rows] = await connection.execute('SELECT 1 as val');
        console.log('Query Result:', rows);

        const [tables] = await connection.execute('SHOW TABLES');
        console.log('Tables found:', tables.length);

        await connection.end();
        process.exit(0);
    } catch (err) {
        console.error('❌ Connection FAILED:', err.message);
        console.error('Code:', err.code);
        process.exit(1);
    }
}

testConnection();
