// Runner: launches headless Chromium via Playwright, serves test files, captures results.
import { chromium } from "playwright";
import { createServer } from "node:http";
import { readFile } from "node:fs/promises";
import { fileURLToPath } from "node:url";
import { resolve, sep, extname } from "node:path";

// Resolve Chromium executable path
const executablePath = process.env.PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH || undefined;

// Simple HTTP server to serve test files
const root = fileURLToPath(new URL(".", import.meta.url));
const server = createServer(async (req, res) => {
  try {
    const pathname = new URL(req.url, "http://localhost").pathname;
    const path = resolve(root, "." + (pathname === "/" ? "/index.html" : decodeURIComponent(pathname)));
    if (!path.startsWith(resolve(root) + sep)) throw new Error("Outside test root");
    const content = await readFile(path);
    const types = { ".html": "text/html", ".js": "application/javascript", ".mjs": "application/javascript" };
    res.writeHead(200, { "Content-Type": types[extname(path)] || "application/octet-stream" });
    res.end(content);
  } catch {
    res.writeHead(404);
    res.end("Not found");
  }
});
await new Promise((resolve, reject) => {
  server.once("error", reject);
  server.listen(0, "127.0.0.1", resolve);
});

let browser;
try {
  browser = await chromium.launch({
    executablePath,
    args: ["--no-sandbox"],
  });
  const page = await browser.newPage();

  // Forward console output
  page.on("console", (msg) => {
    const text = msg.text();
    if (msg.type() === "error") {
      process.stderr.write(text + "\n");
    } else {
      process.stdout.write(text + "\n");
    }
  });

  // Navigate and wait for tests to complete
  page.on("pageerror", error => console.error(error));
  const entry = process.argv.includes('--wasm-gc') ? '/wasm/index.html' : '/';
  await page.goto(`http://127.0.0.1:${server.address().port}${entry}`);
  await page.waitForFunction(() => window.__testsDone === true, null, { timeout: 30000 });
  const passed = await page.evaluate(() => window.__testsPassed);
  process.exitCode = passed ? 0 : 1;
} finally {
  if (browser) await browser.close().catch(() => {});
  server.closeAllConnections();
  await new Promise(resolve => server.close(resolve));
}
