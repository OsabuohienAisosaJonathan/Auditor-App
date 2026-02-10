
const mysql = require('mysql2/promise');

async function listUsers() {
    const dbUrl = 'mysql://root:@127.0.0.1:3306/auditops';
    console.log(`Connecting to: ${dbUrl}`);

    try {
        const connection = await mysql.createConnection({
            uri: dbUrl,
        });

        const [users] = await connection.execute('SELECT id, username, email, role, password FROM users');

        console.log('\n--- EXISTING USERS ---');
        if (users.length === 0) {
            console.log('No users found! Database is empty.');
        } else {
            console.table(users.map(u => ({
                username: u.username,
                email: u.email,
                role: u.role,
                password_hash: u.password.substring(0, 10) + '...'
            })));
        }
        console.log('----------------------\n');

        await connection.end();
    } catch (err) {
        console.error('❌ Failed to list users:', err.message);
    }
}

listUsers();
