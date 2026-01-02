// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/encoding

///|
/// TextDecoderOptions dictionary
pub struct TextDecoderOptions {
  fatal : Bool?
  ignoreBOM : Bool?
}

/// Create a new TextDecoderOptions with default values
pub fn TextDecoderOptions::default() -> TextDecoderOptions {
  TextDecoderOptions::{
    fatal: None,
    ignoreBOM: None,
  }
}

/// Convert to JsValue
pub extern "js" fn TextDecoderOptions::to_js(self : TextDecoderOptions) -> JsValue =
  #| (self) => ({
  #|   fatal: self.fatal,
  #|   ignoreBOM: self.ignoreBOM
  #| })

///|
/// TextDecodeOptions dictionary
pub struct TextDecodeOptions {
  stream : Bool?
}

/// Create a new TextDecodeOptions with default values
pub fn TextDecodeOptions::default() -> TextDecodeOptions {
  TextDecodeOptions::{
    stream: None,
  }
}

/// Convert to JsValue
pub extern "js" fn TextDecodeOptions::to_js(self : TextDecodeOptions) -> JsValue =
  #| (self) => ({
  #|   stream: self.stream
  #| })

///|
/// TextEncoderEncodeIntoResult dictionary
pub struct TextEncoderEncodeIntoResult {
  read : Int64?
  written : Int64?
}

/// Create a new TextEncoderEncodeIntoResult with default values
pub fn TextEncoderEncodeIntoResult::default() -> TextEncoderEncodeIntoResult {
  TextEncoderEncodeIntoResult::{
    read: None,
    written: None,
  }
}

/// Convert to JsValue
pub extern "js" fn TextEncoderEncodeIntoResult::to_js(self : TextEncoderEncodeIntoResult) -> JsValue =
  #| (self) => ({
  #|   read: self.read,
  #|   written: self.written
  #| })

///|
/// TextDecoder interface
pub type TextDecoder

pub extern "js" fn TextDecoder::to_js_value(self : TextDecoder) -> JsValue =
  #| (self) => self

pub extern "js" fn TextDecoder::new(label : String, options : TextDecoderOptions) -> TextDecoder =
  #| (label, options) => new TextDecoder(label, options)

pub extern "js" fn TextDecoder::decode(self : TextDecoder) -> String =
  #| (self) => self.decode()

pub extern "js" fn TextDecoder::decode_with_options(self : TextDecoder, input : AllowSharedBufferSource, options : TextDecodeOptions) -> String =
  #| (self, input, options) => self.decode(input, options)

pub extern "js" fn TextDecoder::get_encoding(self : TextDecoder) -> String =
  #| (self) => self.encoding

pub extern "js" fn TextDecoder::get_fatal(self : TextDecoder) -> Bool =
  #| (self) => self.fatal

pub extern "js" fn TextDecoder::get_ignore_b_o_m(self : TextDecoder) -> Bool =
  #| (self) => self.ignoreBOM

///|
/// TextEncoder interface
pub type TextEncoder

pub extern "js" fn TextEncoder::to_js_value(self : TextEncoder) -> JsValue =
  #| (self) => self

pub extern "js" fn TextEncoder::new() -> TextEncoder =
  #| () => new TextEncoder()

pub extern "js" fn TextEncoder::encode(self : TextEncoder) -> Uint8Array =
  #| (self) => self.encode()

pub extern "js" fn TextEncoder::encode_with_input(self : TextEncoder, input : String) -> Uint8Array =
  #| (self, input) => self.encode(input)

pub extern "js" fn TextEncoder::encode_into(self : TextEncoder, source : String, destination : Uint8Array) -> TextEncoderEncodeIntoResult =
  #| (self, source, destination) => self.encodeInto(source, destination)

pub extern "js" fn TextEncoder::get_encoding(self : TextEncoder) -> String =
  #| (self) => self.encoding

///|
/// TextDecoderStream interface
pub type TextDecoderStream

pub extern "js" fn TextDecoderStream::to_js_value(self : TextDecoderStream) -> JsValue =
  #| (self) => self

pub extern "js" fn TextDecoderStream::new(label : String, options : TextDecoderOptions) -> TextDecoderStream =
  #| (label, options) => new TextDecoderStream(label, options)

pub extern "js" fn TextDecoderStream::get_encoding(self : TextDecoderStream) -> String =
  #| (self) => self.encoding

pub extern "js" fn TextDecoderStream::get_fatal(self : TextDecoderStream) -> Bool =
  #| (self) => self.fatal

pub extern "js" fn TextDecoderStream::get_ignore_b_o_m(self : TextDecoderStream) -> Bool =
  #| (self) => self.ignoreBOM

pub extern "js" fn TextDecoderStream::get_readable(self : TextDecoderStream) -> ReadableStream =
  #| (self) => self.readable

pub extern "js" fn TextDecoderStream::get_writable(self : TextDecoderStream) -> WritableStream =
  #| (self) => self.writable

///|
/// TextEncoderStream interface
pub type TextEncoderStream

pub extern "js" fn TextEncoderStream::to_js_value(self : TextEncoderStream) -> JsValue =
  #| (self) => self

pub extern "js" fn TextEncoderStream::new() -> TextEncoderStream =
  #| () => new TextEncoderStream()

pub extern "js" fn TextEncoderStream::get_encoding(self : TextEncoderStream) -> String =
  #| (self) => self.encoding

pub extern "js" fn TextEncoderStream::get_readable(self : TextEncoderStream) -> ReadableStream =
  #| (self) => self.readable

pub extern "js" fn TextEncoderStream::get_writable(self : TextEncoderStream) -> WritableStream =
  #| (self) => self.writable

