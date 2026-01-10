// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webusb

///|
/// USBTransferStatus enum
pub(all) enum USBTransferStatus {
  Ok
  Stall
  Babble
}

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
}

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
}

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
}

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
}

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
pub struct USBDeviceFilter {
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
/// Convert to JsValue
pub extern "js" fn USBDeviceFilter::to_js(self : USBDeviceFilter) -> JsValue =
  #| (self) => ({
  #|   vendorId: self.vendorId,
  #|   productId: self.productId,
  #|   classCode: self.classCode,
  #|   subclassCode: self.subclassCode,
  #|   protocolCode: self.protocolCode,
  #|   serialNumber: self.serialNumber
  #| })

///|
/// USBDeviceRequestOptions dictionary
pub struct USBDeviceRequestOptions {
  filters : Array[USBDeviceFilter]
  exclusionFilters : Array[USBDeviceFilter]?
}

///|
/// Create a new USBDeviceRequestOptions with default values
pub fn USBDeviceRequestOptions::default() -> USBDeviceRequestOptions {
  USBDeviceRequestOptions::{ filters: [], exclusionFilters: None }
}

///|
/// Convert to JsValue
pub extern "js" fn USBDeviceRequestOptions::to_js(
  self : USBDeviceRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   filters: self.filters,
  #|   exclusionFilters: self.exclusionFilters
  #| })

///|
/// USBConnectionEventInit dictionary
pub struct USBConnectionEventInit {
  device : USBDevice
}

///|
/// Create a new USBConnectionEventInit with default values
pub fn USBConnectionEventInit::default() -> USBConnectionEventInit {
  USBConnectionEventInit::{ device: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn USBConnectionEventInit::to_js(
  self : USBConnectionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   device: self.device
  #| })

///|
/// USBControlTransferParameters dictionary
pub struct USBControlTransferParameters {
  requestType : USBRequestType
  recipient : USBRecipient
  request : Int
  value : Int
  index : Int
}

///|
/// Create a new USBControlTransferParameters with default values
pub fn USBControlTransferParameters::default() -> USBControlTransferParameters {
  USBControlTransferParameters::{
    requestType: panic(),
    recipient: panic(),
    request: 0,
    value: 0,
    index: 0,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn USBControlTransferParameters::to_js(
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
/// USBBlocklistEntry dictionary
pub struct USBBlocklistEntry {
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
/// Convert to JsValue
pub extern "js" fn USBBlocklistEntry::to_js(
  self : USBBlocklistEntry,
) -> JsValue =
  #| (self) => ({
  #|   idVendor: self.idVendor,
  #|   idProduct: self.idProduct,
  #|   bcdDevice: self.bcdDevice
  #| })

///|
/// USBPermissionDescriptor dictionary
pub struct USBPermissionDescriptor {
  filters : Array[USBDeviceFilter]?
  exclusionFilters : Array[USBDeviceFilter]?
}

///|
/// Create a new USBPermissionDescriptor with default values
pub fn USBPermissionDescriptor::default() -> USBPermissionDescriptor {
  USBPermissionDescriptor::{ filters: None, exclusionFilters: None }
}

///|
/// Convert to JsValue
pub extern "js" fn USBPermissionDescriptor::to_js(
  self : USBPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   filters: self.filters,
  #|   exclusionFilters: self.exclusionFilters
  #| })

///|
/// AllowedUSBDevice dictionary
pub struct AllowedUSBDevice {
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
/// Convert to JsValue
pub extern "js" fn AllowedUSBDevice::to_js(self : AllowedUSBDevice) -> JsValue =
  #| (self) => ({
  #|   vendorId: self.vendorId,
  #|   productId: self.productId,
  #|   serialNumber: self.serialNumber
  #| })

///|
/// USBPermissionStorage dictionary
pub struct USBPermissionStorage {
  allowedDevices : Array[AllowedUSBDevice]?
}

///|
/// Create a new USBPermissionStorage with default values
pub fn USBPermissionStorage::default() -> USBPermissionStorage {
  USBPermissionStorage::{ allowedDevices: None }
}

///|
/// Convert to JsValue
pub extern "js" fn USBPermissionStorage::to_js(
  self : USBPermissionStorage,
) -> JsValue =
  #| (self) => ({
  #|   allowedDevices: self.allowedDevices
  #| })

///|
/// USB interface
pub type USB

///|
pub extern "js" fn USB::to_js_value(self : USB) -> JsValue =
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
pub extern "js" fn USB::get_devices(self : USB) -> Promise[Unit] =
  #| (self) => self.getDevices()

///|
pub extern "js" fn USB::request_device(
  self : USB,
  options : USBDeviceRequestOptions,
) -> Promise[USBDevice] =
  #| (self, options) => self.requestDevice(options)

///|
/// USBConnectionEvent interface
pub type USBConnectionEvent

///|
pub extern "js" fn USBConnectionEvent::to_js_value(
  self : USBConnectionEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn USBConnectionEvent::new(
  type_ : String,
  event_init_dict : USBConnectionEventInit,
) -> USBConnectionEvent =
  #| (type_, event_init_dict) => new USBConnectionEvent(type_, event_init_dict)

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
pub extern "js" fn USBInTransferResult::new(
  status : USBTransferStatus,
  data : DataView?,
) -> USBInTransferResult =
  #| (status, data) => new USBInTransferResult(['ok', 'stall', 'babble'][status], data)

///|
pub extern "js" fn USBInTransferResult::get_data(
  self : USBInTransferResult,
) -> DataView? =
  #| (self) => self.data

///|
pub extern "js" fn USBInTransferResult::get_status(
  self : USBInTransferResult,
) -> USBTransferStatus =
  #| (self) => self.status

///|
/// USBOutTransferResult interface
pub type USBOutTransferResult

///|
pub extern "js" fn USBOutTransferResult::to_js_value(
  self : USBOutTransferResult,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn USBOutTransferResult::new(
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
  #| (self) => self.status

///|
/// USBIsochronousInTransferPacket interface
pub type USBIsochronousInTransferPacket

///|
pub extern "js" fn USBIsochronousInTransferPacket::to_js_value(
  self : USBIsochronousInTransferPacket,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn USBIsochronousInTransferPacket::new(
  status : USBTransferStatus,
  data : DataView?,
) -> USBIsochronousInTransferPacket =
  #| (status, data) => new USBIsochronousInTransferPacket(['ok', 'stall', 'babble'][status], data)

///|
pub extern "js" fn USBIsochronousInTransferPacket::get_data(
  self : USBIsochronousInTransferPacket,
) -> DataView? =
  #| (self) => self.data

///|
pub extern "js" fn USBIsochronousInTransferPacket::get_status(
  self : USBIsochronousInTransferPacket,
) -> USBTransferStatus =
  #| (self) => self.status

///|
/// USBIsochronousInTransferResult interface
pub type USBIsochronousInTransferResult

///|
pub extern "js" fn USBIsochronousInTransferResult::to_js_value(
  self : USBIsochronousInTransferResult,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn USBIsochronousInTransferResult::new(
  packets : Array[USBIsochronousInTransferPacket],
  data : DataView?,
) -> USBIsochronousInTransferResult =
  #| (packets, data) => new USBIsochronousInTransferResult(packets, data)

///|
pub extern "js" fn USBIsochronousInTransferResult::get_data(
  self : USBIsochronousInTransferResult,
) -> DataView? =
  #| (self) => self.data

///|
pub extern "js" fn USBIsochronousInTransferResult::get_packets(
  self : USBIsochronousInTransferResult,
) -> JsValue =
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
pub extern "js" fn USBIsochronousOutTransferPacket::new(
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
  #| (self) => self.status

///|
/// USBIsochronousOutTransferResult interface
pub type USBIsochronousOutTransferResult

///|
pub extern "js" fn USBIsochronousOutTransferResult::to_js_value(
  self : USBIsochronousOutTransferResult,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn USBIsochronousOutTransferResult::new(
  packets : Array[USBIsochronousOutTransferPacket],
) -> USBIsochronousOutTransferResult =
  #| (packets) => new USBIsochronousOutTransferResult(packets)

///|
pub extern "js" fn USBIsochronousOutTransferResult::get_packets(
  self : USBIsochronousOutTransferResult,
) -> JsValue =
  #| (self) => self.packets

///|
/// USBDevice interface
pub type USBDevice

///|
pub extern "js" fn USBDevice::to_js_value(self : USBDevice) -> JsValue =
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
  #| (self) => self.manufacturerName

///|
pub extern "js" fn USBDevice::get_product_name(self : USBDevice) -> String? =
  #| (self) => self.productName

///|
pub extern "js" fn USBDevice::get_serial_number(self : USBDevice) -> String? =
  #| (self) => self.serialNumber

///|
pub extern "js" fn USBDevice::get_configuration(
  self : USBDevice,
) -> USBConfiguration? =
  #| (self) => self.configuration

///|
pub extern "js" fn USBDevice::get_configurations(self : USBDevice) -> JsValue =
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
pub extern "js" fn USBDevice::control_transfer_in(
  self : USBDevice,
  setup : USBControlTransferParameters,
  length : Int,
) -> Promise[USBInTransferResult] =
  #| (self, setup, length) => self.controlTransferIn(setup, length)

///|
pub extern "js" fn USBDevice::control_transfer_out(
  self : USBDevice,
  setup : USBControlTransferParameters,
) -> Promise[USBOutTransferResult] =
  #| (self, setup) => self.controlTransferOut(setup)

///|
pub extern "js" fn USBDevice::control_transfer_out_with_data(
  self : USBDevice,
  setup : USBControlTransferParameters,
  data : BufferSource,
) -> Promise[USBOutTransferResult] =
  #| (self, setup, data) => self.controlTransferOut(setup, data)

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
/// USBConfiguration interface
pub type USBConfiguration

///|
pub extern "js" fn USBConfiguration::to_js_value(
  self : USBConfiguration,
) -> JsValue =
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
  #| (self) => self.configurationName

///|
pub extern "js" fn USBConfiguration::get_interfaces(
  self : USBConfiguration,
) -> JsValue =
  #| (self) => self.interfaces

///|
/// USBInterface interface
pub type USBInterface

///|
pub extern "js" fn USBInterface::to_js_value(self : USBInterface) -> JsValue =
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
pub extern "js" fn USBInterface::get_alternates(self : USBInterface) -> JsValue =
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
  #| (self) => self.interfaceName

///|
pub extern "js" fn USBAlternateInterface::get_endpoints(
  self : USBAlternateInterface,
) -> JsValue =
  #| (self) => self.endpoints

///|
/// USBEndpoint interface
pub type USBEndpoint

///|
pub extern "js" fn USBEndpoint::to_js_value(self : USBEndpoint) -> JsValue =
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
  #| (self) => self.direction

///|
pub extern "js" fn USBEndpoint::get_type(self : USBEndpoint) -> USBEndpointType =
  #| (self) => self.type

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
pub extern "js" fn USBPermissionResult::get_devices(
  self : USBPermissionResult,
) -> JsValue =
  #| (self) => self.devices

///|
pub extern "js" fn USBPermissionResult::set_devices(
  self : USBPermissionResult,
  value : JsValue,
) -> Unit =
  #| (self, value) => { self.devices = value }
