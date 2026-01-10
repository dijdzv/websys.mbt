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
pub struct VideoEncoderConfig {
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
/// Convert to JsValue
pub extern "js" fn VideoEncoderConfig::to_js(
  self : VideoEncoderConfig,
) -> JsValue =
  #| (self) => ({
  #|   avc: self.avc,
  #|   hevc: self.hevc,
  #|   codec: self.codec,
  #|   width: self.width,
  #|   height: self.height,
  #|   displayWidth: self.displayWidth,
  #|   displayHeight: self.displayHeight,
  #|   bitrate: self.bitrate,
  #|   framerate: self.framerate,
  #|   hardwareAcceleration: ['no-preference', 'prefer-hardware', 'prefer-software'][self.hardwareAcceleration],
  #|   alpha: ['keep', 'discard'][self.alpha],
  #|   scalabilityMode: self.scalabilityMode,
  #|   bitrateMode: ['constant', 'variable', 'quantizer'][self.bitrateMode],
  #|   latencyMode: ['quality', 'realtime'][self.latencyMode],
  #|   contentHint: self.contentHint
  #| })

///|
/// AvcEncoderConfig dictionary
pub struct AvcEncoderConfig {
  format : AvcBitstreamFormat?
}

///|
/// Create a new AvcEncoderConfig with default values
pub fn AvcEncoderConfig::default() -> AvcEncoderConfig {
  AvcEncoderConfig::{ format: None }
}

///|
/// Convert to JsValue
pub extern "js" fn AvcEncoderConfig::to_js(self : AvcEncoderConfig) -> JsValue =
  #| (self) => ({
  #|   format: ['annexb', 'avc'][self.format]
  #| })

///|
/// VideoEncoderEncodeOptionsForAvc dictionary
pub struct VideoEncoderEncodeOptionsForAvc {
  quantizer : Nullable[Int]
}

///|
/// Create a new VideoEncoderEncodeOptionsForAvc with default values
pub fn VideoEncoderEncodeOptionsForAvc::default() -> VideoEncoderEncodeOptionsForAvc {
  VideoEncoderEncodeOptionsForAvc::{ quantizer: Nullable::Undefined }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoEncoderEncodeOptionsForAvc::to_js(
  self : VideoEncoderEncodeOptionsForAvc,
) -> JsValue =
  #| (self) => ({
  #|   quantizer: ((() => { const v = self.quantizer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })
