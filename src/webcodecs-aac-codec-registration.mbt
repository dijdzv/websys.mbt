// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-aac-codec-registration

///|
/// AacBitstreamFormat enum
pub(all) enum AacBitstreamFormat {
  Aac
  Adts
} derive(Eq, Debug)

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
  convert_aac : (AacEncoderConfig?) -> JsValue,
  convert_flac : (FlacEncoderConfig?) -> JsValue,
  convert_opus : (OpusEncoderConfig?) -> JsValue,
) -> JsValue =
  #| (self, convert_aac, convert_flac, convert_opus) => ({
  #|   aac: convert_aac(self.aac),
  #|   flac: convert_flac(self.flac),
  #|   opus: convert_opus(self.opus),
  #|   codec: self.codec,
  #|   sampleRate: self.sampleRate,
  #|   numberOfChannels: self.numberOfChannels,
  #|   bitrate: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.bitrate),
  #|   bitrateMode: ((() => { const v = self.bitrateMode; if (v === undefined) return undefined; return ['constant', 'variable'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn AudioEncoderConfig::to_js(self : AudioEncoderConfig) -> JsValue {
  AudioEncoderConfig::to_js_ffi(
    self,
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
  )
}

///|
extern "js" fn AudioEncoderConfig::from_js_ffi(
  value : JsValue,
  convert_aac : (JsValue) -> AacEncoderConfig?,
  convert_flac : (JsValue) -> FlacEncoderConfig?,
  convert_opus : (JsValue) -> OpusEncoderConfig?,
) -> AudioEncoderConfig =
  #| (v, convert_aac, convert_flac, convert_opus) => ({
  #|   aac: convert_aac(v.aac),
  #|   flac: convert_flac(v.flac),
  #|   opus: convert_opus(v.opus),
  #|   codec: v.codec,
  #|   sampleRate: v.sampleRate,
  #|   numberOfChannels: v.numberOfChannels,
  #|   bitrate: (v.bitrate === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.bitrate)),
  #|   bitrateMode: (v.bitrateMode === undefined ? undefined : ['constant', 'variable'].indexOf(v.bitrateMode))
  #| })

///|
/// Convert from JsValue
pub fn AudioEncoderConfig::from_js(value : JsValue) -> AudioEncoderConfig {
  AudioEncoderConfig::from_js_ffi(
    value,
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(AacEncoderConfig::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(FlacEncoderConfig::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(OpusEncoderConfig::from_js(value))
      }
    },
  )
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn AudioEncoderConfig::to_js_checked(
  self : AudioEncoderConfig,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_AudioEncoderConfig(
  convert : () -> AudioEncoderConfig,
) -> Result[AudioEncoderConfig, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn AudioEncoderConfig::from_js_checked(
  value : JsValue,
) -> Result[AudioEncoderConfig, JsError] {
  try_dictionary_AudioEncoderConfig(() => AudioEncoderConfig::from_js(value))
}

///|
/// AacEncoderConfig dictionary
pub(all) struct AacEncoderConfig {
  format : AacBitstreamFormat?
}

///|
/// Create a new AacEncoderConfig with default values
pub fn AacEncoderConfig::default() -> AacEncoderConfig {
  AacEncoderConfig::{ format: None, }
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
