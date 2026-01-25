// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_debug_shaders

///|
/// WEBGL_debug_shaders interface
pub type WEBGL_debug_shaders

///|
pub extern "js" fn WEBGL_debug_shaders::to_js_value(
  self : WEBGL_debug_shaders,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_debug_shaders (unchecked)
pub extern "js" fn WEBGL_debug_shaders::from_js_value(
  v : JsValue,
) -> WEBGL_debug_shaders =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_debug_shaders (checked with instanceof)
pub extern "js" fn WEBGL_debug_shaders::from_js_value_opt(
  v : JsValue,
) -> WEBGL_debug_shaders? =
  #| (v) => (v instanceof WEBGL_debug_shaders) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_debug_shaders (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_debug_shaders(
  self : JsValue,
) -> WEBGL_debug_shaders? =
  #| (self) => (self instanceof WEBGL_debug_shaders) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_debug_shaders (unchecked)
pub extern "js" fn JsValue::to_webgl_debug_shaders(
  self : JsValue,
) -> WEBGL_debug_shaders =
  #| (self) => self

///|
pub extern "js" fn WEBGL_debug_shaders::get_translated_shader_source(
  self : WEBGL_debug_shaders,
  shader : WebGLShader,
) -> String =
  #| (self, shader) => self.getTranslatedShaderSource(shader)
