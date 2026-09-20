///|
extern "js" fn stream_bytes_fixture(kind : Int) -> @websys.JsValue =
  #| kind => {
  #|   const storage = new Uint8Array([90, 1, 2, 3, 91]);
  #|   const view = new Uint8Array(storage.buffer, 1, 3);
  #|   switch (kind) {
  #|     case 0: return view;
  #|     case 1: return new Uint8Array(storage.buffer, 2, 0);
  #|     case 2: return storage.buffer;
  #|     case 3: return new DataView(storage.buffer, 1, 3);
  #|     case 4: return [1, 2, 3];
  #|     case 5: structuredClone(storage.buffer, { transfer: [storage.buffer] }); return view;
  #|     case 6: Object.defineProperty(view, 'length', { value: 9000 }); return view;
  #|     default: return new Uint16Array([1, 2, 3]);
  #|   }
  #| }

///|
extern "js" fn mutate_stream_bytes(value : @websys.JsValue) -> Unit =
  #| value => value.fill(99)

///|
fn test_stream_bytes() -> Unit {
  let source = stream_bytes_fixture(0)
  let copied = source.to_bytes().unwrap()
  assert_eq(copied, b"\x01\x02\x03", label="view offset and length")
  mutate_stream_bytes(source)
  assert_eq(copied, b"\x01\x02\x03", label="owned snapshot")
  assert_eq(stream_bytes_fixture(1).to_bytes(), Some(b""), label="empty view")
  assert_eq(
    stream_bytes_fixture(6).to_bytes(),
    Some(b"\x01\x02\x03"),
    label="intrinsic length",
  )
  for kind in [2, 3, 4, 5, 7] {
    assert_eq(
      stream_bytes_fixture(kind).to_bytes(),
      None,
      label="unsupported or detached",
    )
  }
  assert_eq(@websys.JsValue::null().to_bytes(), None)
  assert_eq(@websys.JsValue::undefined().to_bytes(), None)
}
