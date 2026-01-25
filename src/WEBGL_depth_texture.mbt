// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_depth_texture

///|
/// WEBGL_depth_texture interface
pub type WEBGL_depth_texture

///|
pub extern "js" fn WEBGL_depth_texture::to_js_value(
  self : WEBGL_depth_texture,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_depth_texture (unchecked)
pub extern "js" fn WEBGL_depth_texture::from_js_value(
  v : JsValue,
) -> WEBGL_depth_texture =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_depth_texture (checked with instanceof)
pub extern "js" fn WEBGL_depth_texture::from_js_value_opt(
  v : JsValue,
) -> WEBGL_depth_texture? =
  #| (v) => (v instanceof WEBGL_depth_texture) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_depth_texture (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_depth_texture(
  self : JsValue,
) -> WEBGL_depth_texture? =
  #| (self) => (self instanceof WEBGL_depth_texture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_depth_texture (unchecked)
pub extern "js" fn JsValue::to_webgl_depth_texture(
  self : JsValue,
) -> WEBGL_depth_texture =
  #| (self) => self

// WEBGL_depth_texture.UNSIGNED_INT_24_8_WEBGL

///|
pub let webgl_depth_texture_unsigned_int_24_8_webgl : Int = 0x84FA
