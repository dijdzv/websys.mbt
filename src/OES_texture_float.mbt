// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/OES_texture_float

///|
/// OES_texture_float interface
pub type OES_texture_float

///|
pub extern "js" fn OES_texture_float::to_js_value(
  self : OES_texture_float,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OES_texture_float (unchecked)
pub extern "js" fn OES_texture_float::from_js_value(
  v : JsValue,
) -> OES_texture_float =
  #| (v) => v

///|
/// Safely cast JsValue to OES_texture_float (checked with instanceof)
pub extern "js" fn OES_texture_float::from_js_value_opt(
  v : JsValue,
) -> OES_texture_float? =
  #| (v) => (v instanceof OES_texture_float) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OES_texture_float (checked with instanceof)
pub extern "js" fn JsValue::as_oes_texture_float(
  self : JsValue,
) -> OES_texture_float? =
  #| (self) => (self instanceof OES_texture_float) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OES_texture_float (unchecked)
pub extern "js" fn JsValue::to_oes_texture_float(
  self : JsValue,
) -> OES_texture_float =
  #| (self) => self
