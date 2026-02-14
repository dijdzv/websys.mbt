// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webusb

///|
/// USBTransferStatus enum
pub(all) enum USBTransferStatus {
  Ok
  Stall
  Babble
} derive(Eq, Show)

///|
/// Convert to string value
pub fn USBTransferStatus::to_string(self : USBTransferStatus) -> String {
  match self {
    USBTransferStatus::Ok => "ok"
    USBTransferStatus::Stall => "stall"
    USBTransferStatus::Babble => "babble"
  }
}

///|
/// Parse from string value
pub fn USBTransferStatus::from_string(s : String) -> USBTransferStatus? {
  match s {
    "ok" => Some(USBTransferStatus::Ok)
    "stall" => Some(USBTransferStatus::Stall)
    "babble" => Some(USBTransferStatus::Babble)
    _ => None
  }
}

///|
/// USBRequestType enum
pub(all) enum USBRequestType {
  Standard
  Class
  Vendor
} derive(Eq, Show)

///|
/// Convert to string value
pub fn USBRequestType::to_string(self : USBRequestType) -> String {
  match self {
    USBRequestType::Standard => "standard"
    USBRequestType::Class => "class"
    USBRequestType::Vendor => "vendor"
  }
}

///|
/// Parse from string value
pub fn USBRequestType::from_string(s : String) -> USBRequestType? {
  match s {
    "standard" => Some(USBRequestType::Standard)
    "class" => Some(USBRequestType::Class)
    "vendor" => Some(USBRequestType::Vendor)
    _ => None
  }
}

///|
/// USBRecipient enum
pub(all) enum USBRecipient {
  Device
  Interface
  Endpoint
  Other
} derive(Eq, Show)

///|
/// Convert to string value
pub fn USBRecipient::to_string(self : USBRecipient) -> String {
  match self {
    USBRecipient::Device => "device"
    USBRecipient::Interface => "interface"
    USBRecipient::Endpoint => "endpoint"
    USBRecipient::Other => "other"
  }
}

///|
/// Parse from string value
pub fn USBRecipient::from_string(s : String) -> USBRecipient? {
  match s {
    "device" => Some(USBRecipient::Device)
    "interface" => Some(USBRecipient::Interface)
    "endpoint" => Some(USBRecipient::Endpoint)
    "other" => Some(USBRecipient::Other)
    _ => None
  }
}

///|
/// USBDirection enum
pub(all) enum USBDirection {
  In
  Out
} derive(Eq, Show)

///|
/// Convert to string value
pub fn USBDirection::to_string(self : USBDirection) -> String {
  match self {
    USBDirection::In => "in"
    USBDirection::Out => "out"
  }
}

///|
/// Parse from string value
pub fn USBDirection::from_string(s : String) -> USBDirection? {
  match s {
    "in" => Some(USBDirection::In)
    "out" => Some(USBDirection::Out)
    _ => None
  }
}

///|
/// USBEndpointType enum
pub(all) enum USBEndpointType {
  Bulk
  Interrupt
  Isochronous
} derive(Eq, Show)

///|
/// Convert to string value
pub fn USBEndpointType::to_string(self : USBEndpointType) -> String {
  match self {
    USBEndpointType::Bulk => "bulk"
    USBEndpointType::Interrupt => "interrupt"
    USBEndpointType::Isochronous => "isochronous"
  }
}

///|
/// Parse from string value
pub fn USBEndpointType::from_string(s : String) -> USBEndpointType? {
  match s {
    "bulk" => Some(USBEndpointType::Bulk)
    "interrupt" => Some(USBEndpointType::Interrupt)
    "isochronous" => Some(USBEndpointType::Isochronous)
    _ => None
  }
}

///|
/// USBDeviceFilter dictionary
pub(all) struct USBDeviceFilter {
  vendorId : Int?
  productId : Int?
  classCode : Int?
  subclassCode : Int?
  protocolCode : Int?
  serialNumber : String?
}

///|
/// Create a new USBDeviceFilter with default values
pub fn USBDeviceFilter::default() -> USBDeviceFilter {
  USBDeviceFilter::{
    vendorId: None,
    productId: None,
    classCode: None,
    subclassCode: None,
    protocolCode: None,
    serialNumber: None,
  }
}

///|
extern "js" fn USBDeviceFilter::to_js_ffi(self : USBDeviceFilter) -> JsValue =
  #| (self) => ({
  #|   vendorId: self.vendorId,
  #|   productId: self.productId,
  #|   classCode: self.classCode,
  #|   subclassCode: self.subclassCode,
  #|   protocolCode: self.protocolCode,
  #|   serialNumber: self.serialNumber
  #| })

///|
/// Convert to JsValue
pub fn USBDeviceFilter::to_js(self : USBDeviceFilter) -> JsValue {
  USBDeviceFilter::to_js_ffi(self)
}

///|
extern "js" fn USBDeviceFilter::from_js_ffi(value : JsValue) -> USBDeviceFilter =
  #| (v) => ({
  #|   vendorId: v.vendorId,
  #|   productId: v.productId,
  #|   classCode: v.classCode,
  #|   subclassCode: v.subclassCode,
  #|   protocolCode: v.protocolCode,
  #|   serialNumber: v.serialNumber
  #| })

///|
/// Convert from JsValue
pub fn USBDeviceFilter::from_js(value : JsValue) -> USBDeviceFilter {
  USBDeviceFilter::from_js_ffi(value)
}

///|
/// USBDeviceRequestOptions dictionary
pub(all) struct USBDeviceRequestOptions {
  filters : Array[USBDeviceFilter]
  exclusionFilters : Array[USBDeviceFilter]?
}

///|
/// Create a new USBDeviceRequestOptions with default values
pub fn USBDeviceRequestOptions::default() -> USBDeviceRequestOptions {
  USBDeviceRequestOptions::{ filters: [], exclusionFilters: None }
}

///|
extern "js" fn USBDeviceRequestOptions::to_js_ffi(
  self : USBDeviceRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   filters: self.filters,
  #|   exclusionFilters: ((() => { const v = self.exclusionFilters; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn USBDeviceRequestOptions::to_js(
  self : USBDeviceRequestOptions,
) -> JsValue {
  USBDeviceRequestOptions::to_js_ffi(self)
}

