// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/encoding

///|
/// TextDecoderOptions dictionary
pub(all) struct TextDecoderOptions {
  fatal : Bool?
  ignoreBOM : Bool?
}

///|
/// Create a new TextDecoderOptions with default values
pub fn TextDecoderOptions::default() -> TextDecoderOptions {
  TextDecoderOptions::{ fatal: None, ignoreBOM: None }
}

///|
extern "js" fn TextDecoderOptions::to_js_ffi(
  self : TextDecoderOptions,
) -> JsValue =
  #| (self) => ({
  #|   fatal: (self.fatal === -1 ? undefined : self.fatal),
  #|   ignoreBOM: (self.ignoreBOM === -1 ? undefined : self.ignoreBOM)
  #| })

///|
/// Convert to JsValue
pub fn TextDecoderOptions::to_js(self : TextDecoderOptions) -> JsValue {
  TextDecoderOptions::to_js_ffi(self)
}

///|
/// TextDecodeOptions dictionary
pub(all) struct TextDecodeOptions {
  stream : Bool?
}

///|
/// Create a new TextDecodeOptions with default values
pub fn TextDecodeOptions::default() -> TextDecodeOptions {
  TextDecodeOptions::{ stream: None }
}

///|
extern "js" fn TextDecodeOptions::to_js_ffi(
  self : TextDecodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   stream: (self.stream === -1 ? undefined : self.stream)
  #| })

///|
/// Convert to JsValue
pub fn TextDecodeOptions::to_js(self : TextDecodeOptions) -> JsValue {
  TextDecodeOptions::to_js_ffi(self)
}

///|
/// TextEncoderEncodeIntoResult dictionary
pub(all) struct TextEncoderEncodeIntoResult {
  read : Int64?
  written : Int64?
}

///|
/// Create a new TextEncoderEncodeIntoResult with default values
pub fn TextEncoderEncodeIntoResult::default() -> TextEncoderEncodeIntoResult {
  TextEncoderEncodeIntoResult::{ read: None, written: None }
}

///|
extern "js" fn TextEncoderEncodeIntoResult::to_js_ffi(
  self : TextEncoderEncodeIntoResult,
) -> JsValue =
  #| (self) => ({
  #|   read: self.read,
  #|   written: self.written
  #| })

///|
/// Convert to JsValue
pub fn TextEncoderEncodeIntoResult::to_js(
  self : TextEncoderEncodeIntoResult,
) -> JsValue {
  TextEncoderEncodeIntoResult::to_js_ffi(self)
}

///|
/// TextDecoder interface
pub type TextDecoder

///|
pub extern "js" fn TextDecoder::to_js_value(self : TextDecoder) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextDecoder (unchecked)
pub extern "js" fn TextDecoder::from_js_value(v : JsValue) -> TextDecoder =
  #| (v) => v

///|
/// Safely cast JsValue to TextDecoder (checked with instanceof)
pub extern "js" fn TextDecoder::from_js_value_opt(v : JsValue) -> TextDecoder? =
  #| (v) => (v instanceof TextDecoder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextDecoder (checked with instanceof)
pub extern "js" fn JsValue::as_text_decoder(self : JsValue) -> TextDecoder? =
  #| (self) => (self instanceof TextDecoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextDecoder (unchecked)
pub extern "js" fn JsValue::to_text_decoder(self : JsValue) -> TextDecoder =
  #| (self) => self

///|
pub extern "js" fn TextDecoder::new() -> TextDecoder =
  #| () => new TextDecoder()

///|
extern "js" fn TextDecoder::new_with_options_ffi(
  label : String,
  options : JsValue,
) -> TextDecoder =
  #| (label, options) => new TextDecoder(label, options)

///|
pub fn TextDecoder::new_with_options(
  label : String,
  options : TextDecoderOptions,
) -> TextDecoder {
  TextDecoder::new_with_options_ffi(label, options.to_js())
}

///|
pub extern "js" fn TextDecoder::decode(self : TextDecoder) -> String =
  #| (self) => self.decode()

///|
extern "js" fn TextDecoder::decode_with_options_ffi(
  self : TextDecoder,
  input : AllowSharedBufferSource,
  options : JsValue,
) -> String =
  #| (self, input, options) => self.decode(input, options)

///|
pub fn TextDecoder::decode_with_options(
  self : TextDecoder,
  input : AllowSharedBufferSource,
  options : TextDecodeOptions,
) -> String {
  TextDecoder::decode_with_options_ffi(self, input, options.to_js())
}

///|
pub extern "js" fn TextDecoder::get_encoding(self : TextDecoder) -> String =
  #| (self) => self.encoding

///|
pub extern "js" fn TextDecoder::get_fatal(self : TextDecoder) -> Bool =
  #| (self) => self.fatal

///|
pub extern "js" fn TextDecoder::get_ignore_bom(self : TextDecoder) -> Bool =
  #| (self) => self.ignoreBOM

///|
pub extern "js" fn TextDecoder::decode_with_array_buffer(
  self : TextDecoder,
  input : ArrayBuffer,
  options : TextDecodeOptions,
) -> String =
  #| (self, input, options) => self.decode(input, options)

///|
pub extern "js" fn TextDecoder::decode_with_shared_array_buffer(
  self : TextDecoder,
  input : SharedArrayBuffer,
  options : TextDecodeOptions,
) -> String =
  #| (self, input, options) => self.decode(input, options)

///|
pub extern "js" fn TextDecoder::decode_with_array_buffer_view(
  self : TextDecoder,
  input : ArrayBufferView,
  options : TextDecodeOptions,
) -> String =
  #| (self, input, options) => self.decode(input, options)

///|
/// TextEncoder interface
pub type TextEncoder

///|
pub extern "js" fn TextEncoder::to_js_value(self : TextEncoder) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextEncoder (unchecked)
pub extern "js" fn TextEncoder::from_js_value(v : JsValue) -> TextEncoder =
  #| (v) => v

///|
/// Safely cast JsValue to TextEncoder (checked with instanceof)
pub extern "js" fn TextEncoder::from_js_value_opt(v : JsValue) -> TextEncoder? =
  #| (v) => (v instanceof TextEncoder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextEncoder (checked with instanceof)
pub extern "js" fn JsValue::as_text_encoder(self : JsValue) -> TextEncoder? =
  #| (self) => (self instanceof TextEncoder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextEncoder (unchecked)
pub extern "js" fn JsValue::to_text_encoder(self : JsValue) -> TextEncoder =
  #| (self) => self

///|
pub extern "js" fn TextEncoder::new() -> TextEncoder =
  #| () => new TextEncoder()

///|
pub extern "js" fn TextEncoder::encode(self : TextEncoder) -> Uint8Array =
  #| (self) => self.encode()

///|
pub extern "js" fn TextEncoder::encode_with_input(
  self : TextEncoder,
  input : String,
) -> Uint8Array =
  #| (self, input) => self.encode(input)

///|
pub extern "js" fn TextEncoder::encode_into(
  self : TextEncoder,
  source : String,
  destination : Uint8Array,
) -> TextEncoderEncodeIntoResult =
  #| (self, source, destination) => self.encodeInto(source, destination)

///|
pub extern "js" fn TextEncoder::get_encoding(self : TextEncoder) -> String =
  #| (self) => self.encoding

///|
/// TextDecoderStream interface
pub type TextDecoderStream

///|
pub extern "js" fn TextDecoderStream::to_js_value(
  self : TextDecoderStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextDecoderStream (unchecked)
pub extern "js" fn TextDecoderStream::from_js_value(
  v : JsValue,
) -> TextDecoderStream =
  #| (v) => v

///|
/// Safely cast JsValue to TextDecoderStream (checked with instanceof)
pub extern "js" fn TextDecoderStream::from_js_value_opt(
  v : JsValue,
) -> TextDecoderStream? =
  #| (v) => (v instanceof TextDecoderStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextDecoderStream (checked with instanceof)
pub extern "js" fn JsValue::as_text_decoder_stream(
  self : JsValue,
) -> TextDecoderStream? =
  #| (self) => (self instanceof TextDecoderStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextDecoderStream (unchecked)
pub extern "js" fn JsValue::to_text_decoder_stream(
  self : JsValue,
) -> TextDecoderStream =
  #| (self) => self

///|
pub extern "js" fn TextDecoderStream::new() -> TextDecoderStream =
  #| () => new TextDecoderStream()

///|
extern "js" fn TextDecoderStream::new_with_options_ffi(
  label : String,
  options : JsValue,
) -> TextDecoderStream =
  #| (label, options) => new TextDecoderStream(label, options)

///|
pub fn TextDecoderStream::new_with_options(
  label : String,
  options : TextDecoderOptions,
) -> TextDecoderStream {
  TextDecoderStream::new_with_options_ffi(label, options.to_js())
}

///|
pub extern "js" fn TextDecoderStream::get_encoding(
  self : TextDecoderStream,
) -> String =
  #| (self) => self.encoding

///|
pub extern "js" fn TextDecoderStream::get_fatal(
  self : TextDecoderStream,
) -> Bool =
  #| (self) => self.fatal

///|
pub extern "js" fn TextDecoderStream::get_ignore_bom(
  self : TextDecoderStream,
) -> Bool =
  #| (self) => self.ignoreBOM

///|
pub extern "js" fn TextDecoderStream::get_readable(
  self : TextDecoderStream,
) -> ReadableStream =
  #| (self) => self.readable

///|
pub extern "js" fn TextDecoderStream::get_writable(
  self : TextDecoderStream,
) -> WritableStream =
  #| (self) => self.writable

///|
/// TextEncoderStream interface
pub type TextEncoderStream

///|
pub extern "js" fn TextEncoderStream::to_js_value(
  self : TextEncoderStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextEncoderStream (unchecked)
pub extern "js" fn TextEncoderStream::from_js_value(
  v : JsValue,
) -> TextEncoderStream =
  #| (v) => v

///|
/// Safely cast JsValue to TextEncoderStream (checked with instanceof)
pub extern "js" fn TextEncoderStream::from_js_value_opt(
  v : JsValue,
) -> TextEncoderStream? =
  #| (v) => (v instanceof TextEncoderStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextEncoderStream (checked with instanceof)
pub extern "js" fn JsValue::as_text_encoder_stream(
  self : JsValue,
) -> TextEncoderStream? =
  #| (self) => (self instanceof TextEncoderStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextEncoderStream (unchecked)
pub extern "js" fn JsValue::to_text_encoder_stream(
  self : JsValue,
) -> TextEncoderStream =
  #| (self) => self

///|
pub extern "js" fn TextEncoderStream::new() -> TextEncoderStream =
  #| () => new TextEncoderStream()

///|
pub extern "js" fn TextEncoderStream::get_encoding(
  self : TextEncoderStream,
) -> String =
  #| (self) => self.encoding

///|
pub extern "js" fn TextEncoderStream::get_readable(
  self : TextEncoderStream,
) -> ReadableStream =
  #| (self) => self.readable

///|
pub extern "js" fn TextEncoderStream::get_writable(
  self : TextEncoderStream,
) -> WritableStream =
  #| (self) => self.writable
