// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_provoking_vertex

///|
/// WEBGL_provoking_vertex interface
pub type WEBGL_provoking_vertex

///|
pub extern "js" fn WEBGL_provoking_vertex::to_js_value(
  self : WEBGL_provoking_vertex,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_provoking_vertex (unchecked)
pub extern "js" fn WEBGL_provoking_vertex::from_js_value(
  v : JsValue,
) -> WEBGL_provoking_vertex =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_provoking_vertex (checked with instanceof)
pub extern "js" fn WEBGL_provoking_vertex::from_js_value_opt(
  v : JsValue,
) -> WEBGL_provoking_vertex? =
  #| (v) => (v instanceof WEBGL_provoking_vertex) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_provoking_vertex (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_provoking_vertex(
  self : JsValue,
) -> WEBGL_provoking_vertex? =
  #| (self) => (self instanceof WEBGL_provoking_vertex) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_provoking_vertex (unchecked)
pub extern "js" fn JsValue::to_webgl_provoking_vertex(
  self : JsValue,
) -> WEBGL_provoking_vertex =
  #| (self) => self

// WEBGL_provoking_vertex.FIRST_VERTEX_CONVENTION_WEBGL

///|
pub let webgl_provoking_vertex_first_vertex_convention_webgl : Int = 0x8E4D

// WEBGL_provoking_vertex.LAST_VERTEX_CONVENTION_WEBGL

///|
pub let webgl_provoking_vertex_last_vertex_convention_webgl : Int = 0x8E4E

// WEBGL_provoking_vertex.PROVOKING_VERTEX_WEBGL

///|
pub let webgl_provoking_vertex_provoking_vertex_webgl : Int = 0x8E4F

///|
pub extern "js" fn WEBGL_provoking_vertex::provoking_vertex_webgl(
  self : WEBGL_provoking_vertex,
  provoke_mode : GLenum,
) -> Unit =
  #| (self, provoke_mode) => self.provokingVertexWEBGL(provoke_mode)
