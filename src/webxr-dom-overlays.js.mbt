// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-dom-overlays

///|
/// XRDOMOverlayType enum
pub(all) enum XRDOMOverlayType {
  Screen
  Floating
  HeadLocked
}

/// Convert to string value
pub fn XRDOMOverlayType::to_string(self : XRDOMOverlayType) -> String {
  match self {
    Screen => "screen"
    Floating => "floating"
    HeadLocked => "head-locked"
  }
}

/// Parse from string value
pub fn XRDOMOverlayType::from_string(s : String) -> XRDOMOverlayType? {
  match s {
    "screen" => Some(Screen)
    "floating" => Some(Floating)
    "head-locked" => Some(HeadLocked)
    _ => None
  }
}

///|
/// XRDOMOverlayInit dictionary
pub struct XRDOMOverlayInit {
  root : Element
}

/// Create a new XRDOMOverlayInit with default values
pub fn XRDOMOverlayInit::default() -> XRDOMOverlayInit {
  XRDOMOverlayInit::{
    root: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn XRDOMOverlayInit::to_js(self : XRDOMOverlayInit) -> JsValue =
  #| (self) => ({
  #|   root: self.root
  #| })

///|
/// XRDOMOverlayState dictionary
pub struct XRDOMOverlayState {
  type_ : XRDOMOverlayType?
}

/// Create a new XRDOMOverlayState with default values
pub fn XRDOMOverlayState::default() -> XRDOMOverlayState {
  XRDOMOverlayState::{
    type_: None,
  }
}

/// Convert to JsValue
pub extern "js" fn XRDOMOverlayState::to_js(self : XRDOMOverlayState) -> JsValue =
  #| (self) => ({
  #|   type: self.type_
  #| })

