
const fs = require('fs');
const content = fs.readFileSync('shared/schema.ts', 'utf8');
const lines = content.split('\n');
lines.forEach((line, index) => {
    if (line.includes('varchar(') && !line.includes('length:')) {
        console.log(`Line ${index + 1}: ${line.trim()}`);
    }
});
