// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcodecs-vp9-codec-registration

///|
/// VideoEncoderEncodeOptionsForVp9 dictionary
pub struct VideoEncoderEncodeOptionsForVp9 {
  quantizer : Int??
}

/// Create a new VideoEncoderEncodeOptionsForVp9 with default values
pub fn VideoEncoderEncodeOptionsForVp9::default() -> VideoEncoderEncodeOptionsForVp9 {
  VideoEncoderEncodeOptionsForVp9::{
    quantizer: None,
  }
}

/// Convert to JsValue
pub extern "js" fn VideoEncoderEncodeOptionsForVp9::to_js(self : VideoEncoderEncodeOptionsForVp9) -> JsValue =
  #| (self) => ({
  #|   quantizer: self.quantizer
  #| })

