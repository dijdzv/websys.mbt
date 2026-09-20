import { readFile } from 'node:fs/promises';
import { chromium } from 'playwright';
import { createImports } from './generated/runtime.mjs';

const bytes = await readFile('test/promise/_build/wasm-gc/release/build/dijdzv/websys-promise-tests/websys-promise-tests.wasm');
const browser = await chromium.launch({ headless: true });
try {
  const page = await browser.newPage();
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
    return count;
  }, { bytes: [...bytes], factory: createImports.toString() });
  if (errors.length) throw Error(errors.join('\n'));
  console.log(`Generated Promise consumer: ${cases} cases passed`);
} finally {
  await browser.close();
}
