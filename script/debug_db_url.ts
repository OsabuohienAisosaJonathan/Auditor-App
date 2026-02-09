import { parse } from 'url';

const rawUrl = "mysql://miaudito_admin:JkKt@_!G0YC0Apag@131.153.147.186:3306/miaudito_auditing";

try {
    console.log("Parsing raw URL:");
    const parsed = new URL(rawUrl);
    console.log("Protocol:", parsed.protocol);
    console.log("Username:", parsed.username);
    console.log("Password:", parsed.password);
    console.log("Hostname:", parsed.hostname);
    console.log("Port:", parsed.port);
    console.log("Pathname:", parsed.pathname);

    if (parsed.hostname !== "131.153.147.186") {
        console.error("\nERROR: Hostname mismatch! The parser likely misinterpreted the '@' in the password as the separator.");
    }

} catch (e) {
    console.error("Error parsing URL:", e.message);
}

// Constructing the corrected URL
console.log("\n--- Constructing Corrected URL ---");
const protocol = "mysql";
const username = "miaudito_admin";
const password = "JkKt@_!G0YC0Apag";
const host = "131.153.147.186";
const port = "3306";
const database = "miaudito_auditing";

const encodedPassword = encodeURIComponent(password);
console.log(`Original Password: ${password}`);
console.log(`Encoded Password:  ${encodedPassword}`);

const correctUrl = `${protocol}://${username}:${encodedPassword}@${host}:${port}/${database}`;
console.log(`\nCorrected DATABASE_URL:\n${correctUrl}`);
