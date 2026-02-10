
import mysql from 'mysql2/promise';

async function testConnection() {
    const dbUrl = 'mysql://root:@localhost:3306/auditops';
    console.log(`Testing connection to: ${dbUrl}`);

    try {
        const connection = await mysql.createConnection({
            uri: dbUrl,
            // user: 'root',
            // password: '', // Empty for XAMPP default
            // database: 'auditops',
            // host: 'localhost',
            // port: 3306
        });

        console.log('✅ Connection SUCCESSFUL!');

        const [rows] = await connection.execute('SELECT 1 as val');
        console.log('Query Result:', rows);

        const [users] = await connection.execute('SELECT count(*) as count FROM users');
        console.log('User Count in DB:', users);

        await connection.end();
    } catch (err: any) {
        console.error('❌ Connection FAILED:', err.message);
    }
}

testConnection();
