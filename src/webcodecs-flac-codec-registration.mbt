// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-flac-codec-registration

///|
/// AudioEncoderConfig dictionary
pub struct AudioEncoderConfig {
  flac : FlacEncoderConfig?
  opus : OpusEncoderConfig?
  aac : AacEncoderConfig?
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
    flac: None,
    opus: None,
    aac: None,
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
  #|   flac: self.flac,
  #|   opus: self.opus,
  #|   aac: self.aac,
  #|   codec: self.codec,
  #|   sampleRate: self.sampleRate,
  #|   numberOfChannels: self.numberOfChannels,
  #|   bitrate: self.bitrate,
  #|   bitrateMode: ['constant', 'variable'][self.bitrateMode]
  #| })

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
