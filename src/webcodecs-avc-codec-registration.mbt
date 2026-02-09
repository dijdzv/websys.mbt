// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-avc-codec-registration

///|
/// AvcBitstreamFormat enum
pub(all) enum AvcBitstreamFormat {
  Annexb
  Avc
}

///|
/// Convert to string value
pub fn AvcBitstreamFormat::to_string(self : AvcBitstreamFormat) -> String {
  match self {
    AvcBitstreamFormat::Annexb => "annexb"
    AvcBitstreamFormat::Avc => "avc"
  }
}

///|
/// Parse from string value
pub fn AvcBitstreamFormat::from_string(s : String) -> AvcBitstreamFormat? {
  match s {
    "annexb" => Some(AvcBitstreamFormat::Annexb)
    "avc" => Some(AvcBitstreamFormat::Avc)
    _ => None
  }
}

///|
/// VideoEncoderConfig dictionary
pub(all) struct VideoEncoderConfig {
  avc : AvcEncoderConfig?
  hevc : HevcEncoderConfig?
  codec : String
  width : Int
  height : Int
  displayWidth : Int?
  displayHeight : Int?
  bitrate : Int64?
  framerate : Double?
  hardwareAcceleration : HardwareAcceleration?
  alpha : AlphaOption?
  scalabilityMode : String?
  bitrateMode : VideoEncoderBitrateMode?
  latencyMode : LatencyMode?
  contentHint : String?
}

///|
/// Create a new VideoEncoderConfig with default values
pub fn VideoEncoderConfig::default() -> VideoEncoderConfig {
  VideoEncoderConfig::{
    avc: None,
    hevc: None,
    codec: "",
    width: 0,
    height: 0,
    displayWidth: None,
    displayHeight: None,
    bitrate: None,
    framerate: None,
    hardwareAcceleration: None,
    alpha: None,
    scalabilityMode: None,
    bitrateMode: None,
    latencyMode: None,
    contentHint: None,
  }
}

///|
extern "js" fn VideoEncoderConfig::to_js_ffi(
  self : VideoEncoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   avc: ((() => { const v = self.avc; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   hevc: ((() => { const v = self.hevc; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   codec: self.codec,
  #|   width: self.width,
  #|   height: self.height,
  #|   displayWidth: self.displayWidth,
  #|   displayHeight: self.displayHeight,
  #|   bitrate: self.bitrate,
  #|   framerate: self.framerate,
  #|   hardwareAcceleration: ((() => { const v = self.hardwareAcceleration; if (v === undefined) return undefined; return ['no-preference', 'prefer-hardware', 'prefer-software'][v]; })()),
  #|   alpha: ((() => { const v = self.alpha; if (v === undefined) return undefined; return ['keep', 'discard'][v]; })()),
  #|   scalabilityMode: self.scalabilityMode,
  #|   bitrateMode: ((() => { const v = self.bitrateMode; if (v === undefined) return undefined; return ['constant', 'variable', 'quantizer'][v]; })()),
  #|   latencyMode: ((() => { const v = self.latencyMode; if (v === undefined) return undefined; return ['quality', 'realtime'][v]; })()),
  #|   contentHint: self.contentHint
  #| })

///|
/// Convert to JsValue
pub fn VideoEncoderConfig::to_js(self : VideoEncoderConfig) -> JsValue {
  VideoEncoderConfig::to_js_ffi(self)
}

///|
/// AvcEncoderConfig dictionary
pub(all) struct AvcEncoderConfig {
  format : AvcBitstreamFormat?
}

///|
/// Create a new AvcEncoderConfig with default values
pub fn AvcEncoderConfig::default() -> AvcEncoderConfig {
  AvcEncoderConfig::{ format: None }
}

///|
extern "js" fn AvcEncoderConfig::to_js_ffi(self : AvcEncoderConfig) -> JsValue =
  #| (self) => ({
  #|   format: ((() => { const v = self.format; if (v === undefined) return undefined; return ['annexb', 'avc'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn AvcEncoderConfig::to_js(self : AvcEncoderConfig) -> JsValue {
  AvcEncoderConfig::to_js_ffi(self)
}

///|
/// VideoEncoderEncodeOptionsForAvc dictionary
pub(all) struct VideoEncoderEncodeOptionsForAvc {
  quantizer : Nullable[Int]
}

///|
/// Create a new VideoEncoderEncodeOptionsForAvc with default values
pub fn VideoEncoderEncodeOptionsForAvc::default() -> VideoEncoderEncodeOptionsForAvc {
  VideoEncoderEncodeOptionsForAvc::{ quantizer: Nullable::Undefined }
}

///|
extern "js" fn VideoEncoderEncodeOptionsForAvc::to_js_ffi(
  self : VideoEncoderEncodeOptionsForAvc,
) -> JsValue =
  #| (self) => ({
  #|   quantizer: ((() => { const v = self.quantizer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// Convert to JsValue
pub fn VideoEncoderEncodeOptionsForAvc::to_js(
  self : VideoEncoderEncodeOptionsForAvc,
) -> JsValue {
  VideoEncoderEncodeOptionsForAvc::to_js_ffi(self)
}
