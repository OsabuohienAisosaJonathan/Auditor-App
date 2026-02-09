import mysql from 'mysql2/promise';
import dotenv from 'dotenv';
dotenv.config();

async function checkTable() {
    if (!process.env.DATABASE_URL) {
        console.error('DATABASE_URL not set');
        process.exit(1);
    }

    try {
        const connection = await mysql.createConnection(process.env.DATABASE_URL);
        const [rows] = await connection.execute("SHOW TABLES LIKE 'user_client_access'");
        console.log('Table exists check:', rows);

        if ((rows as any[]).length > 0) {
            const [columns] = await connection.execute("DESCRIBE user_client_access");
            console.log('Columns:', columns);
        } else {
            console.log('Table user_client_access does NOT exist.');
        }

        await connection.end();
    } catch (err) {
        console.error('Error checking DB:', err);
    }
}

checkTable();
