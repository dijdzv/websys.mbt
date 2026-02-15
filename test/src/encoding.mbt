// Encoding API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Encoding_API
// Pattern: interface (constructor, methods), dictionary (options)

///|
/// Test TextEncoder / TextDecoder round-trip.
/// Equivalent to:
///   const encoder = new TextEncoder()
///   const encoded = encoder.encode("Hello")
///   const decoder = new TextDecoder()
///   decoder.decode(encoded) // "Hello"
pub fn test_encoding() -> Unit {
  // TextEncoder — Web API: new TextEncoder()
  let encoder = @websys.TextEncoder::new()

  // encoding property is always "utf-8" — Web API: encoder.encoding
  assert_eq(encoder.get_encoding(), "utf-8", label="encoder.encoding")

  // Encode a string — Web API: encoder.encode("Hello, World!")
  let encoded = encoder.encode_with_input("Hello, World!")

  // Decode back — Web API: new TextDecoder("utf-8")
  let decoder = @websys.TextDecoder::new_with_options(
    "utf-8",
    @websys.TextDecoderOptions::default(),
  )
  assert_eq(decoder.get_encoding(), "utf-8", label="decoder.encoding")
  assert_false(decoder.get_fatal(), label="decoder.fatal default")
  assert_false(decoder.get_ignore_bom(), label="decoder.ignoreBOM default")

  // Decode — Web API: decoder.decode(encoded)
  let buf = @websys.ArrayBufferView::from_uint8_array(encoded)
  let source = @websys.AllowSharedBufferSource::from_array_buffer_view(buf)
  let decode_opts = @websys.TextDecodeOptions::default()
  let decoded = decoder.decode_with_options(source, decode_opts)
  assert_eq(decoded, "Hello, World!", label="round-trip")

  // TextDecoder with fatal option — Web API: new TextDecoder("utf-8", { fatal: true })
  let fatal_decoder = @websys.TextDecoder::new_with_options("utf-8", {
    fatal: Some(true),
    ignoreBOM: None,
  })
  assert_true(fatal_decoder.get_fatal(), label="fatal decoder")
  println("  encoding: ok")
}
