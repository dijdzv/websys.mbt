// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/geometry

///|
/// DOMPointInit dictionary
pub struct DOMPointInit {
  x : Double?
  y : Double?
  z : Double?
  w : Double?
}

///|
/// Create a new DOMPointInit with default values
pub fn DOMPointInit::default() -> DOMPointInit {
  DOMPointInit::{ x: None, y: None, z: None, w: None }
}

///|
/// Convert to JsValue
pub extern "js" fn DOMPointInit::to_js(self : DOMPointInit) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y,
  #|   z: self.z,
  #|   w: self.w
  #| })

///|
/// DOMRectInit dictionary
pub struct DOMRectInit {
  x : Double?
  y : Double?
  width : Double?
  height : Double?
}

///|
/// Create a new DOMRectInit with default values
pub fn DOMRectInit::default() -> DOMRectInit {
  DOMRectInit::{ x: None, y: None, width: None, height: None }
}

///|
/// Convert to JsValue
pub extern "js" fn DOMRectInit::to_js(self : DOMRectInit) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y,
  #|   width: self.width,
  #|   height: self.height
  #| })

///|
/// DOMQuadInit dictionary
pub struct DOMQuadInit {
  p1 : DOMPointInit?
  p2 : DOMPointInit?
  p3 : DOMPointInit?
  p4 : DOMPointInit?
}

///|
/// Create a new DOMQuadInit with default values
pub fn DOMQuadInit::default() -> DOMQuadInit {
  DOMQuadInit::{ p1: None, p2: None, p3: None, p4: None }
}

///|
/// Convert to JsValue
pub extern "js" fn DOMQuadInit::to_js(self : DOMQuadInit) -> JsValue =
  #| (self) => ({
  #|   p1: self.p1,
  #|   p2: self.p2,
  #|   p3: self.p3,
  #|   p4: self.p4
  #| })

///|
/// DOMMatrix2DInit dictionary
pub struct DOMMatrix2DInit {
  a : Double?
  b : Double?
  c : Double?
  d : Double?
  e : Double?
  f : Double?
  m11 : Double?
  m12 : Double?
  m21 : Double?
  m22 : Double?
  m41 : Double?
  m42 : Double?
}

