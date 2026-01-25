// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/ANGLE_instanced_arrays

///|
/// ANGLE_instanced_arrays interface
pub type ANGLE_instanced_arrays

///|
pub extern "js" fn ANGLE_instanced_arrays::to_js_value(
  self : ANGLE_instanced_arrays,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ANGLE_instanced_arrays (unchecked)
pub extern "js" fn ANGLE_instanced_arrays::from_js_value(
  v : JsValue,
) -> ANGLE_instanced_arrays =
  #| (v) => v

///|
/// Safely cast JsValue to ANGLE_instanced_arrays (checked with instanceof)
pub extern "js" fn ANGLE_instanced_arrays::from_js_value_opt(
  v : JsValue,
) -> ANGLE_instanced_arrays? =
  #| (v) => (v instanceof ANGLE_instanced_arrays) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ANGLE_instanced_arrays (checked with instanceof)
pub extern "js" fn JsValue::as_angle_instanced_arrays(
  self : JsValue,
) -> ANGLE_instanced_arrays? =
  #| (self) => (self instanceof ANGLE_instanced_arrays) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ANGLE_instanced_arrays (unchecked)
pub extern "js" fn JsValue::to_angle_instanced_arrays(
  self : JsValue,
) -> ANGLE_instanced_arrays =
  #| (self) => self

// ANGLE_instanced_arrays.VERTEX_ATTRIB_ARRAY_DIVISOR_ANGLE

///|
pub let angle_instanced_arrays_vertex_attrib_array_divisor_angle : Int = 0x88FE

///|
pub extern "js" fn ANGLE_instanced_arrays::draw_arrays_instanced_angle(
  self : ANGLE_instanced_arrays,
  mode : GLenum,
  first : GLint,
  count : GLsizei,
  primcount : GLsizei,
) -> Unit =
  #| (self, mode, first, count, primcount) => self.drawArraysInstancedANGLE(mode, first, count, primcount)

///|
pub extern "js" fn ANGLE_instanced_arrays::draw_elements_instanced_angle(
  self : ANGLE_instanced_arrays,
  mode : GLenum,
  count : GLsizei,
  type_ : GLenum,
  offset : GLintptr,
  primcount : GLsizei,
) -> Unit =
  #| (self, mode, count, type_, offset, primcount) => self.drawElementsInstancedANGLE(mode, count, type_, offset, primcount)

///|
pub extern "js" fn ANGLE_instanced_arrays::vertex_attrib_divisor_angle(
  self : ANGLE_instanced_arrays,
  index : GLuint,
  divisor : GLuint,
) -> Unit =
  #| (self, index, divisor) => self.vertexAttribDivisorANGLE(index, divisor)
