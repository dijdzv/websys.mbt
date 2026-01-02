// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/input-device-capabilities

///|
/// InputDeviceCapabilitiesInit dictionary
pub struct InputDeviceCapabilitiesInit {
  firesTouchEvents : Bool?
  pointerMovementScrolls : Bool?
}

/// Create a new InputDeviceCapabilitiesInit with default values
pub fn InputDeviceCapabilitiesInit::default() -> InputDeviceCapabilitiesInit {
  InputDeviceCapabilitiesInit::{
    firesTouchEvents: None,
    pointerMovementScrolls: None,
  }
}

/// Convert to JsValue
pub extern "js" fn InputDeviceCapabilitiesInit::to_js(self : InputDeviceCapabilitiesInit) -> JsValue =
  #| (self) => ({
  #|   firesTouchEvents: self.firesTouchEvents,
  #|   pointerMovementScrolls: self.pointerMovementScrolls
  #| })

///|
/// UIEventInit dictionary
pub struct UIEventInit {
  sourceCapabilities : InputDeviceCapabilities??
  view : Window??
  detail : Int?
  which : Int?
}

/// Create a new UIEventInit with default values
pub fn UIEventInit::default() -> UIEventInit {
  UIEventInit::{
    sourceCapabilities: None,
    view: None,
    detail: None,
    which: None,
  }
}

/// Convert to JsValue
pub extern "js" fn UIEventInit::to_js(self : UIEventInit) -> JsValue =
  #| (self) => ({
  #|   sourceCapabilities: self.sourceCapabilities,
  #|   view: self.view,
  #|   detail: self.detail,
  #|   which: self.which
  #| })

///|
/// InputDeviceCapabilities interface
pub type InputDeviceCapabilities

pub extern "js" fn InputDeviceCapabilities::to_js_value(self : InputDeviceCapabilities) -> JsValue =
  #| (self) => self

pub extern "js" fn InputDeviceCapabilities::new(device_init_dict : InputDeviceCapabilitiesInit) -> InputDeviceCapabilities =
  #| (device_init_dict) => new InputDeviceCapabilities(device_init_dict)

pub extern "js" fn InputDeviceCapabilities::get_fires_touch_events(self : InputDeviceCapabilities) -> Bool =
  #| (self) => self.firesTouchEvents

pub extern "js" fn InputDeviceCapabilities::get_pointer_movement_scrolls(self : InputDeviceCapabilities) -> Bool =
  #| (self) => self.pointerMovementScrolls

