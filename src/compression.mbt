// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/compression

///|
/// CompressionFormat enum
pub(all) enum CompressionFormat {
  Deflate
  DeflateRaw
  Gzip
} derive(Eq, Show)

///|
/// Convert to string value
pub fn CompressionFormat::to_string(self : CompressionFormat) -> String {
  match self {
    CompressionFormat::Deflate => "deflate"
    CompressionFormat::DeflateRaw => "deflate-raw"
    CompressionFormat::Gzip => "gzip"
  }
}

///|
/// Parse from string value
pub fn CompressionFormat::from_string(s : String) -> CompressionFormat? {
  match s {
    "deflate" => Some(CompressionFormat::Deflate)
    "deflate-raw" => Some(CompressionFormat::DeflateRaw)
    "gzip" => Some(CompressionFormat::Gzip)
    _ => None
  }
}

///|
/// CompressionStream interface
pub type CompressionStream

///|
pub extern "js" fn CompressionStream::to_js_value(
  self : CompressionStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CompressionStream (unchecked)
pub extern "js" fn CompressionStream::from_js_value(
  v : JsValue,
) -> CompressionStream =
  #| (v) => v

///|
/// Safely cast JsValue to CompressionStream (checked with instanceof)
pub extern "js" fn CompressionStream::from_js_value_opt(
  v : JsValue,
) -> CompressionStream? =
  #| (v) => (v instanceof CompressionStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CompressionStream (checked with instanceof)
pub extern "js" fn JsValue::as_compression_stream(
  self : JsValue,
) -> CompressionStream? =
  #| (self) => (self instanceof CompressionStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CompressionStream (unchecked)
pub extern "js" fn JsValue::to_compression_stream(
  self : JsValue,
) -> CompressionStream =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum CompressionStreamConstructorError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn CompressionStream::new(
  format : CompressionFormat,
) -> Result[CompressionStream, CompressionStreamConstructorError] =
  #| (format) => (() => { try { return { $tag: 1, _0: new CompressionStream(['deflate', 'deflate-raw', 'gzip'][format]) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn CompressionStream::get_readable(
  self : CompressionStream,
) -> ReadableStream =
  #| (self) => self.readable

///|
pub extern "js" fn CompressionStream::get_writable(
  self : CompressionStream,
) -> WritableStream =
  #| (self) => self.writable

///|
/// DecompressionStream interface
pub type DecompressionStream

///|
pub extern "js" fn DecompressionStream::to_js_value(
  self : DecompressionStream,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DecompressionStream (unchecked)
pub extern "js" fn DecompressionStream::from_js_value(
  v : JsValue,
) -> DecompressionStream =
  #| (v) => v

///|
/// Safely cast JsValue to DecompressionStream (checked with instanceof)
pub extern "js" fn DecompressionStream::from_js_value_opt(
  v : JsValue,
) -> DecompressionStream? =
  #| (v) => (v instanceof DecompressionStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DecompressionStream (checked with instanceof)
pub extern "js" fn JsValue::as_decompression_stream(
  self : JsValue,
) -> DecompressionStream? =
  #| (self) => (self instanceof DecompressionStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DecompressionStream (unchecked)
pub extern "js" fn JsValue::to_decompression_stream(
  self : JsValue,
) -> DecompressionStream =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum DecompressionStreamConstructorError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn DecompressionStream::new(
  format : CompressionFormat,
) -> Result[DecompressionStream, DecompressionStreamConstructorError] =
  #| (format) => (() => { try { return { $tag: 1, _0: new DecompressionStream(['deflate', 'deflate-raw', 'gzip'][format]) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn DecompressionStream::get_readable(
  self : DecompressionStream,
) -> ReadableStream =
  #| (self) => self.readable

///|
pub extern "js" fn DecompressionStream::get_writable(
  self : DecompressionStream,
) -> WritableStream =
  #| (self) => self.writable
