// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/device-posture

///|
/// DevicePostureType enum
pub(all) enum DevicePostureType {
  Continuous
  Folded
}

///|
/// Convert to string value
pub fn DevicePostureType::to_string(self : DevicePostureType) -> String {
  match self {
    Continuous => "continuous"
    Folded => "folded"
  }
}

///|
/// Parse from string value
pub fn DevicePostureType::from_string(s : String) -> DevicePostureType? {
  match s {
    "continuous" => Some(Continuous)
    "folded" => Some(Folded)
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
pub extern "js" fn DevicePosture::get_type(
  self : DevicePosture,
) -> DevicePostureType =
  #| (self) => self.type

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
