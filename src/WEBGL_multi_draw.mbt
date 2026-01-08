// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_multi_draw

///|
/// WEBGL_multi_draw interface
pub type WEBGL_multi_draw

///|
pub extern "js" fn WEBGL_multi_draw::to_js_value(
  self : WEBGL_multi_draw,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn WEBGL_multi_draw::multi_draw_arrays_w_e_b_g_l(
  self : WEBGL_multi_draw,
  mode : GLenum,
  firsts_list : JsValue,
  firsts_offset : Int64,
  counts_list : JsValue,
  counts_offset : Int64,
  drawcount : GLsizei,
) -> Unit =
  #| (self, mode, firsts_list, firsts_offset, counts_list, counts_offset, drawcount) => self.multiDrawArraysWEBGL(mode, firsts_list, firsts_offset, counts_list, counts_offset, drawcount)

///|
pub extern "js" fn WEBGL_multi_draw::multi_draw_elements_w_e_b_g_l(
  self : WEBGL_multi_draw,
  mode : GLenum,
  counts_list : JsValue,
  counts_offset : Int64,
  type_ : GLenum,
  offsets_list : JsValue,
  offsets_offset : Int64,
  drawcount : GLsizei,
) -> Unit =
  #| (self, mode, counts_list, counts_offset, type_, offsets_list, offsets_offset, drawcount) => self.multiDrawElementsWEBGL(mode, counts_list, counts_offset, type_, offsets_list, offsets_offset, drawcount)

///|
pub extern "js" fn WEBGL_multi_draw::multi_draw_arrays_instanced_w_e_b_g_l(
  self : WEBGL_multi_draw,
  mode : GLenum,
  firsts_list : JsValue,
  firsts_offset : Int64,
  counts_list : JsValue,
  counts_offset : Int64,
  instance_counts_list : JsValue,
  instance_counts_offset : Int64,
  drawcount : GLsizei,
) -> Unit =
  #| (self, mode, firsts_list, firsts_offset, counts_list, counts_offset, instance_counts_list, instance_counts_offset, drawcount) => self.multiDrawArraysInstancedWEBGL(mode, firsts_list, firsts_offset, counts_list, counts_offset, instance_counts_list, instance_counts_offset, drawcount)

///|
pub extern "js" fn WEBGL_multi_draw::multi_draw_elements_instanced_w_e_b_g_l(
  self : WEBGL_multi_draw,
  mode : GLenum,
  counts_list : JsValue,
  counts_offset : Int64,
  type_ : GLenum,
  offsets_list : JsValue,
  offsets_offset : Int64,
  instance_counts_list : JsValue,
  instance_counts_offset : Int64,
  drawcount : GLsizei,
) -> Unit =
  #| (self, mode, counts_list, counts_offset, type_, offsets_list, offsets_offset, instance_counts_list, instance_counts_offset, drawcount) => self.multiDrawElementsInstancedWEBGL(mode, counts_list, counts_offset, type_, offsets_list, offsets_offset, instance_counts_list, instance_counts_offset, drawcount)
