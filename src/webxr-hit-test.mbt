// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-hit-test

///|
/// XRHitTestTrackableType enum
pub(all) enum XRHitTestTrackableType {
  Point
  Plane
  Mesh
}

///|
/// Convert to string value
pub fn XRHitTestTrackableType::to_string(
  self : XRHitTestTrackableType,
) -> String {
  match self {
    XRHitTestTrackableType::Point => "point"
    XRHitTestTrackableType::Plane => "plane"
    XRHitTestTrackableType::Mesh => "mesh"
  }
}

///|
/// Parse from string value
pub fn XRHitTestTrackableType::from_string(
  s : String,
) -> XRHitTestTrackableType? {
  match s {
    "point" => Some(XRHitTestTrackableType::Point)
    "plane" => Some(XRHitTestTrackableType::Plane)
    "mesh" => Some(XRHitTestTrackableType::Mesh)
    _ => None
  }
}

///|
/// XRHitTestOptionsInit dictionary
pub(all) struct XRHitTestOptionsInit {
  space : XRSpace
  entityTypes : Array[XRHitTestTrackableType]?
  offsetRay : XRRay?
}

///|
/// Create a new XRHitTestOptionsInit
pub fn XRHitTestOptionsInit::new(space~ : XRSpace) -> XRHitTestOptionsInit {
  XRHitTestOptionsInit::{ space, entityTypes: None, offsetRay: None }
}

///|
extern "js" fn XRHitTestOptionsInit::to_js_ffi(
  self : XRHitTestOptionsInit,
) -> JsValue =
  #| (self) => ({
  #|   space: self.space,
  #|   entityTypes: ((() => { const v = self.entityTypes; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   offsetRay: ((() => { const v = self.offsetRay; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn XRHitTestOptionsInit::to_js(self : XRHitTestOptionsInit) -> JsValue {
  XRHitTestOptionsInit::to_js_ffi(self)
}

///|
/// XRTransientInputHitTestOptionsInit dictionary
pub(all) struct XRTransientInputHitTestOptionsInit {
  profile : String
  entityTypes : Array[XRHitTestTrackableType]?
  offsetRay : XRRay?
}

///|
/// Create a new XRTransientInputHitTestOptionsInit with default values
pub fn XRTransientInputHitTestOptionsInit::default() -> XRTransientInputHitTestOptionsInit {
  XRTransientInputHitTestOptionsInit::{
    profile: "",
    entityTypes: None,
    offsetRay: None,
  }
}

///|
extern "js" fn XRTransientInputHitTestOptionsInit::to_js_ffi(
  self : XRTransientInputHitTestOptionsInit,
) -> JsValue =
  #| (self) => ({
  #|   profile: self.profile,
  #|   entityTypes: ((() => { const v = self.entityTypes; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   offsetRay: ((() => { const v = self.offsetRay; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn XRTransientInputHitTestOptionsInit::to_js(
  self : XRTransientInputHitTestOptionsInit,
) -> JsValue {
  XRTransientInputHitTestOptionsInit::to_js_ffi(self)
}

///|
/// XRRayDirectionInit dictionary
pub(all) struct XRRayDirectionInit {
  x : Double?
  y : Double?
  z : Double?
  w : Double?
}

///|
/// Create a new XRRayDirectionInit with default values
pub fn XRRayDirectionInit::default() -> XRRayDirectionInit {
  XRRayDirectionInit::{ x: None, y: None, z: None, w: None }
}

///|
extern "js" fn XRRayDirectionInit::to_js_ffi(
  self : XRRayDirectionInit,
) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y,
  #|   z: self.z,
  #|   w: self.w
  #| })

///|
/// Convert to JsValue
pub fn XRRayDirectionInit::to_js(self : XRRayDirectionInit) -> JsValue {
  XRRayDirectionInit::to_js_ffi(self)
}

///|
/// XRHitTestSource interface
pub type XRHitTestSource

