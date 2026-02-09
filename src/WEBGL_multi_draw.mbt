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
/// Cast JsValue to WEBGL_multi_draw (unchecked)
pub extern "js" fn WEBGL_multi_draw::from_js_value(
  v : JsValue,
) -> WEBGL_multi_draw =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_multi_draw (checked with instanceof)
pub extern "js" fn WEBGL_multi_draw::from_js_value_opt(
  v : JsValue,
) -> WEBGL_multi_draw? =
  #| (v) => (v instanceof WEBGL_multi_draw) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_multi_draw (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_multi_draw(
  self : JsValue,
) -> WEBGL_multi_draw? =
  #| (self) => (self instanceof WEBGL_multi_draw) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_multi_draw (unchecked)
pub extern "js" fn JsValue::to_webgl_multi_draw(
  self : JsValue,
) -> WEBGL_multi_draw =
  #| (self) => self

///|
pub extern "js" fn WEBGL_multi_draw::multi_draw_arrays_webgl(
  self : WEBGL_multi_draw,
  mode : GLenum,
  firsts_list : Int32ArrayOrArrayOfGLint,
  firsts_offset : Int64,
  counts_list : Int32ArrayOrArrayOfGLsizei,
  counts_offset : Int64,
  drawcount : GLsizei,
) -> Unit =
  #| (self, mode, firsts_list, firsts_offset, counts_list, counts_offset, drawcount) => self.multiDrawArraysWEBGL(mode, firsts_list, (firsts_offset.hi * 4294967296 + firsts_offset.lo), counts_list, (counts_offset.hi * 4294967296 + counts_offset.lo), drawcount)

///|
pub extern "js" fn WEBGL_multi_draw::multi_draw_elements_webgl(
  self : WEBGL_multi_draw,
  mode : GLenum,
  counts_list : Int32ArrayOrArrayOfGLsizei,
  counts_offset : Int64,
  type_ : GLenum,
  offsets_list : Int32ArrayOrArrayOfGLsizei,
  offsets_offset : Int64,
  drawcount : GLsizei,
) -> Unit =
  #| (self, mode, counts_list, counts_offset, type_, offsets_list, offsets_offset, drawcount) => self.multiDrawElementsWEBGL(mode, counts_list, (counts_offset.hi * 4294967296 + counts_offset.lo), type_, offsets_list, (offsets_offset.hi * 4294967296 + offsets_offset.lo), drawcount)

///|
pub extern "js" fn WEBGL_multi_draw::multi_draw_arrays_instanced_webgl(
  self : WEBGL_multi_draw,
  mode : GLenum,
  firsts_list : Int32ArrayOrArrayOfGLint,
  firsts_offset : Int64,
  counts_list : Int32ArrayOrArrayOfGLsizei,
  counts_offset : Int64,
  instance_counts_list : Int32ArrayOrArrayOfGLsizei,
  instance_counts_offset : Int64,
  drawcount : GLsizei,
) -> Unit =
  #| (self, mode, firsts_list, firsts_offset, counts_list, counts_offset, instance_counts_list, instance_counts_offset, drawcount) => self.multiDrawArraysInstancedWEBGL(mode, firsts_list, (firsts_offset.hi * 4294967296 + firsts_offset.lo), counts_list, (counts_offset.hi * 4294967296 + counts_offset.lo), instance_counts_list, (instance_counts_offset.hi * 4294967296 + instance_counts_offset.lo), drawcount)

///|
pub extern "js" fn WEBGL_multi_draw::multi_draw_elements_instanced_webgl(
  self : WEBGL_multi_draw,
  mode : GLenum,
  counts_list : Int32ArrayOrArrayOfGLsizei,
  counts_offset : Int64,
  type_ : GLenum,
  offsets_list : Int32ArrayOrArrayOfGLsizei,
  offsets_offset : Int64,
  instance_counts_list : Int32ArrayOrArrayOfGLsizei,
  instance_counts_offset : Int64,
  drawcount : GLsizei,
) -> Unit =
  #| (self, mode, counts_list, counts_offset, type_, offsets_list, offsets_offset, instance_counts_list, instance_counts_offset, drawcount) => self.multiDrawElementsInstancedWEBGL(mode, counts_list, (counts_offset.hi * 4294967296 + counts_offset.lo), type_, offsets_list, (offsets_offset.hi * 4294967296 + offsets_offset.lo), instance_counts_list, (instance_counts_offset.hi * 4294967296 + instance_counts_offset.lo), drawcount)
