// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-vp9-codec-registration

///|
/// VideoEncoderEncodeOptions dictionary
pub(all) struct VideoEncoderEncodeOptions {
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
extern "js" fn VideoEncoderEncodeOptions::to_js_ffi(
  self : VideoEncoderEncodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   vp9: ((() => { const v = self.vp9; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   av1: ((() => { const v = self.av1; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   avc: ((() => { const v = self.avc; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   hevc: ((() => { const v = self.hevc; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   keyFrame: (self.keyFrame === -1 ? undefined : self.keyFrame)
  #| })

///|
/// Convert to JsValue
pub fn VideoEncoderEncodeOptions::to_js(
  self : VideoEncoderEncodeOptions,
) -> JsValue {
  VideoEncoderEncodeOptions::to_js_ffi(self)
}

///|
/// VideoEncoderEncodeOptionsForVp9 dictionary
pub(all) struct VideoEncoderEncodeOptionsForVp9 {
  quantizer : Nullable[Int]
}

///|
/// Create a new VideoEncoderEncodeOptionsForVp9 with default values
pub fn VideoEncoderEncodeOptionsForVp9::default() -> VideoEncoderEncodeOptionsForVp9 {
  VideoEncoderEncodeOptionsForVp9::{ quantizer: Nullable::Undefined }
}

///|
extern "js" fn VideoEncoderEncodeOptionsForVp9::to_js_ffi(
  self : VideoEncoderEncodeOptionsForVp9,
) -> JsValue =
  #| (self) => ({
  #|   quantizer: ((() => { const v = self.quantizer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// Convert to JsValue
pub fn VideoEncoderEncodeOptionsForVp9::to_js(
  self : VideoEncoderEncodeOptionsForVp9,
) -> JsValue {
  VideoEncoderEncodeOptionsForVp9::to_js_ffi(self)
}
