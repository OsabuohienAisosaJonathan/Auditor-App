
const { execSync } = require('child_process');
const mysql = require('mysql2/promise');
const fs = require('fs');
const path = require('path');

async function run() {
    const migrationsDir = 'migrations_final';

    // Clean up previous run
    if (fs.existsSync(migrationsDir)) {
        console.log('Cleaning up old migrations directory...');
        fs.rmSync(migrationsDir, { recursive: true, force: true });
    }

    console.log('Generating migration...');
    try {
        // Attempt generation
        execSync(`npx drizzle-kit generate --out ${migrationsDir}`, { stdio: 'inherit' });
        console.log('Migration generated successfully.');
    } catch (err) {
        console.error('Failed to generate migration:', err.message);
        process.exit(1);
    }

    if (!fs.existsSync(migrationsDir)) {
        console.error('Migrations directory not created!');
        process.exit(1);
    }

    const files = fs.readdirSync(migrationsDir).filter(f => f.endsWith('.sql'));
    if (files.length === 0) {
        console.error('No SQL files found.');
        process.exit(1);
    }

    const sqlFile = files.sort()[0];
    const sqlPath = path.join(migrationsDir, sqlFile);
    const sql = fs.readFileSync(sqlPath, 'utf8');

    console.log(`Applying SQL from ${sqlFile}...`);

    const connection = await mysql.createConnection({
        host: 'localhost',
        user: 'root',
        password: '',
        database: 'auditops',
        multipleStatements: true
    });

    try {
        await connection.query(sql);
        console.log('Migration applied successfully to database!');
    } catch (err) {
        console.error('Failed to apply migration to DB:', err.message);
    } finally {
        await connection.end();
    }
}

run();
