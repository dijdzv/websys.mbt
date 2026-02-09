// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webcrypto-secure-curves

///|
/// Ed448Params dictionary
pub(all) struct Ed448Params {
  context : BufferSource?
}

///|
/// Create a new Ed448Params with default values
pub fn Ed448Params::default() -> Ed448Params {
  Ed448Params::{ context: None }
}

///|
extern "js" fn Ed448Params::to_js_ffi(self : Ed448Params) -> JsValue =
  #| (self) => ({
  #|   context: ((() => { const v = self.context; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn Ed448Params::to_js(self : Ed448Params) -> JsValue {
  Ed448Params::to_js_ffi(self)
}
