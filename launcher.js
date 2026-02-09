
import { spawn } from 'child_process';
import fs from 'fs';

const log = fs.createWriteStream('launcher_log.txt');

function run(script) {
    log.write(`Running ${script}...\n`);
    console.log(`Spawning ${script}...`);
    const child = spawn('node', [script], { shell: true });

    child.stdout.on('data', d => {
        process.stdout.write(d);
        log.write(`[STDOUT] ${d}`);
    });
    child.stderr.on('data', d => {
        process.stderr.write(d);
        log.write(`[STDERR] ${d}`);
    });

    child.on('error', err => {
        log.write(`[ERROR] Failed to start: ${err.message}\n`);
    });

    child.on('close', code => {
        log.write(`${script} exited with code ${code}\n`);
    });
}

run('pg_to_mysql_converter.js');
