///|
fn emit_wasm_arraybuffer_bytes(mbt : StringBuilder, js : StringBuilder) -> Unit {
  mbt.write_string(
    "fn websys_buffer_allocate(length : Int) -> ArrayBuffer = \"websys\" \"buffer_allocate\"\nfn websys_buffer_write(value : ArrayBuffer, index : Int, byte : Int) -> Unit = \"websys\" \"buffer_write\"\npub fn ArrayBuffer::from_bytes(bytes : Bytes) -> ArrayBuffer { let buffer = websys_buffer_allocate(bytes.length()); for index in 0..<bytes.length() { websys_buffer_write(buffer, index, bytes[index].to_int()) }; buffer }\n",
  )
  js.write_string(
    "    buffer_allocate: length => new ArrayBuffer(length), buffer_write: (value, index, byte) => { new Uint8Array(value)[index] = byte; },\n",
  )
  mbt.write_string(
    "#external\npriv type WebsysBufferSnapshot\nfn websys_buffer_snapshot(value : ArrayBuffer) -> WebsysBufferSnapshot = \"websys\" \"buffer_snapshot\"\nfn websys_buffer_length(value : WebsysBufferSnapshot) -> Int = \"websys\" \"buffer_length\"\nfn websys_buffer_read(value : WebsysBufferSnapshot, index : Int) -> Int = \"websys\" \"buffer_read\"\npub fn ArrayBuffer::to_bytes(self : ArrayBuffer) -> Bytes? { let snapshot = websys_buffer_snapshot(self); let length = websys_buffer_length(snapshot); if length < 0 { None } else { Some(Bytes::makei(length, i => websys_buffer_read(snapshot, i).to_byte())) } }\n",
  )
  js.write_string(
    "    buffer_snapshot: value => { if (!(value instanceof ArrayBuffer)) return null; try { const view = new Uint8Array(value); if (view.length > 2147483647) return null; const copy = new Uint8Array(view.length); Uint8Array.prototype.set.call(copy, view); return copy; } catch { return null; } },\n    buffer_length: value => value === null ? -1 : value.length, buffer_read: (value, index) => value[index],\n",
  )
}

///|
fn emit_wasm_bytes(mbt : StringBuilder, js : StringBuilder) -> Unit {
  mbt.write_string(
    "pub(all) enum BytesConversionError { TooLarge; InvalidValue }\nfn websys_bounded_bytes_snapshot(value : JsValue, max_bytes : Int) -> JsValue = \"websys\" \"bounded_bytes_snapshot\"\nfn websys_bounded_bytes_status(value : JsValue) -> Int = \"websys\" \"bounded_bytes_status\"\nfn websys_bounded_bytes_value(value : JsValue) -> JsValue = \"websys\" \"bounded_bytes_value\"\npub fn JsValue::to_bytes_bounded(self : JsValue, max_bytes~ : Int) -> Result[Bytes, BytesConversionError] {\n  let outcome = websys_bounded_bytes_snapshot(self, max_bytes)\n  match websys_bounded_bytes_status(outcome) {\n    0 => { let snapshot = websys_bounded_bytes_value(outcome); let length = websys_bytes_length(snapshot); Ok(Bytes::makei(length, i => websys_bytes_read(snapshot, i).to_byte())) }\n    2 => Err(TooLarge)\n    _ => Err(InvalidValue)\n  }\n}\n",
  )
  js.write_string(
    "    bounded_bytes_snapshot: " +
    bounded_bytes_snapshot_js() +
    ",\n    bounded_bytes_status: value => value.status, bounded_bytes_value: value => value.bytes,\n",
  )
  mbt.write_string(
    "fn websys_bytes_snapshot(value : JsValue) -> JsValue = \"websys\" \"bytes_snapshot\"\nfn websys_bytes_length(value : JsValue) -> Int = \"websys\" \"bytes_length\"\nfn websys_bytes_read(value : JsValue, index : Int) -> Int = \"websys\" \"bytes_read\"\npub fn JsValue::to_bytes(self : JsValue) -> Bytes? {\n  let snapshot = websys_bytes_snapshot(self)\n  let length = websys_bytes_length(snapshot)\n  if length < 0 { None } else { Some(Bytes::makei(length, i => websys_bytes_read(snapshot, i).to_byte())) }\n}\n",
  )
  // Generic stream values must not be reinterpreted as whole backing buffers.
  // Copy the view first so later host mutation cannot change MoonBit bytes.
  js.write_string(
    "    bytes_snapshot: value => { if (!(value instanceof Uint8Array)) return null; try { const length = Object.getOwnPropertyDescriptor(Object.getPrototypeOf(Uint8Array.prototype), 'length').get.call(value); if (length > 2147483647) return null; const copy = new Uint8Array(length); Uint8Array.prototype.set.call(copy, value); return copy; } catch { return null; } },\n    bytes_length: value => value === null ? -1 : value.length, bytes_read: (value, index) => value[index],\n",
  )
}

///|
fn bounded_bytes_snapshot_js() -> String {
  // Why Not: shared/resizable views cannot establish a stable fixed-length copy.
  // The legacy unbounded conversion retains its earlier acceptance policy.
  "(value, maxBytes) => { if (maxBytes < 0 || !(value instanceof Uint8Array)) return { status: 1 }; try { const proto = Object.getPrototypeOf(Uint8Array.prototype); const buffer = Object.getOwnPropertyDescriptor(proto, 'buffer').get.call(value); if (!(buffer instanceof ArrayBuffer)) return { status: 1 }; const resizable = Object.getOwnPropertyDescriptor(ArrayBuffer.prototype, 'resizable'); if (resizable && resizable.get.call(buffer)) return { status: 1 }; new Uint8Array(buffer); const length = Object.getOwnPropertyDescriptor(proto, 'length').get.call(value); if (length > maxBytes) return { status: 2 }; const copy = new Uint8Array(length); Uint8Array.prototype.set.call(copy, value); return { status: 0, bytes: copy }; } catch { return { status: 1 }; } }"
}
