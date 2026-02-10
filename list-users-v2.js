
const mysql = require('mysql2/promise');

async function listUsers() {
    const dbUrl = 'mysql://root:@127.0.0.1:3306/auditops';
    console.log(`Connecting to: ${dbUrl}`);

    try {
        const connection = await mysql.createConnection({
            uri: dbUrl,
            connectTimeout: 5000
        });

        const [users] = await connection.execute('SELECT username, email, role, password FROM users');

        console.log('\n--- EXISTING USERS ---');
        if (users.length === 0) {
            console.log('No users found! Database is empty.');
        } else {
            console.log(JSON.stringify(users, null, 2));
        }
        console.log('----------------------\n');

        await connection.end();
        process.exit(0);
    } catch (err) {
        console.error('❌ Failed to list users:', err.message);
        process.exit(1);
    }
}

listUsers();