///|
extern "js" fn USBDeviceRequestOptions::from_js_ffi(
  value : JsValue,
) -> USBDeviceRequestOptions =
  #| (v) => ({
  #|   filters: v.filters,
  #|   exclusionFilters: (v.exclusionFilters === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exclusionFilters })
  #| })

///|
/// Convert from JsValue
pub fn USBDeviceRequestOptions::from_js(
  value : JsValue,
) -> USBDeviceRequestOptions {
  USBDeviceRequestOptions::from_js_ffi(value)
}

///|
/// USBConnectionEventInit dictionary
pub(all) struct USBConnectionEventInit {
  device : USBDevice
}

///|
/// Create a new USBConnectionEventInit
pub fn USBConnectionEventInit::new(
  device~ : USBDevice,
) -> USBConnectionEventInit {
  USBConnectionEventInit::{ device, }
}

///|
extern "js" fn USBConnectionEventInit::to_js_ffi(
  self : USBConnectionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   device: self.device
  #| })

///|
/// Convert to JsValue
pub fn USBConnectionEventInit::to_js(self : USBConnectionEventInit) -> JsValue {
  USBConnectionEventInit::to_js_ffi(self)
}

///|
extern "js" fn USBConnectionEventInit::from_js_ffi(
  value : JsValue,
) -> USBConnectionEventInit =
  #| (v) => ({
  #|   device: v.device
  #| })

///|
/// Convert from JsValue
pub fn USBConnectionEventInit::from_js(
  value : JsValue,
) -> USBConnectionEventInit {
  USBConnectionEventInit::from_js_ffi(value)
}

///|
/// USBControlTransferParameters dictionary
pub(all) struct USBControlTransferParameters {
  requestType : USBRequestType
  recipient : USBRecipient
  request : Int
  value : Int
  index : Int
}

///|
/// Create a new USBControlTransferParameters
pub fn USBControlTransferParameters::new(
  requestType~ : USBRequestType,
  recipient~ : USBRecipient,
) -> USBControlTransferParameters {
  USBControlTransferParameters::{
    requestType,
    recipient,
    request: 0,
    value: 0,
    index: 0,
  }
}

///|
extern "js" fn USBControlTransferParameters::to_js_ffi(
  self : USBControlTransferParameters,
) -> JsValue =
  #| (self) => ({
  #|   requestType: ['standard', 'class', 'vendor'][self.requestType],
  #|   recipient: ['device', 'interface', 'endpoint', 'other'][self.recipient],
  #|   request: self.request,
  #|   value: self.value,
  #|   index: self.index
  #| })

///|
/// Convert to JsValue
pub fn USBControlTransferParameters::to_js(
  self : USBControlTransferParameters,
) -> JsValue {
  USBControlTransferParameters::to_js_ffi(self)
}

///|
extern "js" fn USBControlTransferParameters::from_js_ffi(
  value : JsValue,
) -> USBControlTransferParameters =
  #| (v) => ({
  #|   requestType: ['standard', 'class', 'vendor'].indexOf(v.requestType),
  #|   recipient: ['device', 'interface', 'endpoint', 'other'].indexOf(v.recipient),
  #|   request: v.request,
  #|   value: v.value,
  #|   index: v.index
  #| })

///|
/// Convert from JsValue
pub fn USBControlTransferParameters::from_js(
  value : JsValue,
) -> USBControlTransferParameters {
  USBControlTransferParameters::from_js_ffi(value)
}

///|
/// USBBlocklistEntry dictionary
pub(all) struct USBBlocklistEntry {
  idVendor : Int
  idProduct : Int
  bcdDevice : Int
}

///|
/// Create a new USBBlocklistEntry with default values
pub fn USBBlocklistEntry::default() -> USBBlocklistEntry {
  USBBlocklistEntry::{ idVendor: 0, idProduct: 0, bcdDevice: 0 }
}

///|
extern "js" fn USBBlocklistEntry::to_js_ffi(
  self : USBBlocklistEntry,
) -> JsValue =
  #| (self) => ({
  #|   idVendor: self.idVendor,
  #|   idProduct: self.idProduct,
  #|   bcdDevice: self.bcdDevice
  #| })

///|
/// Convert to JsValue
pub fn USBBlocklistEntry::to_js(self : USBBlocklistEntry) -> JsValue {
  USBBlocklistEntry::to_js_ffi(self)
}

///|
extern "js" fn USBBlocklistEntry::from_js_ffi(
  value : JsValue,
) -> USBBlocklistEntry =
  #| (v) => ({
  #|   idVendor: v.idVendor,
  #|   idProduct: v.idProduct,
  #|   bcdDevice: v.bcdDevice
  #| })

///|
/// Convert from JsValue
pub fn USBBlocklistEntry::from_js(value : JsValue) -> USBBlocklistEntry {
  USBBlocklistEntry::from_js_ffi(value)
}

///|
/// USBPermissionDescriptor dictionary
pub(all) struct USBPermissionDescriptor {
  filters : Array[USBDeviceFilter]?
  exclusionFilters : Array[USBDeviceFilter]?
}

///|
/// Create a new USBPermissionDescriptor with default values
pub fn USBPermissionDescriptor::default() -> USBPermissionDescriptor {
  USBPermissionDescriptor::{ filters: None, exclusionFilters: None }
}

///|
extern "js" fn USBPermissionDescriptor::to_js_ffi(
  self : USBPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   filters: ((() => { const v = self.filters; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   exclusionFilters: ((() => { const v = self.exclusionFilters; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn USBPermissionDescriptor::to_js(
  self : USBPermissionDescriptor,
) -> JsValue {
  USBPermissionDescriptor::to_js_ffi(self)
}

///|
extern "js" fn USBPermissionDescriptor::from_js_ffi(
  value : JsValue,
) -> USBPermissionDescriptor =
  #| (v) => ({
  #|   filters: (v.filters === undefined ? { $tag: 0 } : { $tag: 1, _0: v.filters }),
  #|   exclusionFilters: (v.exclusionFilters === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exclusionFilters })
  #| })

///|
/// Convert from JsValue
pub fn USBPermissionDescriptor::from_js(
  value : JsValue,
) -> USBPermissionDescriptor {
  USBPermissionDescriptor::from_js_ffi(value)
}

///|
/// AllowedUSBDevice dictionary
pub(all) struct AllowedUSBDevice {
  vendorId : Int
  productId : Int
  serialNumber : String?
}

///|
/// Create a new AllowedUSBDevice with default values
pub fn AllowedUSBDevice::default() -> AllowedUSBDevice {
  AllowedUSBDevice::{ vendorId: 0, productId: 0, serialNumber: None }
}

///|
extern "js" fn AllowedUSBDevice::to_js_ffi(self : AllowedUSBDevice) -> JsValue =
  #| (self) => ({
  #|   vendorId: self.vendorId,
  #|   productId: self.productId,
  #|   serialNumber: self.serialNumber
  #| })

///|
/// Convert to JsValue
pub fn AllowedUSBDevice::to_js(self : AllowedUSBDevice) -> JsValue {
  AllowedUSBDevice::to_js_ffi(self)
}

///|
extern "js" fn AllowedUSBDevice::from_js_ffi(
  value : JsValue,
) -> AllowedUSBDevice =
  #| (v) => ({
  #|   vendorId: v.vendorId,
  #|   productId: v.productId,
  #|   serialNumber: v.serialNumber
  #| })

///|
/// Convert from JsValue
pub fn AllowedUSBDevice::from_js(value : JsValue) -> AllowedUSBDevice {
  AllowedUSBDevice::from_js_ffi(value)
}

///|
/// USBPermissionStorage dictionary
pub(all) struct USBPermissionStorage {
  allowedDevices : Array[AllowedUSBDevice]?
}

///|
/// Create a new USBPermissionStorage with default values
pub fn USBPermissionStorage::default() -> USBPermissionStorage {
  USBPermissionStorage::{ allowedDevices: None }
}

///|
extern "js" fn USBPermissionStorage::to_js_ffi(
  self : USBPermissionStorage,
) -> JsValue =
  #| (self) => ({
  #|   allowedDevices: ((() => { const v = self.allowedDevices; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn USBPermissionStorage::to_js(self : USBPermissionStorage) -> JsValue {
  USBPermissionStorage::to_js_ffi(self)
}

///|
extern "js" fn USBPermissionStorage::from_js_ffi(
  value : JsValue,
) -> USBPermissionStorage =
  #| (v) => ({
  #|   allowedDevices: (v.allowedDevices === undefined ? { $tag: 0 } : { $tag: 1, _0: v.allowedDevices })
  #| })

///|
/// Convert from JsValue
pub fn USBPermissionStorage::from_js(value : JsValue) -> USBPermissionStorage {
  USBPermissionStorage::from_js_ffi(value)
}

///|
/// USB interface
pub type USB

///|
pub extern "js" fn USB::to_js_value(self : USB) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USB (unchecked)
pub extern "js" fn USB::from_js_value(v : JsValue) -> USB =
  #| (v) => v

///|
/// Safely cast JsValue to USB (checked with instanceof)
pub extern "js" fn USB::from_js_value_opt(v : JsValue) -> USB? =
  #| (v) => (v instanceof USB) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USB (checked with instanceof)
pub extern "js" fn JsValue::as_usb(self : JsValue) -> USB? =
  #| (self) => (self instanceof USB) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USB (unchecked)
pub extern "js" fn JsValue::to_usb(self : JsValue) -> USB =
  #| (self) => self

///|
pub extern "js" fn USB::to_event_target(self : USB) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn USB::get_onconnect(self : USB) -> EventHandler =
  #| (self) => self.onconnect

///|
pub extern "js" fn USB::set_onconnect(self : USB, value : EventHandler) -> Unit =
  #| (self, value) => { self.onconnect = value }

///|
pub extern "js" fn USB::get_ondisconnect(self : USB) -> EventHandler =
  #| (self) => self.ondisconnect

///|
pub extern "js" fn USB::set_ondisconnect(
  self : USB,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondisconnect = value }

///|
pub extern "js" fn USB::get_devices(self : USB) -> Promise[Array[USBDevice]] =
  #| (self) => self.getDevices()

///|
extern "js" fn USB::request_device_ffi(
  self : USB,
  options : JsValue,
) -> Promise[USBDevice] =
  #| (self, options) => self.requestDevice(options)

///|
pub fn USB::request_device(
  self : USB,
  options : USBDeviceRequestOptions,
) -> Promise[USBDevice] {
  USB::request_device_ffi(self, options.to_js())
}

///|
/// USBConnectionEvent interface
pub type USBConnectionEvent

///|
pub extern "js" fn USBConnectionEvent::to_js_value(
  self : USBConnectionEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBConnectionEvent (unchecked)
pub extern "js" fn USBConnectionEvent::from_js_value(
  v : JsValue,
) -> USBConnectionEvent =
  #| (v) => v

///|
/// Safely cast JsValue to USBConnectionEvent (checked with instanceof)
pub extern "js" fn USBConnectionEvent::from_js_value_opt(
  v : JsValue,
) -> USBConnectionEvent? =
  #| (v) => (v instanceof USBConnectionEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBConnectionEvent (checked with instanceof)
pub extern "js" fn JsValue::as_usb_connection_event(
  self : JsValue,
) -> USBConnectionEvent? =
  #| (self) => (self instanceof USBConnectionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBConnectionEvent (unchecked)
pub extern "js" fn JsValue::to_usb_connection_event(
  self : JsValue,
) -> USBConnectionEvent =
  #| (self) => self

///|
pub extern "js" fn USBConnectionEvent::to_event(
  self : USBConnectionEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn USBConnectionEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> USBConnectionEvent =
  #| (type_, event_init_dict) => new USBConnectionEvent(type_, event_init_dict)

///|
pub fn USBConnectionEvent::new(
  type_ : String,
  event_init_dict : USBConnectionEventInit,
) -> USBConnectionEvent {
  USBConnectionEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn USBConnectionEvent::get_device(
  self : USBConnectionEvent,
) -> USBDevice =
  #| (self) => self.device

///|
/// USBInTransferResult interface
pub type USBInTransferResult

///|
pub extern "js" fn USBInTransferResult::to_js_value(
  self : USBInTransferResult,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBInTransferResult (unchecked)
pub extern "js" fn USBInTransferResult::from_js_value(
  v : JsValue,
) -> USBInTransferResult =
  #| (v) => v

///|
/// Safely cast JsValue to USBInTransferResult (checked with instanceof)
pub extern "js" fn USBInTransferResult::from_js_value_opt(
  v : JsValue,
) -> USBInTransferResult? =
  #| (v) => (v instanceof USBInTransferResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBInTransferResult (checked with instanceof)
pub extern "js" fn JsValue::as_usb_in_transfer_result(
  self : JsValue,
) -> USBInTransferResult? =
  #| (self) => (self instanceof USBInTransferResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBInTransferResult (unchecked)
pub extern "js" fn JsValue::to_usb_in_transfer_result(
  self : JsValue,
) -> USBInTransferResult =
  #| (self) => self

///|
pub extern "js" fn USBInTransferResult::new(
  status : USBTransferStatus,
) -> USBInTransferResult =
  #| (status) => new USBInTransferResult(['ok', 'stall', 'babble'][status])

///|
pub extern "js" fn USBInTransferResult::new_with_data(
  status : USBTransferStatus,
  data : DataView?,
) -> USBInTransferResult =
  #| (status, data) => new USBInTransferResult(['ok', 'stall', 'babble'][status], (data.$tag === 1 ? data._0 : null))

///|
pub extern "js" fn USBInTransferResult::get_data(
  self : USBInTransferResult,
) -> DataView? =
  #| (self) => (() => { const v = self.data; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn USBInTransferResult::get_status(
  self : USBInTransferResult,
) -> USBTransferStatus =
  #| (self) => ['ok', 'stall', 'babble'].indexOf(self.status)

///|
/// USBOutTransferResult interface
pub type USBOutTransferResult

///|
pub extern "js" fn USBOutTransferResult::to_js_value(
  self : USBOutTransferResult,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBOutTransferResult (unchecked)
pub extern "js" fn USBOutTransferResult::from_js_value(
  v : JsValue,
) -> USBOutTransferResult =
  #| (v) => v

///|
/// Safely cast JsValue to USBOutTransferResult (checked with instanceof)
pub extern "js" fn USBOutTransferResult::from_js_value_opt(
  v : JsValue,
) -> USBOutTransferResult? =
  #| (v) => (v instanceof USBOutTransferResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBOutTransferResult (checked with instanceof)
pub extern "js" fn JsValue::as_usb_out_transfer_result(
  self : JsValue,
) -> USBOutTransferResult? =
  #| (self) => (self instanceof USBOutTransferResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBOutTransferResult (unchecked)
pub extern "js" fn JsValue::to_usb_out_transfer_result(
  self : JsValue,
) -> USBOutTransferResult =
  #| (self) => self

///|
pub extern "js" fn USBOutTransferResult::new(
  status : USBTransferStatus,
) -> USBOutTransferResult =
  #| (status) => new USBOutTransferResult(['ok', 'stall', 'babble'][status])

///|
pub extern "js" fn USBOutTransferResult::new_with_bytes_written(
  status : USBTransferStatus,
  bytes_written : Int,
) -> USBOutTransferResult =
  #| (status, bytes_written) => new USBOutTransferResult(['ok', 'stall', 'babble'][status], bytes_written)

///|
pub extern "js" fn USBOutTransferResult::get_bytes_written(
  self : USBOutTransferResult,
) -> Int =
  #| (self) => self.bytesWritten

///|
pub extern "js" fn USBOutTransferResult::get_status(
  self : USBOutTransferResult,
) -> USBTransferStatus =
  #| (self) => ['ok', 'stall', 'babble'].indexOf(self.status)

///|
/// USBIsochronousInTransferPacket interface
pub type USBIsochronousInTransferPacket

///|
pub extern "js" fn USBIsochronousInTransferPacket::to_js_value(
  self : USBIsochronousInTransferPacket,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBIsochronousInTransferPacket (unchecked)
pub extern "js" fn USBIsochronousInTransferPacket::from_js_value(
  v : JsValue,
) -> USBIsochronousInTransferPacket =
  #| (v) => v

///|
/// Safely cast JsValue to USBIsochronousInTransferPacket (checked with instanceof)
pub extern "js" fn USBIsochronousInTransferPacket::from_js_value_opt(
  v : JsValue,
) -> USBIsochronousInTransferPacket? =
  #| (v) => (v instanceof USBIsochronousInTransferPacket) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBIsochronousInTransferPacket (checked with instanceof)
pub extern "js" fn JsValue::as_usb_isochronous_in_transfer_packet(
  self : JsValue,
) -> USBIsochronousInTransferPacket? =
  #| (self) => (self instanceof USBIsochronousInTransferPacket) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBIsochronousInTransferPacket (unchecked)
pub extern "js" fn JsValue::to_usb_isochronous_in_transfer_packet(
  self : JsValue,
) -> USBIsochronousInTransferPacket =
  #| (self) => self

///|
pub extern "js" fn USBIsochronousInTransferPacket::new(
  status : USBTransferStatus,
) -> USBIsochronousInTransferPacket =
  #| (status) => new USBIsochronousInTransferPacket(['ok', 'stall', 'babble'][status])

///|
pub extern "js" fn USBIsochronousInTransferPacket::new_with_data(
  status : USBTransferStatus,
  data : DataView?,
) -> USBIsochronousInTransferPacket =
  #| (status, data) => new USBIsochronousInTransferPacket(['ok', 'stall', 'babble'][status], (data.$tag === 1 ? data._0 : null))

///|
pub extern "js" fn USBIsochronousInTransferPacket::get_data(
  self : USBIsochronousInTransferPacket,
) -> DataView? =
  #| (self) => (() => { const v = self.data; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn USBIsochronousInTransferPacket::get_status(
  self : USBIsochronousInTransferPacket,
) -> USBTransferStatus =
  #| (self) => ['ok', 'stall', 'babble'].indexOf(self.status)

///|
/// USBIsochronousInTransferResult interface
pub type USBIsochronousInTransferResult

///|
pub extern "js" fn USBIsochronousInTransferResult::to_js_value(
  self : USBIsochronousInTransferResult,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBIsochronousInTransferResult (unchecked)
pub extern "js" fn USBIsochronousInTransferResult::from_js_value(
  v : JsValue,
) -> USBIsochronousInTransferResult =
  #| (v) => v

///|
/// Safely cast JsValue to USBIsochronousInTransferResult (checked with instanceof)
pub extern "js" fn USBIsochronousInTransferResult::from_js_value_opt(
  v : JsValue,
) -> USBIsochronousInTransferResult? =
  #| (v) => (v instanceof USBIsochronousInTransferResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBIsochronousInTransferResult (checked with instanceof)
pub extern "js" fn JsValue::as_usb_isochronous_in_transfer_result(
  self : JsValue,
) -> USBIsochronousInTransferResult? =
  #| (self) => (self instanceof USBIsochronousInTransferResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBIsochronousInTransferResult (unchecked)
pub extern "js" fn JsValue::to_usb_isochronous_in_transfer_result(
  self : JsValue,
) -> USBIsochronousInTransferResult =
  #| (self) => self

///|
pub extern "js" fn USBIsochronousInTransferResult::new(
  packets : Array[USBIsochronousInTransferPacket],
) -> USBIsochronousInTransferResult =
  #| (packets) => new USBIsochronousInTransferResult(packets)

///|
pub extern "js" fn USBIsochronousInTransferResult::new_with_data(
  packets : Array[USBIsochronousInTransferPacket],
  data : DataView?,
) -> USBIsochronousInTransferResult =
  #| (packets, data) => new USBIsochronousInTransferResult(packets, (data.$tag === 1 ? data._0 : null))

///|
pub extern "js" fn USBIsochronousInTransferResult::get_data(
  self : USBIsochronousInTransferResult,
) -> DataView? =
  #| (self) => (() => { const v = self.data; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn USBIsochronousInTransferResult::get_packets(
  self : USBIsochronousInTransferResult,
) -> Array[USBIsochronousInTransferPacket] =
  #| (self) => self.packets

///|
/// USBIsochronousOutTransferPacket interface
pub type USBIsochronousOutTransferPacket

///|
pub extern "js" fn USBIsochronousOutTransferPacket::to_js_value(
  self : USBIsochronousOutTransferPacket,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBIsochronousOutTransferPacket (unchecked)
pub extern "js" fn USBIsochronousOutTransferPacket::from_js_value(
  v : JsValue,
) -> USBIsochronousOutTransferPacket =
  #| (v) => v

///|
/// Safely cast JsValue to USBIsochronousOutTransferPacket (checked with instanceof)
pub extern "js" fn USBIsochronousOutTransferPacket::from_js_value_opt(
  v : JsValue,
) -> USBIsochronousOutTransferPacket? =
  #| (v) => (v instanceof USBIsochronousOutTransferPacket) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBIsochronousOutTransferPacket (checked with instanceof)
pub extern "js" fn JsValue::as_usb_isochronous_out_transfer_packet(
  self : JsValue,
) -> USBIsochronousOutTransferPacket? =
  #| (self) => (self instanceof USBIsochronousOutTransferPacket) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBIsochronousOutTransferPacket (unchecked)
pub extern "js" fn JsValue::to_usb_isochronous_out_transfer_packet(
  self : JsValue,
) -> USBIsochronousOutTransferPacket =
  #| (self) => self

///|
pub extern "js" fn USBIsochronousOutTransferPacket::new(
  status : USBTransferStatus,
) -> USBIsochronousOutTransferPacket =
  #| (status) => new USBIsochronousOutTransferPacket(['ok', 'stall', 'babble'][status])

///|
pub extern "js" fn USBIsochronousOutTransferPacket::new_with_bytes_written(
  status : USBTransferStatus,
  bytes_written : Int,
) -> USBIsochronousOutTransferPacket =
  #| (status, bytes_written) => new USBIsochronousOutTransferPacket(['ok', 'stall', 'babble'][status], bytes_written)

///|
pub extern "js" fn USBIsochronousOutTransferPacket::get_bytes_written(
  self : USBIsochronousOutTransferPacket,
) -> Int =
  #| (self) => self.bytesWritten

///|
pub extern "js" fn USBIsochronousOutTransferPacket::get_status(
  self : USBIsochronousOutTransferPacket,
) -> USBTransferStatus =
  #| (self) => ['ok', 'stall', 'babble'].indexOf(self.status)

///|
/// USBIsochronousOutTransferResult interface
pub type USBIsochronousOutTransferResult

///|
pub extern "js" fn USBIsochronousOutTransferResult::to_js_value(
  self : USBIsochronousOutTransferResult,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBIsochronousOutTransferResult (unchecked)
pub extern "js" fn USBIsochronousOutTransferResult::from_js_value(
  v : JsValue,
) -> USBIsochronousOutTransferResult =
  #| (v) => v

///|
/// Safely cast JsValue to USBIsochronousOutTransferResult (checked with instanceof)
pub extern "js" fn USBIsochronousOutTransferResult::from_js_value_opt(
  v : JsValue,
) -> USBIsochronousOutTransferResult? =
  #| (v) => (v instanceof USBIsochronousOutTransferResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBIsochronousOutTransferResult (checked with instanceof)
pub extern "js" fn JsValue::as_usb_isochronous_out_transfer_result(
  self : JsValue,
) -> USBIsochronousOutTransferResult? =
  #| (self) => (self instanceof USBIsochronousOutTransferResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBIsochronousOutTransferResult (unchecked)
pub extern "js" fn JsValue::to_usb_isochronous_out_transfer_result(
  self : JsValue,
) -> USBIsochronousOutTransferResult =
  #| (self) => self

///|
pub extern "js" fn USBIsochronousOutTransferResult::new(
  packets : Array[USBIsochronousOutTransferPacket],
) -> USBIsochronousOutTransferResult =
  #| (packets) => new USBIsochronousOutTransferResult(packets)

///|
pub extern "js" fn USBIsochronousOutTransferResult::get_packets(
  self : USBIsochronousOutTransferResult,
) -> Array[USBIsochronousOutTransferPacket] =
  #| (self) => self.packets

///|
/// USBDevice interface
pub type USBDevice

///|
pub extern "js" fn USBDevice::to_js_value(self : USBDevice) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBDevice (unchecked)
pub extern "js" fn USBDevice::from_js_value(v : JsValue) -> USBDevice =
  #| (v) => v

///|
/// Safely cast JsValue to USBDevice (checked with instanceof)
pub extern "js" fn USBDevice::from_js_value_opt(v : JsValue) -> USBDevice? =
  #| (v) => (v instanceof USBDevice) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBDevice (checked with instanceof)
pub extern "js" fn JsValue::as_usb_device(self : JsValue) -> USBDevice? =
  #| (self) => (self instanceof USBDevice) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBDevice (unchecked)
pub extern "js" fn JsValue::to_usb_device(self : JsValue) -> USBDevice =
  #| (self) => self

///|
pub extern "js" fn USBDevice::get_usb_version_major(self : USBDevice) -> Int =
  #| (self) => self.usbVersionMajor

///|
pub extern "js" fn USBDevice::get_usb_version_minor(self : USBDevice) -> Int =
  #| (self) => self.usbVersionMinor

///|
pub extern "js" fn USBDevice::get_usb_version_subminor(self : USBDevice) -> Int =
  #| (self) => self.usbVersionSubminor

///|
pub extern "js" fn USBDevice::get_device_class(self : USBDevice) -> Int =
  #| (self) => self.deviceClass

///|
pub extern "js" fn USBDevice::get_device_subclass(self : USBDevice) -> Int =
  #| (self) => self.deviceSubclass

///|
pub extern "js" fn USBDevice::get_device_protocol(self : USBDevice) -> Int =
  #| (self) => self.deviceProtocol

///|
pub extern "js" fn USBDevice::get_vendor_id(self : USBDevice) -> Int =
  #| (self) => self.vendorId

///|
pub extern "js" fn USBDevice::get_product_id(self : USBDevice) -> Int =
  #| (self) => self.productId

///|
pub extern "js" fn USBDevice::get_device_version_major(self : USBDevice) -> Int =
  #| (self) => self.deviceVersionMajor

///|
pub extern "js" fn USBDevice::get_device_version_minor(self : USBDevice) -> Int =
  #| (self) => self.deviceVersionMinor

///|
pub extern "js" fn USBDevice::get_device_version_subminor(
  self : USBDevice,
) -> Int =
  #| (self) => self.deviceVersionSubminor

///|
pub extern "js" fn USBDevice::get_manufacturer_name(
  self : USBDevice,
) -> String? =
  #| (self) => (self.manufacturerName) ?? undefined

///|
pub extern "js" fn USBDevice::get_product_name(self : USBDevice) -> String? =
  #| (self) => (self.productName) ?? undefined

///|
pub extern "js" fn USBDevice::get_serial_number(self : USBDevice) -> String? =
  #| (self) => (self.serialNumber) ?? undefined

///|
pub extern "js" fn USBDevice::get_configuration(
  self : USBDevice,
) -> USBConfiguration? =
  #| (self) => (() => { const v = self.configuration; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn USBDevice::get_configurations(
  self : USBDevice,
) -> Array[USBConfiguration] =
  #| (self) => self.configurations

///|
pub extern "js" fn USBDevice::get_opened(self : USBDevice) -> Bool =
  #| (self) => self.opened

///|
pub extern "js" fn USBDevice::open(self : USBDevice) -> Promise[Unit] =
  #| (self) => self.open()

///|
pub extern "js" fn USBDevice::close(self : USBDevice) -> Promise[Unit] =
  #| (self) => self.close()

///|
pub extern "js" fn USBDevice::forget(self : USBDevice) -> Promise[Unit] =
  #| (self) => self.forget()

///|
pub extern "js" fn USBDevice::select_configuration(
  self : USBDevice,
  configuration_value : Int,
) -> Promise[Unit] =
  #| (self, configuration_value) => self.selectConfiguration(configuration_value)

///|
pub extern "js" fn USBDevice::claim_interface(
  self : USBDevice,
  interface_number : Int,
) -> Promise[Unit] =
  #| (self, interface_number) => self.claimInterface(interface_number)

///|
pub extern "js" fn USBDevice::release_interface(
  self : USBDevice,
  interface_number : Int,
) -> Promise[Unit] =
  #| (self, interface_number) => self.releaseInterface(interface_number)

///|
pub extern "js" fn USBDevice::select_alternate_interface(
  self : USBDevice,
  interface_number : Int,
  alternate_setting : Int,
) -> Promise[Unit] =
  #| (self, interface_number, alternate_setting) => self.selectAlternateInterface(interface_number, alternate_setting)

///|
extern "js" fn USBDevice::control_transfer_in_ffi(
  self : USBDevice,
  setup : JsValue,
  length : Int,
) -> Promise[USBInTransferResult] =
  #| (self, setup, length) => self.controlTransferIn(setup, length)

///|
pub fn USBDevice::control_transfer_in(
  self : USBDevice,
  setup : USBControlTransferParameters,
  length : Int,
) -> Promise[USBInTransferResult] {
  USBDevice::control_transfer_in_ffi(self, setup.to_js(), length)
}

///|
extern "js" fn USBDevice::control_transfer_out_ffi(
  self : USBDevice,
  setup : JsValue,
) -> Promise[USBOutTransferResult] =
  #| (self, setup) => self.controlTransferOut(setup)

///|
pub fn USBDevice::control_transfer_out(
  self : USBDevice,
  setup : USBControlTransferParameters,
) -> Promise[USBOutTransferResult] {
  USBDevice::control_transfer_out_ffi(self, setup.to_js())
}

///|
extern "js" fn USBDevice::control_transfer_out_with_data_ffi(
  self : USBDevice,
  setup : JsValue,
  data : BufferSource,
) -> Promise[USBOutTransferResult] =
  #| (self, setup, data) => self.controlTransferOut(setup, data)

///|
pub fn USBDevice::control_transfer_out_with_data(
  self : USBDevice,
  setup : USBControlTransferParameters,
  data : BufferSource,
) -> Promise[USBOutTransferResult] {
  USBDevice::control_transfer_out_with_data_ffi(self, setup.to_js(), data)
}

///|
pub extern "js" fn USBDevice::clear_halt(
  self : USBDevice,
  direction : USBDirection,
  endpoint_number : Int,
) -> Promise[Unit] =
  #| (self, direction, endpoint_number) => self.clearHalt(['in', 'out'][direction], endpoint_number)

///|
pub extern "js" fn USBDevice::transfer_in(
  self : USBDevice,
  endpoint_number : Int,
  length : Int,
) -> Promise[USBInTransferResult] =
  #| (self, endpoint_number, length) => self.transferIn(endpoint_number, length)

///|
pub extern "js" fn USBDevice::transfer_out(
  self : USBDevice,
  endpoint_number : Int,
  data : BufferSource,
) -> Promise[USBOutTransferResult] =
  #| (self, endpoint_number, data) => self.transferOut(endpoint_number, data)

///|
pub extern "js" fn USBDevice::isochronous_transfer_in(
  self : USBDevice,
  endpoint_number : Int,
  packet_lengths : Array[Int],
) -> Promise[USBIsochronousInTransferResult] =
  #| (self, endpoint_number, packet_lengths) => self.isochronousTransferIn(endpoint_number, packet_lengths)

///|
pub extern "js" fn USBDevice::isochronous_transfer_out(
  self : USBDevice,
  endpoint_number : Int,
  data : BufferSource,
  packet_lengths : Array[Int],
) -> Promise[USBIsochronousOutTransferResult] =
  #| (self, endpoint_number, data, packet_lengths) => self.isochronousTransferOut(endpoint_number, data, packet_lengths)

///|
pub extern "js" fn USBDevice::reset(self : USBDevice) -> Promise[Unit] =
  #| (self) => self.reset()

///|
pub extern "js" fn USBDevice::control_transfer_out_with_array_buffer_view(
  self : USBDevice,
  setup : USBControlTransferParameters,
  data : ArrayBufferView,
) -> Promise[USBOutTransferResult] =
  #| (self, setup, data) => self.controlTransferOut(setup, data)

///|
pub extern "js" fn USBDevice::control_transfer_out_with_array_buffer(
  self : USBDevice,
  setup : USBControlTransferParameters,
  data : ArrayBuffer,
) -> Promise[USBOutTransferResult] =
  #| (self, setup, data) => self.controlTransferOut(setup, data)

///|
pub extern "js" fn USBDevice::transfer_out_with_array_buffer_view(
  self : USBDevice,
  endpoint_number : Int,
  data : ArrayBufferView,
) -> Promise[USBOutTransferResult] =
  #| (self, endpoint_number, data) => self.transferOut(endpoint_number, data)

///|
pub extern "js" fn USBDevice::transfer_out_with_array_buffer(
  self : USBDevice,
  endpoint_number : Int,
  data : ArrayBuffer,
) -> Promise[USBOutTransferResult] =
  #| (self, endpoint_number, data) => self.transferOut(endpoint_number, data)

///|
pub extern "js" fn USBDevice::isochronous_transfer_out_with_array_buffer_view(
  self : USBDevice,
  endpoint_number : Int,
  data : ArrayBufferView,
  packet_lengths : Array[Int],
) -> Promise[USBIsochronousOutTransferResult] =
  #| (self, endpoint_number, data, packet_lengths) => self.isochronousTransferOut(endpoint_number, data, packet_lengths)

///|
pub extern "js" fn USBDevice::isochronous_transfer_out_with_array_buffer(
  self : USBDevice,
  endpoint_number : Int,
  data : ArrayBuffer,
  packet_lengths : Array[Int],
) -> Promise[USBIsochronousOutTransferResult] =
  #| (self, endpoint_number, data, packet_lengths) => self.isochronousTransferOut(endpoint_number, data, packet_lengths)

///|
/// USBConfiguration interface
pub type USBConfiguration

///|
pub extern "js" fn USBConfiguration::to_js_value(
  self : USBConfiguration,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBConfiguration (unchecked)
pub extern "js" fn USBConfiguration::from_js_value(
  v : JsValue,
) -> USBConfiguration =
  #| (v) => v

///|
/// Safely cast JsValue to USBConfiguration (checked with instanceof)
pub extern "js" fn USBConfiguration::from_js_value_opt(
  v : JsValue,
) -> USBConfiguration? =
  #| (v) => (v instanceof USBConfiguration) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBConfiguration (checked with instanceof)
pub extern "js" fn JsValue::as_usb_configuration(
  self : JsValue,
) -> USBConfiguration? =
  #| (self) => (self instanceof USBConfiguration) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBConfiguration (unchecked)
pub extern "js" fn JsValue::to_usb_configuration(
  self : JsValue,
) -> USBConfiguration =
  #| (self) => self

///|
pub extern "js" fn USBConfiguration::new(
  device : USBDevice,
  configuration_value : Int,
) -> USBConfiguration =
  #| (device, configuration_value) => new USBConfiguration(device, configuration_value)

///|
pub extern "js" fn USBConfiguration::get_configuration_value(
  self : USBConfiguration,
) -> Int =
  #| (self) => self.configurationValue

///|
pub extern "js" fn USBConfiguration::get_configuration_name(
  self : USBConfiguration,
) -> String? =
  #| (self) => (self.configurationName) ?? undefined

///|
pub extern "js" fn USBConfiguration::get_interfaces(
  self : USBConfiguration,
) -> Array[USBInterface] =
  #| (self) => self.interfaces

///|
/// USBInterface interface
pub type USBInterface

///|
pub extern "js" fn USBInterface::to_js_value(self : USBInterface) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBInterface (unchecked)
pub extern "js" fn USBInterface::from_js_value(v : JsValue) -> USBInterface =
  #| (v) => v

///|
/// Safely cast JsValue to USBInterface (checked with instanceof)
pub extern "js" fn USBInterface::from_js_value_opt(
  v : JsValue,
) -> USBInterface? =
  #| (v) => (v instanceof USBInterface) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBInterface (checked with instanceof)
pub extern "js" fn JsValue::as_usb_interface(self : JsValue) -> USBInterface? =
  #| (self) => (self instanceof USBInterface) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBInterface (unchecked)
pub extern "js" fn JsValue::to_usb_interface(self : JsValue) -> USBInterface =
  #| (self) => self

///|
pub extern "js" fn USBInterface::new(
  configuration : USBConfiguration,
  interface_number : Int,
) -> USBInterface =
  #| (configuration, interface_number) => new USBInterface(configuration, interface_number)

///|
pub extern "js" fn USBInterface::get_interface_number(
  self : USBInterface,
) -> Int =
  #| (self) => self.interfaceNumber

///|
pub extern "js" fn USBInterface::get_alternate(
  self : USBInterface,
) -> USBAlternateInterface =
  #| (self) => self.alternate

///|
pub extern "js" fn USBInterface::get_alternates(
  self : USBInterface,
) -> Array[USBAlternateInterface] =
  #| (self) => self.alternates

///|
pub extern "js" fn USBInterface::get_claimed(self : USBInterface) -> Bool =
  #| (self) => self.claimed

///|
/// USBAlternateInterface interface
pub type USBAlternateInterface

///|
pub extern "js" fn USBAlternateInterface::to_js_value(
  self : USBAlternateInterface,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBAlternateInterface (unchecked)
pub extern "js" fn USBAlternateInterface::from_js_value(
  v : JsValue,
) -> USBAlternateInterface =
  #| (v) => v

///|
/// Safely cast JsValue to USBAlternateInterface (checked with instanceof)
pub extern "js" fn USBAlternateInterface::from_js_value_opt(
  v : JsValue,
) -> USBAlternateInterface? =
  #| (v) => (v instanceof USBAlternateInterface) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBAlternateInterface (checked with instanceof)
pub extern "js" fn JsValue::as_usb_alternate_interface(
  self : JsValue,
) -> USBAlternateInterface? =
  #| (self) => (self instanceof USBAlternateInterface) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBAlternateInterface (unchecked)
pub extern "js" fn JsValue::to_usb_alternate_interface(
  self : JsValue,
) -> USBAlternateInterface =
  #| (self) => self

///|
pub extern "js" fn USBAlternateInterface::new(
  device_interface : USBInterface,
  alternate_setting : Int,
) -> USBAlternateInterface =
  #| (device_interface, alternate_setting) => new USBAlternateInterface(device_interface, alternate_setting)

///|
pub extern "js" fn USBAlternateInterface::get_alternate_setting(
  self : USBAlternateInterface,
) -> Int =
  #| (self) => self.alternateSetting

///|
pub extern "js" fn USBAlternateInterface::get_interface_class(
  self : USBAlternateInterface,
) -> Int =
  #| (self) => self.interfaceClass

///|
pub extern "js" fn USBAlternateInterface::get_interface_subclass(
  self : USBAlternateInterface,
) -> Int =
  #| (self) => self.interfaceSubclass

///|
pub extern "js" fn USBAlternateInterface::get_interface_protocol(
  self : USBAlternateInterface,
) -> Int =
  #| (self) => self.interfaceProtocol

///|
pub extern "js" fn USBAlternateInterface::get_interface_name(
  self : USBAlternateInterface,
) -> String? =
  #| (self) => (self.interfaceName) ?? undefined

///|
pub extern "js" fn USBAlternateInterface::get_endpoints(
  self : USBAlternateInterface,
) -> Array[USBEndpoint] =
  #| (self) => self.endpoints

///|
/// USBEndpoint interface
pub type USBEndpoint

///|
pub extern "js" fn USBEndpoint::to_js_value(self : USBEndpoint) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBEndpoint (unchecked)
pub extern "js" fn USBEndpoint::from_js_value(v : JsValue) -> USBEndpoint =
  #| (v) => v

///|
/// Safely cast JsValue to USBEndpoint (checked with instanceof)
pub extern "js" fn USBEndpoint::from_js_value_opt(v : JsValue) -> USBEndpoint? =
  #| (v) => (v instanceof USBEndpoint) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBEndpoint (checked with instanceof)
pub extern "js" fn JsValue::as_usb_endpoint(self : JsValue) -> USBEndpoint? =
  #| (self) => (self instanceof USBEndpoint) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBEndpoint (unchecked)
pub extern "js" fn JsValue::to_usb_endpoint(self : JsValue) -> USBEndpoint =
  #| (self) => self

///|
pub extern "js" fn USBEndpoint::new(
  alternate : USBAlternateInterface,
  endpoint_number : Int,
  direction : USBDirection,
) -> USBEndpoint =
  #| (alternate, endpoint_number, direction) => new USBEndpoint(alternate, endpoint_number, ['in', 'out'][direction])

///|
pub extern "js" fn USBEndpoint::get_endpoint_number(self : USBEndpoint) -> Int =
  #| (self) => self.endpointNumber

///|
pub extern "js" fn USBEndpoint::get_direction(
  self : USBEndpoint,
) -> USBDirection =
  #| (self) => ['in', 'out'].indexOf(self.direction)

///|
pub extern "js" fn USBEndpoint::get_type(self : USBEndpoint) -> USBEndpointType =
  #| (self) => ['bulk', 'interrupt', 'isochronous'].indexOf(self.type)

///|
pub extern "js" fn USBEndpoint::get_packet_size(self : USBEndpoint) -> Int =
  #| (self) => self.packetSize

///|
/// USBPermissionResult interface
pub type USBPermissionResult

///|
pub extern "js" fn USBPermissionResult::to_js_value(
  self : USBPermissionResult,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to USBPermissionResult (unchecked)
pub extern "js" fn USBPermissionResult::from_js_value(
  v : JsValue,
) -> USBPermissionResult =
  #| (v) => v

///|
/// Safely cast JsValue to USBPermissionResult (checked with instanceof)
pub extern "js" fn USBPermissionResult::from_js_value_opt(
  v : JsValue,
) -> USBPermissionResult? =
  #| (v) => (v instanceof USBPermissionResult) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to USBPermissionResult (checked with instanceof)
pub extern "js" fn JsValue::as_usb_permission_result(
  self : JsValue,
) -> USBPermissionResult? =
  #| (self) => (self instanceof USBPermissionResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to USBPermissionResult (unchecked)
pub extern "js" fn JsValue::to_usb_permission_result(
  self : JsValue,
) -> USBPermissionResult =
  #| (self) => self

///|
pub extern "js" fn USBPermissionResult::to_permission_status(
  self : USBPermissionResult,
) -> PermissionStatus =
  #| (self) => self

///|
pub extern "js" fn USBPermissionResult::to_event_target(
  self : USBPermissionResult,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn USBPermissionResult::get_devices(
  self : USBPermissionResult,
) -> Array[USBDevice] =
  #| (self) => self.devices

///|
pub extern "js" fn USBPermissionResult::set_devices(
  self : USBPermissionResult,
  value : Array[USBDevice],
) -> Unit =
  #| (self, value) => { self.devices = value }
