// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-hevc-codec-registration

///|
/// HevcBitstreamFormat enum
pub(all) enum HevcBitstreamFormat {
  Annexb
  Hevc
}

/// Convert to string value
pub fn HevcBitstreamFormat::to_string(self : HevcBitstreamFormat) -> String {
  match self {
    Annexb => "annexb"
    Hevc => "hevc"
  }
}

/// Parse from string value
pub fn HevcBitstreamFormat::from_string(s : String) -> HevcBitstreamFormat? {
  match s {
    "annexb" => Some(Annexb)
    "hevc" => Some(Hevc)
    _ => None
  }
}

///|
/// HevcEncoderConfig dictionary
pub struct HevcEncoderConfig {
  format : HevcBitstreamFormat?
}

/// Create a new HevcEncoderConfig with default values
pub fn HevcEncoderConfig::default() -> HevcEncoderConfig {
  HevcEncoderConfig::{
    format: None,
  }
}

/// Convert to JsValue
pub extern "js" fn HevcEncoderConfig::to_js(self : HevcEncoderConfig) -> JsValue =
  #| (self) => ({
  #|   format: self.format
  #| })

///|
/// VideoEncoderEncodeOptionsForHevc dictionary
pub struct VideoEncoderEncodeOptionsForHevc {
  quantizer : Int??
}

/// Create a new VideoEncoderEncodeOptionsForHevc with default values
pub fn VideoEncoderEncodeOptionsForHevc::default() -> VideoEncoderEncodeOptionsForHevc {
  VideoEncoderEncodeOptionsForHevc::{
    quantizer: None,
  }
}

/// Convert to JsValue
pub extern "js" fn VideoEncoderEncodeOptionsForHevc::to_js(self : VideoEncoderEncodeOptionsForHevc) -> JsValue =
  #| (self) => ({
  #|   quantizer: self.quantizer
  #| })

