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
/// Cast JsValue to WebGLVertexArrayObjectOES (unchecked)
pub extern "js" fn WebGLVertexArrayObjectOES::from_js_value(
  v : JsValue,
) -> WebGLVertexArrayObjectOES =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLVertexArrayObjectOES (checked with instanceof)
pub extern "js" fn WebGLVertexArrayObjectOES::from_js_value_opt(
  v : JsValue,
) -> WebGLVertexArrayObjectOES? =
  #| (v) => (v instanceof WebGLVertexArrayObjectOES) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLVertexArrayObjectOES (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_vertex_array_object_oes(
  self : JsValue,
) -> WebGLVertexArrayObjectOES? =
  #| (self) => (self instanceof WebGLVertexArrayObjectOES) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLVertexArrayObjectOES (unchecked)
pub extern "js" fn JsValue::to_web_gl_vertex_array_object_oes(
  self : JsValue,
) -> WebGLVertexArrayObjectOES =
  #| (self) => self

///|
pub extern "js" fn WebGLVertexArrayObjectOES::to_web_gl_object(
  self : WebGLVertexArrayObjectOES,
) -> WebGLObject =
  #| (self) => self

///|
/// OES_vertex_array_object interface
pub type OES_vertex_array_object

///|
pub extern "js" fn OES_vertex_array_object::to_js_value(
  self : OES_vertex_array_object,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OES_vertex_array_object (unchecked)
pub extern "js" fn OES_vertex_array_object::from_js_value(
  v : JsValue,
) -> OES_vertex_array_object =
  #| (v) => v

///|
/// Safely cast JsValue to OES_vertex_array_object (checked with instanceof)
pub extern "js" fn OES_vertex_array_object::from_js_value_opt(
  v : JsValue,
) -> OES_vertex_array_object? =
  #| (v) => (v instanceof OES_vertex_array_object) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OES_vertex_array_object (checked with instanceof)
pub extern "js" fn JsValue::as_oes_vertex_array_object(
  self : JsValue,
) -> OES_vertex_array_object? =
  #| (self) => (self instanceof OES_vertex_array_object) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OES_vertex_array_object (unchecked)
pub extern "js" fn JsValue::to_oes_vertex_array_object(
  self : JsValue,
) -> OES_vertex_array_object =
  #| (self) => self

// OES_vertex_array_object.VERTEX_ARRAY_BINDING_OES

///|
pub let oes_vertex_array_object_vertex_array_binding_oes : Int = 0x85B5

///|
pub extern "js" fn OES_vertex_array_object::create_vertex_array_oes(
  self : OES_vertex_array_object,
) -> WebGLVertexArrayObjectOES =
  #| (self) => self.createVertexArrayOES()

///|
pub extern "js" fn OES_vertex_array_object::delete_vertex_array_oes(
  self : OES_vertex_array_object,
  array_object : WebGLVertexArrayObjectOES?,
) -> Unit =
  #| (self, array_object) => self.deleteVertexArrayOES(array_object)

///|
pub extern "js" fn OES_vertex_array_object::is_vertex_array_oes(
  self : OES_vertex_array_object,
  array_object : WebGLVertexArrayObjectOES?,
) -> GLboolean =
  #| (self, array_object) => self.isVertexArrayOES(array_object)

///|
pub extern "js" fn OES_vertex_array_object::bind_vertex_array_oes(
  self : OES_vertex_array_object,
  array_object : WebGLVertexArrayObjectOES?,
) -> Unit =
  #| (self, array_object) => self.bindVertexArrayOES(array_object)
