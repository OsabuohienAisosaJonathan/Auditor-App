
const mysql = require('mysql2/promise');

async function checkPlans() {
    const connection = await mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'auditops'
    });

    try {
        const [rows] = await connection.query("SELECT * FROM subscription_plans");
        console.log('Plans found:', rows.length);
        if (rows.length > 0) {
            console.log('Sample plan:', rows[0]);
        }
    } catch (err) {
        console.error('Check failed:', err.message);
    } finally {
        await connection.end();
    }
}

checkPlans();
