// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_color_buffer_float

///|
/// WEBGL_color_buffer_float interface
pub type WEBGL_color_buffer_float

///|
pub extern "js" fn WEBGL_color_buffer_float::to_js_value(
  self : WEBGL_color_buffer_float,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_color_buffer_float (unchecked)
pub extern "js" fn WEBGL_color_buffer_float::from_js_value(
  v : JsValue,
) -> WEBGL_color_buffer_float =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_color_buffer_float (checked with instanceof)
pub extern "js" fn WEBGL_color_buffer_float::from_js_value_opt(
  v : JsValue,
) -> WEBGL_color_buffer_float? =
  #| (v) => (v instanceof WEBGL_color_buffer_float) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_color_buffer_float (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_color_buffer_float(
  self : JsValue,
) -> WEBGL_color_buffer_float? =
  #| (self) => (self instanceof WEBGL_color_buffer_float) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_color_buffer_float (unchecked)
pub extern "js" fn JsValue::to_webgl_color_buffer_float(
  self : JsValue,
) -> WEBGL_color_buffer_float =
  #| (self) => self

// WEBGL_color_buffer_float.RGBA32F_EXT

///|
pub let webgl_color_buffer_float_rgba32f_ext : Int = 0x8814

// WEBGL_color_buffer_float.FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT

///|
pub let webgl_color_buffer_float_framebuffer_attachment_component_type_ext : Int = 0x8211

// WEBGL_color_buffer_float.UNSIGNED_NORMALIZED_EXT

///|
pub let webgl_color_buffer_float_unsigned_normalized_ext : Int = 0x8C17
