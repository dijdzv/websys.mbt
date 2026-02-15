// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-flac-codec-registration

///|
/// FlacEncoderConfig dictionary
pub(all) struct FlacEncoderConfig {
  blockSize : Int?
  compressLevel : Int?
}

///|
/// Create a new FlacEncoderConfig with default values
pub fn FlacEncoderConfig::default() -> FlacEncoderConfig {
  FlacEncoderConfig::{ blockSize: None, compressLevel: None }
}

///|
extern "js" fn FlacEncoderConfig::to_js_ffi(
  self : FlacEncoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   blockSize: self.blockSize,
  #|   compressLevel: self.compressLevel
  #| })

///|
/// Convert to JsValue
pub fn FlacEncoderConfig::to_js(self : FlacEncoderConfig) -> JsValue {
  FlacEncoderConfig::to_js_ffi(self)
}

///|
extern "js" fn FlacEncoderConfig::from_js_ffi(
  value : JsValue,
) -> FlacEncoderConfig =
  #| (v) => ({
  #|   blockSize: v.blockSize,
  #|   compressLevel: v.compressLevel
  #| })

///|
/// Convert from JsValue
pub fn FlacEncoderConfig::from_js(value : JsValue) -> FlacEncoderConfig {
  FlacEncoderConfig::from_js_ffi(value)
}
