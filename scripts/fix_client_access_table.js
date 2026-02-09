
const mysql = require('mysql2/promise');
const fs = require('fs');
const path = require('path');
const dotenv = require('dotenv');

// Load env vars
dotenv.config();

async function fixTable() {
    const dbUrl = process.env.DATABASE_URL;
    if (!dbUrl) {
        console.error('DATABASE_URL missing');
        process.exit(1);
    }

    console.log('Connecting to database...');
    try {
        const connection = await mysql.createConnection(dbUrl);
        console.log('Connected.');

        // 1. Check if table exists
        const [rows] = await connection.execute("SHOW TABLES LIKE 'user_client_access'");
        if (rows.length > 0) {
            console.log('Table `user_client_access` ALREADY EXISTS.');
            const [cols] = await connection.execute("DESCRIBE user_client_access");
            console.log('Columns:', cols.map(c => c.Field).join(', '));
        } else {
            console.log('Table `user_client_access` MISSING. Creating it...');
        }

        // 2. Create Table
        // Using IF NOT EXISTS to be safe
        const createSql = `
      CREATE TABLE IF NOT EXISTS user_client_access (
        id VARCHAR(36) PRIMARY KEY,
        user_id VARCHAR(36) NOT NULL,
        client_id VARCHAR(36) NOT NULL,
        status TEXT NOT NULL,
        assigned_by VARCHAR(36) NOT NULL,
        assigned_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
        suspend_reason TEXT,
        notes TEXT,
        FOREIGN KEY (user_id) REFERENCES users(id) ON DELETE CASCADE,
        FOREIGN KEY (client_id) REFERENCES clients(id) ON DELETE CASCADE,
        FOREIGN KEY (assigned_by) REFERENCES users(id)
      ) ENGINE=InnoDB;
    `;

        await connection.execute(createSql);
        console.log('CREATE TABLE command executed.');

        // 3. Verify
        const [rowsVerify] = await connection.execute("SHOW TABLES LIKE 'user_client_access'");
        console.log('Verification check found tables:', rowsVerify.length);

        await connection.end();
    } catch (err) {
        console.error('ERROR:', err);
    }
}

fixTable();
