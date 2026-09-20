///|
pub fn buffer_promises(
  probe : @web.BufferPromiseProbe,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    try {
      ignore(probe.plain().wait())
      ignore(probe.shared().wait())
      ignore(probe.view().wait())
      ignore(probe.optional_plain().wait())
      ignore(probe.optional_shared().wait())
      ignore(probe.optional_view().wait())
      notify(callback, 1, "")
    } catch {
      @web.PromiseDecodeError(_) => notify(callback, 2, "")
      _ => notify(callback, 3, "")
    }
  })
}

///|
pub fn crypto_digest(crypto : @web.SubtleCrypto, callback : Callback) -> Unit {
  @async.run_async_main(async fn() {
    try {
      let digest = crypto
        .digest("SHA-256", @web.ArrayBuffer::from_bytes(b"abc"))
        .wait()
      let bytes = digest.to_bytes().unwrap()
      let hex = "0123456789abcdef"
      let text = StringBuilder()
      for byte in bytes {
        text.write_char(hex[byte.to_int() >> 4].to_int().unsafe_to_char())
        text.write_char(hex[byte.to_int() & 15].to_int().unsafe_to_char())
      }
      notify(callback, 1, text.to_string())
    } catch {
      _ => notify(callback, 3, "")
    }
  })
}
