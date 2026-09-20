///|
let saved_buffer_bytes : Ref[Bytes?] = Ref(None)

///|
pub fn buffer_capture(buffer : @bindings.ArrayBuffer) -> Int {
  saved_buffer_bytes.val = buffer.to_bytes()
  match saved_buffer_bytes.val {
    None => -1
    Some(bytes) => bytes.length()
  }
}

///|
pub fn buffer_snapshot_at(index : Int) -> Int {
  saved_buffer_bytes.val.unwrap()[index].to_int()
}

///|
pub fn buffer_roundtrip(
  receiver : @bindings.BufferFixture,
) -> @bindings.ArrayBuffer {
  receiver.set_optional_value(Some(receiver.value()))
  receiver.echo(receiver.optional_value().unwrap())
}

///|
pub fn buffer_clear(receiver : @bindings.BufferFixture) -> Bool {
  receiver.set_optional_value(None)
  receiver.optional_value() is None
}
