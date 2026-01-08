// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/netinfo

///|
/// Megabit typedef
pub type Megabit = Double

///|
/// Millisecond typedef
pub type Millisecond = Int64

///|
/// ConnectionType enum
pub(all) enum ConnectionType {
  Bluetooth
  Cellular
  Ethernet
  Mixed
  None
  Other
  Unknown
  Wifi
  Wimax
}

///|
/// Convert to string value
pub fn ConnectionType::to_string(self : ConnectionType) -> String {
  match self {
    Bluetooth => "bluetooth"
    Cellular => "cellular"
    Ethernet => "ethernet"
    Mixed => "mixed"
    None => "none"
    Other => "other"
    Unknown => "unknown"
    Wifi => "wifi"
    Wimax => "wimax"
  }
}

///|
/// Parse from string value
pub fn ConnectionType::from_string(s : String) -> ConnectionType? {
  match s {
    "bluetooth" => Some(Bluetooth)
    "cellular" => Some(Cellular)
    "ethernet" => Some(Ethernet)
    "mixed" => Some(Mixed)
    "none" => Some(None)
    "other" => Some(Other)
    "unknown" => Some(Unknown)
    "wifi" => Some(Wifi)
    "wimax" => Some(Wimax)
    _ => None
  }
}

///|
/// EffectiveConnectionType enum
pub(all) enum EffectiveConnectionType {
  N2g
  N3g
  N4g
  Slow2g
}

///|
/// Convert to string value
pub fn EffectiveConnectionType::to_string(
  self : EffectiveConnectionType,
) -> String {
  match self {
    N2g => "2g"
    N3g => "3g"
    N4g => "4g"
    Slow2g => "slow-2g"
  }
}

///|
/// Parse from string value
pub fn EffectiveConnectionType::from_string(
  s : String,
) -> EffectiveConnectionType? {
  match s {
    "2g" => Some(N2g)
    "3g" => Some(N3g)
    "4g" => Some(N4g)
    "slow-2g" => Some(Slow2g)
    _ => None
  }
}

///|
/// NetworkInformation interface
pub type NetworkInformation

///|
pub extern "js" fn NetworkInformation::to_js_value(
  self : NetworkInformation,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn NetworkInformation::get_type(
  self : NetworkInformation,
) -> ConnectionType =
  #| (self) => self.type

///|
pub extern "js" fn NetworkInformation::get_effective_type(
  self : NetworkInformation,
) -> EffectiveConnectionType =
  #| (self) => self.effectiveType

///|
pub extern "js" fn NetworkInformation::get_downlink_max(
  self : NetworkInformation,
) -> Megabit =
  #| (self) => self.downlinkMax

///|
pub extern "js" fn NetworkInformation::get_downlink(
  self : NetworkInformation,
) -> Megabit =
  #| (self) => self.downlink

///|
pub extern "js" fn NetworkInformation::get_rtt(
  self : NetworkInformation,
) -> Millisecond =
  #| (self) => self.rtt

///|
pub extern "js" fn NetworkInformation::get_onchange(
  self : NetworkInformation,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn NetworkInformation::set_onchange(
  self : NetworkInformation,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
pub extern "js" fn NetworkInformation::get_save_data(
  self : NetworkInformation,
) -> Bool =
  #| (self) => self.saveData
