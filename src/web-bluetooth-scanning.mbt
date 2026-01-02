// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-bluetooth-scanning

///|
/// BluetoothLEScanOptions dictionary
pub struct BluetoothLEScanOptions {
  filters : Array[BluetoothLEScanFilterInit]?
  keepRepeatedDevices : Bool?
  acceptAllAdvertisements : Bool?
}

/// Create a new BluetoothLEScanOptions with default values
pub fn BluetoothLEScanOptions::default() -> BluetoothLEScanOptions {
  BluetoothLEScanOptions::{
    filters: None,
    keepRepeatedDevices: None,
    acceptAllAdvertisements: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BluetoothLEScanOptions::to_js(self : BluetoothLEScanOptions) -> JsValue =
  #| (self) => ({
  #|   filters: self.filters,
  #|   keepRepeatedDevices: self.keepRepeatedDevices,
  #|   acceptAllAdvertisements: self.acceptAllAdvertisements
  #| })

///|
/// BluetoothLEScanPermissionDescriptor dictionary
pub struct BluetoothLEScanPermissionDescriptor {
  filters : Array[BluetoothLEScanFilterInit]?
  keepRepeatedDevices : Bool?
  acceptAllAdvertisements : Bool?
}

/// Create a new BluetoothLEScanPermissionDescriptor with default values
pub fn BluetoothLEScanPermissionDescriptor::default() -> BluetoothLEScanPermissionDescriptor {
  BluetoothLEScanPermissionDescriptor::{
    filters: None,
    keepRepeatedDevices: None,
    acceptAllAdvertisements: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BluetoothLEScanPermissionDescriptor::to_js(self : BluetoothLEScanPermissionDescriptor) -> JsValue =
  #| (self) => ({
  #|   filters: self.filters,
  #|   keepRepeatedDevices: self.keepRepeatedDevices,
  #|   acceptAllAdvertisements: self.acceptAllAdvertisements
  #| })

///|
/// BluetoothDataFilter interface
pub type BluetoothDataFilter

pub extern "js" fn BluetoothDataFilter::to_js_value(self : BluetoothDataFilter) -> JsValue =
  #| (self) => self

pub extern "js" fn BluetoothDataFilter::new(init_ : BluetoothDataFilterInit) -> BluetoothDataFilter =
  #| (init_) => new BluetoothDataFilter(init_)

pub extern "js" fn BluetoothDataFilter::get_data_prefix(self : BluetoothDataFilter) -> ArrayBuffer =
  #| (self) => self.dataPrefix

pub extern "js" fn BluetoothDataFilter::get_mask(self : BluetoothDataFilter) -> ArrayBuffer =
  #| (self) => self.mask

///|
/// BluetoothManufacturerDataFilter interface
pub type BluetoothManufacturerDataFilter

pub extern "js" fn BluetoothManufacturerDataFilter::to_js_value(self : BluetoothManufacturerDataFilter) -> JsValue =
  #| (self) => self

pub extern "js" fn BluetoothManufacturerDataFilter::new(init_ : JsValue) -> BluetoothManufacturerDataFilter =
  #| (init_) => new BluetoothManufacturerDataFilter(init_)

pub extern "js" fn BluetoothManufacturerDataFilter::get(self : BluetoothManufacturerDataFilter, key : Int) -> BluetoothDataFilter? =
  #| (self, key) => self.get(key)

pub extern "js" fn BluetoothManufacturerDataFilter::has(self : BluetoothManufacturerDataFilter, key : Int) -> Bool =
  #| (self, key) => self.has(key)

///|
/// BluetoothServiceDataFilter interface
pub type BluetoothServiceDataFilter

pub extern "js" fn BluetoothServiceDataFilter::to_js_value(self : BluetoothServiceDataFilter) -> JsValue =
  #| (self) => self

pub extern "js" fn BluetoothServiceDataFilter::new(init_ : JsValue) -> BluetoothServiceDataFilter =
  #| (init_) => new BluetoothServiceDataFilter(init_)

pub extern "js" fn BluetoothServiceDataFilter::get(self : BluetoothServiceDataFilter, key : UUID) -> BluetoothDataFilter? =
  #| (self, key) => self.get(key)

pub extern "js" fn BluetoothServiceDataFilter::has(self : BluetoothServiceDataFilter, key : UUID) -> Bool =
  #| (self, key) => self.has(key)

///|
/// BluetoothLEScanFilter interface
pub type BluetoothLEScanFilter

pub extern "js" fn BluetoothLEScanFilter::to_js_value(self : BluetoothLEScanFilter) -> JsValue =
  #| (self) => self

pub extern "js" fn BluetoothLEScanFilter::new(init_ : BluetoothLEScanFilterInit) -> BluetoothLEScanFilter =
  #| (init_) => new BluetoothLEScanFilter(init_)

pub extern "js" fn BluetoothLEScanFilter::get_name(self : BluetoothLEScanFilter) -> String? =
  #| (self) => self.name

pub extern "js" fn BluetoothLEScanFilter::get_name_prefix(self : BluetoothLEScanFilter) -> String? =
  #| (self) => self.namePrefix

pub extern "js" fn BluetoothLEScanFilter::get_services(self : BluetoothLEScanFilter) -> JsValue =
  #| (self) => self.services

pub extern "js" fn BluetoothLEScanFilter::get_manufacturer_data(self : BluetoothLEScanFilter) -> BluetoothManufacturerDataFilter =
  #| (self) => self.manufacturerData

pub extern "js" fn BluetoothLEScanFilter::get_service_data(self : BluetoothLEScanFilter) -> BluetoothServiceDataFilter =
  #| (self) => self.serviceData

///|
/// BluetoothLEScan interface
pub type BluetoothLEScan

pub extern "js" fn BluetoothLEScan::to_js_value(self : BluetoothLEScan) -> JsValue =
  #| (self) => self

pub extern "js" fn BluetoothLEScan::get_filters(self : BluetoothLEScan) -> JsValue =
  #| (self) => self.filters

pub extern "js" fn BluetoothLEScan::get_keep_repeated_devices(self : BluetoothLEScan) -> Bool =
  #| (self) => self.keepRepeatedDevices

pub extern "js" fn BluetoothLEScan::get_accept_all_advertisements(self : BluetoothLEScan) -> Bool =
  #| (self) => self.acceptAllAdvertisements

pub extern "js" fn BluetoothLEScan::get_active(self : BluetoothLEScan) -> Bool =
  #| (self) => self.active

pub extern "js" fn BluetoothLEScan::stop(self : BluetoothLEScan) -> Unit =
  #| (self) => self.stop()

///|
/// BluetoothLEScanPermissionResult interface
pub type BluetoothLEScanPermissionResult

pub extern "js" fn BluetoothLEScanPermissionResult::to_js_value(self : BluetoothLEScanPermissionResult) -> JsValue =
  #| (self) => self

pub extern "js" fn BluetoothLEScanPermissionResult::get_scans(self : BluetoothLEScanPermissionResult) -> JsValue =
  #| (self) => self.scans

pub extern "js" fn BluetoothLEScanPermissionResult::set_scans(self : BluetoothLEScanPermissionResult, value : JsValue) -> Unit =
  #| (self, value) => { self.scans = value }

