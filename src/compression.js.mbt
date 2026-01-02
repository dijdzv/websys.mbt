// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/compression

///|
/// CompressionFormat enum
pub(all) enum CompressionFormat {
  Deflate
  DeflateRaw
  Gzip
}

/// Convert to string value
pub fn CompressionFormat::to_string(self : CompressionFormat) -> String {
  match self {
    Deflate => "deflate"
    DeflateRaw => "deflate-raw"
    Gzip => "gzip"
  }
}

/// Parse from string value
pub fn CompressionFormat::from_string(s : String) -> CompressionFormat? {
  match s {
    "deflate" => Some(Deflate)
    "deflate-raw" => Some(DeflateRaw)
    "gzip" => Some(Gzip)
    _ => None
  }
}

///|
/// CompressionStream interface
pub type CompressionStream

pub extern "js" fn CompressionStream::to_js_value(self : CompressionStream) -> JsValue =
  #| (self) => self

pub extern "js" fn CompressionStream::new(format : CompressionFormat) -> CompressionStream =
  #| (format) => new CompressionStream(['deflate', 'deflate-raw', 'gzip'][format])

pub extern "js" fn CompressionStream::get_readable(self : CompressionStream) -> ReadableStream =
  #| (self) => self.readable

pub extern "js" fn CompressionStream::get_writable(self : CompressionStream) -> WritableStream =
  #| (self) => self.writable

///|
/// DecompressionStream interface
pub type DecompressionStream

pub extern "js" fn DecompressionStream::to_js_value(self : DecompressionStream) -> JsValue =
  #| (self) => self

pub extern "js" fn DecompressionStream::new(format : CompressionFormat) -> DecompressionStream =
  #| (format) => new DecompressionStream(['deflate', 'deflate-raw', 'gzip'][format])

pub extern "js" fn DecompressionStream::get_readable(self : DecompressionStream) -> ReadableStream =
  #| (self) => self.readable

pub extern "js" fn DecompressionStream::get_writable(self : DecompressionStream) -> WritableStream =
  #| (self) => self.writable

