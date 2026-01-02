// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/battery-status

///|
/// BatteryManager interface
pub type BatteryManager

pub extern "js" fn BatteryManager::to_js_value(self : BatteryManager) -> JsValue =
  #| (self) => self

pub extern "js" fn BatteryManager::get_charging(self : BatteryManager) -> Bool =
  #| (self) => self.charging

pub extern "js" fn BatteryManager::get_charging_time(self : BatteryManager) -> Double =
  #| (self) => self.chargingTime

pub extern "js" fn BatteryManager::get_discharging_time(self : BatteryManager) -> Double =
  #| (self) => self.dischargingTime

pub extern "js" fn BatteryManager::get_level(self : BatteryManager) -> Double =
  #| (self) => self.level

pub extern "js" fn BatteryManager::get_onchargingchange(self : BatteryManager) -> EventHandler =
  #| (self) => self.onchargingchange

pub extern "js" fn BatteryManager::set_onchargingchange(self : BatteryManager, value : EventHandler) -> Unit =
  #| (self, value) => { self.onchargingchange = value }

pub extern "js" fn BatteryManager::get_onchargingtimechange(self : BatteryManager) -> EventHandler =
  #| (self) => self.onchargingtimechange

pub extern "js" fn BatteryManager::set_onchargingtimechange(self : BatteryManager, value : EventHandler) -> Unit =
  #| (self, value) => { self.onchargingtimechange = value }

pub extern "js" fn BatteryManager::get_ondischargingtimechange(self : BatteryManager) -> EventHandler =
  #| (self) => self.ondischargingtimechange

pub extern "js" fn BatteryManager::set_ondischargingtimechange(self : BatteryManager, value : EventHandler) -> Unit =
  #| (self, value) => { self.ondischargingtimechange = value }

pub extern "js" fn BatteryManager::get_onlevelchange(self : BatteryManager) -> EventHandler =
  #| (self) => self.onlevelchange

pub extern "js" fn BatteryManager::set_onlevelchange(self : BatteryManager, value : EventHandler) -> Unit =
  #| (self, value) => { self.onlevelchange = value }