///|
/// Create a new DOMMatrix2DInit with default values
pub fn DOMMatrix2DInit::default() -> DOMMatrix2DInit {
  DOMMatrix2DInit::{
    a: None,
    b: None,
    c: None,
    d: None,
    e: None,
    f: None,
    m11: None,
    m12: None,
    m21: None,
    m22: None,
    m41: None,
    m42: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn DOMMatrix2DInit::to_js(self : DOMMatrix2DInit) -> JsValue =
  #| (self) => ({
  #|   a: self.a,
  #|   b: self.b,
  #|   c: self.c,
  #|   d: self.d,
  #|   e: self.e,
  #|   f: self.f,
  #|   m11: self.m11,
  #|   m12: self.m12,
  #|   m21: self.m21,
  #|   m22: self.m22,
  #|   m41: self.m41,
  #|   m42: self.m42
  #| })

///|
/// DOMMatrixInit dictionary
pub struct DOMMatrixInit {
  a : Double?
  b : Double?
  c : Double?
  d : Double?
  e : Double?
  f : Double?
  m11 : Double?
  m12 : Double?
  m21 : Double?
  m22 : Double?
  m41 : Double?
  m42 : Double?
  m13 : Double?
  m14 : Double?
  m23 : Double?
  m24 : Double?
  m31 : Double?
  m32 : Double?
  m33 : Double?
  m34 : Double?
  m43 : Double?
  m44 : Double?
  is2D : Bool?
}

///|
/// Create a new DOMMatrixInit with default values
pub fn DOMMatrixInit::default() -> DOMMatrixInit {
  DOMMatrixInit::{
    a: None,
    b: None,
    c: None,
    d: None,
    e: None,
    f: None,
    m11: None,
    m12: None,
    m21: None,
    m22: None,
    m41: None,
    m42: None,
    m13: None,
    m14: None,
    m23: None,
    m24: None,
    m31: None,
    m32: None,
    m33: None,
    m34: None,
    m43: None,
    m44: None,
    is2D: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn DOMMatrixInit::to_js(self : DOMMatrixInit) -> JsValue =
  #| (self) => ({
  #|   a: self.a,
  #|   b: self.b,
  #|   c: self.c,
  #|   d: self.d,
  #|   e: self.e,
  #|   f: self.f,
  #|   m11: self.m11,
  #|   m12: self.m12,
  #|   m21: self.m21,
  #|   m22: self.m22,
  #|   m41: self.m41,
  #|   m42: self.m42,
  #|   m13: self.m13,
  #|   m14: self.m14,
  #|   m23: self.m23,
  #|   m24: self.m24,
  #|   m31: self.m31,
  #|   m32: self.m32,
  #|   m33: self.m33,
  #|   m34: self.m34,
  #|   m43: self.m43,
  #|   m44: self.m44,
  #|   is2D: self.is2D
  #| })

///|
/// DOMPointReadOnly interface
pub type DOMPointReadOnly

///|
pub extern "js" fn DOMPointReadOnly::to_js_value(
  self : DOMPointReadOnly,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DOMPointReadOnly::new(
  x : Double,
  y : Double,
  z : Double,
  w : Double,
) -> DOMPointReadOnly =
  #| (x, y, z, w) => new DOMPointReadOnly(x, y, z, w)

///|
pub extern "js" fn DOMPointReadOnly::from_point(
  other : DOMPointInit,
) -> DOMPointReadOnly =
  #| (other) => DOMPointReadOnly.fromPoint(other)

///|
pub extern "js" fn DOMPointReadOnly::get_x(self : DOMPointReadOnly) -> Double =
  #| (self) => self.x

///|
pub extern "js" fn DOMPointReadOnly::get_y(self : DOMPointReadOnly) -> Double =
  #| (self) => self.y

///|
pub extern "js" fn DOMPointReadOnly::get_z(self : DOMPointReadOnly) -> Double =
  #| (self) => self.z

///|
pub extern "js" fn DOMPointReadOnly::get_w(self : DOMPointReadOnly) -> Double =
  #| (self) => self.w

///|
pub extern "js" fn DOMPointReadOnly::matrix_transform(
  self : DOMPointReadOnly,
) -> DOMPoint =
  #| (self) => self.matrixTransform()

///|
pub extern "js" fn DOMPointReadOnly::matrix_transform_with_matrix(
  self : DOMPointReadOnly,
  matrix : DOMMatrixInit,
) -> DOMPoint =
  #| (self, matrix) => self.matrixTransform(matrix)

///|
pub extern "js" fn DOMPointReadOnly::to_j_s_o_n(
  self : DOMPointReadOnly,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// DOMPoint interface
pub type DOMPoint

///|
pub extern "js" fn DOMPoint::to_js_value(self : DOMPoint) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DOMPoint::new(
  x : Double,
  y : Double,
  z : Double,
  w : Double,
) -> DOMPoint =
  #| (x, y, z, w) => new DOMPoint(x, y, z, w)

///|
pub extern "js" fn DOMPoint::from_point(
  other : DOMPointInit,
) -> DOMPointReadOnly =
  #| (other) => DOMPoint.fromPoint(other)

///|
pub extern "js" fn DOMPoint::get_x(self : DOMPoint) -> Double =
  #| (self) => self.x

///|
pub extern "js" fn DOMPoint::get_y(self : DOMPoint) -> Double =
  #| (self) => self.y

///|
pub extern "js" fn DOMPoint::get_z(self : DOMPoint) -> Double =
  #| (self) => self.z

///|
pub extern "js" fn DOMPoint::get_w(self : DOMPoint) -> Double =
  #| (self) => self.w

///|
pub extern "js" fn DOMPoint::matrix_transform(self : DOMPoint) -> DOMPoint =
  #| (self) => self.matrixTransform()

///|
pub extern "js" fn DOMPoint::matrix_transform_with_matrix(
  self : DOMPoint,
  matrix : DOMMatrixInit,
) -> DOMPoint =
  #| (self, matrix) => self.matrixTransform(matrix)

///|
pub extern "js" fn DOMPoint::to_j_s_o_n(self : DOMPoint) -> JsValue =
  #| (self) => self.toJSON()

///|
/// DOMRectReadOnly interface
pub type DOMRectReadOnly

///|
pub extern "js" fn DOMRectReadOnly::to_js_value(
  self : DOMRectReadOnly,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DOMRectReadOnly::new(
  x : Double,
  y : Double,
  width : Double,
  height : Double,
) -> DOMRectReadOnly =
  #| (x, y, width, height) => new DOMRectReadOnly(x, y, width, height)

///|
pub extern "js" fn DOMRectReadOnly::from_rect(
  other : DOMRectInit,
) -> DOMRectReadOnly =
  #| (other) => DOMRectReadOnly.fromRect(other)

///|
pub extern "js" fn DOMRectReadOnly::get_x(self : DOMRectReadOnly) -> Double =
  #| (self) => self.x

///|
pub extern "js" fn DOMRectReadOnly::get_y(self : DOMRectReadOnly) -> Double =
  #| (self) => self.y

///|
pub extern "js" fn DOMRectReadOnly::get_width(self : DOMRectReadOnly) -> Double =
  #| (self) => self.width

///|
pub extern "js" fn DOMRectReadOnly::get_height(
  self : DOMRectReadOnly,
) -> Double =
  #| (self) => self.height

///|
pub extern "js" fn DOMRectReadOnly::get_top(self : DOMRectReadOnly) -> Double =
  #| (self) => self.top

///|
pub extern "js" fn DOMRectReadOnly::get_right(self : DOMRectReadOnly) -> Double =
  #| (self) => self.right

///|
pub extern "js" fn DOMRectReadOnly::get_bottom(
  self : DOMRectReadOnly,
) -> Double =
  #| (self) => self.bottom

///|
pub extern "js" fn DOMRectReadOnly::get_left(self : DOMRectReadOnly) -> Double =
  #| (self) => self.left

///|
pub extern "js" fn DOMRectReadOnly::to_j_s_o_n(
  self : DOMRectReadOnly,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// DOMRect interface
pub type DOMRect

///|
pub extern "js" fn DOMRect::to_js_value(self : DOMRect) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DOMRect::new(
  x : Double,
  y : Double,
  width : Double,
  height : Double,
) -> DOMRect =
  #| (x, y, width, height) => new DOMRect(x, y, width, height)

///|
pub extern "js" fn DOMRect::from_rect(other : DOMRectInit) -> DOMRectReadOnly =
  #| (other) => DOMRect.fromRect(other)

///|
pub extern "js" fn DOMRect::get_x(self : DOMRect) -> Double =
  #| (self) => self.x

///|
pub extern "js" fn DOMRect::get_y(self : DOMRect) -> Double =
  #| (self) => self.y

///|
pub extern "js" fn DOMRect::get_width(self : DOMRect) -> Double =
  #| (self) => self.width

///|
pub extern "js" fn DOMRect::get_height(self : DOMRect) -> Double =
  #| (self) => self.height

///|
pub extern "js" fn DOMRect::get_top(self : DOMRect) -> Double =
  #| (self) => self.top

///|
pub extern "js" fn DOMRect::get_right(self : DOMRect) -> Double =
  #| (self) => self.right

///|
pub extern "js" fn DOMRect::get_bottom(self : DOMRect) -> Double =
  #| (self) => self.bottom

///|
pub extern "js" fn DOMRect::get_left(self : DOMRect) -> Double =
  #| (self) => self.left

///|
pub extern "js" fn DOMRect::to_j_s_o_n(self : DOMRect) -> JsValue =
  #| (self) => self.toJSON()

///|
/// DOMRectList interface
pub type DOMRectList

///|
pub extern "js" fn DOMRectList::to_js_value(self : DOMRectList) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DOMRectList::get_length(self : DOMRectList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn DOMRectList::item(
  self : DOMRectList,
  index : Int,
) -> DOMRect? =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn DOMRectList::get(
  self : DOMRectList,
  index : Int,
) -> DOMRect? =
  #| (self, index) => self[index]

///|
/// DOMQuad interface
pub type DOMQuad

///|
pub extern "js" fn DOMQuad::to_js_value(self : DOMQuad) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DOMQuad::new(
  p1 : DOMPointInit,
  p2 : DOMPointInit,
  p3 : DOMPointInit,
  p4 : DOMPointInit,
) -> DOMQuad =
  #| (p1, p2, p3, p4) => new DOMQuad(p1, p2, p3, p4)

///|
pub extern "js" fn DOMQuad::from_rect(other : DOMRectInit) -> DOMQuad =
  #| (other) => DOMQuad.fromRect(other)

///|
pub extern "js" fn DOMQuad::from_quad(other : DOMQuadInit) -> DOMQuad =
  #| (other) => DOMQuad.fromQuad(other)

///|
pub extern "js" fn DOMQuad::get_p1(self : DOMQuad) -> DOMPoint =
  #| (self) => self.p1

///|
pub extern "js" fn DOMQuad::get_p2(self : DOMQuad) -> DOMPoint =
  #| (self) => self.p2

///|
pub extern "js" fn DOMQuad::get_p3(self : DOMQuad) -> DOMPoint =
  #| (self) => self.p3

///|
pub extern "js" fn DOMQuad::get_p4(self : DOMQuad) -> DOMPoint =
  #| (self) => self.p4

///|
pub extern "js" fn DOMQuad::get_bounds(self : DOMQuad) -> DOMRect =
  #| (self) => self.getBounds()

///|
pub extern "js" fn DOMQuad::to_j_s_o_n(self : DOMQuad) -> JsValue =
  #| (self) => self.toJSON()

///|
/// DOMMatrixReadOnly interface
pub type DOMMatrixReadOnly

///|
pub extern "js" fn DOMMatrixReadOnly::to_js_value(
  self : DOMMatrixReadOnly,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DOMMatrixReadOnly::new(init_ : JsValue) -> DOMMatrixReadOnly =
  #| (init_) => new DOMMatrixReadOnly(init_)

///|
pub extern "js" fn DOMMatrixReadOnly::from_matrix(
  other : DOMMatrixInit,
) -> DOMMatrixReadOnly =
  #| (other) => DOMMatrixReadOnly.fromMatrix(other)

///|
pub extern "js" fn DOMMatrixReadOnly::from_float32_array(
  array32 : Float32Array,
) -> DOMMatrixReadOnly =
  #| (array32) => DOMMatrixReadOnly.fromFloat32Array(array32)

///|
pub extern "js" fn DOMMatrixReadOnly::from_float64_array(
  array64 : Float64Array,
) -> DOMMatrixReadOnly =
  #| (array64) => DOMMatrixReadOnly.fromFloat64Array(array64)

///|
pub extern "js" fn DOMMatrixReadOnly::get_a(self : DOMMatrixReadOnly) -> Double =
  #| (self) => self.a

///|
pub extern "js" fn DOMMatrixReadOnly::get_b(self : DOMMatrixReadOnly) -> Double =
  #| (self) => self.b

///|
pub extern "js" fn DOMMatrixReadOnly::get_c(self : DOMMatrixReadOnly) -> Double =
  #| (self) => self.c

///|
pub extern "js" fn DOMMatrixReadOnly::get_d(self : DOMMatrixReadOnly) -> Double =
  #| (self) => self.d

///|
pub extern "js" fn DOMMatrixReadOnly::get_e(self : DOMMatrixReadOnly) -> Double =
  #| (self) => self.e

///|
pub extern "js" fn DOMMatrixReadOnly::get_f(self : DOMMatrixReadOnly) -> Double =
  #| (self) => self.f

///|
pub extern "js" fn DOMMatrixReadOnly::get_m11(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m11

///|
pub extern "js" fn DOMMatrixReadOnly::get_m12(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m12

///|
pub extern "js" fn DOMMatrixReadOnly::get_m13(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m13

///|
pub extern "js" fn DOMMatrixReadOnly::get_m14(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m14

///|
pub extern "js" fn DOMMatrixReadOnly::get_m21(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m21

///|
pub extern "js" fn DOMMatrixReadOnly::get_m22(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m22

///|
pub extern "js" fn DOMMatrixReadOnly::get_m23(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m23

///|
pub extern "js" fn DOMMatrixReadOnly::get_m24(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m24

///|
pub extern "js" fn DOMMatrixReadOnly::get_m31(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m31

///|
pub extern "js" fn DOMMatrixReadOnly::get_m32(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m32

///|
pub extern "js" fn DOMMatrixReadOnly::get_m33(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m33

///|
pub extern "js" fn DOMMatrixReadOnly::get_m34(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m34

///|
pub extern "js" fn DOMMatrixReadOnly::get_m41(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m41

///|
pub extern "js" fn DOMMatrixReadOnly::get_m42(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m42

///|
pub extern "js" fn DOMMatrixReadOnly::get_m43(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m43

///|
pub extern "js" fn DOMMatrixReadOnly::get_m44(
  self : DOMMatrixReadOnly,
) -> Double =
  #| (self) => self.m44

///|
pub extern "js" fn DOMMatrixReadOnly::get_is2_d(
  self : DOMMatrixReadOnly,
) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn DOMMatrixReadOnly::get_is_identity(
  self : DOMMatrixReadOnly,
) -> Bool =
  #| (self) => self.isIdentity

///|
pub extern "js" fn DOMMatrixReadOnly::translate(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.translate()

///|
pub extern "js" fn DOMMatrixReadOnly::translate_with_tz(
  self : DOMMatrixReadOnly,
  tx : Double,
  ty : Double,
  tz : Double,
) -> DOMMatrix =
  #| (self, tx, ty, tz) => self.translate(tx, ty, tz)

///|
pub extern "js" fn DOMMatrixReadOnly::scale(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.scale()

///|
pub extern "js" fn DOMMatrixReadOnly::scale_with_origin_z(
  self : DOMMatrixReadOnly,
  scale_x : Double,
  scale_y : Double,
  scale_z : Double,
  origin_x : Double,
  origin_y : Double,
  origin_z : Double,
) -> DOMMatrix =
  #| (self, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => self.scale(scale_x, scale_y, scale_z, origin_x, origin_y, origin_z)

///|
pub extern "js" fn DOMMatrixReadOnly::scale_non_uniform(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.scaleNonUniform()

///|
pub extern "js" fn DOMMatrixReadOnly::scale_non_uniform_with_scale_y(
  self : DOMMatrixReadOnly,
  scale_x : Double,
  scale_y : Double,
) -> DOMMatrix =
  #| (self, scale_x, scale_y) => self.scaleNonUniform(scale_x, scale_y)

///|
pub extern "js" fn DOMMatrixReadOnly::scale3d(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.scale3d()

///|
pub extern "js" fn DOMMatrixReadOnly::scale3d_with_origin_z(
  self : DOMMatrixReadOnly,
  scale : Double,
  origin_x : Double,
  origin_y : Double,
  origin_z : Double,
) -> DOMMatrix =
  #| (self, scale, origin_x, origin_y, origin_z) => self.scale3d(scale, origin_x, origin_y, origin_z)

///|
pub extern "js" fn DOMMatrixReadOnly::rotate(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.rotate()

///|
pub extern "js" fn DOMMatrixReadOnly::rotate_with_rot_z(
  self : DOMMatrixReadOnly,
  rot_x : Double,
  rot_y : Double,
  rot_z : Double,
) -> DOMMatrix =
  #| (self, rot_x, rot_y, rot_z) => self.rotate(rot_x, rot_y, rot_z)

///|
pub extern "js" fn DOMMatrixReadOnly::rotate_from_vector(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.rotateFromVector()

///|
pub extern "js" fn DOMMatrixReadOnly::rotate_from_vector_with_y(
  self : DOMMatrixReadOnly,
  x : Double,
  y : Double,
) -> DOMMatrix =
  #| (self, x, y) => self.rotateFromVector(x, y)

///|
pub extern "js" fn DOMMatrixReadOnly::rotate_axis_angle(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.rotateAxisAngle()

///|
pub extern "js" fn DOMMatrixReadOnly::rotate_axis_angle_with_angle(
  self : DOMMatrixReadOnly,
  x : Double,
  y : Double,
  z : Double,
  angle : Double,
) -> DOMMatrix =
  #| (self, x, y, z, angle) => self.rotateAxisAngle(x, y, z, angle)

///|
pub extern "js" fn DOMMatrixReadOnly::skew_x(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.skewX()

///|
pub extern "js" fn DOMMatrixReadOnly::skew_x_with_sx(
  self : DOMMatrixReadOnly,
  sx : Double,
) -> DOMMatrix =
  #| (self, sx) => self.skewX(sx)

///|
pub extern "js" fn DOMMatrixReadOnly::skew_y(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.skewY()

///|
pub extern "js" fn DOMMatrixReadOnly::skew_y_with_sy(
  self : DOMMatrixReadOnly,
  sy : Double,
) -> DOMMatrix =
  #| (self, sy) => self.skewY(sy)

///|
pub extern "js" fn DOMMatrixReadOnly::multiply(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.multiply()

///|
pub extern "js" fn DOMMatrixReadOnly::multiply_with_other(
  self : DOMMatrixReadOnly,
  other : DOMMatrixInit,
) -> DOMMatrix =
  #| (self, other) => self.multiply(other)

///|
pub extern "js" fn DOMMatrixReadOnly::flip_x(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.flipX()

///|
pub extern "js" fn DOMMatrixReadOnly::flip_y(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.flipY()

///|
pub extern "js" fn DOMMatrixReadOnly::inverse(
  self : DOMMatrixReadOnly,
) -> DOMMatrix =
  #| (self) => self.inverse()

///|
pub extern "js" fn DOMMatrixReadOnly::transform_point(
  self : DOMMatrixReadOnly,
) -> DOMPoint =
  #| (self) => self.transformPoint()

///|
pub extern "js" fn DOMMatrixReadOnly::transform_point_with_point(
  self : DOMMatrixReadOnly,
  point : DOMPointInit,
) -> DOMPoint =
  #| (self, point) => self.transformPoint(point)

///|
pub extern "js" fn DOMMatrixReadOnly::to_float32_array(
  self : DOMMatrixReadOnly,
) -> Float32Array =
  #| (self) => self.toFloat32Array()

///|
pub extern "js" fn DOMMatrixReadOnly::to_float64_array(
  self : DOMMatrixReadOnly,
) -> Float64Array =
  #| (self) => self.toFloat64Array()

///|
pub extern "js" fn DOMMatrixReadOnly::to_j_s_o_n(
  self : DOMMatrixReadOnly,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// DOMMatrix interface
pub type DOMMatrix

///|
pub extern "js" fn DOMMatrix::to_js_value(self : DOMMatrix) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DOMMatrix::new(init_ : JsValue) -> DOMMatrix =
  #| (init_) => new DOMMatrix(init_)

///|
pub extern "js" fn DOMMatrix::from_matrix(
  other : DOMMatrixInit,
) -> DOMMatrixReadOnly =
  #| (other) => DOMMatrix.fromMatrix(other)

///|
pub extern "js" fn DOMMatrix::from_float32_array(
  array32 : Float32Array,
) -> DOMMatrixReadOnly =
  #| (array32) => DOMMatrix.fromFloat32Array(array32)

///|
pub extern "js" fn DOMMatrix::from_float64_array(
  array64 : Float64Array,
) -> DOMMatrixReadOnly =
  #| (array64) => DOMMatrix.fromFloat64Array(array64)

///|
pub extern "js" fn DOMMatrix::get_a(self : DOMMatrix) -> Double =
  #| (self) => self.a

///|
pub extern "js" fn DOMMatrix::get_b(self : DOMMatrix) -> Double =
  #| (self) => self.b

///|
pub extern "js" fn DOMMatrix::get_c(self : DOMMatrix) -> Double =
  #| (self) => self.c

///|
pub extern "js" fn DOMMatrix::get_d(self : DOMMatrix) -> Double =
  #| (self) => self.d

///|
pub extern "js" fn DOMMatrix::get_e(self : DOMMatrix) -> Double =
  #| (self) => self.e

///|
pub extern "js" fn DOMMatrix::get_f(self : DOMMatrix) -> Double =
  #| (self) => self.f

///|
pub extern "js" fn DOMMatrix::get_m11(self : DOMMatrix) -> Double =
  #| (self) => self.m11

///|
pub extern "js" fn DOMMatrix::get_m12(self : DOMMatrix) -> Double =
  #| (self) => self.m12

///|
pub extern "js" fn DOMMatrix::get_m13(self : DOMMatrix) -> Double =
  #| (self) => self.m13

///|
pub extern "js" fn DOMMatrix::get_m14(self : DOMMatrix) -> Double =
  #| (self) => self.m14

///|
pub extern "js" fn DOMMatrix::get_m21(self : DOMMatrix) -> Double =
  #| (self) => self.m21

///|
pub extern "js" fn DOMMatrix::get_m22(self : DOMMatrix) -> Double =
  #| (self) => self.m22

///|
pub extern "js" fn DOMMatrix::get_m23(self : DOMMatrix) -> Double =
  #| (self) => self.m23

///|
pub extern "js" fn DOMMatrix::get_m24(self : DOMMatrix) -> Double =
  #| (self) => self.m24

///|
pub extern "js" fn DOMMatrix::get_m31(self : DOMMatrix) -> Double =
  #| (self) => self.m31

///|
pub extern "js" fn DOMMatrix::get_m32(self : DOMMatrix) -> Double =
  #| (self) => self.m32

///|
pub extern "js" fn DOMMatrix::get_m33(self : DOMMatrix) -> Double =
  #| (self) => self.m33

///|
pub extern "js" fn DOMMatrix::get_m34(self : DOMMatrix) -> Double =
  #| (self) => self.m34

///|
pub extern "js" fn DOMMatrix::get_m41(self : DOMMatrix) -> Double =
  #| (self) => self.m41

///|
pub extern "js" fn DOMMatrix::get_m42(self : DOMMatrix) -> Double =
  #| (self) => self.m42

///|
pub extern "js" fn DOMMatrix::get_m43(self : DOMMatrix) -> Double =
  #| (self) => self.m43

///|
pub extern "js" fn DOMMatrix::get_m44(self : DOMMatrix) -> Double =
  #| (self) => self.m44

///|
pub extern "js" fn DOMMatrix::get_is2_d(self : DOMMatrix) -> Bool =
  #| (self) => self.is2D

///|
pub extern "js" fn DOMMatrix::get_is_identity(self : DOMMatrix) -> Bool =
  #| (self) => self.isIdentity

///|
pub extern "js" fn DOMMatrix::translate(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.translate()

///|
pub extern "js" fn DOMMatrix::translate_with_tz(
  self : DOMMatrix,
  tx : Double,
  ty : Double,
  tz : Double,
) -> DOMMatrix =
  #| (self, tx, ty, tz) => self.translate(tx, ty, tz)

///|
pub extern "js" fn DOMMatrix::scale(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.scale()

///|
pub extern "js" fn DOMMatrix::scale_with_origin_z(
  self : DOMMatrix,
  scale_x : Double,
  scale_y : Double,
  scale_z : Double,
  origin_x : Double,
  origin_y : Double,
  origin_z : Double,
) -> DOMMatrix =
  #| (self, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => self.scale(scale_x, scale_y, scale_z, origin_x, origin_y, origin_z)

///|
pub extern "js" fn DOMMatrix::scale_non_uniform(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.scaleNonUniform()

///|
pub extern "js" fn DOMMatrix::scale_non_uniform_with_scale_y(
  self : DOMMatrix,
  scale_x : Double,
  scale_y : Double,
) -> DOMMatrix =
  #| (self, scale_x, scale_y) => self.scaleNonUniform(scale_x, scale_y)

///|
pub extern "js" fn DOMMatrix::scale3d(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.scale3d()

///|
pub extern "js" fn DOMMatrix::scale3d_with_origin_z(
  self : DOMMatrix,
  scale : Double,
  origin_x : Double,
  origin_y : Double,
  origin_z : Double,
) -> DOMMatrix =
  #| (self, scale, origin_x, origin_y, origin_z) => self.scale3d(scale, origin_x, origin_y, origin_z)

///|
pub extern "js" fn DOMMatrix::rotate(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.rotate()

///|
pub extern "js" fn DOMMatrix::rotate_with_rot_z(
  self : DOMMatrix,
  rot_x : Double,
  rot_y : Double,
  rot_z : Double,
) -> DOMMatrix =
  #| (self, rot_x, rot_y, rot_z) => self.rotate(rot_x, rot_y, rot_z)

///|
pub extern "js" fn DOMMatrix::rotate_from_vector(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.rotateFromVector()

///|
pub extern "js" fn DOMMatrix::rotate_from_vector_with_y(
  self : DOMMatrix,
  x : Double,
  y : Double,
) -> DOMMatrix =
  #| (self, x, y) => self.rotateFromVector(x, y)

///|
pub extern "js" fn DOMMatrix::rotate_axis_angle(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.rotateAxisAngle()

///|
pub extern "js" fn DOMMatrix::rotate_axis_angle_with_angle(
  self : DOMMatrix,
  x : Double,
  y : Double,
  z : Double,
  angle : Double,
) -> DOMMatrix =
  #| (self, x, y, z, angle) => self.rotateAxisAngle(x, y, z, angle)

///|
pub extern "js" fn DOMMatrix::skew_x(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.skewX()

///|
pub extern "js" fn DOMMatrix::skew_x_with_sx(
  self : DOMMatrix,
  sx : Double,
) -> DOMMatrix =
  #| (self, sx) => self.skewX(sx)

///|
pub extern "js" fn DOMMatrix::skew_y(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.skewY()

///|
pub extern "js" fn DOMMatrix::skew_y_with_sy(
  self : DOMMatrix,
  sy : Double,
) -> DOMMatrix =
  #| (self, sy) => self.skewY(sy)

///|
pub extern "js" fn DOMMatrix::multiply(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.multiply()

///|
pub extern "js" fn DOMMatrix::multiply_with_other(
  self : DOMMatrix,
  other : DOMMatrixInit,
) -> DOMMatrix =
  #| (self, other) => self.multiply(other)

///|
pub extern "js" fn DOMMatrix::flip_x(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.flipX()

///|
pub extern "js" fn DOMMatrix::flip_y(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.flipY()

///|
pub extern "js" fn DOMMatrix::inverse(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.inverse()

///|
pub extern "js" fn DOMMatrix::transform_point(self : DOMMatrix) -> DOMPoint =
  #| (self) => self.transformPoint()

///|
pub extern "js" fn DOMMatrix::transform_point_with_point(
  self : DOMMatrix,
  point : DOMPointInit,
) -> DOMPoint =
  #| (self, point) => self.transformPoint(point)

///|
pub extern "js" fn DOMMatrix::to_float32_array(
  self : DOMMatrix,
) -> Float32Array =
  #| (self) => self.toFloat32Array()

///|
pub extern "js" fn DOMMatrix::to_float64_array(
  self : DOMMatrix,
) -> Float64Array =
  #| (self) => self.toFloat64Array()

///|
pub extern "js" fn DOMMatrix::to_j_s_o_n(self : DOMMatrix) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn DOMMatrix::multiply_self(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.multiplySelf()

///|
pub extern "js" fn DOMMatrix::multiply_self_with_other(
  self : DOMMatrix,
  other : DOMMatrixInit,
) -> DOMMatrix =
  #| (self, other) => self.multiplySelf(other)

///|
pub extern "js" fn DOMMatrix::pre_multiply_self(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.preMultiplySelf()

///|
pub extern "js" fn DOMMatrix::pre_multiply_self_with_other(
  self : DOMMatrix,
  other : DOMMatrixInit,
) -> DOMMatrix =
  #| (self, other) => self.preMultiplySelf(other)

///|
pub extern "js" fn DOMMatrix::translate_self(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.translateSelf()

///|
pub extern "js" fn DOMMatrix::translate_self_with_tz(
  self : DOMMatrix,
  tx : Double,
  ty : Double,
  tz : Double,
) -> DOMMatrix =
  #| (self, tx, ty, tz) => self.translateSelf(tx, ty, tz)

///|
pub extern "js" fn DOMMatrix::scale_self(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.scaleSelf()

///|
pub extern "js" fn DOMMatrix::scale_self_with_origin_z(
  self : DOMMatrix,
  scale_x : Double,
  scale_y : Double,
  scale_z : Double,
  origin_x : Double,
  origin_y : Double,
  origin_z : Double,
) -> DOMMatrix =
  #| (self, scale_x, scale_y, scale_z, origin_x, origin_y, origin_z) => self.scaleSelf(scale_x, scale_y, scale_z, origin_x, origin_y, origin_z)

///|
pub extern "js" fn DOMMatrix::scale3d_self(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.scale3dSelf()

///|
pub extern "js" fn DOMMatrix::scale3d_self_with_origin_z(
  self : DOMMatrix,
  scale : Double,
  origin_x : Double,
  origin_y : Double,
  origin_z : Double,
) -> DOMMatrix =
  #| (self, scale, origin_x, origin_y, origin_z) => self.scale3dSelf(scale, origin_x, origin_y, origin_z)

///|
pub extern "js" fn DOMMatrix::rotate_self(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.rotateSelf()

///|
pub extern "js" fn DOMMatrix::rotate_self_with_rot_z(
  self : DOMMatrix,
  rot_x : Double,
  rot_y : Double,
  rot_z : Double,
) -> DOMMatrix =
  #| (self, rot_x, rot_y, rot_z) => self.rotateSelf(rot_x, rot_y, rot_z)

///|
pub extern "js" fn DOMMatrix::rotate_from_vector_self(
  self : DOMMatrix,
) -> DOMMatrix =
  #| (self) => self.rotateFromVectorSelf()

///|
pub extern "js" fn DOMMatrix::rotate_from_vector_self_with_y(
  self : DOMMatrix,
  x : Double,
  y : Double,
) -> DOMMatrix =
  #| (self, x, y) => self.rotateFromVectorSelf(x, y)

///|
pub extern "js" fn DOMMatrix::rotate_axis_angle_self(
  self : DOMMatrix,
) -> DOMMatrix =
  #| (self) => self.rotateAxisAngleSelf()

///|
pub extern "js" fn DOMMatrix::rotate_axis_angle_self_with_angle(
  self : DOMMatrix,
  x : Double,
  y : Double,
  z : Double,
  angle : Double,
) -> DOMMatrix =
  #| (self, x, y, z, angle) => self.rotateAxisAngleSelf(x, y, z, angle)

///|
pub extern "js" fn DOMMatrix::skew_x_self(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.skewXSelf()

///|
pub extern "js" fn DOMMatrix::skew_x_self_with_sx(
  self : DOMMatrix,
  sx : Double,
) -> DOMMatrix =
  #| (self, sx) => self.skewXSelf(sx)

///|
pub extern "js" fn DOMMatrix::skew_y_self(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.skewYSelf()

///|
pub extern "js" fn DOMMatrix::skew_y_self_with_sy(
  self : DOMMatrix,
  sy : Double,
) -> DOMMatrix =
  #| (self, sy) => self.skewYSelf(sy)

///|
pub extern "js" fn DOMMatrix::invert_self(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.invertSelf()

///|
pub extern "js" fn DOMMatrix::set_matrix_value(
  self : DOMMatrix,
  transform_list : String,
) -> DOMMatrix =
  #| (self, transform_list) => self.setMatrixValue(transform_list)
