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

// WEBGL_provoking_vertex.FIRST_VERTEX_CONVENTION_WEBGL

///|
pub let w_e_b_g_l_provoking_vertex_first_vertex_convention_webgl : Int = 0x8E4D

// WEBGL_provoking_vertex.LAST_VERTEX_CONVENTION_WEBGL

///|
pub let w_e_b_g_l_provoking_vertex_last_vertex_convention_webgl : Int = 0x8E4E

// WEBGL_provoking_vertex.PROVOKING_VERTEX_WEBGL

///|
pub let w_e_b_g_l_provoking_vertex_provoking_vertex_webgl : Int = 0x8E4F

///|
pub extern "js" fn WEBGL_provoking_vertex::provoking_vertex_w_e_b_g_l(
  self : WEBGL_provoking_vertex,
  provoke_mode : GLenum,
) -> Unit =
  #| (self, provoke_mode) => self.provokingVertexWEBGL(provoke_mode)
