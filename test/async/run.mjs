import { readFile } from 'node:fs/promises';
import { chromium } from 'playwright';

if (process.argv.length !== 4) throw new Error('Usage: node browser.mjs <settlement.wasm> <settlement.js>');
const bytes = await readFile(process.argv[2]);
const js = await readFile(process.argv[3], 'utf8');
const browser = await chromium.launch({ headless: true });
try {
  const page = await browser.newPage();
  page.on('pageerror', error => console.error('Browser error:', error.stack ?? error.message));
  await page.route('http://fixture.invalid/ok', route => route.fulfill({
    body: 'fetch verified', headers: { 'Access-Control-Allow-Origin': '*' },
  }));
  await page.route('http://fixture.invalid/hold', () => {});
  console.log(await page.evaluate(async ({ bytes, js }) => {
    const pending = new Set();
    const neverSettled = [];
    const callbacks = [];
    const { instance } = await WebAssembly.instantiate(new Uint8Array(bytes), {
      console: { log: value => console.log(value) },
      'moonbit:ffi': { make_closure: (fn, closure) => fn.bind(null, closure) },
      'moonbit:async': {
        set_timeout(duration, fn) {
          const timer = setTimeout(() => { pending.delete(timer); fn(); }, duration);
          pending.add(timer); return timer;
        },
        clear_timeout(timer) { pending.delete(timer); clearTimeout(timer); },
        subscribe(promise, resolve, reject) {
          callbacks.push(new WeakRef(resolve), new WeakRef(reject));
          const slot = { resolve, reject };
          Promise.resolve(promise).then(value => slot.resolve?.(value), reason => slot.reject?.(reason));
          return slot;
        },
        detach(slot) { slot.resolve = undefined; slot.reject = undefined; },
      },
      fixture: {
        is_boolean: value => typeof value === 'boolean',
        read_boolean: value => value,
        notify_boolean: (fn, code, value) => fn(code, (value => Boolean(value))(value)),
        is_unsigned: value => typeof value === 'number' && Number.isInteger(value) && value >= 0 && value <= 4294967295,
        read_unsigned: value => value,
        notify_unsigned: (fn, code, value) => fn(code, (value => value >>> 0)(value)),
        is_double: value => typeof value === 'number' && Number.isFinite(value),
        read_double: value => value,
        notify_double: (fn, code, value) => fn(code, (value => value)(value)),
        is_string: value => typeof value === 'string',
        read_string: value => value,
        notify_string: (fn, code, value) => fn(code, (value => value)(value)),

        abort: controller => controller.abort(), settle: controller => controller.settle(), notify: (fn, code, value) => fn(code, value),
        notify_integer: (fn, code, value) => fn(code, value),
        is_integer: value => typeof value === 'number' && Number.isInteger(value) && value >= -2147483648 && value <= 2147483647,
        read_integer: value => value,
      },
      spectest: { print_char: () => {} },
    }, { builtins: ['js-string'], importedStringConstants: '_' });
    const url = URL.createObjectURL(new Blob([js], { type: 'text/javascript' }));
    try {
      const jsApi = await import(url);
      let cases = 0;
      for (const api of [jsApi, instance.exports]) {
        for (const [started, settleBeforeCancel, rejectSettlement] of [[false, false, false], [true, false, false], [true, true, false], [true, true, true]]) {
          let aborts = 0;
          let finish;
          let calls = 0;
          const controller = { abort() { aborts++; }, settle() { finish('settled before cancellation'); } };
          const promise = new Promise((resolve, reject) => { finish = rejectSettlement ? reject : resolve; });
          const result = await new Promise((resolve, reject) => {
            const watchdog = setTimeout(() => reject(Error('explicit cancellation did not finish')), 3000);
            api.start_cancel(promise, controller, started, settleBeforeCancel, (code, value) => {
              calls++;
              clearTimeout(watchdog);
              resolve({ code, value });
            });
          });
          if (result.code !== 3 || result.value !== controller) throw Error('explicit cancellation changed outcome');
          if (aborts !== 1) throw Error('explicit cancellation abort ownership: ' + JSON.stringify({ started, aborts }));
          finish('late value');
          await new Promise(resolve => setTimeout(resolve, 0));
          if (calls !== 1 || aborts !== 1) throw Error('late completion changed canceled operation');
          cases++;
        }
        for (const [name, valid, invalid] of [
          ['boolean', [true, false], [0, 1, 'true', null, undefined, {}]],
          ['unsigned', [0, 2147483648, 4294967295], [-1, 4294967296, 1.5, NaN, Infinity, '1', null]],
          ['double', [0, -0, 1.5, -1.5, Number.MAX_VALUE], [NaN, Infinity, -Infinity, '1', null, undefined]],
          ['string', ['', '日本😀', '\u0000', '\ud800'], [0, true, null, undefined, {}, new String('x')]],
        ]) {
          for (const [values, code] of [[valid, 1], [invalid, 4]]) for (const value of values) {
            const controller = new AbortController();
            const result = await new Promise((resolve, reject) => {
              const timer = setTimeout(() => reject(Error((api === jsApi ? 'js' : 'wasm-gc') + ' ' + name + ' timeout: ' + String(value))), 3000);
              api['start_' + name](Promise.resolve(value), controller, (code, value) => { clearTimeout(timer); resolve({code, value}); });
            });
            if (result.code !== code || (code === 1 && !Object.is(result.value, value))) throw Error(name + ' conversion mismatch: ' + String(value));
            if (controller.signal.aborted) throw Error(name + ' decoder aborted settled operation');
            cases++;
          }
        }
        const object = { value: '日本😀' };
        for (const [index, value] of [0, 42, -2147483648, 2147483647, 2147483648, -2147483649, 1.5, NaN, Infinity, '42', true, null, undefined, {}, 42n].entries()) {
          const controller = new AbortController();
          const result = await new Promise(resolve => api.start_integer(Promise.resolve(value), controller, (code, value) => resolve({ code, value })));
          const valid = index < 4;
          if (valid ? result.code !== 1 || result.value !== value : result.code !== 4) throw Error('Integer conversion mismatch');
          if (controller.signal.aborted) throw Error('Decoder failure aborted settled operation');
          cases++;
        }
        async function run(promise, timeout = 500) {
          const controller = new AbortController();
          const source = typeof promise === 'function' ? promise(controller.signal) : promise;
          let calls = 0;
          const value = await new Promise(resolve => api.start(source, controller, timeout, (code, value) => {
            calls++; resolve({ code, value });
          }));
          return { ...value, controller, calls: () => calls };
        }
        for (const value of [object, null, undefined, '日本😀']) {
          const result = await run(Promise.resolve(value));
          if (result.code !== 1 || result.value !== value || result.controller.signal.aborted) throw Error('Fulfillment changed');
          cases++;
        }
        for (const value of [object, undefined, new Error('fixture')]) {
          const result = await run(Promise.reject(value));
          if (result.code !== 2 || result.value !== value) throw Error('Rejection changed');
          if (result.controller.signal.aborted) throw Error('Settled rejection unnecessarily aborted its operation');
          cases++;
        }
        for (const rejectLate of [false, true]) {
          let finish;
          const promise = new Promise((resolve, reject) => { finish = rejectLate ? reject : resolve; });
          const result = await run(promise, 5);
          if (result.code !== 3 || !result.controller.signal.aborted) throw Error('Cancellation did not abort');
          finish(object);
          await new Promise(resolve => setTimeout(resolve, 20));
          if (result.calls() !== 1) throw Error('Late settlement resumed completed task');
          cases++;
        }
        const fetched = await run(signal => fetch('http://fixture.invalid/ok', { signal }));
        if (fetched.code !== 1 || await fetched.value.text() !== 'fetch verified') throw Error('Fetch fulfillment failed');
        cases++;
        let fetchAborted = false;
        const canceledFetch = await run(signal => fetch('http://fixture.invalid/hold', { signal }).catch(error => {
          fetchAborted = error.name === 'AbortError';
          throw error;
        }), 30);
        await new Promise(resolve => setTimeout(resolve, 20));
        if (canceledFetch.code !== 3 || !fetchAborted || canceledFetch.calls() !== 1) throw Error('Fetch cancellation failed');
        cases++;
        const resolvers = [];
        const concurrent = Array.from({ length: 16 }, (_, index) => {
          const value = { index };
          const promise = new Promise(resolve => { resolvers.push(() => resolve(value)); });
          return { value, result: run(promise) };
        });
        resolvers.reverse().forEach(resolve => resolve());
        for (const item of concurrent) {
          const result = await item.result;
          if (result.code !== 1 || result.value !== item.value || result.calls() !== 1) throw Error('Concurrent settlements mixed');
          cases++;
        }
        const late = [];
        const cancelled = Array.from({ length: 16 }, (_, index) => {
          const promise = new Promise((resolve, reject) => { late.push(index % 2 ? reject : resolve); });
          return run(promise, 5);
        });
        const canceledResults = await Promise.all(cancelled);
        if (canceledResults.some(result => result.code !== 3 || !result.controller.signal.aborted)) throw Error('Concurrent cancellation failed');
        late.reverse().forEach(finish => finish(object));
        await new Promise(resolve => setTimeout(resolve, 20));
        if (canceledResults.some(result => result.calls() !== 1)) throw Error('Canceled batch resumed twice');
        cases += canceledResults.length;
        for (let index = 0; index < 8; index++) {
          const promise = new Promise(() => {});
          neverSettled.push(promise);
          const result = await run(promise, 5);
          if (result.code !== 3 || !result.controller.signal.aborted) throw Error('Unsettled promise did not cancel');
          cases++;
        }
      }
      if (pending.size !== 0) throw Error('Pending timers after settlement');
      const control = () => {};
      window.__settlementGc = { instance, callbacks, neverSettled, strong: control, control: new WeakRef(control) };
      return JSON.stringify({ cases, pendingTimers: pending.size, backends: ['js', 'wasm-gc'] });
    } finally { URL.revokeObjectURL(url); }
  }, { bytes: [...bytes], js }));
  const cdp = await page.context().newCDPSession(page);
  await cdp.send('HeapProfiler.collectGarbage');
  await cdp.send('HeapProfiler.collectGarbage');
  const gc = await page.evaluate(() => {
    const data = window.__settlementGc;
    return { observed: data.callbacks.length, alive: data.callbacks.filter(ref => ref.deref() !== undefined).length,
      controlAlive: data.control.deref() !== undefined, instanceAlive: typeof data.instance.exports.start === 'function', retainedPromises: data.neverSettled.length };
  });
  if (!gc.observed || gc.alive !== 0 || !gc.controlAlive || !gc.instanceAlive || gc.retainedPromises !== 16) throw Error('Callback reclamation check failed: ' + JSON.stringify(gc));
  console.log(JSON.stringify({ callbackGc: gc }));
} finally { await browser.close(); }
