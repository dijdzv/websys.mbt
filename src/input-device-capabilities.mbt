// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/input-device-capabilities

///|
/// InputDeviceCapabilitiesInit dictionary
pub(all) struct InputDeviceCapabilitiesInit {
  firesTouchEvents : Bool?
  pointerMovementScrolls : Bool?
}

///|
/// Create a new InputDeviceCapabilitiesInit with default values
pub fn InputDeviceCapabilitiesInit::default() -> InputDeviceCapabilitiesInit {
  InputDeviceCapabilitiesInit::{
    firesTouchEvents: None,
    pointerMovementScrolls: None,
  }
}

///|
extern "js" fn InputDeviceCapabilitiesInit::to_js_ffi(
  self : InputDeviceCapabilitiesInit,
) -> JsValue =
  #| (self) => ({
  #|   firesTouchEvents: (self.firesTouchEvents === -1 ? undefined : self.firesTouchEvents),
  #|   pointerMovementScrolls: (self.pointerMovementScrolls === -1 ? undefined : self.pointerMovementScrolls)
  #| })

///|
/// Convert to JsValue
pub fn InputDeviceCapabilitiesInit::to_js(
  self : InputDeviceCapabilitiesInit,
) -> JsValue {
  InputDeviceCapabilitiesInit::to_js_ffi(self)
}

///|
/// UIEventInit dictionary
pub(all) struct UIEventInit {
  sourceCapabilities : Nullable[InputDeviceCapabilities]
  view : Nullable[Window]
  detail : Int?
  which : Int?
}

///|
/// Create a new UIEventInit with default values
pub fn UIEventInit::default() -> UIEventInit {
  UIEventInit::{
    sourceCapabilities: Nullable::Undefined,
    view: Nullable::Undefined,
    detail: None,
    which: None,
  }
}

///|
extern "js" fn UIEventInit::to_js_ffi(self : UIEventInit) -> JsValue =
  #| (self) => ({
  #|   sourceCapabilities: ((() => { const v = self.sourceCapabilities; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   view: ((() => { const v = self.view; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   detail: self.detail,
  #|   which: self.which
  #| })

///|
/// Convert to JsValue
pub fn UIEventInit::to_js(self : UIEventInit) -> JsValue {
  UIEventInit::to_js_ffi(self)
}

///|
/// InputDeviceCapabilities interface
pub type InputDeviceCapabilities

///|
pub extern "js" fn InputDeviceCapabilities::to_js_value(
  self : InputDeviceCapabilities,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to InputDeviceCapabilities (unchecked)
pub extern "js" fn InputDeviceCapabilities::from_js_value(
  v : JsValue,
) -> InputDeviceCapabilities =
  #| (v) => v

///|
/// Safely cast JsValue to InputDeviceCapabilities (checked with instanceof)
pub extern "js" fn InputDeviceCapabilities::from_js_value_opt(
  v : JsValue,
) -> InputDeviceCapabilities? =
  #| (v) => (v instanceof InputDeviceCapabilities) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to InputDeviceCapabilities (checked with instanceof)
pub extern "js" fn JsValue::as_input_device_capabilities(
  self : JsValue,
) -> InputDeviceCapabilities? =
  #| (self) => (self instanceof InputDeviceCapabilities) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to InputDeviceCapabilities (unchecked)
pub extern "js" fn JsValue::to_input_device_capabilities(
  self : JsValue,
) -> InputDeviceCapabilities =
  #| (self) => self

///|
pub extern "js" fn InputDeviceCapabilities::new() -> InputDeviceCapabilities =
  #| () => new InputDeviceCapabilities()

///|
extern "js" fn InputDeviceCapabilities::new_with_device_init_dict_ffi(
  device_init_dict : JsValue,
) -> InputDeviceCapabilities =
  #| (device_init_dict) => new InputDeviceCapabilities(device_init_dict)

///|
pub fn InputDeviceCapabilities::new_with_device_init_dict(
  device_init_dict : InputDeviceCapabilitiesInit,
) -> InputDeviceCapabilities {
  InputDeviceCapabilities::new_with_device_init_dict_ffi(
    device_init_dict.to_js(),
  )
}

///|
pub extern "js" fn InputDeviceCapabilities::get_fires_touch_events(
  self : InputDeviceCapabilities,
) -> Bool =
  #| (self) => self.firesTouchEvents

///|
pub extern "js" fn InputDeviceCapabilities::get_pointer_movement_scrolls(
  self : InputDeviceCapabilities,
) -> Bool =
  #| (self) => self.pointerMovementScrolls
