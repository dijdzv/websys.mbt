// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/geometry

///|
/// DOMPointInit dictionary
pub(all) struct DOMPointInit {
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
extern "js" fn DOMPointInit::to_js_ffi(self : DOMPointInit) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y,
  #|   z: self.z,
  #|   w: self.w
  #| })

///|
/// Convert to JsValue
pub fn DOMPointInit::to_js(self : DOMPointInit) -> JsValue {
  DOMPointInit::to_js_ffi(self)
}

///|
extern "js" fn DOMPointInit::from_js_ffi(value : JsValue) -> DOMPointInit =
  #| (v) => ({
  #|   x: v.x,
  #|   y: v.y,
  #|   z: v.z,
  #|   w: v.w
  #| })

///|
/// Convert from JsValue
pub fn DOMPointInit::from_js(value : JsValue) -> DOMPointInit {
  DOMPointInit::from_js_ffi(value)
}

///|
/// DOMRectInit dictionary
pub(all) struct DOMRectInit {
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
extern "js" fn DOMRectInit::to_js_ffi(self : DOMRectInit) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y,
  #|   width: self.width,
  #|   height: self.height
  #| })

///|
/// Convert to JsValue
pub fn DOMRectInit::to_js(self : DOMRectInit) -> JsValue {
  DOMRectInit::to_js_ffi(self)
}

///|
extern "js" fn DOMRectInit::from_js_ffi(value : JsValue) -> DOMRectInit =
  #| (v) => ({
  #|   x: v.x,
  #|   y: v.y,
  #|   width: v.width,
  #|   height: v.height
  #| })

///|
/// Convert from JsValue
pub fn DOMRectInit::from_js(value : JsValue) -> DOMRectInit {
  DOMRectInit::from_js_ffi(value)
}

///|
/// DOMQuadInit dictionary
pub(all) struct DOMQuadInit {
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
extern "js" fn DOMQuadInit::to_js_ffi(self : DOMQuadInit) -> JsValue =
  #| (self) => ({
  #|   p1: ((() => { const v = self.p1; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   p2: ((() => { const v = self.p2; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   p3: ((() => { const v = self.p3; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   p4: ((() => { const v = self.p4; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn DOMQuadInit::to_js(self : DOMQuadInit) -> JsValue {
  DOMQuadInit::to_js_ffi(self)
}

///|
extern "js" fn DOMQuadInit::from_js_ffi(value : JsValue) -> DOMQuadInit =
  #| (v) => ({
  #|   p1: (v.p1 === undefined ? { $tag: 0 } : { $tag: 1, _0: v.p1 }),
  #|   p2: (v.p2 === undefined ? { $tag: 0 } : { $tag: 1, _0: v.p2 }),
  #|   p3: (v.p3 === undefined ? { $tag: 0 } : { $tag: 1, _0: v.p3 }),
  #|   p4: (v.p4 === undefined ? { $tag: 0 } : { $tag: 1, _0: v.p4 })
  #| })

///|
/// Convert from JsValue
pub fn DOMQuadInit::from_js(value : JsValue) -> DOMQuadInit {
  DOMQuadInit::from_js_ffi(value)
}

///|
/// DOMMatrix2DInit dictionary
pub(all) struct DOMMatrix2DInit {
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
extern "js" fn DOMMatrix2DInit::to_js_ffi(self : DOMMatrix2DInit) -> JsValue =
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
/// Convert to JsValue
pub fn DOMMatrix2DInit::to_js(self : DOMMatrix2DInit) -> JsValue {
  DOMMatrix2DInit::to_js_ffi(self)
}

///|
extern "js" fn DOMMatrix2DInit::from_js_ffi(value : JsValue) -> DOMMatrix2DInit =
  #| (v) => ({
  #|   a: v.a,
  #|   b: v.b,
  #|   c: v.c,
  #|   d: v.d,
  #|   e: v.e,
  #|   f: v.f,
  #|   m11: v.m11,
  #|   m12: v.m12,
  #|   m21: v.m21,
  #|   m22: v.m22,
  #|   m41: v.m41,
  #|   m42: v.m42
  #| })

///|
/// Convert from JsValue
pub fn DOMMatrix2DInit::from_js(value : JsValue) -> DOMMatrix2DInit {
  DOMMatrix2DInit::from_js_ffi(value)
}

///|
/// DOMMatrixInit dictionary
pub(all) struct DOMMatrixInit {
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
extern "js" fn DOMMatrixInit::to_js_ffi(self : DOMMatrixInit) -> JsValue =
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
  #|   is2D: (self.is2D === -1 ? undefined : self.is2D)
  #| })

///|
/// Convert to JsValue
pub fn DOMMatrixInit::to_js(self : DOMMatrixInit) -> JsValue {
  DOMMatrixInit::to_js_ffi(self)
}

///|
extern "js" fn DOMMatrixInit::from_js_ffi(value : JsValue) -> DOMMatrixInit =
  #| (v) => ({
  #|   a: v.a,
  #|   b: v.b,
  #|   c: v.c,
  #|   d: v.d,
  #|   e: v.e,
  #|   f: v.f,
  #|   m11: v.m11,
  #|   m12: v.m12,
  #|   m21: v.m21,
  #|   m22: v.m22,
  #|   m41: v.m41,
  #|   m42: v.m42,
  #|   m13: v.m13,
  #|   m14: v.m14,
  #|   m23: v.m23,
  #|   m24: v.m24,
  #|   m31: v.m31,
  #|   m32: v.m32,
  #|   m33: v.m33,
  #|   m34: v.m34,
  #|   m43: v.m43,
  #|   m44: v.m44,
  #|   is2D: (v.is2D === undefined ? -1 : v.is2D)
  #| })

///|
/// Convert from JsValue
pub fn DOMMatrixInit::from_js(value : JsValue) -> DOMMatrixInit {
  DOMMatrixInit::from_js_ffi(value)
}

///|
/// DOMPointReadOnly interface
pub type DOMPointReadOnly

///|
pub extern "js" fn DOMPointReadOnly::to_js_value(
  self : DOMPointReadOnly,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DOMPointReadOnly (unchecked)
pub extern "js" fn DOMPointReadOnly::from_js_value(
  v : JsValue,
) -> DOMPointReadOnly =
  #| (v) => v

///|
/// Safely cast JsValue to DOMPointReadOnly (checked with instanceof)
pub extern "js" fn DOMPointReadOnly::from_js_value_opt(
  v : JsValue,
) -> DOMPointReadOnly? =
  #| (v) => (v instanceof DOMPointReadOnly) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMPointReadOnly (checked with instanceof)
pub extern "js" fn JsValue::as_dom_point_read_only(
  self : JsValue,
) -> DOMPointReadOnly? =
  #| (self) => (self instanceof DOMPointReadOnly) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMPointReadOnly (unchecked)
pub extern "js" fn JsValue::to_dom_point_read_only(
  self : JsValue,
) -> DOMPointReadOnly =
  #| (self) => self

///|
pub extern "js" fn DOMPointReadOnly::as_dom_point(
  self : DOMPointReadOnly,
) -> DOMPoint? =
  #| (self) => (self instanceof DOMPoint) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn DOMPointReadOnly::new() -> DOMPointReadOnly =
  #| () => new DOMPointReadOnly()

///|
pub extern "js" fn DOMPointReadOnly::new_with_w(
  x : Double,
  y : Double,
  z : Double,
  w : Double,
) -> DOMPointReadOnly =
  #| (x, y, z, w) => new DOMPointReadOnly(x, y, z, w)

///|
pub extern "js" fn DOMPointReadOnly::from_point() -> DOMPointReadOnly =
  #| () => DOMPointReadOnly.fromPoint()

///|
extern "js" fn DOMPointReadOnly::from_point_with_other_ffi(
  other : JsValue,
) -> DOMPointReadOnly =
  #| (other) => DOMPointReadOnly.fromPoint(other)

///|
pub fn DOMPointReadOnly::from_point_with_other(
  other : DOMPointInit,
) -> DOMPointReadOnly {
  DOMPointReadOnly::from_point_with_other_ffi(other.to_js())
}

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
extern "js" fn DOMPointReadOnly::matrix_transform_with_matrix_ffi(
  self : DOMPointReadOnly,
  matrix : JsValue,
) -> DOMPoint =
  #| (self, matrix) => self.matrixTransform(matrix)

///|
pub fn DOMPointReadOnly::matrix_transform_with_matrix(
  self : DOMPointReadOnly,
  matrix : DOMMatrixInit,
) -> DOMPoint {
  DOMPointReadOnly::matrix_transform_with_matrix_ffi(self, matrix.to_js())
}

///|
pub extern "js" fn DOMPointReadOnly::to_json(
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
/// Cast JsValue to DOMPoint (unchecked)
pub extern "js" fn DOMPoint::from_js_value(v : JsValue) -> DOMPoint =
  #| (v) => v

///|
/// Safely cast JsValue to DOMPoint (checked with instanceof)
pub extern "js" fn DOMPoint::from_js_value_opt(v : JsValue) -> DOMPoint? =
  #| (v) => (v instanceof DOMPoint) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMPoint (checked with instanceof)
pub extern "js" fn JsValue::as_dom_point(self : JsValue) -> DOMPoint? =
  #| (self) => (self instanceof DOMPoint) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMPoint (unchecked)
pub extern "js" fn JsValue::to_dom_point(self : JsValue) -> DOMPoint =
  #| (self) => self

///|
pub extern "js" fn DOMPoint::to_dom_point_read_only(
  self : DOMPoint,
) -> DOMPointReadOnly =
  #| (self) => self

///|
pub extern "js" fn DOMPoint::new() -> DOMPoint =
  #| () => new DOMPoint()

///|
pub extern "js" fn DOMPoint::new_with_w(
  x : Double,
  y : Double,
  z : Double,
  w : Double,
) -> DOMPoint =
  #| (x, y, z, w) => new DOMPoint(x, y, z, w)

///|
pub extern "js" fn DOMPoint::from_point() -> DOMPoint =
  #| () => DOMPoint.fromPoint()

///|
extern "js" fn DOMPoint::from_point_with_other_ffi(other : JsValue) -> DOMPoint =
  #| (other) => DOMPoint.fromPoint(other)

///|
pub fn DOMPoint::from_point_with_other(other : DOMPointInit) -> DOMPoint {
  DOMPoint::from_point_with_other_ffi(other.to_js())
}

///|
pub extern "js" fn DOMPoint::get_x(self : DOMPoint) -> Double =
  #| (self) => self.x

///|
pub extern "js" fn DOMPoint::set_x(self : DOMPoint, value : Double) -> Unit =
  #| (self, value) => { self.x = value }

///|
pub extern "js" fn DOMPoint::get_y(self : DOMPoint) -> Double =
  #| (self) => self.y

///|
pub extern "js" fn DOMPoint::set_y(self : DOMPoint, value : Double) -> Unit =
  #| (self, value) => { self.y = value }

///|
pub extern "js" fn DOMPoint::get_z(self : DOMPoint) -> Double =
  #| (self) => self.z

///|
pub extern "js" fn DOMPoint::set_z(self : DOMPoint, value : Double) -> Unit =
  #| (self, value) => { self.z = value }

///|
pub extern "js" fn DOMPoint::get_w(self : DOMPoint) -> Double =
  #| (self) => self.w

///|
pub extern "js" fn DOMPoint::set_w(self : DOMPoint, value : Double) -> Unit =
  #| (self, value) => { self.w = value }

///|
/// DOMRectReadOnly interface
pub type DOMRectReadOnly

///|
pub extern "js" fn DOMRectReadOnly::to_js_value(
  self : DOMRectReadOnly,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DOMRectReadOnly (unchecked)
pub extern "js" fn DOMRectReadOnly::from_js_value(
  v : JsValue,
) -> DOMRectReadOnly =
  #| (v) => v

///|
/// Safely cast JsValue to DOMRectReadOnly (checked with instanceof)
pub extern "js" fn DOMRectReadOnly::from_js_value_opt(
  v : JsValue,
) -> DOMRectReadOnly? =
  #| (v) => (v instanceof DOMRectReadOnly) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMRectReadOnly (checked with instanceof)
pub extern "js" fn JsValue::as_dom_rect_read_only(
  self : JsValue,
) -> DOMRectReadOnly? =
  #| (self) => (self instanceof DOMRectReadOnly) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMRectReadOnly (unchecked)
pub extern "js" fn JsValue::to_dom_rect_read_only(
  self : JsValue,
) -> DOMRectReadOnly =
  #| (self) => self

///|
pub extern "js" fn DOMRectReadOnly::as_dom_rect(
  self : DOMRectReadOnly,
) -> DOMRect? =
  #| (self) => (self instanceof DOMRect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn DOMRectReadOnly::new() -> DOMRectReadOnly =
  #| () => new DOMRectReadOnly()

///|
pub extern "js" fn DOMRectReadOnly::new_with_height(
  x : Double,
  y : Double,
  width : Double,
  height : Double,
) -> DOMRectReadOnly =
  #| (x, y, width, height) => new DOMRectReadOnly(x, y, width, height)

///|
pub extern "js" fn DOMRectReadOnly::from_rect() -> DOMRectReadOnly =
  #| () => DOMRectReadOnly.fromRect()

///|
extern "js" fn DOMRectReadOnly::from_rect_with_other_ffi(
  other : JsValue,
) -> DOMRectReadOnly =
  #| (other) => DOMRectReadOnly.fromRect(other)

///|
pub fn DOMRectReadOnly::from_rect_with_other(
  other : DOMRectInit,
) -> DOMRectReadOnly {
  DOMRectReadOnly::from_rect_with_other_ffi(other.to_js())
}

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
pub extern "js" fn DOMRectReadOnly::to_json(self : DOMRectReadOnly) -> JsValue =
  #| (self) => self.toJSON()

///|
/// DOMRect interface
pub type DOMRect

///|
pub extern "js" fn DOMRect::to_js_value(self : DOMRect) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DOMRect (unchecked)
pub extern "js" fn DOMRect::from_js_value(v : JsValue) -> DOMRect =
  #| (v) => v

///|
/// Safely cast JsValue to DOMRect (checked with instanceof)
pub extern "js" fn DOMRect::from_js_value_opt(v : JsValue) -> DOMRect? =
  #| (v) => (v instanceof DOMRect) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMRect (checked with instanceof)
pub extern "js" fn JsValue::as_dom_rect(self : JsValue) -> DOMRect? =
  #| (self) => (self instanceof DOMRect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMRect (unchecked)
pub extern "js" fn JsValue::to_dom_rect(self : JsValue) -> DOMRect =
  #| (self) => self

///|
pub extern "js" fn DOMRect::to_dom_rect_read_only(
  self : DOMRect,
) -> DOMRectReadOnly =
  #| (self) => self

///|
pub extern "js" fn DOMRect::new() -> DOMRect =
  #| () => new DOMRect()

///|
pub extern "js" fn DOMRect::new_with_height(
  x : Double,
  y : Double,
  width : Double,
  height : Double,
) -> DOMRect =
  #| (x, y, width, height) => new DOMRect(x, y, width, height)

///|
pub extern "js" fn DOMRect::from_rect() -> DOMRect =
  #| () => DOMRect.fromRect()

///|
extern "js" fn DOMRect::from_rect_with_other_ffi(other : JsValue) -> DOMRect =
  #| (other) => DOMRect.fromRect(other)

///|
pub fn DOMRect::from_rect_with_other(other : DOMRectInit) -> DOMRect {
  DOMRect::from_rect_with_other_ffi(other.to_js())
}

///|
pub extern "js" fn DOMRect::get_x(self : DOMRect) -> Double =
  #| (self) => self.x

///|
pub extern "js" fn DOMRect::set_x(self : DOMRect, value : Double) -> Unit =
  #| (self, value) => { self.x = value }

///|
pub extern "js" fn DOMRect::get_y(self : DOMRect) -> Double =
  #| (self) => self.y

///|
pub extern "js" fn DOMRect::set_y(self : DOMRect, value : Double) -> Unit =
  #| (self, value) => { self.y = value }

///|
pub extern "js" fn DOMRect::get_width(self : DOMRect) -> Double =
  #| (self) => self.width

///|
pub extern "js" fn DOMRect::set_width(self : DOMRect, value : Double) -> Unit =
  #| (self, value) => { self.width = value }

///|
pub extern "js" fn DOMRect::get_height(self : DOMRect) -> Double =
  #| (self) => self.height

///|
pub extern "js" fn DOMRect::set_height(self : DOMRect, value : Double) -> Unit =
  #| (self, value) => { self.height = value }

///|
/// DOMRectList interface
pub type DOMRectList

///|
pub extern "js" fn DOMRectList::to_js_value(self : DOMRectList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DOMRectList (unchecked)
pub extern "js" fn DOMRectList::from_js_value(v : JsValue) -> DOMRectList =
  #| (v) => v

///|
/// Safely cast JsValue to DOMRectList (checked with instanceof)
pub extern "js" fn DOMRectList::from_js_value_opt(v : JsValue) -> DOMRectList? =
  #| (v) => (v instanceof DOMRectList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMRectList (checked with instanceof)
pub extern "js" fn JsValue::as_dom_rect_list(self : JsValue) -> DOMRectList? =
  #| (self) => (self instanceof DOMRectList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMRectList (unchecked)
pub extern "js" fn JsValue::to_dom_rect_list(self : JsValue) -> DOMRectList =
  #| (self) => self

///|
pub extern "js" fn DOMRectList::get_length(self : DOMRectList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn DOMRectList::item(
  self : DOMRectList,
  index : Int,
) -> DOMRect? =
  #| (self, index) => (() => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
#alias("_[_]")
pub extern "js" fn DOMRectList::get(
  self : DOMRectList,
  index : Int,
) -> DOMRect? =
  #| (self, index) => (() => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// DOMQuad interface
pub type DOMQuad

///|
pub extern "js" fn DOMQuad::to_js_value(self : DOMQuad) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DOMQuad (unchecked)
pub extern "js" fn DOMQuad::from_js_value(v : JsValue) -> DOMQuad =
  #| (v) => v

///|
/// Safely cast JsValue to DOMQuad (checked with instanceof)
pub extern "js" fn DOMQuad::from_js_value_opt(v : JsValue) -> DOMQuad? =
  #| (v) => (v instanceof DOMQuad) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMQuad (checked with instanceof)
pub extern "js" fn JsValue::as_dom_quad(self : JsValue) -> DOMQuad? =
  #| (self) => (self instanceof DOMQuad) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMQuad (unchecked)
pub extern "js" fn JsValue::to_dom_quad(self : JsValue) -> DOMQuad =
  #| (self) => self

///|
pub extern "js" fn DOMQuad::new() -> DOMQuad =
  #| () => new DOMQuad()

///|
extern "js" fn DOMQuad::new_with_p4_ffi(
  p1 : JsValue,
  p2 : JsValue,
  p3 : JsValue,
  p4 : JsValue,
) -> DOMQuad =
  #| (p1, p2, p3, p4) => new DOMQuad(p1, p2, p3, p4)

///|
pub fn DOMQuad::new_with_p4(
  p1 : DOMPointInit,
  p2 : DOMPointInit,
  p3 : DOMPointInit,
  p4 : DOMPointInit,
) -> DOMQuad {
  DOMQuad::new_with_p4_ffi(p1.to_js(), p2.to_js(), p3.to_js(), p4.to_js())
}

///|
pub extern "js" fn DOMQuad::from_rect() -> DOMQuad =
  #| () => DOMQuad.fromRect()

///|
extern "js" fn DOMQuad::from_rect_with_other_ffi(other : JsValue) -> DOMQuad =
  #| (other) => DOMQuad.fromRect(other)

///|
pub fn DOMQuad::from_rect_with_other(other : DOMRectInit) -> DOMQuad {
  DOMQuad::from_rect_with_other_ffi(other.to_js())
}

///|
pub extern "js" fn DOMQuad::from_quad() -> DOMQuad =
  #| () => DOMQuad.fromQuad()

///|
extern "js" fn DOMQuad::from_quad_with_other_ffi(other : JsValue) -> DOMQuad =
  #| (other) => DOMQuad.fromQuad(other)

///|
pub fn DOMQuad::from_quad_with_other(other : DOMQuadInit) -> DOMQuad {
  DOMQuad::from_quad_with_other_ffi(other.to_js())
}

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
pub extern "js" fn DOMQuad::to_json(self : DOMQuad) -> JsValue =
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
/// Cast JsValue to DOMMatrixReadOnly (unchecked)
pub extern "js" fn DOMMatrixReadOnly::from_js_value(
  v : JsValue,
) -> DOMMatrixReadOnly =
  #| (v) => v

///|
/// Safely cast JsValue to DOMMatrixReadOnly (checked with instanceof)
pub extern "js" fn DOMMatrixReadOnly::from_js_value_opt(
  v : JsValue,
) -> DOMMatrixReadOnly? =
  #| (v) => (v instanceof DOMMatrixReadOnly) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMMatrixReadOnly (checked with instanceof)
pub extern "js" fn JsValue::as_dom_matrix_read_only(
  self : JsValue,
) -> DOMMatrixReadOnly? =
  #| (self) => (self instanceof DOMMatrixReadOnly) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMMatrixReadOnly (unchecked)
pub extern "js" fn JsValue::to_dom_matrix_read_only(
  self : JsValue,
) -> DOMMatrixReadOnly =
  #| (self) => self

///|
pub extern "js" fn DOMMatrixReadOnly::as_dom_matrix(
  self : DOMMatrixReadOnly,
) -> DOMMatrix? =
  #| (self) => (self instanceof DOMMatrix) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn DOMMatrixReadOnly::new() -> DOMMatrixReadOnly =
  #| () => new DOMMatrixReadOnly()

///|
pub extern "js" fn DOMMatrixReadOnly::new_with_init(
  init_ : StringOrArrayOfDouble,
) -> DOMMatrixReadOnly =
  #| (init_) => new DOMMatrixReadOnly(init_)

///|
pub extern "js" fn DOMMatrixReadOnly::from_matrix() -> DOMMatrixReadOnly =
  #| () => DOMMatrixReadOnly.fromMatrix()

///|
extern "js" fn DOMMatrixReadOnly::from_matrix_with_other_ffi(
  other : JsValue,
) -> DOMMatrixReadOnly =
  #| (other) => DOMMatrixReadOnly.fromMatrix(other)

///|
pub fn DOMMatrixReadOnly::from_matrix_with_other(
  other : DOMMatrixInit,
) -> DOMMatrixReadOnly {
  DOMMatrixReadOnly::from_matrix_with_other_ffi(other.to_js())
}

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
pub extern "js" fn DOMMatrixReadOnly::get_is_2d(
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
extern "js" fn DOMMatrixReadOnly::multiply_with_other_ffi(
  self : DOMMatrixReadOnly,
  other : JsValue,
) -> DOMMatrix =
  #| (self, other) => self.multiply(other)

///|
pub fn DOMMatrixReadOnly::multiply_with_other(
  self : DOMMatrixReadOnly,
  other : DOMMatrixInit,
) -> DOMMatrix {
  DOMMatrixReadOnly::multiply_with_other_ffi(self, other.to_js())
}

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
extern "js" fn DOMMatrixReadOnly::transform_point_with_point_ffi(
  self : DOMMatrixReadOnly,
  point : JsValue,
) -> DOMPoint =
  #| (self, point) => self.transformPoint(point)

///|
pub fn DOMMatrixReadOnly::transform_point_with_point(
  self : DOMMatrixReadOnly,
  point : DOMPointInit,
) -> DOMPoint {
  DOMMatrixReadOnly::transform_point_with_point_ffi(self, point.to_js())
}

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
pub extern "js" fn DOMMatrixReadOnly::to_json(
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
/// Cast JsValue to DOMMatrix (unchecked)
pub extern "js" fn DOMMatrix::from_js_value(v : JsValue) -> DOMMatrix =
  #| (v) => v

///|
/// Safely cast JsValue to DOMMatrix (checked with instanceof)
pub extern "js" fn DOMMatrix::from_js_value_opt(v : JsValue) -> DOMMatrix? =
  #| (v) => (v instanceof DOMMatrix) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DOMMatrix (checked with instanceof)
pub extern "js" fn JsValue::as_dom_matrix(self : JsValue) -> DOMMatrix? =
  #| (self) => (self instanceof DOMMatrix) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DOMMatrix (unchecked)
pub extern "js" fn JsValue::to_dom_matrix(self : JsValue) -> DOMMatrix =
  #| (self) => self

///|
pub extern "js" fn DOMMatrix::to_dom_matrix_read_only(
  self : DOMMatrix,
) -> DOMMatrixReadOnly =
  #| (self) => self

///|
pub extern "js" fn DOMMatrix::new() -> DOMMatrix =
  #| () => new DOMMatrix()

///|
pub extern "js" fn DOMMatrix::new_with_init(
  init_ : StringOrArrayOfDouble,
) -> DOMMatrix =
  #| (init_) => new DOMMatrix(init_)

///|
pub extern "js" fn DOMMatrix::from_matrix() -> DOMMatrix =
  #| () => DOMMatrix.fromMatrix()

///|
extern "js" fn DOMMatrix::from_matrix_with_other_ffi(
  other : JsValue,
) -> DOMMatrix =
  #| (other) => DOMMatrix.fromMatrix(other)

///|
pub fn DOMMatrix::from_matrix_with_other(other : DOMMatrixInit) -> DOMMatrix {
  DOMMatrix::from_matrix_with_other_ffi(other.to_js())
}

///|
pub extern "js" fn DOMMatrix::from_float32_array(
  array32 : Float32Array,
) -> DOMMatrix =
  #| (array32) => DOMMatrix.fromFloat32Array(array32)

///|
pub extern "js" fn DOMMatrix::from_float64_array(
  array64 : Float64Array,
) -> DOMMatrix =
  #| (array64) => DOMMatrix.fromFloat64Array(array64)

///|
pub extern "js" fn DOMMatrix::get_a(self : DOMMatrix) -> Double =
  #| (self) => self.a

///|
pub extern "js" fn DOMMatrix::set_a(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.a = value }

///|
pub extern "js" fn DOMMatrix::get_b(self : DOMMatrix) -> Double =
  #| (self) => self.b

///|
pub extern "js" fn DOMMatrix::set_b(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.b = value }

///|
pub extern "js" fn DOMMatrix::get_c(self : DOMMatrix) -> Double =
  #| (self) => self.c

///|
pub extern "js" fn DOMMatrix::set_c(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.c = value }

///|
pub extern "js" fn DOMMatrix::get_d(self : DOMMatrix) -> Double =
  #| (self) => self.d

///|
pub extern "js" fn DOMMatrix::set_d(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.d = value }

///|
pub extern "js" fn DOMMatrix::get_e(self : DOMMatrix) -> Double =
  #| (self) => self.e

///|
pub extern "js" fn DOMMatrix::set_e(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.e = value }

///|
pub extern "js" fn DOMMatrix::get_f(self : DOMMatrix) -> Double =
  #| (self) => self.f

///|
pub extern "js" fn DOMMatrix::set_f(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.f = value }

///|
pub extern "js" fn DOMMatrix::get_m11(self : DOMMatrix) -> Double =
  #| (self) => self.m11

///|
pub extern "js" fn DOMMatrix::set_m11(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m11 = value }

///|
pub extern "js" fn DOMMatrix::get_m12(self : DOMMatrix) -> Double =
  #| (self) => self.m12

///|
pub extern "js" fn DOMMatrix::set_m12(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m12 = value }

///|
pub extern "js" fn DOMMatrix::get_m13(self : DOMMatrix) -> Double =
  #| (self) => self.m13

///|
pub extern "js" fn DOMMatrix::set_m13(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m13 = value }

///|
pub extern "js" fn DOMMatrix::get_m14(self : DOMMatrix) -> Double =
  #| (self) => self.m14

///|
pub extern "js" fn DOMMatrix::set_m14(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m14 = value }

///|
pub extern "js" fn DOMMatrix::get_m21(self : DOMMatrix) -> Double =
  #| (self) => self.m21

///|
pub extern "js" fn DOMMatrix::set_m21(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m21 = value }

///|
pub extern "js" fn DOMMatrix::get_m22(self : DOMMatrix) -> Double =
  #| (self) => self.m22

///|
pub extern "js" fn DOMMatrix::set_m22(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m22 = value }

///|
pub extern "js" fn DOMMatrix::get_m23(self : DOMMatrix) -> Double =
  #| (self) => self.m23

///|
pub extern "js" fn DOMMatrix::set_m23(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m23 = value }

///|
pub extern "js" fn DOMMatrix::get_m24(self : DOMMatrix) -> Double =
  #| (self) => self.m24

///|
pub extern "js" fn DOMMatrix::set_m24(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m24 = value }

///|
pub extern "js" fn DOMMatrix::get_m31(self : DOMMatrix) -> Double =
  #| (self) => self.m31

///|
pub extern "js" fn DOMMatrix::set_m31(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m31 = value }

///|
pub extern "js" fn DOMMatrix::get_m32(self : DOMMatrix) -> Double =
  #| (self) => self.m32

///|
pub extern "js" fn DOMMatrix::set_m32(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m32 = value }

///|
pub extern "js" fn DOMMatrix::get_m33(self : DOMMatrix) -> Double =
  #| (self) => self.m33

///|
pub extern "js" fn DOMMatrix::set_m33(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m33 = value }

///|
pub extern "js" fn DOMMatrix::get_m34(self : DOMMatrix) -> Double =
  #| (self) => self.m34

///|
pub extern "js" fn DOMMatrix::set_m34(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m34 = value }

///|
pub extern "js" fn DOMMatrix::get_m41(self : DOMMatrix) -> Double =
  #| (self) => self.m41

///|
pub extern "js" fn DOMMatrix::set_m41(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m41 = value }

///|
pub extern "js" fn DOMMatrix::get_m42(self : DOMMatrix) -> Double =
  #| (self) => self.m42

///|
pub extern "js" fn DOMMatrix::set_m42(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m42 = value }

///|
pub extern "js" fn DOMMatrix::get_m43(self : DOMMatrix) -> Double =
  #| (self) => self.m43

///|
pub extern "js" fn DOMMatrix::set_m43(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m43 = value }

///|
pub extern "js" fn DOMMatrix::get_m44(self : DOMMatrix) -> Double =
  #| (self) => self.m44

///|
pub extern "js" fn DOMMatrix::set_m44(self : DOMMatrix, value : Double) -> Unit =
  #| (self, value) => { self.m44 = value }

///|
pub extern "js" fn DOMMatrix::multiply_self(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.multiplySelf()

///|
extern "js" fn DOMMatrix::multiply_self_with_other_ffi(
  self : DOMMatrix,
  other : JsValue,
) -> DOMMatrix =
  #| (self, other) => self.multiplySelf(other)

///|
pub fn DOMMatrix::multiply_self_with_other(
  self : DOMMatrix,
  other : DOMMatrixInit,
) -> DOMMatrix {
  DOMMatrix::multiply_self_with_other_ffi(self, other.to_js())
}

///|
pub extern "js" fn DOMMatrix::pre_multiply_self(self : DOMMatrix) -> DOMMatrix =
  #| (self) => self.preMultiplySelf()

///|
extern "js" fn DOMMatrix::pre_multiply_self_with_other_ffi(
  self : DOMMatrix,
  other : JsValue,
) -> DOMMatrix =
  #| (self, other) => self.preMultiplySelf(other)

///|
pub fn DOMMatrix::pre_multiply_self_with_other(
  self : DOMMatrix,
  other : DOMMatrixInit,
) -> DOMMatrix {
  DOMMatrix::pre_multiply_self_with_other_ffi(self, other.to_js())
}

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
