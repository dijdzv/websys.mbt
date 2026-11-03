// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_float_blend

///|
/// EXT_float_blend interface
pub type EXT_float_blend

///|
pub extern "js" fn EXT_float_blend::to_js_value(
  self : EXT_float_blend,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_float_blend (unchecked)
pub extern "js" fn EXT_float_blend::from_js_value(
  v : JsValue,
) -> EXT_float_blend =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_float_blend (checked with instanceof)
pub extern "js" fn EXT_float_blend::from_js_value_opt(
  v : JsValue,
) -> EXT_float_blend? =
  #| (v) => (v instanceof EXT_float_blend) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_float_blend (checked with instanceof)
pub extern "js" fn JsValue::as_ext_float_blend(
  self : JsValue,
) -> EXT_float_blend? =
  #| (self) => (self instanceof EXT_float_blend) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_float_blend (unchecked)
pub extern "js" fn JsValue::to_ext_float_blend(
  self : JsValue,
) -> EXT_float_blend =
  #| (self) => self
