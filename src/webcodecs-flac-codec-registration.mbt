// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-flac-codec-registration

///|
/// AudioEncoderConfig dictionary
pub(all) struct AudioEncoderConfig {
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
extern "js" fn AudioEncoderConfig::to_js_ffi(
  self : AudioEncoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   flac: ((() => { const v = self.flac; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   opus: ((() => { const v = self.opus; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   aac: ((() => { const v = self.aac; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   codec: self.codec,
  #|   sampleRate: self.sampleRate,
  #|   numberOfChannels: self.numberOfChannels,
  #|   bitrate: self.bitrate,
  #|   bitrateMode: ((() => { const v = self.bitrateMode; if (v === undefined) return undefined; return ['constant', 'variable'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn AudioEncoderConfig::to_js(self : AudioEncoderConfig) -> JsValue {
  AudioEncoderConfig::to_js_ffi(self)
}

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
