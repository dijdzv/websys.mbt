// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-vp9-codec-registration

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
  #|   quantizer: ((() => { const v = self.quantizer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn VideoEncoderEncodeOptionsForVp9::to_js(
  self : VideoEncoderEncodeOptionsForVp9,
) -> JsValue {
  VideoEncoderEncodeOptionsForVp9::to_js_ffi(self)
}

///|
extern "js" fn VideoEncoderEncodeOptionsForVp9::from_js_ffi(
  value : JsValue,
) -> VideoEncoderEncodeOptionsForVp9 =
  #| (v) => ({
  #|   quantizer: (v.quantizer === undefined ? { $tag: 0 } : v.quantizer === null ? { $tag: 1 } : { $tag: 2, _0: v.quantizer })
  #| })

///|
/// Convert from JsValue
pub fn VideoEncoderEncodeOptionsForVp9::from_js(
  value : JsValue,
) -> VideoEncoderEncodeOptionsForVp9 {
  VideoEncoderEncodeOptionsForVp9::from_js_ffi(value)
}
