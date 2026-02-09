
import { spawnSync } from 'child_process';
import fs from 'fs';

const log = fs.createWriteStream('master_log.txt');
function logMsg(msg) {
    process.stdout.write(msg + '\n');
    log.write(msg + '\n');
}

logMsg('Starting master migration...');

// Step 1: Convert
// Ensure we are using the V2 script
logMsg('Running pg_to_mysql_converter.js...');
const conv = spawnSync('node', ['pg_to_mysql_converter.js'], { shell: true, encoding: 'utf-8' });
logMsg('--- Conversion STDOUT ---\n' + conv.stdout);
logMsg('--- Conversion STDERR ---\n' + conv.stderr);

if (conv.status !== 0) {
    logMsg('Conversion failed with code ' + conv.status);
    process.exit(1);
}

// Check file
if (!fs.existsSync('mysql_dump_v2.sql')) {
    logMsg('CRITICAL ERROR: mysql_dump_v2.sql NOT FOUND even after success status!');
    process.exit(1);
}

// Step 2: Import
logMsg('Running import_v2.js...');
const imp = spawnSync('node', ['import_v2.js'], { shell: true, encoding: 'utf-8' });
logMsg('--- Import STDOUT ---\n' + imp.stdout);
logMsg('--- Import STDERR ---\n' + imp.stderr);

if (imp.status !== 0) {
    logMsg('Import failed with code ' + imp.status);
    process.exit(1);
}

logMsg('MASTER MIGRATION SUCCESSFUL.');
