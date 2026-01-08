// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcrypto-secure-curves

///|
/// Ed448Params dictionary
pub struct Ed448Params {
  context : BufferSource?
}

///|
/// Create a new Ed448Params with default values
pub fn Ed448Params::default() -> Ed448Params {
  Ed448Params::{ context: None }
}

///|
/// Convert to JsValue
pub extern "js" fn Ed448Params::to_js(self : Ed448Params) -> JsValue =
  #| (self) => ({
  #|   context: self.context.to_js_value()
  #| })
