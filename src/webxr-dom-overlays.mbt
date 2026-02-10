// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-dom-overlays

///|
/// XRDOMOverlayType enum
pub(all) enum XRDOMOverlayType {
  Screen
  Floating
  HeadLocked
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XRDOMOverlayType::to_string(self : XRDOMOverlayType) -> String {
  match self {
    XRDOMOverlayType::Screen => "screen"
    XRDOMOverlayType::Floating => "floating"
    XRDOMOverlayType::HeadLocked => "head-locked"
  }
}

///|
/// Parse from string value
pub fn XRDOMOverlayType::from_string(s : String) -> XRDOMOverlayType? {
  match s {
    "screen" => Some(XRDOMOverlayType::Screen)
    "floating" => Some(XRDOMOverlayType::Floating)
    "head-locked" => Some(XRDOMOverlayType::HeadLocked)
    _ => None
  }
}

///|
/// XRDOMOverlayInit dictionary
pub(all) struct XRDOMOverlayInit {
  root : Element
}

///|
/// Create a new XRDOMOverlayInit
pub fn XRDOMOverlayInit::new(root~ : Element) -> XRDOMOverlayInit {
  XRDOMOverlayInit::{ root, }
}

///|
extern "js" fn XRDOMOverlayInit::to_js_ffi(self : XRDOMOverlayInit) -> JsValue =
  #| (self) => ({
  #|   root: self.root
  #| })

///|
/// Convert to JsValue
pub fn XRDOMOverlayInit::to_js(self : XRDOMOverlayInit) -> JsValue {
  XRDOMOverlayInit::to_js_ffi(self)
}

///|
extern "js" fn XRDOMOverlayInit::from_js_ffi(
  value : JsValue,
) -> XRDOMOverlayInit =
  #| (v) => ({
  #|   root: v.root
  #| })

///|
/// Convert from JsValue
pub fn XRDOMOverlayInit::from_js(value : JsValue) -> XRDOMOverlayInit {
  XRDOMOverlayInit::from_js_ffi(value)
}

///|
/// XRDOMOverlayState dictionary
pub(all) struct XRDOMOverlayState {
  type_ : XRDOMOverlayType?
}

///|
/// Create a new XRDOMOverlayState with default values
pub fn XRDOMOverlayState::default() -> XRDOMOverlayState {
  XRDOMOverlayState::{ type_: None }
}

///|
extern "js" fn XRDOMOverlayState::to_js_ffi(
  self : XRDOMOverlayState,
) -> JsValue =
  #| (self) => ({
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['screen', 'floating', 'head-locked'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn XRDOMOverlayState::to_js(self : XRDOMOverlayState) -> JsValue {
  XRDOMOverlayState::to_js_ffi(self)
}

///|
extern "js" fn XRDOMOverlayState::from_js_ffi(
  value : JsValue,
) -> XRDOMOverlayState =
  #| (v) => ({
  #|   type_: (v.type === undefined ? undefined : ['screen', 'floating', 'head-locked'].indexOf(v.type))
  #| })

///|
/// Convert from JsValue
pub fn XRDOMOverlayState::from_js(value : JsValue) -> XRDOMOverlayState {
  XRDOMOverlayState::from_js_ffi(value)
}
