// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-bluetooth-scanning

///|
/// BluetoothLEScanOptions dictionary
pub(all) struct BluetoothLEScanOptions {
  filters : Array[BluetoothLEScanFilterInit]?
  keepRepeatedDevices : Bool?
  acceptAllAdvertisements : Bool?
}

///|
/// Create a new BluetoothLEScanOptions with default values
pub fn BluetoothLEScanOptions::default() -> BluetoothLEScanOptions {
  BluetoothLEScanOptions::{
    filters: None,
    keepRepeatedDevices: None,
    acceptAllAdvertisements: None,
  }
}

///|
extern "js" fn BluetoothLEScanOptions::to_js_ffi(
  self : BluetoothLEScanOptions,
) -> JsValue =
  #| (self) => ({
  #|   filters: ((() => { const v = self.filters; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   keepRepeatedDevices: (self.keepRepeatedDevices === -1 ? undefined : self.keepRepeatedDevices),
  #|   acceptAllAdvertisements: (self.acceptAllAdvertisements === -1 ? undefined : self.acceptAllAdvertisements)
  #| })

///|
/// Convert to JsValue
pub fn BluetoothLEScanOptions::to_js(self : BluetoothLEScanOptions) -> JsValue {
  BluetoothLEScanOptions::to_js_ffi(self)
}

///|
/// BluetoothLEScanPermissionDescriptor dictionary
pub(all) struct BluetoothLEScanPermissionDescriptor {
  filters : Array[BluetoothLEScanFilterInit]?
  keepRepeatedDevices : Bool?
  acceptAllAdvertisements : Bool?
}

///|
/// Create a new BluetoothLEScanPermissionDescriptor with default values
pub fn BluetoothLEScanPermissionDescriptor::default() -> BluetoothLEScanPermissionDescriptor {
  BluetoothLEScanPermissionDescriptor::{
    filters: None,
    keepRepeatedDevices: None,
    acceptAllAdvertisements: None,
  }
}

