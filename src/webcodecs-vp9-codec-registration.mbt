// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-vp9-codec-registration

///|
/// VideoEncoderEncodeOptions dictionary
pub struct VideoEncoderEncodeOptions {
  vp9 : VideoEncoderEncodeOptionsForVp9?
  av1 : VideoEncoderEncodeOptionsForAv1?
  avc : VideoEncoderEncodeOptionsForAvc?
  hevc : VideoEncoderEncodeOptionsForHevc?
  keyFrame : Bool?
}

///|
/// Create a new VideoEncoderEncodeOptions with default values
pub fn VideoEncoderEncodeOptions::default() -> VideoEncoderEncodeOptions {
  VideoEncoderEncodeOptions::{
    vp9: None,
    av1: None,
    avc: None,
    hevc: None,
    keyFrame: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoEncoderEncodeOptions::to_js(
  self : VideoEncoderEncodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   vp9: self.vp9,
  #|   av1: self.av1,
  #|   avc: self.avc,
  #|   hevc: self.hevc,
  #|   keyFrame: self.keyFrame
  #| })

///|
/// VideoEncoderEncodeOptionsForVp9 dictionary
pub struct VideoEncoderEncodeOptionsForVp9 {
  quantizer : Nullable[Int]
}

///|
/// Create a new VideoEncoderEncodeOptionsForVp9 with default values
pub fn VideoEncoderEncodeOptionsForVp9::default() -> VideoEncoderEncodeOptionsForVp9 {
  VideoEncoderEncodeOptionsForVp9::{ quantizer: Nullable::Undefined }
}

///|
/// Convert to JsValue
pub extern "js" fn VideoEncoderEncodeOptionsForVp9::to_js(
  self : VideoEncoderEncodeOptionsForVp9,
) -> JsValue =
  #| (self) => ({
  #|   quantizer: ((() => { const v = self.quantizer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })
