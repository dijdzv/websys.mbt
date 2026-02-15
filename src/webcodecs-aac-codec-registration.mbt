// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-aac-codec-registration

///|
/// AacBitstreamFormat enum
pub(all) enum AacBitstreamFormat {
  Aac
  Adts
} derive(Eq, Show)

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
/// AudioEncoderConfig dictionary
pub(all) struct AudioEncoderConfig {
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
extern "js" fn AudioEncoderConfig::to_js_ffi(
  self : AudioEncoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   aac: ((() => { const v = self.aac; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   flac: ((() => { const v = self.flac; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   opus: ((() => { const v = self.opus; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
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
extern "js" fn AudioEncoderConfig::from_js_ffi(
  value : JsValue,
) -> AudioEncoderConfig =
  #| (v) => ({
  #|   aac: (v.aac === undefined ? { $tag: 0 } : { $tag: 1, _0: v.aac }),
  #|   flac: (v.flac === undefined ? { $tag: 0 } : { $tag: 1, _0: v.flac }),
  #|   opus: (v.opus === undefined ? { $tag: 0 } : { $tag: 1, _0: v.opus }),
  #|   codec: v.codec,
  #|   sampleRate: v.sampleRate,
  #|   numberOfChannels: v.numberOfChannels,
  #|   bitrate: v.bitrate,
  #|   bitrateMode: (v.bitrateMode === undefined ? undefined : ['constant', 'variable'].indexOf(v.bitrateMode))
  #| })

///|
/// Convert from JsValue
pub fn AudioEncoderConfig::from_js(value : JsValue) -> AudioEncoderConfig {
  AudioEncoderConfig::from_js_ffi(value)
}

///|
/// AacEncoderConfig dictionary
pub(all) struct AacEncoderConfig {
  format : AacBitstreamFormat?
}

///|
/// Create a new AacEncoderConfig with default values
pub fn AacEncoderConfig::default() -> AacEncoderConfig {
  AacEncoderConfig::{ format: None }
}

///|
extern "js" fn AacEncoderConfig::to_js_ffi(self : AacEncoderConfig) -> JsValue =
  #| (self) => ({
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['aac', 'adts'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn AacEncoderConfig::to_js(self : AacEncoderConfig) -> JsValue {
  AacEncoderConfig::to_js_ffi(self)
}

///|
extern "js" fn AacEncoderConfig::from_js_ffi(
  value : JsValue,
) -> AacEncoderConfig =
  #| (v) => ({
  #|   format: (v.format === undefined ? undefined : ['aac', 'adts'].indexOf(v.format))
  #| })

///|
/// Convert from JsValue
pub fn AacEncoderConfig::from_js(value : JsValue) -> AacEncoderConfig {
  AacEncoderConfig::from_js_ffi(value)
}
