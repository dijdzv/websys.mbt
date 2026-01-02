// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/managed-configuration

///|
/// NavigatorManagedData interface
pub type NavigatorManagedData

pub extern "js" fn NavigatorManagedData::to_js_value(self : NavigatorManagedData) -> JsValue =
  #| (self) => self

pub extern "js" fn NavigatorManagedData::get_managed_configuration(self : NavigatorManagedData, keys : JsValue) -> JsValue =
  #| (self, keys) => self.getManagedConfiguration(keys)

pub extern "js" fn NavigatorManagedData::get_onmanagedconfigurationchange(self : NavigatorManagedData) -> EventHandler =
  #| (self) => self.onmanagedconfigurationchange

pub extern "js" fn NavigatorManagedData::set_onmanagedconfigurationchange(self : NavigatorManagedData, value : EventHandler) -> Unit =
  #| (self, value) => { self.onmanagedconfigurationchange = value }

pub extern "js" fn NavigatorManagedData::get_annotated_asset_id(self : NavigatorManagedData) -> JsValue =
  #| (self) => self.getAnnotatedAssetId()

pub extern "js" fn NavigatorManagedData::get_annotated_location(self : NavigatorManagedData) -> JsValue =
  #| (self) => self.getAnnotatedLocation()

pub extern "js" fn NavigatorManagedData::get_directory_id(self : NavigatorManagedData) -> JsValue =
  #| (self) => self.getDirectoryId()

pub extern "js" fn NavigatorManagedData::get_hostname(self : NavigatorManagedData) -> JsValue =
  #| (self) => self.getHostname()

pub extern "js" fn NavigatorManagedData::get_serial_number(self : NavigatorManagedData) -> JsValue =
  #| (self) => self.getSerialNumber()

