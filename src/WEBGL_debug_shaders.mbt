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
pub extern "js" fn WEBGL_debug_shaders::get_translated_shader_source(
  self : WEBGL_debug_shaders,
  shader : WebGLShader,
) -> String =
  #| (self, shader) => self.getTranslatedShaderSource(shader)
