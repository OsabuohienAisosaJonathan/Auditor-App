import 'dotenv/config';
import { db } from '../server/db';
import { sql } from 'drizzle-orm';

async function main() {
    console.log('Adding index to audit_logs...');
    try {
        await db.execute(sql`CREATE INDEX audit_logs_created_at_idx ON audit_logs (created_at)`);
        console.log('Index created successfully.');
    } catch (error: any) {
        // ER_DUP_KEYNAME is the MySQL error code for duplicate index name
        if (error.code === 'ER_DUP_KEYNAME' || error.message?.includes('Duplicate key name')) {
            console.log('Index already exists. Skipping.');
        } else {
            console.error('Failed to create index:', error);
            process.exit(1);
        }
    }
    process.exit(0);
}

main();
