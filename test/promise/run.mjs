import { readFile } from 'node:fs/promises';
import { chromium } from 'playwright';
import { createImports } from './generated/runtime.mjs';

const bytes = await readFile('test/promise/_build/wasm-gc/release/build/dijdzv/websys-promise-tests/websys-promise-tests.wasm');
const browser = await chromium.launch({ headless: true });
try {
  const page = await browser.newPage();
  let heldRequestObserved = false;
  const abortedRequest = page.waitForEvent('requestfailed', { predicate: request => request.url() === 'http://fixture.invalid/hold', timeout: 10000 });
  await page.route('http://fixture.invalid/hold', () => { heldRequestObserved = true; });
  const errors = [];
  page.on('pageerror', error => errors.push(error.message));
  const cases = await page.evaluate(async ({ bytes, factory }) => {
    const imports = new Function(`return (${factory})`)()();
    imports.fixture = { notify: (callback, code, text) => callback(code, text), abort: callback => { callback.aborts++; } };
    imports.spectest = { print_char() {} };
    imports.console = { log: value => console.log(value) };
    const { instance } = await WebAssembly.instantiate(new Uint8Array(bytes), imports, { builtins: ['js-string'], importedStringConstants: '_' });
    async function check(response, expected, text = '', timeout = 1000) {
      let calls = 0;
      await new Promise((resolve, reject) => {
        const watchdog = setTimeout(() => reject(Error('Consumer did not finish')), 3000);
        const callback = (code, actual) => {
          calls++;
          clearTimeout(watchdog);
          if (code !== expected || actual !== text || callback.aborts !== (expected === 4 ? 1 : 0)) reject(Error(`Unexpected result ${code}: ${actual}, aborts=${callback.aborts}`));
          else resolve();
        };
        callback.aborts = 0;
        instance.exports.start(response, timeout, callback);
      });
      return () => calls;
    }
    await check(await fetch('data:text/plain;charset=utf-8,%E6%97%A5%E6%9C%AC%F0%9F%98%80'), 1, '日本😀');
    await check(new Response(''), 1, '');
    await check({ text: () => Promise.resolve(42) }, 2);
    await check({ text: () => Promise.reject({ reason: 'fixture' }) }, 3);
    await check({ text() { throw Error('synchronous operation failure'); } }, 3);
    let finish;
    const promise = new Promise(resolve => { finish = resolve; });
    const calls = await check({ text: () => promise }, 4, '', 5);
    finish('late');
    await new Promise(resolve => setTimeout(resolve, 20));
    if (calls() !== 1) throw Error('Late settlement delivered twice');
    let count = 6;
    for (const [kind, name, valid, invalid] of [
      [0, 'integer', [-2147483648, 0, 2147483647], [-2147483649, 2147483648, 1.5, NaN, Infinity, '1', null]],
      [1, 'unsigned', [0, 2147483648, 4294967295], [-1, 4294967296, 1.5, '1', null]],
      [2, 'boolean', [true, false], [0, 1, 'true', null, undefined]],
      [3, 'double', [1.5, -1.5], [NaN, Infinity, -Infinity, '1', null]],
    ]) {
      for (const [values, expected] of [[valid, 1], [invalid, 2]]) for (const value of values) {
        await new Promise((resolve, reject) => {
          const watchdog = setTimeout(() => reject(Error('Numeric consumer timeout')), 3000);
          const callback = (code, actual) => {
            clearTimeout(watchdog);
            if (code !== expected || (code === 1 && actual !== String(value)) || callback.aborts !== 0) reject(Error(`Invalid ${name} conversion: ${String(value)} -> ${code}/${actual}`));
            else resolve();
          };
          callback.aborts = 0;
          const method = ['readInteger', 'readUnsigned', 'readBoolean', 'readDouble'][kind];
          instance.exports.start_value({ [method]: () => Promise.resolve(value) }, kind, callback);
        });
        count++;
      }
    }
    async function fetchCase(host, url, expected, text, timeout = 1000) {
      await new Promise((resolve, reject) => {
        const watchdog = setTimeout(() => reject(Error('Fetch consumer timeout')), 3000);
        const callback = (code, value) => {
          clearTimeout(watchdog);
          if (code !== expected || value !== text || callback.aborts !== (expected === 4 ? 1 : 0)) reject(Error(`Fetch result ${code}/${value}, aborts=${callback.aborts}`));
          else resolve();
        };
        callback.aborts = 0;
        instance.exports.fetch_text(host, url, timeout, callback);
      });
      count++;
    }
    await fetchCase(window, 'data:text/plain;charset=utf-8,generated%20fetch', 1, 'generated fetch');
    await fetchCase({ fetch: () => Promise.resolve({ text: () => Promise.resolve('fake') }) }, '', 2, '');
    await fetchCase({ fetch: () => Promise.reject(Error('fixture failure')) }, '', 3, '');
    await fetchCase(window, 'http://fixture.invalid/hold', 4, 'true', 50);
    for (const rejectCancel of [false, true]) {
      let reason;
      const stream = new ReadableStream({ cancel(value) {
        reason = value;
        if (rejectCancel) return Promise.reject(Error('source cancellation failed'));
      } });
      await new Promise((resolve, reject) => {
        const watchdog = setTimeout(() => reject(Error('Stream cancel timeout')), 3000);
        instance.exports.cancel_stream(stream, code => {
          clearTimeout(watchdog);
          if (code !== (rejectCancel ? 3 : 1)) reject(Error(`Cancel result ${code}`));
          else resolve();
        });
      });
      if (stream.locked || reason !== 'requested') throw Error('Reader ownership or cancellation reason lost');
      count++;
    }
    return count;
  }, { bytes: [...bytes], factory: createImports.toString() });
  const aborted = await abortedRequest;
  if (!heldRequestObserved || !aborted.failure()?.errorText.includes('ERR_ABORTED')) throw Error('Fetch cancellation did not reach an active browser request');
  if (errors.length) throw Error(errors.join('\n'));
  console.log(`Generated Promise consumer: ${cases} cases passed`);
} finally {
  await browser.close();
}
