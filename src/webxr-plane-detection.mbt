// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-plane-detection

///|
/// XRPlaneOrientation enum
pub(all) enum XRPlaneOrientation {
  Horizontal
  Vertical
}

/// Convert to string value
pub fn XRPlaneOrientation::to_string(self : XRPlaneOrientation) -> String {
  match self {
    Horizontal => "horizontal"
    Vertical => "vertical"
  }
}

/// Parse from string value
pub fn XRPlaneOrientation::from_string(s : String) -> XRPlaneOrientation? {
  match s {
    "horizontal" => Some(Horizontal)
    "vertical" => Some(Vertical)
    _ => None
  }
}

///|
/// XRPlane interface
pub type XRPlane

pub extern "js" fn XRPlane::to_js_value(self : XRPlane) -> JsValue =
  #| (self) => self

pub extern "js" fn XRPlane::get_plane_space(self : XRPlane) -> XRSpace =
  #| (self) => self.planeSpace

pub extern "js" fn XRPlane::get_polygon(self : XRPlane) -> JsValue =
  #| (self) => self.polygon

pub extern "js" fn XRPlane::get_orientation(self : XRPlane) -> XRPlaneOrientation? =
  #| (self) => self.orientation

pub extern "js" fn XRPlane::get_last_changed_time(self : XRPlane) -> DOMHighResTimeStamp =
  #| (self) => self.lastChangedTime

pub extern "js" fn XRPlane::get_semantic_label(self : XRPlane) -> String? =
  #| (self) => self.semanticLabel

///|
/// XRPlaneSet interface
pub type XRPlaneSet

pub extern "js" fn XRPlaneSet::to_js_value(self : XRPlaneSet) -> JsValue =
  #| (self) => self

pub extern "js" fn XRPlaneSet::_unknown_(self : XRPlaneSet) -> Unit =
  #| (self) => self._unknown_()