///|
extern "js" fn BluetoothLEScanPermissionDescriptor::to_js_ffi(
  self : BluetoothLEScanPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   filters: ((() => { const v = self.filters; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   keepRepeatedDevices: (self.keepRepeatedDevices === -1 ? undefined : self.keepRepeatedDevices),
  #|   acceptAllAdvertisements: (self.acceptAllAdvertisements === -1 ? undefined : self.acceptAllAdvertisements)
  #| })

///|
/// Convert to JsValue
pub fn BluetoothLEScanPermissionDescriptor::to_js(
  self : BluetoothLEScanPermissionDescriptor,
) -> JsValue {
  BluetoothLEScanPermissionDescriptor::to_js_ffi(self)
}

///|
/// BluetoothDataFilter interface
pub type BluetoothDataFilter

///|
pub extern "js" fn BluetoothDataFilter::to_js_value(
  self : BluetoothDataFilter,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothDataFilter (unchecked)
pub extern "js" fn BluetoothDataFilter::from_js_value(
  v : JsValue,
) -> BluetoothDataFilter =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothDataFilter (checked with instanceof)
pub extern "js" fn BluetoothDataFilter::from_js_value_opt(
  v : JsValue,
) -> BluetoothDataFilter? =
  #| (v) => (v instanceof BluetoothDataFilter) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothDataFilter (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_data_filter(
  self : JsValue,
) -> BluetoothDataFilter? =
  #| (self) => (self instanceof BluetoothDataFilter) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothDataFilter (unchecked)
pub extern "js" fn JsValue::to_bluetooth_data_filter(
  self : JsValue,
) -> BluetoothDataFilter =
  #| (self) => self

///|
pub extern "js" fn BluetoothDataFilter::new() -> BluetoothDataFilter =
  #| () => new BluetoothDataFilter()

///|
extern "js" fn BluetoothDataFilter::new_with_init_ffi(
  init_ : JsValue,
) -> BluetoothDataFilter =
  #| (init_) => new BluetoothDataFilter(init_)

///|
pub fn BluetoothDataFilter::new_with_init(
  init_ : BluetoothDataFilterInit,
) -> BluetoothDataFilter {
  BluetoothDataFilter::new_with_init_ffi(init_.to_js())
}

///|
pub extern "js" fn BluetoothDataFilter::get_data_prefix(
  self : BluetoothDataFilter,
) -> ArrayBuffer =
  #| (self) => self.dataPrefix

///|
pub extern "js" fn BluetoothDataFilter::get_mask(
  self : BluetoothDataFilter,
) -> ArrayBuffer =
  #| (self) => self.mask

///|
/// BluetoothManufacturerDataFilter interface
pub type BluetoothManufacturerDataFilter

///|
pub extern "js" fn BluetoothManufacturerDataFilter::to_js_value(
  self : BluetoothManufacturerDataFilter,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothManufacturerDataFilter (unchecked)
pub extern "js" fn BluetoothManufacturerDataFilter::from_js_value(
  v : JsValue,
) -> BluetoothManufacturerDataFilter =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothManufacturerDataFilter (checked with instanceof)
pub extern "js" fn BluetoothManufacturerDataFilter::from_js_value_opt(
  v : JsValue,
) -> BluetoothManufacturerDataFilter? =
  #| (v) => (v instanceof BluetoothManufacturerDataFilter) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothManufacturerDataFilter (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_manufacturer_data_filter(
  self : JsValue,
) -> BluetoothManufacturerDataFilter? =
  #| (self) => (self instanceof BluetoothManufacturerDataFilter) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothManufacturerDataFilter (unchecked)
pub extern "js" fn JsValue::to_bluetooth_manufacturer_data_filter(
  self : JsValue,
) -> BluetoothManufacturerDataFilter =
  #| (self) => self

///|
pub extern "js" fn BluetoothManufacturerDataFilter::new() -> BluetoothManufacturerDataFilter =
  #| () => new BluetoothManufacturerDataFilter()

///|
pub extern "js" fn BluetoothManufacturerDataFilter::new_with_init(
  init_ : JsValue,
) -> BluetoothManufacturerDataFilter =
  #| (init_) => new BluetoothManufacturerDataFilter(init_)

///|
pub extern "js" fn BluetoothManufacturerDataFilter::get(
  self : BluetoothManufacturerDataFilter,
  key : Int,
) -> BluetoothDataFilter? =
  #| (self, key) => self.get(key)

///|
pub extern "js" fn BluetoothManufacturerDataFilter::has(
  self : BluetoothManufacturerDataFilter,
  key : Int,
) -> Bool =
  #| (self, key) => self.has(key)

///|
/// BluetoothServiceDataFilter interface
pub type BluetoothServiceDataFilter

///|
pub extern "js" fn BluetoothServiceDataFilter::to_js_value(
  self : BluetoothServiceDataFilter,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothServiceDataFilter (unchecked)
pub extern "js" fn BluetoothServiceDataFilter::from_js_value(
  v : JsValue,
) -> BluetoothServiceDataFilter =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothServiceDataFilter (checked with instanceof)
pub extern "js" fn BluetoothServiceDataFilter::from_js_value_opt(
  v : JsValue,
) -> BluetoothServiceDataFilter? =
  #| (v) => (v instanceof BluetoothServiceDataFilter) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothServiceDataFilter (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_service_data_filter(
  self : JsValue,
) -> BluetoothServiceDataFilter? =
  #| (self) => (self instanceof BluetoothServiceDataFilter) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothServiceDataFilter (unchecked)
pub extern "js" fn JsValue::to_bluetooth_service_data_filter(
  self : JsValue,
) -> BluetoothServiceDataFilter =
  #| (self) => self

///|
pub extern "js" fn BluetoothServiceDataFilter::new() -> BluetoothServiceDataFilter =
  #| () => new BluetoothServiceDataFilter()

///|
pub extern "js" fn BluetoothServiceDataFilter::new_with_init(
  init_ : JsValue,
) -> BluetoothServiceDataFilter =
  #| (init_) => new BluetoothServiceDataFilter(init_)

///|
pub extern "js" fn BluetoothServiceDataFilter::get(
  self : BluetoothServiceDataFilter,
  key : UUID,
) -> BluetoothDataFilter? =
  #| (self, key) => self.get(key)

///|
pub extern "js" fn BluetoothServiceDataFilter::has(
  self : BluetoothServiceDataFilter,
  key : UUID,
) -> Bool =
  #| (self, key) => self.has(key)

///|
/// BluetoothLEScanFilter interface
pub type BluetoothLEScanFilter

///|
pub extern "js" fn BluetoothLEScanFilter::to_js_value(
  self : BluetoothLEScanFilter,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothLEScanFilter (unchecked)
pub extern "js" fn BluetoothLEScanFilter::from_js_value(
  v : JsValue,
) -> BluetoothLEScanFilter =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothLEScanFilter (checked with instanceof)
pub extern "js" fn BluetoothLEScanFilter::from_js_value_opt(
  v : JsValue,
) -> BluetoothLEScanFilter? =
  #| (v) => (v instanceof BluetoothLEScanFilter) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothLEScanFilter (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_le_scan_filter(
  self : JsValue,
) -> BluetoothLEScanFilter? =
  #| (self) => (self instanceof BluetoothLEScanFilter) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothLEScanFilter (unchecked)
pub extern "js" fn JsValue::to_bluetooth_le_scan_filter(
  self : JsValue,
) -> BluetoothLEScanFilter =
  #| (self) => self

///|
pub extern "js" fn BluetoothLEScanFilter::new() -> BluetoothLEScanFilter =
  #| () => new BluetoothLEScanFilter()

///|
extern "js" fn BluetoothLEScanFilter::new_with_init_ffi(
  init_ : JsValue,
) -> BluetoothLEScanFilter =
  #| (init_) => new BluetoothLEScanFilter(init_)

///|
pub fn BluetoothLEScanFilter::new_with_init(
  init_ : BluetoothLEScanFilterInit,
) -> BluetoothLEScanFilter {
  BluetoothLEScanFilter::new_with_init_ffi(init_.to_js())
}

///|
pub extern "js" fn BluetoothLEScanFilter::get_name(
  self : BluetoothLEScanFilter,
) -> String? =
  #| (self) => (self.name) ?? undefined

///|
pub extern "js" fn BluetoothLEScanFilter::get_name_prefix(
  self : BluetoothLEScanFilter,
) -> String? =
  #| (self) => (self.namePrefix) ?? undefined

///|
pub extern "js" fn BluetoothLEScanFilter::get_services(
  self : BluetoothLEScanFilter,
) -> JsValue =
  #| (self) => self.services

///|
pub extern "js" fn BluetoothLEScanFilter::get_manufacturer_data(
  self : BluetoothLEScanFilter,
) -> BluetoothManufacturerDataFilter =
  #| (self) => self.manufacturerData

///|
pub extern "js" fn BluetoothLEScanFilter::get_service_data(
  self : BluetoothLEScanFilter,
) -> BluetoothServiceDataFilter =
  #| (self) => self.serviceData

///|
/// BluetoothLEScan interface
pub type BluetoothLEScan

///|
pub extern "js" fn BluetoothLEScan::to_js_value(
  self : BluetoothLEScan,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothLEScan (unchecked)
pub extern "js" fn BluetoothLEScan::from_js_value(
  v : JsValue,
) -> BluetoothLEScan =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothLEScan (checked with instanceof)
pub extern "js" fn BluetoothLEScan::from_js_value_opt(
  v : JsValue,
) -> BluetoothLEScan? =
  #| (v) => (v instanceof BluetoothLEScan) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothLEScan (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_le_scan(
  self : JsValue,
) -> BluetoothLEScan? =
  #| (self) => (self instanceof BluetoothLEScan) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothLEScan (unchecked)
pub extern "js" fn JsValue::to_bluetooth_le_scan(
  self : JsValue,
) -> BluetoothLEScan =
  #| (self) => self

///|
pub extern "js" fn BluetoothLEScan::get_filters(
  self : BluetoothLEScan,
) -> JsValue =
  #| (self) => self.filters

///|
pub extern "js" fn BluetoothLEScan::get_keep_repeated_devices(
  self : BluetoothLEScan,
) -> Bool =
  #| (self) => self.keepRepeatedDevices

///|
pub extern "js" fn BluetoothLEScan::get_accept_all_advertisements(
  self : BluetoothLEScan,
) -> Bool =
  #| (self) => self.acceptAllAdvertisements

///|
pub extern "js" fn BluetoothLEScan::get_active(self : BluetoothLEScan) -> Bool =
  #| (self) => self.active

///|
pub extern "js" fn BluetoothLEScan::stop(self : BluetoothLEScan) -> Unit =
  #| (self) => self.stop()

///|
/// BluetoothLEScanPermissionResult interface
pub type BluetoothLEScanPermissionResult

///|
pub extern "js" fn BluetoothLEScanPermissionResult::to_js_value(
  self : BluetoothLEScanPermissionResult,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothLEScanPermissionResult (unchecked)
pub extern "js" fn BluetoothLEScanPermissionResult::from_js_value(
  v : JsValue,
) -> BluetoothLEScanPermissionResult =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothLEScanPermissionResult (checked with instanceof)
pub extern "js" fn BluetoothLEScanPermissionResult::from_js_value_opt(
  v : JsValue,
) -> BluetoothLEScanPermissionResult? =
  #| (v) => (v instanceof BluetoothLEScanPermissionResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothLEScanPermissionResult (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_le_scan_permission_result(
  self : JsValue,
) -> BluetoothLEScanPermissionResult? =
  #| (self) => (self instanceof BluetoothLEScanPermissionResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothLEScanPermissionResult (unchecked)
pub extern "js" fn JsValue::to_bluetooth_le_scan_permission_result(
  self : JsValue,
) -> BluetoothLEScanPermissionResult =
  #| (self) => self

///|
pub extern "js" fn BluetoothLEScanPermissionResult::to_permission_status(
  self : BluetoothLEScanPermissionResult,
) -> PermissionStatus =
  #| (self) => self

///|
pub extern "js" fn BluetoothLEScanPermissionResult::to_event_target(
  self : BluetoothLEScanPermissionResult,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn BluetoothLEScanPermissionResult::get_scans(
  self : BluetoothLEScanPermissionResult,
) -> JsValue =
  #| (self) => self.scans

///|
pub extern "js" fn BluetoothLEScanPermissionResult::set_scans(
  self : BluetoothLEScanPermissionResult,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.scans = value }
