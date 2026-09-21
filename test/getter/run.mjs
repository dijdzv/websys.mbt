import assert from 'node:assert/strict';
import { readFile } from 'node:fs/promises';
import { chromium } from '../node_modules/playwright/index.mjs';

const bytes = await readFile(new URL('./_build/wasm-gc/release/build/dijdzv/websys-getter-tests/websys-getter-tests.wasm', import.meta.url));
const runtime = await readFile(new URL('./generated/runtime.mjs', import.meta.url), 'utf8');
const browser = await chromium.launch({ headless: true,
  executablePath: process.env.PLAYWRIGHT_CHROMIUM_EXECUTABLE_PATH || undefined });
try {
  const page = await browser.newPage();
  const errors = [];
  page.on('pageerror', error => errors.push(error.message));
  const result = await page.evaluate(async ({ bytes, runtime }) => {
    const factory = new Function(runtime.replace('export function createImports', 'return function createImports'))();
    const { instance } = await WebAssembly.instantiate(new Uint8Array(bytes), factory(),
      { builtins: ['js-string'], importedStringConstants: '_' });
    const api = instance.exports;
    let reads = 0;
    const success = api.read_value({ get value() { reads++; return '日本語'; } });
    const denied = api.read_value({ get value() { reads++; throw new DOMException('denied', 'SecurityError'); } });
    const unexpected = api.read_value({ get value() { reads++; throw new TypeError('unexpected'); } });
    const empty = api.read_optional({ nullableValue: null });
    const optional = api.read_optional({ nullableValue: 'nullable 日本語' });
    const deniedOptional = api.read_optional({ get nullableValue() { reads++; throw new DOMException('denied', 'SecurityError'); } });
    const primitive = api.read_value({ get value() { reads++; throw 42; } });
    const recovered = api.read_value({ value: 'recovered' });
    return { success, denied, unexpected, empty, optional, deniedOptional, primitive, recovered, reads };
  }, { bytes: [...bytes], runtime });
  assert.deepEqual(result, {
    success: 'ok:日本語', denied: 'denied', unexpected: 'other:TypeError', empty: 'none',
    optional: 'ok:nullable 日本語', deniedOptional: 'denied', primitive: 'other:', recovered: 'ok:recovered', reads: 5,
  });
  assert.deepEqual(errors, []);
  console.log('GETTER_ERRORS_WASM_OK success denied fallback nullable single_read recovery');
} finally {
  await browser.close();
}
