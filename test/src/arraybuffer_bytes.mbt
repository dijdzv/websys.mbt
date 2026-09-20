///|
extern "js" fn mutate_buffer(buffer : @websys.ArrayBuffer) -> Unit =
  #| buffer => new Uint8Array(buffer).fill(9)

///|
extern "js" fn detach_buffer(buffer : @websys.ArrayBuffer) -> Unit =
  #| buffer => { structuredClone(buffer, { transfer: [buffer] }); }

///|
fn test_arraybuffer_bytes() -> Unit {
  let original = b"\x01\x02\x03"
  let buffer = @websys.ArrayBuffer::from_bytes(original)
  let copied = buffer.to_bytes().unwrap()
  assert_eq(copied, original, label="ArrayBuffer round trip")
  mutate_buffer(buffer)
  assert_eq(original, b"\x01\x02\x03", label="buffer does not alias input")
  assert_eq(copied, b"\x01\x02\x03", label="bytes do not alias buffer")
  assert_eq(buffer.to_bytes(), Some(b"\x09\x09\x09"), label="fresh snapshot")
  assert_eq(
    @websys.ArrayBuffer::from_bytes(b"").to_bytes(),
    Some(b""),
    label="empty buffer",
  )
  detach_buffer(buffer)
  assert_eq(buffer.to_bytes(), None, label="detached buffer")
}
