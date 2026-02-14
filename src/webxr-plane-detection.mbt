// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-plane-detection

///|
/// XRPlaneOrientation enum
pub(all) enum XRPlaneOrientation {
  Horizontal
  Vertical
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XRPlaneOrientation::to_string(self : XRPlaneOrientation) -> String {
  match self {
    XRPlaneOrientation::Horizontal => "horizontal"
    XRPlaneOrientation::Vertical => "vertical"
  }
}

///|
/// Parse from string value
pub fn XRPlaneOrientation::from_string(s : String) -> XRPlaneOrientation? {
  match s {
    "horizontal" => Some(XRPlaneOrientation::Horizontal)
    "vertical" => Some(XRPlaneOrientation::Vertical)
    _ => None
  }
}

///|
/// XRPlane interface
pub type XRPlane

///|
pub extern "js" fn XRPlane::to_js_value(self : XRPlane) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRPlane (unchecked)
pub extern "js" fn XRPlane::from_js_value(v : JsValue) -> XRPlane =
  #| (v) => v

///|
/// Safely cast JsValue to XRPlane (checked with instanceof)
pub extern "js" fn XRPlane::from_js_value_opt(v : JsValue) -> XRPlane? =
  #| (v) => (v instanceof XRPlane) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRPlane (checked with instanceof)
pub extern "js" fn JsValue::as_xr_plane(self : JsValue) -> XRPlane? =
  #| (self) => (self instanceof XRPlane) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRPlane (unchecked)
pub extern "js" fn JsValue::to_xr_plane(self : JsValue) -> XRPlane =
  #| (self) => self

///|
pub extern "js" fn XRPlane::get_plane_space(self : XRPlane) -> XRSpace =
  #| (self) => self.planeSpace

///|
pub extern "js" fn XRPlane::get_polygon(
  self : XRPlane,
) -> Array[DOMPointReadOnly] =
  #| (self) => self.polygon

///|
pub extern "js" fn XRPlane::get_orientation(
  self : XRPlane,
) -> XRPlaneOrientation? =
  #| (self) => (() => { const v = self.orientation; return v == null ? undefined : ['horizontal', 'vertical'].indexOf(v); })()

///|
pub extern "js" fn XRPlane::get_last_changed_time(
  self : XRPlane,
) -> DOMHighResTimeStamp =
  #| (self) => self.lastChangedTime

///|
pub extern "js" fn XRPlane::get_semantic_label(self : XRPlane) -> String? =
  #| (self) => (self.semanticLabel) ?? undefined

///|
/// XRPlaneSet interface
pub type XRPlaneSet

///|
pub extern "js" fn XRPlaneSet::to_js_value(self : XRPlaneSet) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRPlaneSet (unchecked)
pub extern "js" fn XRPlaneSet::from_js_value(v : JsValue) -> XRPlaneSet =
  #| (v) => v

///|
/// Safely cast JsValue to XRPlaneSet (checked with instanceof)
pub extern "js" fn XRPlaneSet::from_js_value_opt(v : JsValue) -> XRPlaneSet? =
  #| (v) => (v instanceof XRPlaneSet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRPlaneSet (checked with instanceof)
pub extern "js" fn JsValue::as_xr_plane_set(self : JsValue) -> XRPlaneSet? =
  #| (self) => (self instanceof XRPlaneSet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRPlaneSet (unchecked)
pub extern "js" fn JsValue::to_xr_plane_set(self : JsValue) -> XRPlaneSet =
  #| (self) => self

///|
pub extern "js" fn XRPlaneSet::has(self : XRPlaneSet, value : XRPlane) -> Bool =
  #| (self, value) => self.has(value)
