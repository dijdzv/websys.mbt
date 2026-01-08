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
    Aac => "aac"
    Adts => "adts"
  }
}

///|
/// Parse from string value
pub fn AacBitstreamFormat::from_string(s : String) -> AacBitstreamFormat? {
  match s {
    "aac" => Some(Aac)
    "adts" => Some(Adts)
    _ => None
  }
}

///|
/// AudioEncoderConfig dictionary
pub struct AudioEncoderConfig {
  aac : AacEncoderConfig?
  flac : FlacEncoderConfig?
  opus : OpusEncoderConfig?
  codec : String
  sampleRate : Int
  numberOfChannels : Int
  bitrate : Int64?
  bitrateMode : BitrateMode?
}

///|
/// Create a new AudioEncoderConfig with default values
pub fn AudioEncoderConfig::default() -> AudioEncoderConfig {
  AudioEncoderConfig::{
    aac: None,
    flac: None,
    opus: None,
    codec: "",
    sampleRate: 0,
    numberOfChannels: 0,
    bitrate: None,
    bitrateMode: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AudioEncoderConfig::to_js(
  self : AudioEncoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   aac: self.aac,
  #|   flac: self.flac,
  #|   opus: self.opus,
  #|   codec: self.codec,
  #|   sampleRate: self.sampleRate,
  #|   numberOfChannels: self.numberOfChannels,
  #|   bitrate: self.bitrate,
  #|   bitrateMode: ['constant', 'variable'][self.bitrateMode]
  #| })

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
