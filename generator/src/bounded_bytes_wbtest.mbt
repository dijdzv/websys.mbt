///|
extern "js" fn bounded_snapshot_contract(source : String) -> Int32 =
  #| source => {
  #|   const capture = new Function(`return (${source})`)();
  #|   const require = (value, message) => { if (!value) throw new Error(message); };
  #|   const buffer = new ArrayBuffer(6);
  #|   const view = new Uint8Array(buffer, 2, 3);
  #|   view.set([7, 128, 255]);
  #|   Object.defineProperty(view, 'length', { get() { throw Error('Untrusted length getter'); } });
  #|   const copy = capture(view, 3);
  #|   require(copy.status === 0 && copy.bytes.length === 3, 'Stable bounded view');
  #|   view[0] = 99;
  #|   require(copy.bytes[0] === 7 && copy.bytes[1] === 128 && copy.bytes[2] === 255, 'Owned snapshot');
  #|   require(capture(view, 2).status === 2, 'Oversize admission');
  #|   require(capture(view, -1).status === 1, 'Negative limit');
  #|   require(capture(new Uint8Array(), 0).status === 0, 'Empty view');
  #|   require(capture(new ArrayBuffer(1), 1).status === 1, 'Wrong source kind');
  #|   structuredClone(buffer, { transfer: [buffer] });
  #|   require(capture(view, 3).status === 1 && copy.bytes[0] === 7, 'Detached view');
  #|   require(capture(new Uint8Array(new SharedArrayBuffer(3)), 3).status === 1, 'Shared view');
  #|   const resizable = new ArrayBuffer(3, { maxByteLength: 6 });
  #|   require(resizable.resizable && capture(new Uint8Array(resizable), 3).status === 1, 'Resizable view');
  #|   return 8;
  #| }

///|
test "JS bounded snapshot keeps view ownership and rejects inputs outside its explicit contract" {
  assert_eq(bounded_snapshot_contract(bounded_bytes_snapshot_js()), 8)
}
