// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/OES_texture_float_linear

///|
/// OES_texture_float_linear interface
pub type OES_texture_float_linear

///|
pub extern "js" fn OES_texture_float_linear::to_js_value(
  self : OES_texture_float_linear,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OES_texture_float_linear (unchecked)
pub extern "js" fn OES_texture_float_linear::from_js_value(
  v : JsValue,
) -> OES_texture_float_linear =
  #| (v) => v

///|
/// Safely cast JsValue to OES_texture_float_linear (checked with instanceof)
pub extern "js" fn OES_texture_float_linear::from_js_value_opt(
  v : JsValue,
) -> OES_texture_float_linear? =
  #| (v) => (v instanceof OES_texture_float_linear) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OES_texture_float_linear (checked with instanceof)
pub extern "js" fn JsValue::as_oes_texture_float_linear(
  self : JsValue,
) -> OES_texture_float_linear? =
  #| (self) => (self instanceof OES_texture_float_linear) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OES_texture_float_linear (unchecked)
pub extern "js" fn JsValue::to_oes_texture_float_linear(
  self : JsValue,
) -> OES_texture_float_linear =
  #| (self) => self
