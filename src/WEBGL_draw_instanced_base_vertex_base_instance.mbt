// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_draw_instanced_base_vertex_base_instance

///|
/// WEBGL_draw_instanced_base_vertex_base_instance interface
pub type WEBGL_draw_instanced_base_vertex_base_instance

///|
pub extern "js" fn WEBGL_draw_instanced_base_vertex_base_instance::to_js_value(
  self : WEBGL_draw_instanced_base_vertex_base_instance,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_draw_instanced_base_vertex_base_instance (unchecked)
pub extern "js" fn WEBGL_draw_instanced_base_vertex_base_instance::from_js_value(
  v : JsValue,
) -> WEBGL_draw_instanced_base_vertex_base_instance =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_draw_instanced_base_vertex_base_instance (checked with instanceof)
pub extern "js" fn WEBGL_draw_instanced_base_vertex_base_instance::from_js_value_opt(
  v : JsValue,
) -> WEBGL_draw_instanced_base_vertex_base_instance? =
  #| (v) => (v instanceof WEBGL_draw_instanced_base_vertex_base_instance) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_draw_instanced_base_vertex_base_instance (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_draw_instanced_base_vertex_base_instance(
  self : JsValue,
) -> WEBGL_draw_instanced_base_vertex_base_instance? =
  #| (self) => (self instanceof WEBGL_draw_instanced_base_vertex_base_instance) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_draw_instanced_base_vertex_base_instance (unchecked)
pub extern "js" fn JsValue::to_webgl_draw_instanced_base_vertex_base_instance(
  self : JsValue,
) -> WEBGL_draw_instanced_base_vertex_base_instance =
  #| (self) => self

///|
pub extern "js" fn WEBGL_draw_instanced_base_vertex_base_instance::draw_arrays_instanced_base_instance_webgl(
  self : WEBGL_draw_instanced_base_vertex_base_instance,
  mode : GLenum,
  first : GLint,
  count : GLsizei,
  instance_count : GLsizei,
  base_instance : GLuint,
) -> Unit =
  #| (self, mode, first, count, instance_count, base_instance) => self.drawArraysInstancedBaseInstanceWEBGL(mode, first, count, instance_count, base_instance)

///|
pub extern "js" fn WEBGL_draw_instanced_base_vertex_base_instance::draw_elements_instanced_base_vertex_base_instance_webgl(
  self : WEBGL_draw_instanced_base_vertex_base_instance,
  mode : GLenum,
  count : GLsizei,
  type_ : GLenum,
  offset : GLintptr,
  instance_count : GLsizei,
  base_vertex : GLint,
  base_instance : GLuint,
) -> Unit =
  #| (self, mode, count, type_, offset, instance_count, base_vertex, base_instance) => self.drawElementsInstancedBaseVertexBaseInstanceWEBGL(mode, count, type_, offset, instance_count, base_vertex, base_instance)