///|
pub extern "js" fn XRHitTestSource::to_js_value(
  self : XRHitTestSource,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRHitTestSource (unchecked)
pub extern "js" fn XRHitTestSource::from_js_value(
  v : JsValue,
) -> XRHitTestSource =
  #| (v) => v

///|
/// Safely cast JsValue to XRHitTestSource (checked with instanceof)
pub extern "js" fn XRHitTestSource::from_js_value_opt(
  v : JsValue,
) -> XRHitTestSource? =
  #| (v) => (v instanceof XRHitTestSource) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRHitTestSource (checked with instanceof)
pub extern "js" fn JsValue::as_xr_hit_test_source(
  self : JsValue,
) -> XRHitTestSource? =
  #| (self) => (self instanceof XRHitTestSource) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRHitTestSource (unchecked)
pub extern "js" fn JsValue::to_xr_hit_test_source(
  self : JsValue,
) -> XRHitTestSource =
  #| (self) => self

///|
pub extern "js" fn XRHitTestSource::cancel(self : XRHitTestSource) -> Unit =
  #| (self) => self.cancel()

///|
/// XRTransientInputHitTestSource interface
pub type XRTransientInputHitTestSource

///|
pub extern "js" fn XRTransientInputHitTestSource::to_js_value(
  self : XRTransientInputHitTestSource,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRTransientInputHitTestSource (unchecked)
pub extern "js" fn XRTransientInputHitTestSource::from_js_value(
  v : JsValue,
) -> XRTransientInputHitTestSource =
  #| (v) => v

///|
/// Safely cast JsValue to XRTransientInputHitTestSource (checked with instanceof)
pub extern "js" fn XRTransientInputHitTestSource::from_js_value_opt(
  v : JsValue,
) -> XRTransientInputHitTestSource? =
  #| (v) => (v instanceof XRTransientInputHitTestSource) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRTransientInputHitTestSource (checked with instanceof)
pub extern "js" fn JsValue::as_xr_transient_input_hit_test_source(
  self : JsValue,
) -> XRTransientInputHitTestSource? =
  #| (self) => (self instanceof XRTransientInputHitTestSource) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRTransientInputHitTestSource (unchecked)
pub extern "js" fn JsValue::to_xr_transient_input_hit_test_source(
  self : JsValue,
) -> XRTransientInputHitTestSource =
  #| (self) => self

///|
pub extern "js" fn XRTransientInputHitTestSource::cancel(
  self : XRTransientInputHitTestSource,
) -> Unit =
  #| (self) => self.cancel()

///|
/// XRHitTestResult interface
pub type XRHitTestResult

///|
pub extern "js" fn XRHitTestResult::to_js_value(
  self : XRHitTestResult,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRHitTestResult (unchecked)
pub extern "js" fn XRHitTestResult::from_js_value(
  v : JsValue,
) -> XRHitTestResult =
  #| (v) => v

///|
/// Safely cast JsValue to XRHitTestResult (checked with instanceof)
pub extern "js" fn XRHitTestResult::from_js_value_opt(
  v : JsValue,
) -> XRHitTestResult? =
  #| (v) => (v instanceof XRHitTestResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRHitTestResult (checked with instanceof)
pub extern "js" fn JsValue::as_xr_hit_test_result(
  self : JsValue,
) -> XRHitTestResult? =
  #| (self) => (self instanceof XRHitTestResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRHitTestResult (unchecked)
pub extern "js" fn JsValue::to_xr_hit_test_result(
  self : JsValue,
) -> XRHitTestResult =
  #| (self) => self

///|
pub extern "js" fn XRHitTestResult::get_pose(
  self : XRHitTestResult,
  base_space : XRSpace,
) -> XRPose? =
  #| (self, base_space) => (() => { const v = self.getPose(base_space); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn XRHitTestResult::create_anchor(
  self : XRHitTestResult,
) -> Promise[XRAnchor] =
  #| (self) => self.createAnchor()

///|
/// XRTransientInputHitTestResult interface
pub type XRTransientInputHitTestResult

///|
pub extern "js" fn XRTransientInputHitTestResult::to_js_value(
  self : XRTransientInputHitTestResult,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRTransientInputHitTestResult (unchecked)
pub extern "js" fn XRTransientInputHitTestResult::from_js_value(
  v : JsValue,
) -> XRTransientInputHitTestResult =
  #| (v) => v

///|
/// Safely cast JsValue to XRTransientInputHitTestResult (checked with instanceof)
pub extern "js" fn XRTransientInputHitTestResult::from_js_value_opt(
  v : JsValue,
) -> XRTransientInputHitTestResult? =
  #| (v) => (v instanceof XRTransientInputHitTestResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRTransientInputHitTestResult (checked with instanceof)
pub extern "js" fn JsValue::as_xr_transient_input_hit_test_result(
  self : JsValue,
) -> XRTransientInputHitTestResult? =
  #| (self) => (self instanceof XRTransientInputHitTestResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRTransientInputHitTestResult (unchecked)
pub extern "js" fn JsValue::to_xr_transient_input_hit_test_result(
  self : JsValue,
) -> XRTransientInputHitTestResult =
  #| (self) => self

///|
pub extern "js" fn XRTransientInputHitTestResult::get_input_source(
  self : XRTransientInputHitTestResult,
) -> XRInputSource =
  #| (self) => self.inputSource

///|
pub extern "js" fn XRTransientInputHitTestResult::get_results(
  self : XRTransientInputHitTestResult,
) -> JsValue =
  #| (self) => self.results

///|
/// XRRay interface
pub type XRRay

///|
pub extern "js" fn XRRay::to_js_value(self : XRRay) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRRay (unchecked)
pub extern "js" fn XRRay::from_js_value(v : JsValue) -> XRRay =
  #| (v) => v

///|
/// Safely cast JsValue to XRRay (checked with instanceof)
pub extern "js" fn XRRay::from_js_value_opt(v : JsValue) -> XRRay? =
  #| (v) => (v instanceof XRRay) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRRay (checked with instanceof)
pub extern "js" fn JsValue::as_xr_ray(self : JsValue) -> XRRay? =
  #| (self) => (self instanceof XRRay) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRRay (unchecked)
pub extern "js" fn JsValue::to_xr_ray(self : JsValue) -> XRRay =
  #| (self) => self

///|
pub extern "js" fn XRRay::new() -> XRRay =
  #| () => new XRRay()

///|
extern "js" fn XRRay::new_with_direction_ffi(
  origin : JsValue,
  direction : JsValue,
) -> XRRay =
  #| (origin, direction) => new XRRay(origin, direction)

///|
pub fn XRRay::new_with_direction(
  origin : DOMPointInit,
  direction : XRRayDirectionInit,
) -> XRRay {
  XRRay::new_with_direction_ffi(origin.to_js(), direction.to_js())
}

///|
pub extern "js" fn XRRay::new_with(transform : XRRigidTransform) -> XRRay =
  #| (transform) => new XRRay(transform)

///|
pub extern "js" fn XRRay::get_origin(self : XRRay) -> DOMPointReadOnly =
  #| (self) => self.origin

///|
pub extern "js" fn XRRay::get_direction(self : XRRay) -> DOMPointReadOnly =
  #| (self) => self.direction

///|
pub extern "js" fn XRRay::get_matrix(self : XRRay) -> Float32Array =
  #| (self) => self.matrix
