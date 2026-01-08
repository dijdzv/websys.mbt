// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-flac-codec-registration

///|
/// FlacEncoderConfig dictionary
pub struct FlacEncoderConfig {
  blockSize : Int?
  compressLevel : Int?
}

///|
/// Create a new FlacEncoderConfig with default values
pub fn FlacEncoderConfig::default() -> FlacEncoderConfig {
  FlacEncoderConfig::{ blockSize: None, compressLevel: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FlacEncoderConfig::to_js(
  self : FlacEncoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   blockSize: self.blockSize,
  #|   compressLevel: self.compressLevel
  #| })
