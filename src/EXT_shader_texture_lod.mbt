// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_shader_texture_lod

///|
/// EXT_shader_texture_lod interface
pub type EXT_shader_texture_lod

///|
pub extern "js" fn EXT_shader_texture_lod::to_js_value(
  self : EXT_shader_texture_lod,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_shader_texture_lod (unchecked)
pub extern "js" fn EXT_shader_texture_lod::from_js_value(
  v : JsValue,
) -> EXT_shader_texture_lod =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_shader_texture_lod (checked with instanceof)
pub extern "js" fn EXT_shader_texture_lod::from_js_value_opt(
  v : JsValue,
) -> EXT_shader_texture_lod? =
  #| (v) => (v instanceof EXT_shader_texture_lod) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_shader_texture_lod (checked with instanceof)
pub extern "js" fn JsValue::as_ext_shader_texture_lod(
  self : JsValue,
) -> EXT_shader_texture_lod? =
  #| (self) => (self instanceof EXT_shader_texture_lod) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_shader_texture_lod (unchecked)
pub extern "js" fn JsValue::to_ext_shader_texture_lod(
  self : JsValue,
) -> EXT_shader_texture_lod =
  #| (self) => self
