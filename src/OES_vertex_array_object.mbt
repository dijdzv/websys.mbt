// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/OES_vertex_array_object

///|
/// WebGLVertexArrayObjectOES interface
pub type WebGLVertexArrayObjectOES

///|
pub extern "js" fn WebGLVertexArrayObjectOES::to_js_value(
  self : WebGLVertexArrayObjectOES,
) -> JsValue =
  #| (self) => self

///|
/// OES_vertex_array_object interface
pub type OES_vertex_array_object

///|
pub extern "js" fn OES_vertex_array_object::to_js_value(
  self : OES_vertex_array_object,
) -> JsValue =
  #| (self) => self

// OES_vertex_array_object.VERTEX_ARRAY_BINDING_OES

///|
pub let o_e_s_vertex_array_object_vertex_array_binding_oes : Int = 0x85B5

///|
pub extern "js" fn OES_vertex_array_object::create_vertex_array_o_e_s(
  self : OES_vertex_array_object,
) -> WebGLVertexArrayObjectOES =
  #| (self) => self.createVertexArrayOES()

///|
pub extern "js" fn OES_vertex_array_object::delete_vertex_array_o_e_s(
  self : OES_vertex_array_object,
  array_object : WebGLVertexArrayObjectOES?,
) -> Unit =
  #| (self, array_object) => self.deleteVertexArrayOES(array_object)

///|
pub extern "js" fn OES_vertex_array_object::is_vertex_array_o_e_s(
  self : OES_vertex_array_object,
  array_object : WebGLVertexArrayObjectOES?,
) -> GLboolean =
  #| (self, array_object) => self.isVertexArrayOES(array_object)

///|
pub extern "js" fn OES_vertex_array_object::bind_vertex_array_o_e_s(
  self : OES_vertex_array_object,
  array_object : WebGLVertexArrayObjectOES?,
) -> Unit =
  #| (self, array_object) => self.bindVertexArrayOES(array_object)
