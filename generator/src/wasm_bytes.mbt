///|
fn emit_wasm_bytes(mbt : StringBuilder, js : StringBuilder) -> Unit {
  mbt.write_string(
    "fn websys_bytes_snapshot(value : JsValue) -> JsValue = \"websys\" \"bytes_snapshot\"\nfn websys_bytes_length(value : JsValue) -> Int = \"websys\" \"bytes_length\"\nfn websys_bytes_read(value : JsValue, index : Int) -> Int = \"websys\" \"bytes_read\"\npub fn JsValue::to_bytes(self : JsValue) -> Bytes? {\n  let snapshot = websys_bytes_snapshot(self)\n  let length = websys_bytes_length(snapshot)\n  if length < 0 { None } else { Some(Bytes::makei(length, i => websys_bytes_read(snapshot, i).to_byte())) }\n}\n",
  )
  // Generic stream values must not be reinterpreted as whole backing buffers.
  // Copy the view first so later host mutation cannot change MoonBit bytes.
  js.write_string(
    "    bytes_snapshot: value => { if (!(value instanceof Uint8Array)) return null; try { const length = Object.getOwnPropertyDescriptor(Object.getPrototypeOf(Uint8Array.prototype), 'length').get.call(value); if (length > 2147483647) return null; const copy = new Uint8Array(length); Uint8Array.prototype.set.call(copy, value); return copy; } catch { return null; } },\n    bytes_length: value => value === null ? -1 : value.length, bytes_read: (value, index) => value[index],\n",
  )
}
