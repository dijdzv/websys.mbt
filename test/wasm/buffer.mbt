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
