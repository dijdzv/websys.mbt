// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/device-posture

///|
/// DevicePostureType enum
pub(all) enum DevicePostureType {
  Continuous
  Folded
} derive(Eq, Show)

///|
/// Convert to string value
pub fn DevicePostureType::to_string(self : DevicePostureType) -> String {
  match self {
    DevicePostureType::Continuous => "continuous"
    DevicePostureType::Folded => "folded"
  }
}

///|
/// Parse from string value
pub fn DevicePostureType::from_string(s : String) -> DevicePostureType? {
  match s {
    "continuous" => Some(DevicePostureType::Continuous)
    "folded" => Some(DevicePostureType::Folded)
    _ => None
  }
}

///|
/// DevicePosture interface
pub type DevicePosture

///|
pub extern "js" fn DevicePosture::to_js_value(self : DevicePosture) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DevicePosture (unchecked)
pub extern "js" fn DevicePosture::from_js_value(v : JsValue) -> DevicePosture =
  #| (v) => v

///|
/// Safely cast JsValue to DevicePosture (checked with instanceof)
pub extern "js" fn DevicePosture::from_js_value_opt(
  v : JsValue,
) -> DevicePosture? =
  #| (v) => (v instanceof DevicePosture) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DevicePosture (checked with instanceof)
pub extern "js" fn JsValue::as_device_posture(self : JsValue) -> DevicePosture? =
  #| (self) => (self instanceof DevicePosture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DevicePosture (unchecked)
pub extern "js" fn JsValue::to_device_posture(self : JsValue) -> DevicePosture =
  #| (self) => self

///|
pub extern "js" fn DevicePosture::to_event_target(
  self : DevicePosture,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn DevicePosture::get_type(
  self : DevicePosture,
) -> DevicePostureType =
  #| (self) => ['continuous', 'folded'].indexOf(self.type)

///|
pub extern "js" fn DevicePosture::get_onchange(
  self : DevicePosture,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn DevicePosture::set_onchange(
  self : DevicePosture,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }
