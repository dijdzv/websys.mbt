///|
fn emit_js_bytes(output : StringBuilder) -> Unit {
  output.write_string(
    "pub(all) enum BytesConversionError { TooLarge; InvalidValue }\nextern \"js\" fn bounded_bytes_snapshot(value : JsValue, max_bytes : Int) -> JsValue =\n  #| " +
    bounded_bytes_snapshot_js() +
    "\nextern \"js\" fn bounded_bytes_status(value : JsValue) -> Int =\n  #| value => value.status\nextern \"js\" fn bounded_bytes_value(value : JsValue) -> Bytes =\n  #| value => value.bytes\npub fn JsValue::to_bytes_bounded(self : JsValue, max_bytes~ : Int) -> Result[Bytes, BytesConversionError] {\n  let outcome = bounded_bytes_snapshot(self, max_bytes)\n  match bounded_bytes_status(outcome) {\n    0 => Ok(bounded_bytes_value(outcome))\n    2 => Err(TooLarge)\n    _ => Err(InvalidValue)\n  }\n}\n",
  )
  output.write_string(
    (
      #|extern "js" fn bytes_snapshot(value : JsValue) -> JsValue =
      #|  #| value => { if (!(value instanceof Uint8Array)) return null; try { const length = Object.getOwnPropertyDescriptor(Object.getPrototypeOf(Uint8Array.prototype), 'length').get.call(value); if (length > 2147483647) return null; const copy = new Uint8Array(length); Uint8Array.prototype.set.call(copy, value); return copy; } catch { return null; } }
      #|extern "js" fn bytes_snapshot_valid(value : JsValue) -> Bool =
      #|  #| value => value !== null
      #|extern "js" fn bytes_snapshot_value(value : JsValue) -> Bytes =
      #|  #| value => value
      #|/// Copy a Uint8Array view into owned bytes; reject other or detached values.
      #|pub fn JsValue::to_bytes(self : JsValue) -> Bytes? {
      #|  let snapshot = bytes_snapshot(self)
      #|  if bytes_snapshot_valid(snapshot) { Some(bytes_snapshot_value(snapshot)) } else { None }
      #|}
      #|/// Copy bytes into an independently owned ArrayBuffer.
      #|pub extern "js" fn ArrayBuffer::from_bytes(bytes : Bytes) -> ArrayBuffer =
      #|  #| bytes => { const copy = new Uint8Array(bytes.length); Uint8Array.prototype.set.call(copy, bytes); return copy.buffer; }
      #|extern "js" fn buffer_bytes_snapshot(value : ArrayBuffer) -> JsValue =
      #|  #| value => { if (!(value instanceof ArrayBuffer)) return null; try { const view = new Uint8Array(value); if (view.length > 2147483647) return null; const copy = new Uint8Array(view.length); Uint8Array.prototype.set.call(copy, view); return copy; } catch { return null; } }
      #|/// Copy an ArrayBuffer into owned bytes; reject detached buffers.
      #|pub fn ArrayBuffer::to_bytes(self : ArrayBuffer) -> Bytes? {
      #|  let snapshot = buffer_bytes_snapshot(self)
      #|  if bytes_snapshot_valid(snapshot) { Some(bytes_snapshot_value(snapshot)) } else { None }
      #|}
      #|
      #|
    ),
  )
}
