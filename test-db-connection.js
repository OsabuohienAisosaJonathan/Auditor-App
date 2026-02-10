
const mysql = require('mysql2/promise');

async function testConnection() {
    const dbUrl = 'mysql://root:@localhost:3306/auditops';
    console.log(`Testing connection to: ${dbUrl}`);

    try {
        const connection = await mysql.createConnection({
            uri: dbUrl,
        });

        console.log('✅ Connection SUCCESSFUL!');

        const [rows] = await connection.execute('SELECT 1 as val');
        console.log('Query Result:', rows);

        try {
            const [users] = await connection.execute('SELECT count(*) as count FROM users');
            console.log('User Count in DB:', users);
        } catch (e) {
            console.log('Could not count users (table might be missing):', e.message);
        }

        await connection.end();
    } catch (err) {
        console.error('❌ Connection FAILED:', err.message);
    }
}

testConnection();
