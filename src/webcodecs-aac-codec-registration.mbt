// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-aac-codec-registration

///|
/// AacBitstreamFormat enum
pub(all) enum AacBitstreamFormat {
  Aac
  Adts
}

///|
/// Convert to string value
pub fn AacBitstreamFormat::to_string(self : AacBitstreamFormat) -> String {
  match self {
    AacBitstreamFormat::Aac => "aac"
    AacBitstreamFormat::Adts => "adts"
  }
}

///|
/// Parse from string value
pub fn AacBitstreamFormat::from_string(s : String) -> AacBitstreamFormat? {
  match s {
    "aac" => Some(AacBitstreamFormat::Aac)
    "adts" => Some(AacBitstreamFormat::Adts)
    _ => None
  }
}

///|
/// AacEncoderConfig dictionary
pub struct AacEncoderConfig {
  format : AacBitstreamFormat?
}

///|
/// Create a new AacEncoderConfig with default values
pub fn AacEncoderConfig::default() -> AacEncoderConfig {
  AacEncoderConfig::{ format: None }
}

///|
/// Convert to JsValue
pub extern "js" fn AacEncoderConfig::to_js(self : AacEncoderConfig) -> JsValue =
  #| (self) => ({
  #|   format: ['aac', 'adts'][self.format]
  #| })
