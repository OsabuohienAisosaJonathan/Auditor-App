
const mysql = require('mysql2/promise');
const fs = require('fs');
const path = require('path');

async function applyMigration() {
    const migrationsDir = 'migrations_v3';
    if (!fs.existsSync(migrationsDir)) {
        console.error(`Migrations directory ${migrationsDir} not found!`);
        return;
    }

    const files = fs.readdirSync(migrationsDir).filter(f => f.endsWith('.sql'));
    if (files.length === 0) {
        console.error('No .sql files found in migrations directory.');
        return;
    }

    // Sort files to get the latest (or standard order)
    const migrationFile = files.sort()[0]; // Assuming just one snapshot file 0000_...
    const filePath = path.join(migrationsDir, migrationFile);
    const sql = fs.readFileSync(filePath, 'utf8');

    console.log(`Applying migration from ${migrationFile}...`);

    const connection = await mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'auditops',
        multipleStatements: true
    });

    try {
        await connection.query(sql);
        console.log('Migration applied successfully!');
    } catch (err) {
        console.error('Migration failed:', err.message);
    } finally {
        await connection.end();
    }
}

applyMigration();
