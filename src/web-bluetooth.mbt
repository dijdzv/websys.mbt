// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-bluetooth

///|
/// UUID typedef
pub type UUID = String

///|
/// BluetoothServiceUUID typedef
pub type BluetoothServiceUUID

///|
pub extern "js" fn BluetoothServiceUUID::to_js_value(
  self : BluetoothServiceUUID,
) -> JsValue =
  #| (self) => self

///|
/// Create BluetoothServiceUUID from String
pub extern "js" fn BluetoothServiceUUID::from_string(
  v : String,
) -> BluetoothServiceUUID =
  #| (v) => v

///|
/// Create BluetoothServiceUUID from Int
pub extern "js" fn BluetoothServiceUUID::from_int(
  v : Int,
) -> BluetoothServiceUUID =
  #| (v) => v

///|
/// Check if this BluetoothServiceUUID is String
pub extern "js" fn BluetoothServiceUUID::is_string(
  self : BluetoothServiceUUID,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this BluetoothServiceUUID is Int
pub extern "js" fn BluetoothServiceUUID::is_int(
  self : BluetoothServiceUUID,
) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Try to get BluetoothServiceUUID as String
pub extern "js" fn BluetoothServiceUUID::as_string(
  self : BluetoothServiceUUID,
) -> String? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get BluetoothServiceUUID as Int
pub extern "js" fn BluetoothServiceUUID::as_int(
  self : BluetoothServiceUUID,
) -> Int? =
  #| (self) => (typeof self === 'number') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// BluetoothCharacteristicUUID typedef
pub type BluetoothCharacteristicUUID

///|
pub extern "js" fn BluetoothCharacteristicUUID::to_js_value(
  self : BluetoothCharacteristicUUID,
) -> JsValue =
  #| (self) => self

///|
/// Create BluetoothCharacteristicUUID from String
pub extern "js" fn BluetoothCharacteristicUUID::from_string(
  v : String,
) -> BluetoothCharacteristicUUID =
  #| (v) => v

///|
/// Create BluetoothCharacteristicUUID from Int
pub extern "js" fn BluetoothCharacteristicUUID::from_int(
  v : Int,
) -> BluetoothCharacteristicUUID =
  #| (v) => v

///|
/// Check if this BluetoothCharacteristicUUID is String
pub extern "js" fn BluetoothCharacteristicUUID::is_string(
  self : BluetoothCharacteristicUUID,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this BluetoothCharacteristicUUID is Int
pub extern "js" fn BluetoothCharacteristicUUID::is_int(
  self : BluetoothCharacteristicUUID,
) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Try to get BluetoothCharacteristicUUID as String
pub extern "js" fn BluetoothCharacteristicUUID::as_string(
  self : BluetoothCharacteristicUUID,
) -> String? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get BluetoothCharacteristicUUID as Int
pub extern "js" fn BluetoothCharacteristicUUID::as_int(
  self : BluetoothCharacteristicUUID,
) -> Int? =
  #| (self) => (typeof self === 'number') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// BluetoothDescriptorUUID typedef
pub type BluetoothDescriptorUUID

///|
pub extern "js" fn BluetoothDescriptorUUID::to_js_value(
  self : BluetoothDescriptorUUID,
) -> JsValue =
  #| (self) => self

///|
/// Create BluetoothDescriptorUUID from String
pub extern "js" fn BluetoothDescriptorUUID::from_string(
  v : String,
) -> BluetoothDescriptorUUID =
  #| (v) => v

///|
/// Create BluetoothDescriptorUUID from Int
pub extern "js" fn BluetoothDescriptorUUID::from_int(
  v : Int,
) -> BluetoothDescriptorUUID =
  #| (v) => v

///|
/// Check if this BluetoothDescriptorUUID is String
pub extern "js" fn BluetoothDescriptorUUID::is_string(
  self : BluetoothDescriptorUUID,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this BluetoothDescriptorUUID is Int
pub extern "js" fn BluetoothDescriptorUUID::is_int(
  self : BluetoothDescriptorUUID,
) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Try to get BluetoothDescriptorUUID as String
pub extern "js" fn BluetoothDescriptorUUID::as_string(
  self : BluetoothDescriptorUUID,
) -> String? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get BluetoothDescriptorUUID as Int
pub extern "js" fn BluetoothDescriptorUUID::as_int(
  self : BluetoothDescriptorUUID,
) -> Int? =
  #| (self) => (typeof self === 'number') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// BluetoothDataFilterInit dictionary
pub struct BluetoothDataFilterInit {
  dataPrefix : BufferSource?
  mask : BufferSource?
}

///|
/// Create a new BluetoothDataFilterInit with default values
pub fn BluetoothDataFilterInit::default() -> BluetoothDataFilterInit {
  BluetoothDataFilterInit::{ dataPrefix: None, mask: None }
}

///|
/// Convert to JsValue
pub extern "js" fn BluetoothDataFilterInit::to_js(
  self : BluetoothDataFilterInit,
) -> JsValue =
  #| (self) => ({
  #|   dataPrefix: self.dataPrefix.to_js_value(),
  #|   mask: self.mask.to_js_value()
  #| })

///|
/// BluetoothManufacturerDataFilterInit dictionary
pub struct BluetoothManufacturerDataFilterInit {
  dataPrefix : BufferSource?
  mask : BufferSource?
  companyIdentifier : Int
}

///|
/// Create a new BluetoothManufacturerDataFilterInit with default values
pub fn BluetoothManufacturerDataFilterInit::default() -> BluetoothManufacturerDataFilterInit {
  BluetoothManufacturerDataFilterInit::{
    dataPrefix: None,
    mask: None,
    companyIdentifier: 0,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn BluetoothManufacturerDataFilterInit::to_js(
  self : BluetoothManufacturerDataFilterInit,
) -> JsValue =
  #| (self) => ({
  #|   dataPrefix: self.dataPrefix.to_js_value(),
  #|   mask: self.mask.to_js_value(),
  #|   companyIdentifier: self.companyIdentifier
  #| })

///|
/// BluetoothServiceDataFilterInit dictionary
pub struct BluetoothServiceDataFilterInit {
  dataPrefix : BufferSource?
  mask : BufferSource?
  service : BluetoothServiceUUID
}

///|
/// Create a new BluetoothServiceDataFilterInit with default values
pub fn BluetoothServiceDataFilterInit::default() -> BluetoothServiceDataFilterInit {
  BluetoothServiceDataFilterInit::{
    dataPrefix: None,
    mask: None,
    service: panic(),
  }
}

///|
/// Convert to JsValue
pub extern "js" fn BluetoothServiceDataFilterInit::to_js(
  self : BluetoothServiceDataFilterInit,
) -> JsValue =
  #| (self) => ({
  #|   dataPrefix: self.dataPrefix.to_js_value(),
  #|   mask: self.mask.to_js_value(),
  #|   service: self.service.to_js_value()
  #| })

///|
/// BluetoothLEScanFilterInit dictionary
pub struct BluetoothLEScanFilterInit {
  services : Array[BluetoothServiceUUID]?
  name : String?
  namePrefix : String?
  manufacturerData : Array[BluetoothManufacturerDataFilterInit]?
  serviceData : Array[BluetoothServiceDataFilterInit]?
}

///|
/// Create a new BluetoothLEScanFilterInit with default values
pub fn BluetoothLEScanFilterInit::default() -> BluetoothLEScanFilterInit {
  BluetoothLEScanFilterInit::{
    services: None,
    name: None,
    namePrefix: None,
    manufacturerData: None,
    serviceData: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn BluetoothLEScanFilterInit::to_js(
  self : BluetoothLEScanFilterInit,
) -> JsValue =
  #| (self) => ({
  #|   services: self.services,
  #|   name: self.name,
  #|   namePrefix: self.namePrefix,
  #|   manufacturerData: self.manufacturerData,
  #|   serviceData: self.serviceData
  #| })

///|
/// RequestDeviceOptions dictionary
pub struct RequestDeviceOptions {
  filters : Array[BluetoothLEScanFilterInit]?
  exclusionFilters : Array[BluetoothLEScanFilterInit]?
  optionalServices : Array[BluetoothServiceUUID]?
  optionalManufacturerData : Array[Int]?
  acceptAllDevices : Bool?
}

///|
/// Create a new RequestDeviceOptions with default values
pub fn RequestDeviceOptions::default() -> RequestDeviceOptions {
  RequestDeviceOptions::{
    filters: None,
    exclusionFilters: None,
    optionalServices: None,
    optionalManufacturerData: None,
    acceptAllDevices: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn RequestDeviceOptions::to_js(
  self : RequestDeviceOptions,
) -> JsValue =
  #| (self) => ({
  #|   filters: self.filters,
  #|   exclusionFilters: self.exclusionFilters,
  #|   optionalServices: self.optionalServices,
  #|   optionalManufacturerData: self.optionalManufacturerData,
  #|   acceptAllDevices: self.acceptAllDevices
  #| })

///|
/// BluetoothPermissionDescriptor dictionary
pub struct BluetoothPermissionDescriptor {
  deviceId : String?
  filters : Array[BluetoothLEScanFilterInit]?
  optionalServices : Array[BluetoothServiceUUID]?
  optionalManufacturerData : Array[Int]?
  acceptAllDevices : Bool?
}

///|
/// Create a new BluetoothPermissionDescriptor with default values
pub fn BluetoothPermissionDescriptor::default() -> BluetoothPermissionDescriptor {
  BluetoothPermissionDescriptor::{
    deviceId: None,
    filters: None,
    optionalServices: None,
    optionalManufacturerData: None,
    acceptAllDevices: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn BluetoothPermissionDescriptor::to_js(
  self : BluetoothPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   deviceId: self.deviceId,
  #|   filters: self.filters,
  #|   optionalServices: self.optionalServices,
  #|   optionalManufacturerData: self.optionalManufacturerData,
  #|   acceptAllDevices: self.acceptAllDevices
  #| })

///|
/// AllowedBluetoothDevice dictionary
pub struct AllowedBluetoothDevice {
  deviceId : String
  mayUseGATT : Bool
  allowedServices : StringOrArrayOfUUID
  allowedManufacturerData : Array[Int]
}

///|
/// Create a new AllowedBluetoothDevice with default values
pub fn AllowedBluetoothDevice::default() -> AllowedBluetoothDevice {
  AllowedBluetoothDevice::{
    deviceId: "",
    mayUseGATT: false,
    allowedServices: panic(),
    allowedManufacturerData: [],
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AllowedBluetoothDevice::to_js(
  self : AllowedBluetoothDevice,
) -> JsValue =
  #| (self) => ({
  #|   deviceId: self.deviceId,
  #|   mayUseGATT: self.mayUseGATT,
  #|   allowedServices: self.allowedServices,
  #|   allowedManufacturerData: self.allowedManufacturerData
  #| })

///|
/// BluetoothPermissionStorage dictionary
pub struct BluetoothPermissionStorage {
  allowedDevices : Array[AllowedBluetoothDevice]
}

///|
/// Create a new BluetoothPermissionStorage with default values
pub fn BluetoothPermissionStorage::default() -> BluetoothPermissionStorage {
  BluetoothPermissionStorage::{ allowedDevices: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn BluetoothPermissionStorage::to_js(
  self : BluetoothPermissionStorage,
) -> JsValue =
  #| (self) => ({
  #|   allowedDevices: self.allowedDevices
  #| })

///|
/// ValueEventInit dictionary
pub struct ValueEventInit {
  value : JsValue?
}

///|
/// Create a new ValueEventInit with default values
pub fn ValueEventInit::default() -> ValueEventInit {
  ValueEventInit::{ value: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ValueEventInit::to_js(self : ValueEventInit) -> JsValue =
  #| (self) => ({
  #|   value: self.value
  #| })

///|
/// WatchAdvertisementsOptions dictionary
pub struct WatchAdvertisementsOptions {
  signal : AbortSignal?
}

///|
/// Create a new WatchAdvertisementsOptions with default values
pub fn WatchAdvertisementsOptions::default() -> WatchAdvertisementsOptions {
  WatchAdvertisementsOptions::{ signal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn WatchAdvertisementsOptions::to_js(
  self : WatchAdvertisementsOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: self.signal
  #| })

///|
/// BluetoothAdvertisingEventInit dictionary
pub struct BluetoothAdvertisingEventInit {
  device : BluetoothDevice
  uuids : Array[StringOrInt]?
  name : String?
  appearance : Int?
  txPower : Int?
  rssi : Int?
  manufacturerData : BluetoothManufacturerDataMap?
  serviceData : BluetoothServiceDataMap?
}

///|
/// Create a new BluetoothAdvertisingEventInit with default values
pub fn BluetoothAdvertisingEventInit::default() -> BluetoothAdvertisingEventInit {
  BluetoothAdvertisingEventInit::{
    device: panic(),
    uuids: None,
    name: None,
    appearance: None,
    txPower: None,
    rssi: None,
    manufacturerData: None,
    serviceData: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn BluetoothAdvertisingEventInit::to_js(
  self : BluetoothAdvertisingEventInit,
) -> JsValue =
  #| (self) => ({
  #|   device: self.device,
  #|   uuids: self.uuids,
  #|   name: self.name,
  #|   appearance: self.appearance,
  #|   txPower: self.txPower,
  #|   rssi: self.rssi,
  #|   manufacturerData: self.manufacturerData,
  #|   serviceData: self.serviceData
  #| })

///|
/// Bluetooth interface
pub type Bluetooth

///|
pub extern "js" fn Bluetooth::to_js_value(self : Bluetooth) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Bluetooth (unchecked)
pub extern "js" fn Bluetooth::from_js_value(v : JsValue) -> Bluetooth =
  #| (v) => v

///|
/// Safely cast JsValue to Bluetooth (checked with instanceof)
pub extern "js" fn Bluetooth::from_js_value_opt(v : JsValue) -> Bluetooth? =
  #| (v) => (v instanceof Bluetooth) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Bluetooth (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth(self : JsValue) -> Bluetooth? =
  #| (self) => (self instanceof Bluetooth) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Bluetooth (unchecked)
pub extern "js" fn JsValue::to_bluetooth(self : JsValue) -> Bluetooth =
  #| (self) => self

///|
pub extern "js" fn Bluetooth::to_event_target(self : Bluetooth) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Bluetooth::get_availability(
  self : Bluetooth,
) -> Promise[Bool] =
  #| (self) => self.getAvailability()

///|
pub extern "js" fn Bluetooth::get_onavailabilitychanged(
  self : Bluetooth,
) -> EventHandler =
  #| (self) => self.onavailabilitychanged

///|
pub extern "js" fn Bluetooth::set_onavailabilitychanged(
  self : Bluetooth,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onavailabilitychanged = value }

///|
pub extern "js" fn Bluetooth::get_referring_device(
  self : Bluetooth,
) -> BluetoothDevice? =
  #| (self) => { const v = self.referringDevice; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn Bluetooth::get_devices(
  self : Bluetooth,
) -> Promise[Array[BluetoothDevice]] =
  #| (self) => self.getDevices()

///|
pub extern "js" fn Bluetooth::request_device(
  self : Bluetooth,
) -> Promise[BluetoothDevice] =
  #| (self) => self.requestDevice()

///|
pub extern "js" fn Bluetooth::request_device_with_options(
  self : Bluetooth,
  options : RequestDeviceOptions,
) -> Promise[BluetoothDevice] =
  #| (self, options) => self.requestDevice(options)

///|
pub extern "js" fn Bluetooth::request_le_scan(
  self : Bluetooth,
) -> Promise[BluetoothLEScan] =
  #| (self) => self.requestLEScan()

///|
pub extern "js" fn Bluetooth::request_le_scan_with_options(
  self : Bluetooth,
  options : BluetoothLEScanOptions,
) -> Promise[BluetoothLEScan] =
  #| (self, options) => self.requestLEScan(options)

///|
pub extern "js" fn Bluetooth::get_onadvertisementreceived(
  self : Bluetooth,
) -> EventHandler =
  #| (self) => self.onadvertisementreceived

///|
pub extern "js" fn Bluetooth::set_onadvertisementreceived(
  self : Bluetooth,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onadvertisementreceived = value }

///|
pub extern "js" fn Bluetooth::get_ongattserverdisconnected(
  self : Bluetooth,
) -> EventHandler =
  #| (self) => self.ongattserverdisconnected

///|
pub extern "js" fn Bluetooth::set_ongattserverdisconnected(
  self : Bluetooth,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongattserverdisconnected = value }

///|
pub extern "js" fn Bluetooth::get_oncharacteristicvaluechanged(
  self : Bluetooth,
) -> EventHandler =
  #| (self) => self.oncharacteristicvaluechanged

///|
pub extern "js" fn Bluetooth::set_oncharacteristicvaluechanged(
  self : Bluetooth,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncharacteristicvaluechanged = value }

///|
pub extern "js" fn Bluetooth::get_onserviceadded(
  self : Bluetooth,
) -> EventHandler =
  #| (self) => self.onserviceadded

///|
pub extern "js" fn Bluetooth::set_onserviceadded(
  self : Bluetooth,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onserviceadded = value }

///|
pub extern "js" fn Bluetooth::get_onservicechanged(
  self : Bluetooth,
) -> EventHandler =
  #| (self) => self.onservicechanged

///|
pub extern "js" fn Bluetooth::set_onservicechanged(
  self : Bluetooth,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onservicechanged = value }

///|
pub extern "js" fn Bluetooth::get_onserviceremoved(
  self : Bluetooth,
) -> EventHandler =
  #| (self) => self.onserviceremoved

///|
pub extern "js" fn Bluetooth::set_onserviceremoved(
  self : Bluetooth,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onserviceremoved = value }

///|
/// BluetoothPermissionResult interface
pub type BluetoothPermissionResult

///|
pub extern "js" fn BluetoothPermissionResult::to_js_value(
  self : BluetoothPermissionResult,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothPermissionResult (unchecked)
pub extern "js" fn BluetoothPermissionResult::from_js_value(
  v : JsValue,
) -> BluetoothPermissionResult =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothPermissionResult (checked with instanceof)
pub extern "js" fn BluetoothPermissionResult::from_js_value_opt(
  v : JsValue,
) -> BluetoothPermissionResult? =
  #| (v) => (v instanceof BluetoothPermissionResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothPermissionResult (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_permission_result(
  self : JsValue,
) -> BluetoothPermissionResult? =
  #| (self) => (self instanceof BluetoothPermissionResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothPermissionResult (unchecked)
pub extern "js" fn JsValue::to_bluetooth_permission_result(
  self : JsValue,
) -> BluetoothPermissionResult =
  #| (self) => self

///|
pub extern "js" fn BluetoothPermissionResult::to_permission_status(
  self : BluetoothPermissionResult,
) -> PermissionStatus =
  #| (self) => self

///|
pub extern "js" fn BluetoothPermissionResult::to_event_target(
  self : BluetoothPermissionResult,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn BluetoothPermissionResult::get_devices(
  self : BluetoothPermissionResult,
) -> JsValue =
  #| (self) => self.devices

///|
pub extern "js" fn BluetoothPermissionResult::set_devices(
  self : BluetoothPermissionResult,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.devices = value }

///|
/// ValueEvent interface
pub type ValueEvent

///|
pub extern "js" fn ValueEvent::to_js_value(self : ValueEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ValueEvent (unchecked)
pub extern "js" fn ValueEvent::from_js_value(v : JsValue) -> ValueEvent =
  #| (v) => v

///|
/// Safely cast JsValue to ValueEvent (checked with instanceof)
pub extern "js" fn ValueEvent::from_js_value_opt(v : JsValue) -> ValueEvent? =
  #| (v) => (v instanceof ValueEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ValueEvent (checked with instanceof)
pub extern "js" fn JsValue::as_value_event(self : JsValue) -> ValueEvent? =
  #| (self) => (self instanceof ValueEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ValueEvent (unchecked)
pub extern "js" fn JsValue::to_value_event(self : JsValue) -> ValueEvent =
  #| (self) => self

///|
pub extern "js" fn ValueEvent::to_event(self : ValueEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn ValueEvent::new(
  type_ : String,
  init_dict : ValueEventInit,
) -> ValueEvent =
  #| (type_, init_dict) => new ValueEvent(type_, init_dict)

///|
pub extern "js" fn ValueEvent::get_value(self : ValueEvent) -> JsValue =
  #| (self) => self.value

///|
/// BluetoothDevice interface
pub type BluetoothDevice

///|
pub extern "js" fn BluetoothDevice::to_js_value(
  self : BluetoothDevice,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothDevice (unchecked)
pub extern "js" fn BluetoothDevice::from_js_value(
  v : JsValue,
) -> BluetoothDevice =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothDevice (checked with instanceof)
pub extern "js" fn BluetoothDevice::from_js_value_opt(
  v : JsValue,
) -> BluetoothDevice? =
  #| (v) => (v instanceof BluetoothDevice) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothDevice (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_device(
  self : JsValue,
) -> BluetoothDevice? =
  #| (self) => (self instanceof BluetoothDevice) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothDevice (unchecked)
pub extern "js" fn JsValue::to_bluetooth_device(
  self : JsValue,
) -> BluetoothDevice =
  #| (self) => self

///|
pub extern "js" fn BluetoothDevice::to_event_target(
  self : BluetoothDevice,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn BluetoothDevice::get_id(self : BluetoothDevice) -> String =
  #| (self) => self.id

///|
pub extern "js" fn BluetoothDevice::get_name(self : BluetoothDevice) -> String? =
  #| (self) => { const v = self.name; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn BluetoothDevice::get_gatt(
  self : BluetoothDevice,
) -> BluetoothRemoteGATTServer? =
  #| (self) => { const v = self.gatt; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn BluetoothDevice::forget(
  self : BluetoothDevice,
) -> Promise[Unit] =
  #| (self) => self.forget()

///|
pub extern "js" fn BluetoothDevice::watch_advertisements(
  self : BluetoothDevice,
) -> Promise[Unit] =
  #| (self) => self.watchAdvertisements()

///|
pub extern "js" fn BluetoothDevice::watch_advertisements_with_options(
  self : BluetoothDevice,
  options : WatchAdvertisementsOptions,
) -> Promise[Unit] =
  #| (self, options) => self.watchAdvertisements(options)

///|
pub extern "js" fn BluetoothDevice::get_watching_advertisements(
  self : BluetoothDevice,
) -> Bool =
  #| (self) => self.watchingAdvertisements

///|
pub extern "js" fn BluetoothDevice::get_onadvertisementreceived(
  self : BluetoothDevice,
) -> EventHandler =
  #| (self) => self.onadvertisementreceived

///|
pub extern "js" fn BluetoothDevice::set_onadvertisementreceived(
  self : BluetoothDevice,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onadvertisementreceived = value }

///|
pub extern "js" fn BluetoothDevice::get_ongattserverdisconnected(
  self : BluetoothDevice,
) -> EventHandler =
  #| (self) => self.ongattserverdisconnected

///|
pub extern "js" fn BluetoothDevice::set_ongattserverdisconnected(
  self : BluetoothDevice,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ongattserverdisconnected = value }

///|
pub extern "js" fn BluetoothDevice::get_oncharacteristicvaluechanged(
  self : BluetoothDevice,
) -> EventHandler =
  #| (self) => self.oncharacteristicvaluechanged

///|
pub extern "js" fn BluetoothDevice::set_oncharacteristicvaluechanged(
  self : BluetoothDevice,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncharacteristicvaluechanged = value }

///|
pub extern "js" fn BluetoothDevice::get_onserviceadded(
  self : BluetoothDevice,
) -> EventHandler =
  #| (self) => self.onserviceadded

///|
pub extern "js" fn BluetoothDevice::set_onserviceadded(
  self : BluetoothDevice,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onserviceadded = value }

///|
pub extern "js" fn BluetoothDevice::get_onservicechanged(
  self : BluetoothDevice,
) -> EventHandler =
  #| (self) => self.onservicechanged

///|
pub extern "js" fn BluetoothDevice::set_onservicechanged(
  self : BluetoothDevice,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onservicechanged = value }

///|
pub extern "js" fn BluetoothDevice::get_onserviceremoved(
  self : BluetoothDevice,
) -> EventHandler =
  #| (self) => self.onserviceremoved

///|
pub extern "js" fn BluetoothDevice::set_onserviceremoved(
  self : BluetoothDevice,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onserviceremoved = value }

///|
/// BluetoothManufacturerDataMap interface
pub type BluetoothManufacturerDataMap

///|
pub extern "js" fn BluetoothManufacturerDataMap::to_js_value(
  self : BluetoothManufacturerDataMap,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothManufacturerDataMap (unchecked)
pub extern "js" fn BluetoothManufacturerDataMap::from_js_value(
  v : JsValue,
) -> BluetoothManufacturerDataMap =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothManufacturerDataMap (checked with instanceof)
pub extern "js" fn BluetoothManufacturerDataMap::from_js_value_opt(
  v : JsValue,
) -> BluetoothManufacturerDataMap? =
  #| (v) => (v instanceof BluetoothManufacturerDataMap) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothManufacturerDataMap (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_manufacturer_data_map(
  self : JsValue,
) -> BluetoothManufacturerDataMap? =
  #| (self) => (self instanceof BluetoothManufacturerDataMap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothManufacturerDataMap (unchecked)
pub extern "js" fn JsValue::to_bluetooth_manufacturer_data_map(
  self : JsValue,
) -> BluetoothManufacturerDataMap =
  #| (self) => self

///|
pub extern "js" fn BluetoothManufacturerDataMap::get(
  self : BluetoothManufacturerDataMap,
  key : Int,
) -> DataView? =
  #| (self, key) => { const v = self.get(key); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn BluetoothManufacturerDataMap::has(
  self : BluetoothManufacturerDataMap,
  key : Int,
) -> Bool =
  #| (self, key) => self.has(key)

///|
/// BluetoothServiceDataMap interface
pub type BluetoothServiceDataMap

///|
pub extern "js" fn BluetoothServiceDataMap::to_js_value(
  self : BluetoothServiceDataMap,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothServiceDataMap (unchecked)
pub extern "js" fn BluetoothServiceDataMap::from_js_value(
  v : JsValue,
) -> BluetoothServiceDataMap =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothServiceDataMap (checked with instanceof)
pub extern "js" fn BluetoothServiceDataMap::from_js_value_opt(
  v : JsValue,
) -> BluetoothServiceDataMap? =
  #| (v) => (v instanceof BluetoothServiceDataMap) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothServiceDataMap (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_service_data_map(
  self : JsValue,
) -> BluetoothServiceDataMap? =
  #| (self) => (self instanceof BluetoothServiceDataMap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothServiceDataMap (unchecked)
pub extern "js" fn JsValue::to_bluetooth_service_data_map(
  self : JsValue,
) -> BluetoothServiceDataMap =
  #| (self) => self

///|
pub extern "js" fn BluetoothServiceDataMap::get(
  self : BluetoothServiceDataMap,
  key : UUID,
) -> DataView? =
  #| (self, key) => { const v = self.get(key); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn BluetoothServiceDataMap::has(
  self : BluetoothServiceDataMap,
  key : UUID,
) -> Bool =
  #| (self, key) => self.has(key)

///|
/// BluetoothAdvertisingEvent interface
pub type BluetoothAdvertisingEvent

///|
pub extern "js" fn BluetoothAdvertisingEvent::to_js_value(
  self : BluetoothAdvertisingEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothAdvertisingEvent (unchecked)
pub extern "js" fn BluetoothAdvertisingEvent::from_js_value(
  v : JsValue,
) -> BluetoothAdvertisingEvent =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothAdvertisingEvent (checked with instanceof)
pub extern "js" fn BluetoothAdvertisingEvent::from_js_value_opt(
  v : JsValue,
) -> BluetoothAdvertisingEvent? =
  #| (v) => (v instanceof BluetoothAdvertisingEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothAdvertisingEvent (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_advertising_event(
  self : JsValue,
) -> BluetoothAdvertisingEvent? =
  #| (self) => (self instanceof BluetoothAdvertisingEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothAdvertisingEvent (unchecked)
pub extern "js" fn JsValue::to_bluetooth_advertising_event(
  self : JsValue,
) -> BluetoothAdvertisingEvent =
  #| (self) => self

///|
pub extern "js" fn BluetoothAdvertisingEvent::to_event(
  self : BluetoothAdvertisingEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn BluetoothAdvertisingEvent::new(
  type_ : String,
  init_ : BluetoothAdvertisingEventInit,
) -> BluetoothAdvertisingEvent =
  #| (type_, init_) => new BluetoothAdvertisingEvent(type_, init_)

///|
pub extern "js" fn BluetoothAdvertisingEvent::get_device(
  self : BluetoothAdvertisingEvent,
) -> BluetoothDevice =
  #| (self) => self.device

///|
pub extern "js" fn BluetoothAdvertisingEvent::get_uuids(
  self : BluetoothAdvertisingEvent,
) -> JsValue =
  #| (self) => self.uuids

///|
pub extern "js" fn BluetoothAdvertisingEvent::get_name(
  self : BluetoothAdvertisingEvent,
) -> String? =
  #| (self) => { const v = self.name; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn BluetoothAdvertisingEvent::get_appearance(
  self : BluetoothAdvertisingEvent,
) -> Int? =
  #| (self) => { const v = self.appearance; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn BluetoothAdvertisingEvent::get_tx_power(
  self : BluetoothAdvertisingEvent,
) -> Int? =
  #| (self) => { const v = self.txPower; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn BluetoothAdvertisingEvent::get_rssi(
  self : BluetoothAdvertisingEvent,
) -> Int? =
  #| (self) => { const v = self.rssi; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn BluetoothAdvertisingEvent::get_manufacturer_data(
  self : BluetoothAdvertisingEvent,
) -> BluetoothManufacturerDataMap =
  #| (self) => self.manufacturerData

///|
pub extern "js" fn BluetoothAdvertisingEvent::get_service_data(
  self : BluetoothAdvertisingEvent,
) -> BluetoothServiceDataMap =
  #| (self) => self.serviceData

///|
/// BluetoothRemoteGATTServer interface
pub type BluetoothRemoteGATTServer

///|
pub extern "js" fn BluetoothRemoteGATTServer::to_js_value(
  self : BluetoothRemoteGATTServer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothRemoteGATTServer (unchecked)
pub extern "js" fn BluetoothRemoteGATTServer::from_js_value(
  v : JsValue,
) -> BluetoothRemoteGATTServer =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothRemoteGATTServer (checked with instanceof)
pub extern "js" fn BluetoothRemoteGATTServer::from_js_value_opt(
  v : JsValue,
) -> BluetoothRemoteGATTServer? =
  #| (v) => (v instanceof BluetoothRemoteGATTServer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothRemoteGATTServer (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_remote_gatt_server(
  self : JsValue,
) -> BluetoothRemoteGATTServer? =
  #| (self) => (self instanceof BluetoothRemoteGATTServer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothRemoteGATTServer (unchecked)
pub extern "js" fn JsValue::to_bluetooth_remote_gatt_server(
  self : JsValue,
) -> BluetoothRemoteGATTServer =
  #| (self) => self

///|
pub extern "js" fn BluetoothRemoteGATTServer::get_device(
  self : BluetoothRemoteGATTServer,
) -> BluetoothDevice =
  #| (self) => self.device

///|
pub extern "js" fn BluetoothRemoteGATTServer::get_connected(
  self : BluetoothRemoteGATTServer,
) -> Bool =
  #| (self) => self.connected

///|
pub extern "js" fn BluetoothRemoteGATTServer::connect(
  self : BluetoothRemoteGATTServer,
) -> Promise[BluetoothRemoteGATTServer] =
  #| (self) => self.connect()

///|
pub extern "js" fn BluetoothRemoteGATTServer::disconnect(
  self : BluetoothRemoteGATTServer,
) -> Unit =
  #| (self) => self.disconnect()

///|
pub extern "js" fn BluetoothRemoteGATTServer::get_primary_service(
  self : BluetoothRemoteGATTServer,
  service : BluetoothServiceUUID,
) -> Promise[BluetoothRemoteGATTService] =
  #| (self, service) => self.getPrimaryService(service)

///|
pub extern "js" fn BluetoothRemoteGATTServer::get_primary_services(
  self : BluetoothRemoteGATTServer,
) -> Promise[Array[BluetoothRemoteGATTService]] =
  #| (self) => self.getPrimaryServices()

///|
pub extern "js" fn BluetoothRemoteGATTServer::get_primary_services_with_service(
  self : BluetoothRemoteGATTServer,
  service : BluetoothServiceUUID,
) -> Promise[Array[BluetoothRemoteGATTService]] =
  #| (self, service) => self.getPrimaryServices(service)

///|
/// BluetoothRemoteGATTService interface
pub type BluetoothRemoteGATTService

///|
pub extern "js" fn BluetoothRemoteGATTService::to_js_value(
  self : BluetoothRemoteGATTService,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothRemoteGATTService (unchecked)
pub extern "js" fn BluetoothRemoteGATTService::from_js_value(
  v : JsValue,
) -> BluetoothRemoteGATTService =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothRemoteGATTService (checked with instanceof)
pub extern "js" fn BluetoothRemoteGATTService::from_js_value_opt(
  v : JsValue,
) -> BluetoothRemoteGATTService? =
  #| (v) => (v instanceof BluetoothRemoteGATTService) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothRemoteGATTService (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_remote_gatt_service(
  self : JsValue,
) -> BluetoothRemoteGATTService? =
  #| (self) => (self instanceof BluetoothRemoteGATTService) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothRemoteGATTService (unchecked)
pub extern "js" fn JsValue::to_bluetooth_remote_gatt_service(
  self : JsValue,
) -> BluetoothRemoteGATTService =
  #| (self) => self

///|
pub extern "js" fn BluetoothRemoteGATTService::to_event_target(
  self : BluetoothRemoteGATTService,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn BluetoothRemoteGATTService::get_device(
  self : BluetoothRemoteGATTService,
) -> BluetoothDevice =
  #| (self) => self.device

///|
pub extern "js" fn BluetoothRemoteGATTService::get_uuid(
  self : BluetoothRemoteGATTService,
) -> UUID =
  #| (self) => self.uuid

///|
pub extern "js" fn BluetoothRemoteGATTService::get_is_primary(
  self : BluetoothRemoteGATTService,
) -> Bool =
  #| (self) => self.isPrimary

///|
pub extern "js" fn BluetoothRemoteGATTService::get_characteristic(
  self : BluetoothRemoteGATTService,
  characteristic : BluetoothCharacteristicUUID,
) -> Promise[BluetoothRemoteGATTCharacteristic] =
  #| (self, characteristic) => self.getCharacteristic(characteristic)

///|
pub extern "js" fn BluetoothRemoteGATTService::get_characteristics(
  self : BluetoothRemoteGATTService,
) -> Promise[Array[BluetoothRemoteGATTCharacteristic]] =
  #| (self) => self.getCharacteristics()

///|
pub extern "js" fn BluetoothRemoteGATTService::get_characteristics_with_characteristic(
  self : BluetoothRemoteGATTService,
  characteristic : BluetoothCharacteristicUUID,
) -> Promise[Array[BluetoothRemoteGATTCharacteristic]] =
  #| (self, characteristic) => self.getCharacteristics(characteristic)

///|
pub extern "js" fn BluetoothRemoteGATTService::get_included_service(
  self : BluetoothRemoteGATTService,
  service : BluetoothServiceUUID,
) -> Promise[BluetoothRemoteGATTService] =
  #| (self, service) => self.getIncludedService(service)

///|
pub extern "js" fn BluetoothRemoteGATTService::get_included_services(
  self : BluetoothRemoteGATTService,
) -> Promise[Array[BluetoothRemoteGATTService]] =
  #| (self) => self.getIncludedServices()

///|
pub extern "js" fn BluetoothRemoteGATTService::get_included_services_with_service(
  self : BluetoothRemoteGATTService,
  service : BluetoothServiceUUID,
) -> Promise[Array[BluetoothRemoteGATTService]] =
  #| (self, service) => self.getIncludedServices(service)

///|
pub extern "js" fn BluetoothRemoteGATTService::get_oncharacteristicvaluechanged(
  self : BluetoothRemoteGATTService,
) -> EventHandler =
  #| (self) => self.oncharacteristicvaluechanged

///|
pub extern "js" fn BluetoothRemoteGATTService::set_oncharacteristicvaluechanged(
  self : BluetoothRemoteGATTService,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncharacteristicvaluechanged = value }

///|
pub extern "js" fn BluetoothRemoteGATTService::get_onserviceadded(
  self : BluetoothRemoteGATTService,
) -> EventHandler =
  #| (self) => self.onserviceadded

///|
pub extern "js" fn BluetoothRemoteGATTService::set_onserviceadded(
  self : BluetoothRemoteGATTService,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onserviceadded = value }

///|
pub extern "js" fn BluetoothRemoteGATTService::get_onservicechanged(
  self : BluetoothRemoteGATTService,
) -> EventHandler =
  #| (self) => self.onservicechanged

///|
pub extern "js" fn BluetoothRemoteGATTService::set_onservicechanged(
  self : BluetoothRemoteGATTService,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onservicechanged = value }

///|
pub extern "js" fn BluetoothRemoteGATTService::get_onserviceremoved(
  self : BluetoothRemoteGATTService,
) -> EventHandler =
  #| (self) => self.onserviceremoved

///|
pub extern "js" fn BluetoothRemoteGATTService::set_onserviceremoved(
  self : BluetoothRemoteGATTService,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onserviceremoved = value }

///|
/// BluetoothRemoteGATTCharacteristic interface
pub type BluetoothRemoteGATTCharacteristic

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::to_js_value(
  self : BluetoothRemoteGATTCharacteristic,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothRemoteGATTCharacteristic (unchecked)
pub extern "js" fn BluetoothRemoteGATTCharacteristic::from_js_value(
  v : JsValue,
) -> BluetoothRemoteGATTCharacteristic =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothRemoteGATTCharacteristic (checked with instanceof)
pub extern "js" fn BluetoothRemoteGATTCharacteristic::from_js_value_opt(
  v : JsValue,
) -> BluetoothRemoteGATTCharacteristic? =
  #| (v) => (v instanceof BluetoothRemoteGATTCharacteristic) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothRemoteGATTCharacteristic (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_remote_gatt_characteristic(
  self : JsValue,
) -> BluetoothRemoteGATTCharacteristic? =
  #| (self) => (self instanceof BluetoothRemoteGATTCharacteristic) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothRemoteGATTCharacteristic (unchecked)
pub extern "js" fn JsValue::to_bluetooth_remote_gatt_characteristic(
  self : JsValue,
) -> BluetoothRemoteGATTCharacteristic =
  #| (self) => self

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::to_event_target(
  self : BluetoothRemoteGATTCharacteristic,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::get_service(
  self : BluetoothRemoteGATTCharacteristic,
) -> BluetoothRemoteGATTService =
  #| (self) => self.service

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::get_uuid(
  self : BluetoothRemoteGATTCharacteristic,
) -> UUID =
  #| (self) => self.uuid

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::get_properties(
  self : BluetoothRemoteGATTCharacteristic,
) -> BluetoothCharacteristicProperties =
  #| (self) => self.properties

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::get_value(
  self : BluetoothRemoteGATTCharacteristic,
) -> DataView? =
  #| (self) => { const v = self.value; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::get_descriptor(
  self : BluetoothRemoteGATTCharacteristic,
  descriptor : BluetoothDescriptorUUID,
) -> Promise[BluetoothRemoteGATTDescriptor] =
  #| (self, descriptor) => self.getDescriptor(descriptor)

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::get_descriptors(
  self : BluetoothRemoteGATTCharacteristic,
) -> Promise[Array[BluetoothRemoteGATTDescriptor]] =
  #| (self) => self.getDescriptors()

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::get_descriptors_with_descriptor(
  self : BluetoothRemoteGATTCharacteristic,
  descriptor : BluetoothDescriptorUUID,
) -> Promise[Array[BluetoothRemoteGATTDescriptor]] =
  #| (self, descriptor) => self.getDescriptors(descriptor)

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::read_value(
  self : BluetoothRemoteGATTCharacteristic,
) -> Promise[DataView] =
  #| (self) => self.readValue()

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::write_value(
  self : BluetoothRemoteGATTCharacteristic,
  value : BufferSource,
) -> Promise[Unit] =
  #| (self, value) => self.writeValue(value)

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::write_value_with_response(
  self : BluetoothRemoteGATTCharacteristic,
  value : BufferSource,
) -> Promise[Unit] =
  #| (self, value) => self.writeValueWithResponse(value)

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::write_value_without_response(
  self : BluetoothRemoteGATTCharacteristic,
  value : BufferSource,
) -> Promise[Unit] =
  #| (self, value) => self.writeValueWithoutResponse(value)

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::start_notifications(
  self : BluetoothRemoteGATTCharacteristic,
) -> Promise[BluetoothRemoteGATTCharacteristic] =
  #| (self) => self.startNotifications()

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::stop_notifications(
  self : BluetoothRemoteGATTCharacteristic,
) -> Promise[BluetoothRemoteGATTCharacteristic] =
  #| (self) => self.stopNotifications()

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::get_oncharacteristicvaluechanged(
  self : BluetoothRemoteGATTCharacteristic,
) -> EventHandler =
  #| (self) => self.oncharacteristicvaluechanged

///|
pub extern "js" fn BluetoothRemoteGATTCharacteristic::set_oncharacteristicvaluechanged(
  self : BluetoothRemoteGATTCharacteristic,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncharacteristicvaluechanged = value }

///|
/// BluetoothCharacteristicProperties interface
pub type BluetoothCharacteristicProperties

///|
pub extern "js" fn BluetoothCharacteristicProperties::to_js_value(
  self : BluetoothCharacteristicProperties,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothCharacteristicProperties (unchecked)
pub extern "js" fn BluetoothCharacteristicProperties::from_js_value(
  v : JsValue,
) -> BluetoothCharacteristicProperties =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothCharacteristicProperties (checked with instanceof)
pub extern "js" fn BluetoothCharacteristicProperties::from_js_value_opt(
  v : JsValue,
) -> BluetoothCharacteristicProperties? =
  #| (v) => (v instanceof BluetoothCharacteristicProperties) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothCharacteristicProperties (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_characteristic_properties(
  self : JsValue,
) -> BluetoothCharacteristicProperties? =
  #| (self) => (self instanceof BluetoothCharacteristicProperties) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothCharacteristicProperties (unchecked)
pub extern "js" fn JsValue::to_bluetooth_characteristic_properties(
  self : JsValue,
) -> BluetoothCharacteristicProperties =
  #| (self) => self

///|
pub extern "js" fn BluetoothCharacteristicProperties::get_broadcast(
  self : BluetoothCharacteristicProperties,
) -> Bool =
  #| (self) => self.broadcast

///|
pub extern "js" fn BluetoothCharacteristicProperties::get_read(
  self : BluetoothCharacteristicProperties,
) -> Bool =
  #| (self) => self.read

///|
pub extern "js" fn BluetoothCharacteristicProperties::get_write_without_response(
  self : BluetoothCharacteristicProperties,
) -> Bool =
  #| (self) => self.writeWithoutResponse

///|
pub extern "js" fn BluetoothCharacteristicProperties::get_write(
  self : BluetoothCharacteristicProperties,
) -> Bool =
  #| (self) => self.write

///|
pub extern "js" fn BluetoothCharacteristicProperties::get_notify(
  self : BluetoothCharacteristicProperties,
) -> Bool =
  #| (self) => self.notify

///|
pub extern "js" fn BluetoothCharacteristicProperties::get_indicate(
  self : BluetoothCharacteristicProperties,
) -> Bool =
  #| (self) => self.indicate

///|
pub extern "js" fn BluetoothCharacteristicProperties::get_authenticated_signed_writes(
  self : BluetoothCharacteristicProperties,
) -> Bool =
  #| (self) => self.authenticatedSignedWrites

///|
pub extern "js" fn BluetoothCharacteristicProperties::get_reliable_write(
  self : BluetoothCharacteristicProperties,
) -> Bool =
  #| (self) => self.reliableWrite

///|
pub extern "js" fn BluetoothCharacteristicProperties::get_writable_auxiliaries(
  self : BluetoothCharacteristicProperties,
) -> Bool =
  #| (self) => self.writableAuxiliaries

///|
/// BluetoothRemoteGATTDescriptor interface
pub type BluetoothRemoteGATTDescriptor

///|
pub extern "js" fn BluetoothRemoteGATTDescriptor::to_js_value(
  self : BluetoothRemoteGATTDescriptor,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothRemoteGATTDescriptor (unchecked)
pub extern "js" fn BluetoothRemoteGATTDescriptor::from_js_value(
  v : JsValue,
) -> BluetoothRemoteGATTDescriptor =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothRemoteGATTDescriptor (checked with instanceof)
pub extern "js" fn BluetoothRemoteGATTDescriptor::from_js_value_opt(
  v : JsValue,
) -> BluetoothRemoteGATTDescriptor? =
  #| (v) => (v instanceof BluetoothRemoteGATTDescriptor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothRemoteGATTDescriptor (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_remote_gatt_descriptor(
  self : JsValue,
) -> BluetoothRemoteGATTDescriptor? =
  #| (self) => (self instanceof BluetoothRemoteGATTDescriptor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothRemoteGATTDescriptor (unchecked)
pub extern "js" fn JsValue::to_bluetooth_remote_gatt_descriptor(
  self : JsValue,
) -> BluetoothRemoteGATTDescriptor =
  #| (self) => self

///|
pub extern "js" fn BluetoothRemoteGATTDescriptor::get_characteristic(
  self : BluetoothRemoteGATTDescriptor,
) -> BluetoothRemoteGATTCharacteristic =
  #| (self) => self.characteristic

///|
pub extern "js" fn BluetoothRemoteGATTDescriptor::get_uuid(
  self : BluetoothRemoteGATTDescriptor,
) -> UUID =
  #| (self) => self.uuid

///|
pub extern "js" fn BluetoothRemoteGATTDescriptor::get_value(
  self : BluetoothRemoteGATTDescriptor,
) -> DataView? =
  #| (self) => { const v = self.value; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn BluetoothRemoteGATTDescriptor::read_value(
  self : BluetoothRemoteGATTDescriptor,
) -> Promise[DataView] =
  #| (self) => self.readValue()

///|
pub extern "js" fn BluetoothRemoteGATTDescriptor::write_value(
  self : BluetoothRemoteGATTDescriptor,
  value : BufferSource,
) -> Promise[Unit] =
  #| (self, value) => self.writeValue(value)

///|
/// BluetoothUUID interface
pub type BluetoothUUID

///|
pub extern "js" fn BluetoothUUID::to_js_value(self : BluetoothUUID) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BluetoothUUID (unchecked)
pub extern "js" fn BluetoothUUID::from_js_value(v : JsValue) -> BluetoothUUID =
  #| (v) => v

///|
/// Safely cast JsValue to BluetoothUUID (checked with instanceof)
pub extern "js" fn BluetoothUUID::from_js_value_opt(
  v : JsValue,
) -> BluetoothUUID? =
  #| (v) => (v instanceof BluetoothUUID) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BluetoothUUID (checked with instanceof)
pub extern "js" fn JsValue::as_bluetooth_uuid(self : JsValue) -> BluetoothUUID? =
  #| (self) => (self instanceof BluetoothUUID) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BluetoothUUID (unchecked)
pub extern "js" fn JsValue::to_bluetooth_uuid(self : JsValue) -> BluetoothUUID =
  #| (self) => self

///|
pub extern "js" fn BluetoothUUID::get_service(name : StringOrInt) -> UUID =
  #| (name) => BluetoothUUID.getService(name)

///|
pub extern "js" fn BluetoothUUID::get_characteristic(
  name : StringOrInt,
) -> UUID =
  #| (name) => BluetoothUUID.getCharacteristic(name)

///|
pub extern "js" fn BluetoothUUID::get_descriptor(name : StringOrInt) -> UUID =
  #| (name) => BluetoothUUID.getDescriptor(name)

///|
pub extern "js" fn BluetoothUUID::canonical_uuid(alias_ : Int) -> UUID =
  #| (alias_) => BluetoothUUID.canonicalUUID(alias_)
