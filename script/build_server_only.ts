import { build as esbuild } from "esbuild";
import { readFile } from "fs/promises";

// Dependencies to bundle (reduces cold start times)
// IMPORTANT: Do NOT add native modules here (bcrypt, sharp, canvas, etc.)
// Native modules must be external so they load from node_modules at runtime
const allowlist = [
    "@google/generative-ai",
    "archiver",
    "axios",
    "cors",
    "date-fns",
    "drizzle-orm",
    "drizzle-zod",
    "express",
    "express-rate-limit",
    "express-session",
    "jsonwebtoken",
    "memorystore",
    "multer",
    "nanoid",
    "nodemailer",
    "openai",
    "passport",
    "passport-local",
    "resend",
    "stripe",
    "uuid",
    "ws",
    "xlsx",
    "zod",
    "zod-validation-error",
];

// Native modules that must NEVER be bundled (they have compiled binaries)
const nativeModules = [
    "bcrypt",
    "sharp",
    "canvas",
    "better-sqlite3",
    "sqlite3",
    "argon2",
    "bufferutil",
    "utf-8-validate",
    "node-gyp-build",
    "@mapbox/node-pre-gyp",
];

async function buildServer() {
    console.log("building server only...");
    const pkg = JSON.parse(await readFile("package.json", "utf-8"));
    const allDeps = [
        ...Object.keys(pkg.dependencies || {}),
        ...Object.keys(pkg.devDependencies || {}),
    ];

    // External = deps NOT in allowlist + ALL native modules (always external)
    const externals = [
        ...allDeps.filter((dep) => !allowlist.includes(dep)),
        ...nativeModules, // Always mark native modules as external
    ];

    // Remove duplicates
    const uniqueExternals = [...new Set(externals)];

    console.log("Native modules (external):", nativeModules.filter(m => allDeps.includes(m) || m === "bcrypt"));

    await esbuild({
        entryPoints: ["server/index.ts"],
        platform: "node",
        target: "node20", // Match deployment environment
        bundle: true,
        format: "cjs",
        outfile: "dist/index.cjs",
        define: {
            "process.env.NODE_ENV": '"production"',
        },
        minify: true,
        external: uniqueExternals,
        logLevel: "info",
    });
    console.log("Server build complete");
}

buildServer().catch((err) => {
    console.error(err);
    process.exit(1);
});
