// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-hit-test

///|
/// XRHitTestTrackableType enum
pub(all) enum XRHitTestTrackableType {
  Point
  Plane
  Mesh
}

/// Convert to string value
pub fn XRHitTestTrackableType::to_string(self : XRHitTestTrackableType) -> String {
  match self {
    Point => "point"
    Plane => "plane"
    Mesh => "mesh"
  }
}

/// Parse from string value
pub fn XRHitTestTrackableType::from_string(s : String) -> XRHitTestTrackableType? {
  match s {
    "point" => Some(Point)
    "plane" => Some(Plane)
    "mesh" => Some(Mesh)
    _ => None
  }
}

///|
/// XRHitTestOptionsInit dictionary
pub struct XRHitTestOptionsInit {
  space : XRSpace
  entityTypes : Array[XRHitTestTrackableType]?
  offsetRay : XRRay?
}

/// Create a new XRHitTestOptionsInit with default values
pub fn XRHitTestOptionsInit::default() -> XRHitTestOptionsInit {
  XRHitTestOptionsInit::{
    space: panic(),
    entityTypes: None,
    offsetRay: None,
  }
}

/// Convert to JsValue
pub extern "js" fn XRHitTestOptionsInit::to_js(self : XRHitTestOptionsInit) -> JsValue =
  #| (self) => ({
  #|   space: self.space,
  #|   entityTypes: self.entityTypes,
  #|   offsetRay: self.offsetRay
  #| })

///|
/// XRTransientInputHitTestOptionsInit dictionary
pub struct XRTransientInputHitTestOptionsInit {
  profile : String
  entityTypes : Array[XRHitTestTrackableType]?
  offsetRay : XRRay?
}

/// Create a new XRTransientInputHitTestOptionsInit with default values
pub fn XRTransientInputHitTestOptionsInit::default() -> XRTransientInputHitTestOptionsInit {
  XRTransientInputHitTestOptionsInit::{
    profile: "",
    entityTypes: None,
    offsetRay: None,
  }
}

/// Convert to JsValue
pub extern "js" fn XRTransientInputHitTestOptionsInit::to_js(self : XRTransientInputHitTestOptionsInit) -> JsValue =
  #| (self) => ({
  #|   profile: self.profile,
  #|   entityTypes: self.entityTypes,
  #|   offsetRay: self.offsetRay
  #| })

///|
/// XRRayDirectionInit dictionary
pub struct XRRayDirectionInit {
  x : Double?
  y : Double?
  z : Double?
  w : Double?
}

/// Create a new XRRayDirectionInit with default values
pub fn XRRayDirectionInit::default() -> XRRayDirectionInit {
  XRRayDirectionInit::{
    x: None,
    y: None,
    z: None,
    w: None,
  }
}

/// Convert to JsValue
pub extern "js" fn XRRayDirectionInit::to_js(self : XRRayDirectionInit) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y,
  #|   z: self.z,
  #|   w: self.w
  #| })

///|
/// XRHitTestSource interface
pub type XRHitTestSource

pub extern "js" fn XRHitTestSource::to_js_value(self : XRHitTestSource) -> JsValue =
  #| (self) => self

pub extern "js" fn XRHitTestSource::cancel(self : XRHitTestSource) -> Unit =
  #| (self) => self.cancel()

///|
/// XRTransientInputHitTestSource interface
pub type XRTransientInputHitTestSource

pub extern "js" fn XRTransientInputHitTestSource::to_js_value(self : XRTransientInputHitTestSource) -> JsValue =
  #| (self) => self

pub extern "js" fn XRTransientInputHitTestSource::cancel(self : XRTransientInputHitTestSource) -> Unit =
  #| (self) => self.cancel()

///|
/// XRHitTestResult interface
pub type XRHitTestResult

pub extern "js" fn XRHitTestResult::to_js_value(self : XRHitTestResult) -> JsValue =
  #| (self) => self

pub extern "js" fn XRHitTestResult::get_pose(self : XRHitTestResult, base_space : XRSpace) -> XRPose? =
  #| (self, base_space) => self.getPose(base_space)

pub extern "js" fn XRHitTestResult::create_anchor(self : XRHitTestResult) -> Promise[XRAnchor] =
  #| (self) => self.createAnchor()

///|
/// XRTransientInputHitTestResult interface
pub type XRTransientInputHitTestResult

pub extern "js" fn XRTransientInputHitTestResult::to_js_value(self : XRTransientInputHitTestResult) -> JsValue =
  #| (self) => self

pub extern "js" fn XRTransientInputHitTestResult::get_input_source(self : XRTransientInputHitTestResult) -> XRInputSource =
  #| (self) => self.inputSource

pub extern "js" fn XRTransientInputHitTestResult::get_results(self : XRTransientInputHitTestResult) -> JsValue =
  #| (self) => self.results

///|
/// XRRay interface
pub type XRRay

pub extern "js" fn XRRay::to_js_value(self : XRRay) -> JsValue =
  #| (self) => self

pub extern "js" fn XRRay::new(origin : DOMPointInit, direction : XRRayDirectionInit) -> XRRay =
  #| (origin, direction) => new XRRay(origin, direction)

pub extern "js" fn XRRay::get_origin(self : XRRay) -> DOMPointReadOnly =
  #| (self) => self.origin

pub extern "js" fn XRRay::get_direction(self : XRRay) -> DOMPointReadOnly =
  #| (self) => self.direction

pub extern "js" fn XRRay::get_matrix(self : XRRay) -> Float32Array =
  #| (self) => self.matrix

