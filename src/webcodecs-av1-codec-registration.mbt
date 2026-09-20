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
  convert_av1 : (VideoEncoderEncodeOptionsForAv1?) -> JsValue,
  convert_avc : (VideoEncoderEncodeOptionsForAvc?) -> JsValue,
  convert_hevc : (VideoEncoderEncodeOptionsForHevc?) -> JsValue,
  convert_vp9 : (VideoEncoderEncodeOptionsForVp9?) -> JsValue,
) -> JsValue =
  #| (self, convert_av1, convert_avc, convert_hevc, convert_vp9) => ({
  #|   av1: convert_av1(self.av1),
  #|   avc: convert_avc(self.avc),
  #|   hevc: convert_hevc(self.hevc),
  #|   vp9: convert_vp9(self.vp9),
  #|   keyFrame: (self.keyFrame === -1 ? undefined : self.keyFrame)
  #| })

///|
/// Convert to JsValue
pub fn VideoEncoderEncodeOptions::to_js(
  self : VideoEncoderEncodeOptions,
) -> JsValue {
  VideoEncoderEncodeOptions::to_js_ffi(
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
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
  )
}

///|
extern "js" fn VideoEncoderEncodeOptions::from_js_ffi(
  value : JsValue,
  convert_av1 : (JsValue) -> VideoEncoderEncodeOptionsForAv1?,
  convert_avc : (JsValue) -> VideoEncoderEncodeOptionsForAvc?,
  convert_hevc : (JsValue) -> VideoEncoderEncodeOptionsForHevc?,
  convert_vp9 : (JsValue) -> VideoEncoderEncodeOptionsForVp9?,
) -> VideoEncoderEncodeOptions =
  #| (v, convert_av1, convert_avc, convert_hevc, convert_vp9) => ({
  #|   av1: convert_av1(v.av1),
  #|   avc: convert_avc(v.avc),
  #|   hevc: convert_hevc(v.hevc),
  #|   vp9: convert_vp9(v.vp9),
  #|   keyFrame: (v.keyFrame === undefined ? -1 : v.keyFrame)
  #| })

///|
/// Convert from JsValue
pub fn VideoEncoderEncodeOptions::from_js(
  value : JsValue,
) -> VideoEncoderEncodeOptions {
  VideoEncoderEncodeOptions::from_js_ffi(
    value,
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(VideoEncoderEncodeOptionsForAv1::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(VideoEncoderEncodeOptionsForAvc::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(VideoEncoderEncodeOptionsForHevc::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(VideoEncoderEncodeOptionsForVp9::from_js(value))
      }
    },
  )
}

///|
/// VideoEncoderEncodeOptionsForAv1 dictionary
pub(all) struct VideoEncoderEncodeOptionsForAv1 {
  quantizer : Nullable[Int]
}

///|
/// Create a new VideoEncoderEncodeOptionsForAv1 with default values
pub fn VideoEncoderEncodeOptionsForAv1::default() -> VideoEncoderEncodeOptionsForAv1 {
  VideoEncoderEncodeOptionsForAv1::{ quantizer: Nullable::Undefined, }
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
