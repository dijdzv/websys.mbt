// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-hevc-codec-registration

///|
/// HevcBitstreamFormat enum
pub(all) enum HevcBitstreamFormat {
  Annexb
  Hevc
}

///|
/// Convert to string value
pub fn HevcBitstreamFormat::to_string(self : HevcBitstreamFormat) -> String {
  match self {
    HevcBitstreamFormat::Annexb => "annexb"
    HevcBitstreamFormat::Hevc => "hevc"
  }
}

///|
/// Parse from string value
pub fn HevcBitstreamFormat::from_string(s : String) -> HevcBitstreamFormat? {
  match s {
    "annexb" => Some(HevcBitstreamFormat::Annexb)
    "hevc" => Some(HevcBitstreamFormat::Hevc)
    _ => None
  }
}

///|
/// HevcEncoderConfig dictionary
pub(all) struct HevcEncoderConfig {
  format : HevcBitstreamFormat?
}

///|
/// Create a new HevcEncoderConfig with default values
pub fn HevcEncoderConfig::default() -> HevcEncoderConfig {
  HevcEncoderConfig::{ format: None }
}

///|
extern "js" fn HevcEncoderConfig::to_js_ffi(
  self : HevcEncoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['annexb', 'hevc'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn HevcEncoderConfig::to_js(self : HevcEncoderConfig) -> JsValue {
  HevcEncoderConfig::to_js_ffi(self)
}

///|
/// VideoEncoderEncodeOptionsForHevc dictionary
pub(all) struct VideoEncoderEncodeOptionsForHevc {
  quantizer : Nullable[Int]
}

///|
/// Create a new VideoEncoderEncodeOptionsForHevc with default values
pub fn VideoEncoderEncodeOptionsForHevc::default() -> VideoEncoderEncodeOptionsForHevc {
  VideoEncoderEncodeOptionsForHevc::{ quantizer: Nullable::Undefined }
}

///|
extern "js" fn VideoEncoderEncodeOptionsForHevc::to_js_ffi(
  self : VideoEncoderEncodeOptionsForHevc,
) -> JsValue =
  #| (self) => ({
  #|   quantizer: ((() => { const v = self.quantizer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// Convert to JsValue
pub fn VideoEncoderEncodeOptionsForHevc::to_js(
  self : VideoEncoderEncodeOptionsForHevc,
) -> JsValue {
  VideoEncoderEncodeOptionsForHevc::to_js_ffi(self)
}
