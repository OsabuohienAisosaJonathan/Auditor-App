
const { execSync } = require('child_process');
const mysql = require('mysql2/promise');
const fs = require('fs');
const path = require('path');

async function run() {
    // drizzle.config.ts sets 'out' to './migrations'
    const migrationsDir = 'migrations';

    // Clean up previous run to ensure a clean slate
    if (fs.existsSync(migrationsDir)) {
        console.log('Cleaning up old migrations directory...');
        fs.rmSync(migrationsDir, { recursive: true, force: true });
    }

    console.log('Generating migration...');
    try {
        // Attempt generation with explicit config and env
        // We do NOT pass --out here because it conflicts with --config
        const env = { ...process.env, DATABASE_URL: 'mysql://root:@localhost:3306/auditops' };

        execSync(`npx drizzle-kit generate --config=drizzle.config.ts`, {
            stdio: 'inherit',
            env: env
        });
        console.log('Migration generated successfully.');
    } catch (err) {
        console.error('Failed to generate migration:', err.message);
        process.exit(1);
    }

    if (!fs.existsSync(migrationsDir)) {
        console.error(`Migrations directory '${migrationsDir}' not created!`);
        process.exit(1);
    }

    const files = fs.readdirSync(migrationsDir).filter(f => f.endsWith('.sql'));
    if (files.length === 0) {
        console.error('No SQL files found.');
        process.exit(1);
    }

    // Sort to ensure we pick the correct starting point if multiple exist (though we cleaned it)
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
