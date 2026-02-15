// Runner: launches headless Chromium via Playwright, serves test files, captures results.
import { chromium } from "playwright";

// Resolve Chromium executable path
const executablePath = process.env.PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH || undefined;

// Simple HTTP server to serve test files
const server = Bun.serve({
  port: 0,
  async fetch(req) {
    const url = new URL(req.url);
    const filePath = url.pathname === "/" ? "/index.html" : url.pathname;
    const file = Bun.file(import.meta.dir + filePath);
    if (await file.exists()) {
      const ext = filePath.split(".").pop();
      const types = { html: "text/html", js: "application/javascript", mjs: "application/javascript" };
      return new Response(file, {
        headers: { "Content-Type": types[ext] || "application/octet-stream" },
      });
    }
    return new Response("Not found", { status: 404 });
  },
});

const browser = await chromium.launch({
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
await page.goto(`http://localhost:${server.port}/`);
await page.waitForFunction(() => window.__testsDone === true, null, { timeout: 30000 });
const passed = await page.evaluate(() => window.__testsPassed);

await browser.close();
server.stop();
process.exit(passed ? 0 : 1);
