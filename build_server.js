const esbuild = require("esbuild");
const fs = require("fs");
const path = require("path");

// Native modules that must NEVER be bundled
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

async function build() {
    console.log("Starting server build...");

    // Create dist if not exists
    if (!fs.existsSync("dist")) {
        fs.mkdirSync("dist");
    }

    const pkg = JSON.parse(fs.readFileSync("package.json", "utf-8"));
    const allDeps = [
        ...Object.keys(pkg.dependencies || {}),
        ...Object.keys(pkg.devDependencies || {}),
    ];

    // Mark all dependencies as external to avoid bundling them
    // This is safer for Node.js backend
    const externals = [...allDeps, ...nativeModules];
    const uniqueExternals = [...new Set(externals)];

    try {
        await esbuild.build({
            entryPoints: ["server/index.ts"],
            platform: "node",
            target: "node20",
            bundle: true,
            format: "cjs",
            outfile: "dist/index.cjs",
            define: {
                "process.env.NODE_ENV": '"production"',
            },
            external: uniqueExternals,
            logLevel: "info",
        });
        console.log("Server build complete: dist/index.cjs");
    } catch (e) {
        console.error("Build failed:", e);
        process.exit(1);
    }
}

build();
