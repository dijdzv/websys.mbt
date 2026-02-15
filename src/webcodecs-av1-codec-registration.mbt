// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-av1-codec-registration

///|
/// VideoEncoderEncodeOptions dictionary
pub(all) struct VideoEncoderEncodeOptions {
  av1 : VideoEncoderEncodeOptionsForAv1?
  avc : VideoEncoderEncodeOptionsForAvc?
  hevc : VideoEncoderEncodeOptionsForHevc?
  vp9 : VideoEncoderEncodeOptionsForVp9?
  keyFrame : Bool?
}

///|
/// Create a new VideoEncoderEncodeOptions with default values
pub fn VideoEncoderEncodeOptions::default() -> VideoEncoderEncodeOptions {
  VideoEncoderEncodeOptions::{
    av1: None,
    avc: None,
    hevc: None,
    vp9: None,
    keyFrame: None,
  }
}

///|
extern "js" fn VideoEncoderEncodeOptions::to_js_ffi(
  self : VideoEncoderEncodeOptions,
) -> JsValue =
  #| (self) => ({
  #|   av1: ((() => { const v = self.av1; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   avc: ((() => { const v = self.avc; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   hevc: ((() => { const v = self.hevc; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   vp9: ((() => { const v = self.vp9; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
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
extern "js" fn VideoEncoderEncodeOptions::from_js_ffi(
  value : JsValue,
) -> VideoEncoderEncodeOptions =
  #| (v) => ({
  #|   av1: (v.av1 === undefined ? { $tag: 0 } : { $tag: 1, _0: v.av1 }),
  #|   avc: (v.avc === undefined ? { $tag: 0 } : { $tag: 1, _0: v.avc }),
  #|   hevc: (v.hevc === undefined ? { $tag: 0 } : { $tag: 1, _0: v.hevc }),
  #|   vp9: (v.vp9 === undefined ? { $tag: 0 } : { $tag: 1, _0: v.vp9 }),
  #|   keyFrame: (v.keyFrame === undefined ? -1 : v.keyFrame)
  #| })

///|
/// Convert from JsValue
pub fn VideoEncoderEncodeOptions::from_js(
  value : JsValue,
) -> VideoEncoderEncodeOptions {
  VideoEncoderEncodeOptions::from_js_ffi(value)
}

///|
/// VideoEncoderEncodeOptionsForAv1 dictionary
pub(all) struct VideoEncoderEncodeOptionsForAv1 {
  quantizer : Nullable[Int]
}

///|
/// Create a new VideoEncoderEncodeOptionsForAv1 with default values
pub fn VideoEncoderEncodeOptionsForAv1::default() -> VideoEncoderEncodeOptionsForAv1 {
  VideoEncoderEncodeOptionsForAv1::{ quantizer: Nullable::Undefined }
}

///|
extern "js" fn VideoEncoderEncodeOptionsForAv1::to_js_ffi(
  self : VideoEncoderEncodeOptionsForAv1,
) -> JsValue =
  #| (self) => ({
  #|   quantizer: ((() => { const v = self.quantizer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn VideoEncoderEncodeOptionsForAv1::to_js(
  self : VideoEncoderEncodeOptionsForAv1,
) -> JsValue {
  VideoEncoderEncodeOptionsForAv1::to_js_ffi(self)
}

///|
extern "js" fn VideoEncoderEncodeOptionsForAv1::from_js_ffi(
  value : JsValue,
) -> VideoEncoderEncodeOptionsForAv1 =
  #| (v) => ({
  #|   quantizer: (v.quantizer === undefined ? { $tag: 0 } : v.quantizer === null ? { $tag: 1 } : { $tag: 2, _0: v.quantizer })
  #| })

///|
/// Convert from JsValue
pub fn VideoEncoderEncodeOptionsForAv1::from_js(
  value : JsValue,
) -> VideoEncoderEncodeOptionsForAv1 {
  VideoEncoderEncodeOptionsForAv1::from_js_ffi(value)
}
