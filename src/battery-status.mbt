// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/battery-status

///|
/// BatteryManager interface
pub type BatteryManager

///|
pub extern "js" fn BatteryManager::to_js_value(
  self : BatteryManager,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BatteryManager (unchecked)
pub extern "js" fn BatteryManager::from_js_value(v : JsValue) -> BatteryManager =
  #| (v) => v

///|
/// Safely cast JsValue to BatteryManager (checked with instanceof)
pub extern "js" fn BatteryManager::from_js_value_opt(
  v : JsValue,
) -> BatteryManager? =
  #| (v) => (v instanceof BatteryManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BatteryManager (checked with instanceof)
pub extern "js" fn JsValue::as_battery_manager(
  self : JsValue,
) -> BatteryManager? =
  #| (self) => (self instanceof BatteryManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BatteryManager (unchecked)
pub extern "js" fn JsValue::to_battery_manager(
  self : JsValue,
) -> BatteryManager =
  #| (self) => self

///|
pub extern "js" fn BatteryManager::to_event_target(
  self : BatteryManager,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn BatteryManager::get_charging(self : BatteryManager) -> Bool =
  #| (self) => self.charging

///|
pub extern "js" fn BatteryManager::get_charging_time(
  self : BatteryManager,
) -> Double =
  #| (self) => self.chargingTime

///|
pub extern "js" fn BatteryManager::get_discharging_time(
  self : BatteryManager,
) -> Double =
  #| (self) => self.dischargingTime

///|
pub extern "js" fn BatteryManager::get_level(self : BatteryManager) -> Double =
  #| (self) => self.level

///|
pub extern "js" fn BatteryManager::set_onchargingchange(
  self : BatteryManager,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onchargingchange = (e) => handler(e) }

///|
pub extern "js" fn BatteryManager::clear_onchargingchange(
  self : BatteryManager,
) -> Unit =
  #| (self) => { self.onchargingchange = null }

///|
pub extern "js" fn BatteryManager::set_onchargingtimechange(
  self : BatteryManager,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onchargingtimechange = (e) => handler(e) }

///|
pub extern "js" fn BatteryManager::clear_onchargingtimechange(
  self : BatteryManager,
) -> Unit =
  #| (self) => { self.onchargingtimechange = null }

///|
pub extern "js" fn BatteryManager::set_ondischargingtimechange(
  self : BatteryManager,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondischargingtimechange = (e) => handler(e) }

///|
pub extern "js" fn BatteryManager::clear_ondischargingtimechange(
  self : BatteryManager,
) -> Unit =
  #| (self) => { self.ondischargingtimechange = null }

///|
pub extern "js" fn BatteryManager::set_onlevelchange(
  self : BatteryManager,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onlevelchange = (e) => handler(e) }

///|
pub extern "js" fn BatteryManager::clear_onlevelchange(
  self : BatteryManager,
) -> Unit =
  #| (self) => { self.onlevelchange = null }
