// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_color_buffer_half_float

///|
/// EXT_color_buffer_half_float interface
pub type EXT_color_buffer_half_float

///|
pub extern "js" fn EXT_color_buffer_half_float::to_js_value(
  self : EXT_color_buffer_half_float,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_color_buffer_half_float (unchecked)
pub extern "js" fn EXT_color_buffer_half_float::from_js_value(
  v : JsValue,
) -> EXT_color_buffer_half_float =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_color_buffer_half_float (checked with instanceof)
pub extern "js" fn EXT_color_buffer_half_float::from_js_value_opt(
  v : JsValue,
) -> EXT_color_buffer_half_float? =
  #| (v) => (v instanceof EXT_color_buffer_half_float) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_color_buffer_half_float (checked with instanceof)
pub extern "js" fn JsValue::as_ext_color_buffer_half_float(
  self : JsValue,
) -> EXT_color_buffer_half_float? =
  #| (self) => (self instanceof EXT_color_buffer_half_float) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_color_buffer_half_float (unchecked)
pub extern "js" fn JsValue::to_ext_color_buffer_half_float(
  self : JsValue,
) -> EXT_color_buffer_half_float =
  #| (self) => self

// EXT_color_buffer_half_float.RGBA16F_EXT

///|
pub let ext_color_buffer_half_float_rgba16f_ext : Int = 0x881A

// EXT_color_buffer_half_float.RGB16F_EXT

///|
pub let ext_color_buffer_half_float_rgb16f_ext : Int = 0x881B

// EXT_color_buffer_half_float.FRAMEBUFFER_ATTACHMENT_COMPONENT_TYPE_EXT

///|
pub let ext_color_buffer_half_float_framebuffer_attachment_component_type_ext : Int = 0x8211

// EXT_color_buffer_half_float.UNSIGNED_NORMALIZED_EXT

///|
pub let ext_color_buffer_half_float_unsigned_normalized_ext : Int = 0x8C17
