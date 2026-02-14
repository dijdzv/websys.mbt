// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_multi_draw_instanced_base_vertex_base_instance

///|
/// WEBGL_multi_draw_instanced_base_vertex_base_instance interface
pub type WEBGL_multi_draw_instanced_base_vertex_base_instance

///|
pub extern "js" fn WEBGL_multi_draw_instanced_base_vertex_base_instance::to_js_value(
  self : WEBGL_multi_draw_instanced_base_vertex_base_instance,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_multi_draw_instanced_base_vertex_base_instance (unchecked)
pub extern "js" fn WEBGL_multi_draw_instanced_base_vertex_base_instance::from_js_value(
  v : JsValue,
) -> WEBGL_multi_draw_instanced_base_vertex_base_instance =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_multi_draw_instanced_base_vertex_base_instance (checked with instanceof)
pub extern "js" fn WEBGL_multi_draw_instanced_base_vertex_base_instance::from_js_value_opt(
  v : JsValue,
) -> WEBGL_multi_draw_instanced_base_vertex_base_instance? =
  #| (v) => (v instanceof WEBGL_multi_draw_instanced_base_vertex_base_instance) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_multi_draw_instanced_base_vertex_base_instance (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_multi_draw_instanced_base_vertex_base_instance(
  self : JsValue,
) -> WEBGL_multi_draw_instanced_base_vertex_base_instance? =
  #| (self) => (self instanceof WEBGL_multi_draw_instanced_base_vertex_base_instance) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_multi_draw_instanced_base_vertex_base_instance (unchecked)
pub extern "js" fn JsValue::to_webgl_multi_draw_instanced_base_vertex_base_instance(
  self : JsValue,
) -> WEBGL_multi_draw_instanced_base_vertex_base_instance =
  #| (self) => self

///|
pub extern "js" fn WEBGL_multi_draw_instanced_base_vertex_base_instance::multi_draw_arrays_instanced_base_instance_webgl(
  self : WEBGL_multi_draw_instanced_base_vertex_base_instance,
  mode : GLenum,
  firsts_list : Int32ArrayOrArrayOfGLint,
  firsts_offset : Int64,
  counts_list : Int32ArrayOrArrayOfGLsizei,
  counts_offset : Int64,
  instance_counts_list : Int32ArrayOrArrayOfGLsizei,
  instance_counts_offset : Int64,
  base_instances_list : Uint32ArrayOrArrayOfGLuint,
  base_instances_offset : Int64,
  drawcount : GLsizei,
) -> Unit =
  #| (self, mode, firsts_list, firsts_offset, counts_list, counts_offset, instance_counts_list, instance_counts_offset, base_instances_list, base_instances_offset, drawcount) => self.multiDrawArraysInstancedBaseInstanceWEBGL(mode, firsts_list, (firsts_offset.hi * 4294967296 + firsts_offset.lo), counts_list, (counts_offset.hi * 4294967296 + counts_offset.lo), instance_counts_list, (instance_counts_offset.hi * 4294967296 + instance_counts_offset.lo), base_instances_list, (base_instances_offset.hi * 4294967296 + base_instances_offset.lo), drawcount)

///|
pub extern "js" fn WEBGL_multi_draw_instanced_base_vertex_base_instance::multi_draw_elements_instanced_base_vertex_base_instance_webgl(
  self : WEBGL_multi_draw_instanced_base_vertex_base_instance,
  mode : GLenum,
  counts_list : Int32ArrayOrArrayOfGLsizei,
  counts_offset : Int64,
  type_ : GLenum,
  offsets_list : Int32ArrayOrArrayOfGLsizei,
  offsets_offset : Int64,
  instance_counts_list : Int32ArrayOrArrayOfGLsizei,
  instance_counts_offset : Int64,
  base_vertices_list : Int32ArrayOrArrayOfGLint,
  base_vertices_offset : Int64,
  base_instances_list : Uint32ArrayOrArrayOfGLuint,
  base_instances_offset : Int64,
  drawcount : GLsizei,
) -> Unit =
  #| (self, mode, counts_list, counts_offset, type_, offsets_list, offsets_offset, instance_counts_list, instance_counts_offset, base_vertices_list, base_vertices_offset, base_instances_list, base_instances_offset, drawcount) => self.multiDrawElementsInstancedBaseVertexBaseInstanceWEBGL(mode, counts_list, (counts_offset.hi * 4294967296 + counts_offset.lo), type_, offsets_list, (offsets_offset.hi * 4294967296 + offsets_offset.lo), instance_counts_list, (instance_counts_offset.hi * 4294967296 + instance_counts_offset.lo), base_vertices_list, (base_vertices_offset.hi * 4294967296 + base_vertices_offset.lo), base_instances_list, (base_instances_offset.hi * 4294967296 + base_instances_offset.lo), drawcount)
