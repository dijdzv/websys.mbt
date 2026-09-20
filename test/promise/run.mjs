import { readFile } from 'node:fs/promises';
import { createServer } from 'node:http';
import { chromium } from 'playwright';
import { createImports } from './generated/runtime.mjs';

const bytes = await readFile('test/promise/_build/wasm-gc/release/build/dijdzv/websys-promise-tests/websys-promise-tests.wasm');
const browser = await chromium.launch({ headless: true });
let pendingBodyStarted = false;
let pendingBodyClosed = false;
const server = createServer((request, response) => {
  response.setHeader('Access-Control-Allow-Origin', '*');
  if (request.url === '/post') {
    let body = '';
    request.setEncoding('utf8');
    request.on('data', chunk => { body += chunk; });
    request.on('end', () => { response.end(`${request.method}|${request.headers['content-type']}|${request.headers.accept}|${body}`); });
    return;
  }
  if (request.url === '/no-body') { response.writeHead(204); response.end(); }
  else if (request.url === '/pending-body') {
    pendingBodyStarted = true;
    response.writeHead(200, { 'Content-Type': 'application/octet-stream' });
    response.flushHeaders();
    response.on('close', () => { pendingBodyClosed = true; });
  } else if (request.url === '/empty-body') { response.end(); }
  else { response.write(Buffer.from([1, 2])); response.end(Buffer.from([255, 0])); }
});
await new Promise(resolve => server.listen(0, '127.0.0.1', resolve));
const baseUrl = `http://127.0.0.1:${server.address().port}`;
try {
  const page = await browser.newPage();
  let heldRequestObserved = false;
  const abortedRequest = page.waitForEvent('requestfailed', { predicate: request => request.url() === 'http://fixture.invalid/hold', timeout: 10000 });
  await page.route('http://fixture.invalid/hold', () => { heldRequestObserved = true; });
  const errors = [];
  page.on('pageerror', error => errors.push(error.message));
  const cases = await page.evaluate(async ({ bytes, factory, baseUrl }) => {
    const imports = new Function(`return (${factory})`)()();
    imports.fixture = { notify: (callback, code, text) => callback(code, text), abort: callback => { callback.aborts++; }, value: (callback, value) => { callback.value = value; callback.hasValue = true; }, error: (callback, value) => { callback.error = value; } };
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
    async function readCase(reader, expected, done, hasValue, value, error) {
      await new Promise((resolve, reject) => {
        const watchdog = setTimeout(() => reject(Error('Stream read timeout')), 3000);
        const callback = (code, text) => {
          clearTimeout(watchdog);
          if (code !== expected || text !== done || Boolean(callback.hasValue) !== hasValue || (hasValue && callback.value !== value) || (error !== undefined && callback.error !== error)) reject(Error(`Stream read result ${code}/${text}`));
          else resolve();
        };
        instance.exports.read_stream(reader, callback);
      });
      count++;
    }
    const object = { chunk: 'identity' };
    for (const value of [object, null, false, '', 0, undefined]) {
      const stream = new ReadableStream({ start(controller) { controller.enqueue(value); controller.close(); } });
      const reader = stream.getReader();
      await readCase(reader, 1, 'false', value !== undefined, value);
      await readCase(reader, 1, 'true', false);
      reader.releaseLock();
      if (stream.locked) throw Error('Stream remained locked');
    }
    await readCase({ read: () => Promise.resolve({}) }, 1, 'missing', false);
    let reads = 0;
    await readCase({ read: () => Promise.resolve({ get value() { reads++; return object; }, get done() { reads++; return false; } }) }, 1, 'false', true, object);
    if (reads !== 2) throw Error('Result getters were read more than once');
    const getterError = { getter: 'failure' };
    await readCase({ read: () => Promise.resolve({ get value() { throw getterError; } }) }, 2, '', false, undefined, getterError);
    await readCase({ read: () => Promise.resolve({ done: 'false' }) }, 2, '', false);
    const rejection = { stream: 'failure' };
    const failed = new ReadableStream({ start(controller) { controller.error(rejection); } });
    const failedReader = failed.getReader();
    await readCase(failedReader, 3, '', false, undefined, rejection);
    failedReader.releaseLock();
    let canceled;
    const pendingStream = new ReadableStream({ cancel(reason) { canceled = reason; } });
    const pendingReader = pendingStream.getReader();
    const pendingRead = readCase(pendingReader, 1, 'true', false);
    await pendingReader.cancel('pending read');
    await pendingRead;
    pendingReader.releaseLock();
    if (pendingStream.locked || canceled !== 'pending read') throw Error('Pending read cancellation lost');
    async function byteCase(chunks, expected, text) {
      let cancellation;
      const stream = new ReadableStream({ start(controller) {
        for (const chunk of chunks) controller.enqueue(chunk);
        if (expected === 1) controller.close();
      }, cancel(reason) { cancellation = reason; } });
      await new Promise((resolve, reject) => {
        const watchdog = setTimeout(() => reject(Error('Byte stream timeout')), 3000);
        instance.exports.read_bytes(stream, (code, value) => {
          clearTimeout(watchdog);
          if (code !== expected || value !== text) reject(Error(`Byte result ${code}/${value}`));
          else resolve();
        });
      });
      if (stream.locked || (expected === 2 && cancellation !== 'Expected Uint8Array')) throw Error('Byte reader ownership lost');
      count++;
    }
    const backing = new Uint8Array([99, 1, 2, 88]);
    await byteCase([backing.subarray(1, 3), new Uint8Array(), new Uint8Array([255, 0])], 1, '1,2,255,0');
    for (const invalid of [null, undefined, [1, 2], new Uint16Array([1]), new DataView(new ArrayBuffer(2)), new ArrayBuffer(2)]) {
      await byteCase([invalid], 2, '');
    }
    const detached = new Uint8Array([1]);
    structuredClone(detached.buffer, { transfer: [detached.buffer] });
    await byteCase([detached], 2, '');
    for (const [result, expected, text] of [[{ done: false }, 1, 'false'], [{ done: true }, 1, 'true'], [{}, 2, ''], [{ done: undefined }, 2, ''], [{ done: null }, 2, ''], [{ done: 0 }, 2, '']]) {
      await new Promise((resolve, reject) => {
        const watchdog = setTimeout(() => reject(Error('Required field timeout')), 3000);
        instance.exports.read_required({ readRequired: () => Promise.resolve(result) }, (code, actual) => {
          clearTimeout(watchdog);
          if (code !== expected || actual !== text) reject(Error(`Required field result ${code}/${actual}`));
          else resolve();
        });
      });
      count++;
    }
    for (const [path, expected, text] of [['/bytes', 1, '1,2,255,0'], ['/empty-body', 1, ''], ['/no-body', 1, 'no-body'], ['/constructed-null', 1, 'no-body'], ['/pending-body', 4, 'true']]) {
      let response;
      const host = { fetch: async (...args) => { response = path === '/constructed-null' ? new Response(null) : await fetch(...args); return response; } };
      await new Promise((resolve, reject) => {
        const watchdog = setTimeout(() => reject(Error('Fetch body timeout')), 3000);
        const callback = (code, value) => {
          clearTimeout(watchdog);
          const expectedText = path === '/no-body' && response.body !== null ? '' : text;
          if (code !== expected || value !== expectedText || callback.aborts !== (expected === 4 ? 1 : 0)) reject(Error(`Fetch body ${path}: ${code}/${value}, expected ${expected}/${expectedText}, aborts=${callback.aborts}`));
          else resolve();
        };
        callback.aborts = 0;
        instance.exports.fetch_body(host, baseUrl + path, expected === 4 ? 150 : 1000, callback);
      });
      if (!response || response.body?.locked) throw Error('Response body was not obtained or reader lock retained');
      count++;
    }
    for (const record of [false, true]) {
      await new Promise((resolve, reject) => {
        const watchdog = setTimeout(() => reject(Error('POST consumer timeout')), 3000);
        instance.exports.post_headers(window, baseUrl + '/post', record, (code, value) => {
          clearTimeout(watchdog);
          if (code !== 1 || value !== 'POST|text/plain|text/plain|日本😀') reject(Error(`POST result ${code}/${value}`));
          else resolve();
        });
      });
      count++;
    }
    return count;
  }, { bytes: [...bytes], factory: createImports.toString(), baseUrl });
  for (let attempts = 0; !pendingBodyClosed && attempts < 100; attempts++) await new Promise(resolve => setTimeout(resolve, 10));
  if (!pendingBodyStarted || !pendingBodyClosed) throw Error('Pending response body connection was not canceled');
  const aborted = await abortedRequest;
  if (!heldRequestObserved || !aborted.failure()?.errorText.includes('ERR_ABORTED')) throw Error('Fetch cancellation did not reach an active browser request');
  if (errors.length) throw Error(errors.join('\n'));
  console.log(`Generated Promise consumer: ${cases} cases passed`);
} finally {
  server.closeAllConnections();
  await new Promise(resolve => server.close(resolve));
  await browser.close();
}
