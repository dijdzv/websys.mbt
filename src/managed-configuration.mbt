// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/managed-configuration

///|
/// NavigatorManagedData interface
pub type NavigatorManagedData

///|
pub extern "js" fn NavigatorManagedData::to_js_value(
  self : NavigatorManagedData,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NavigatorManagedData (unchecked)
pub extern "js" fn NavigatorManagedData::from_js_value(
  v : JsValue,
) -> NavigatorManagedData =
  #| (v) => v

///|
/// Safely cast JsValue to NavigatorManagedData (checked with instanceof)
pub extern "js" fn NavigatorManagedData::from_js_value_opt(
  v : JsValue,
) -> NavigatorManagedData? =
  #| (v) => (v instanceof NavigatorManagedData) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NavigatorManagedData (checked with instanceof)
pub extern "js" fn JsValue::as_navigator_managed_data(
  self : JsValue,
) -> NavigatorManagedData? =
  #| (self) => (self instanceof NavigatorManagedData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NavigatorManagedData (unchecked)
pub extern "js" fn JsValue::to_navigator_managed_data(
  self : JsValue,
) -> NavigatorManagedData =
  #| (self) => self

///|
pub extern "js" fn NavigatorManagedData::to_event_target(
  self : NavigatorManagedData,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn NavigatorManagedData::get_managed_configuration(
  self : NavigatorManagedData,
  keys : Array[String],
) -> Promise[JsValue] =
  #| (self, keys) => self.getManagedConfiguration(keys)

///|
pub extern "js" fn NavigatorManagedData::get_onmanagedconfigurationchange(
  self : NavigatorManagedData,
) -> EventHandler =
  #| (self) => self.onmanagedconfigurationchange

///|
pub extern "js" fn NavigatorManagedData::set_onmanagedconfigurationchange(
  self : NavigatorManagedData,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmanagedconfigurationchange = value }

///|
pub extern "js" fn NavigatorManagedData::get_annotated_asset_id(
  self : NavigatorManagedData,
) -> Promise[String] =
  #| (self) => self.getAnnotatedAssetId()

///|
pub extern "js" fn NavigatorManagedData::get_annotated_location(
  self : NavigatorManagedData,
) -> Promise[String] =
  #| (self) => self.getAnnotatedLocation()

///|
pub extern "js" fn NavigatorManagedData::get_directory_id(
  self : NavigatorManagedData,
) -> Promise[String] =
  #| (self) => self.getDirectoryId()

///|
pub extern "js" fn NavigatorManagedData::get_hostname(
  self : NavigatorManagedData,
) -> Promise[String] =
  #| (self) => self.getHostname()

///|
pub extern "js" fn NavigatorManagedData::get_serial_number(
  self : NavigatorManagedData,
) -> Promise[String] =
  #| (self) => self.getSerialNumber()
