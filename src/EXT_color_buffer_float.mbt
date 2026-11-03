// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_color_buffer_float

///|
/// EXT_color_buffer_float interface
pub type EXT_color_buffer_float

///|
pub extern "js" fn EXT_color_buffer_float::to_js_value(
  self : EXT_color_buffer_float,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_color_buffer_float (unchecked)
pub extern "js" fn EXT_color_buffer_float::from_js_value(
  v : JsValue,
) -> EXT_color_buffer_float =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_color_buffer_float (checked with instanceof)
pub extern "js" fn EXT_color_buffer_float::from_js_value_opt(
  v : JsValue,
) -> EXT_color_buffer_float? =
  #| (v) => (v instanceof EXT_color_buffer_float) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_color_buffer_float (checked with instanceof)
pub extern "js" fn JsValue::as_ext_color_buffer_float(
  self : JsValue,
) -> EXT_color_buffer_float? =
  #| (self) => (self instanceof EXT_color_buffer_float) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_color_buffer_float (unchecked)
pub extern "js" fn JsValue::to_ext_color_buffer_float(
  self : JsValue,
) -> EXT_color_buffer_float =
  #| (self) => self
