// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-av1-codec-registration

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
