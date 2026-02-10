// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webhid

///|
/// HIDUnitSystem enum
pub(all) enum HIDUnitSystem {
  None
  SiLinear
  SiRotation
  EnglishLinear
  EnglishRotation
  VendorDefined
  Reserved
} derive(Eq, Show)

///|
/// Convert to string value
pub fn HIDUnitSystem::to_string(self : HIDUnitSystem) -> String {
  match self {
    HIDUnitSystem::None => "none"
    HIDUnitSystem::SiLinear => "si-linear"
    HIDUnitSystem::SiRotation => "si-rotation"
    HIDUnitSystem::EnglishLinear => "english-linear"
    HIDUnitSystem::EnglishRotation => "english-rotation"
    HIDUnitSystem::VendorDefined => "vendor-defined"
    HIDUnitSystem::Reserved => "reserved"
  }
}

///|
/// Parse from string value
pub fn HIDUnitSystem::from_string(s : String) -> HIDUnitSystem? {
  match s {
    "none" => Some(HIDUnitSystem::None)
    "si-linear" => Some(HIDUnitSystem::SiLinear)
    "si-rotation" => Some(HIDUnitSystem::SiRotation)
    "english-linear" => Some(HIDUnitSystem::EnglishLinear)
    "english-rotation" => Some(HIDUnitSystem::EnglishRotation)
    "vendor-defined" => Some(HIDUnitSystem::VendorDefined)
    "reserved" => Some(HIDUnitSystem::Reserved)
    _ => None
  }
}

///|
/// HIDDeviceRequestOptions dictionary
pub(all) struct HIDDeviceRequestOptions {
  filters : Array[HIDDeviceFilter]
  exclusionFilters : Array[HIDDeviceFilter]?
}

///|
/// Create a new HIDDeviceRequestOptions with default values
pub fn HIDDeviceRequestOptions::default() -> HIDDeviceRequestOptions {
  HIDDeviceRequestOptions::{ filters: [], exclusionFilters: None }
}

///|
extern "js" fn HIDDeviceRequestOptions::to_js_ffi(
  self : HIDDeviceRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   filters: self.filters,
  #|   exclusionFilters: ((() => { const v = self.exclusionFilters; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn HIDDeviceRequestOptions::to_js(
  self : HIDDeviceRequestOptions,
) -> JsValue {
  HIDDeviceRequestOptions::to_js_ffi(self)
}

///|
extern "js" fn HIDDeviceRequestOptions::from_js_ffi(
  value : JsValue,
) -> HIDDeviceRequestOptions =
  #| (v) => ({
  #|   filters: v.filters,
  #|   exclusionFilters: (v.exclusionFilters === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exclusionFilters })
  #| })

///|
/// Convert from JsValue
pub fn HIDDeviceRequestOptions::from_js(
  value : JsValue,
) -> HIDDeviceRequestOptions {
  HIDDeviceRequestOptions::from_js_ffi(value)
}

///|
/// HIDDeviceFilter dictionary
pub(all) struct HIDDeviceFilter {
  vendorId : Int?
  productId : Int?
  usagePage : Int?
  usage : Int?
}

///|
/// Create a new HIDDeviceFilter with default values
pub fn HIDDeviceFilter::default() -> HIDDeviceFilter {
  HIDDeviceFilter::{
    vendorId: None,
    productId: None,
    usagePage: None,
    usage: None,
  }
}

///|
extern "js" fn HIDDeviceFilter::to_js_ffi(self : HIDDeviceFilter) -> JsValue =
  #| (self) => ({
  #|   vendorId: self.vendorId,
  #|   productId: self.productId,
  #|   usagePage: self.usagePage,
  #|   usage: self.usage
  #| })

///|
/// Convert to JsValue
pub fn HIDDeviceFilter::to_js(self : HIDDeviceFilter) -> JsValue {
  HIDDeviceFilter::to_js_ffi(self)
}

///|
extern "js" fn HIDDeviceFilter::from_js_ffi(value : JsValue) -> HIDDeviceFilter =
  #| (v) => ({
  #|   vendorId: v.vendorId,
  #|   productId: v.productId,
  #|   usagePage: v.usagePage,
  #|   usage: v.usage
  #| })

///|
/// Convert from JsValue
pub fn HIDDeviceFilter::from_js(value : JsValue) -> HIDDeviceFilter {
  HIDDeviceFilter::from_js_ffi(value)
}

///|
/// HIDConnectionEventInit dictionary
pub(all) struct HIDConnectionEventInit {
  device : HIDDevice
}

///|
/// Create a new HIDConnectionEventInit
pub fn HIDConnectionEventInit::new(
  device~ : HIDDevice,
) -> HIDConnectionEventInit {
  HIDConnectionEventInit::{ device, }
}

///|
extern "js" fn HIDConnectionEventInit::to_js_ffi(
  self : HIDConnectionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   device: self.device
  #| })

///|
/// Convert to JsValue
pub fn HIDConnectionEventInit::to_js(self : HIDConnectionEventInit) -> JsValue {
  HIDConnectionEventInit::to_js_ffi(self)
}

///|
extern "js" fn HIDConnectionEventInit::from_js_ffi(
  value : JsValue,
) -> HIDConnectionEventInit =
  #| (v) => ({
  #|   device: v.device
  #| })

///|
/// Convert from JsValue
pub fn HIDConnectionEventInit::from_js(
  value : JsValue,
) -> HIDConnectionEventInit {
  HIDConnectionEventInit::from_js_ffi(value)
}

///|
/// HIDInputReportEventInit dictionary
pub(all) struct HIDInputReportEventInit {
  device : HIDDevice
  reportId : Int
  data : DataView
}

///|
/// Create a new HIDInputReportEventInit
pub fn HIDInputReportEventInit::new(
  device~ : HIDDevice,
  data~ : DataView,
) -> HIDInputReportEventInit {
  HIDInputReportEventInit::{ device, reportId: 0, data }
}

///|
extern "js" fn HIDInputReportEventInit::to_js_ffi(
  self : HIDInputReportEventInit,
) -> JsValue =
  #| (self) => ({
  #|   device: self.device,
  #|   reportId: self.reportId,
  #|   data: self.data
  #| })

///|
/// Convert to JsValue
pub fn HIDInputReportEventInit::to_js(
  self : HIDInputReportEventInit,
) -> JsValue {
  HIDInputReportEventInit::to_js_ffi(self)
}

///|
extern "js" fn HIDInputReportEventInit::from_js_ffi(
  value : JsValue,
) -> HIDInputReportEventInit =
  #| (v) => ({
  #|   device: v.device,
  #|   reportId: v.reportId,
  #|   data: v.data
  #| })

///|
/// Convert from JsValue
pub fn HIDInputReportEventInit::from_js(
  value : JsValue,
) -> HIDInputReportEventInit {
  HIDInputReportEventInit::from_js_ffi(value)
}

///|
/// HIDCollectionInfo dictionary
pub(all) struct HIDCollectionInfo {
  usagePage : Int?
  usage : Int?
  type_ : Int?
  children : Array[HIDCollectionInfo]?
  inputReports : Array[HIDReportInfo]?
  outputReports : Array[HIDReportInfo]?
  featureReports : Array[HIDReportInfo]?
}

///|
/// Create a new HIDCollectionInfo with default values
pub fn HIDCollectionInfo::default() -> HIDCollectionInfo {
  HIDCollectionInfo::{
    usagePage: None,
    usage: None,
    type_: None,
    children: None,
    inputReports: None,
    outputReports: None,
    featureReports: None,
  }
}

///|
extern "js" fn HIDCollectionInfo::to_js_ffi(
  self : HIDCollectionInfo,
) -> JsValue =
  #| (self) => ({
  #|   usagePage: self.usagePage,
  #|   usage: self.usage,
  #|   type: self.type_,
  #|   children: ((() => { const v = self.children; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   inputReports: ((() => { const v = self.inputReports; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   outputReports: ((() => { const v = self.outputReports; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   featureReports: ((() => { const v = self.featureReports; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn HIDCollectionInfo::to_js(self : HIDCollectionInfo) -> JsValue {
  HIDCollectionInfo::to_js_ffi(self)
}

///|
extern "js" fn HIDCollectionInfo::from_js_ffi(
  value : JsValue,
) -> HIDCollectionInfo =
  #| (v) => ({
  #|   usagePage: v.usagePage,
  #|   usage: v.usage,
  #|   type_: v.type,
  #|   children: (v.children === undefined ? { $tag: 0 } : { $tag: 1, _0: v.children }),
  #|   inputReports: (v.inputReports === undefined ? { $tag: 0 } : { $tag: 1, _0: v.inputReports }),
  #|   outputReports: (v.outputReports === undefined ? { $tag: 0 } : { $tag: 1, _0: v.outputReports }),
  #|   featureReports: (v.featureReports === undefined ? { $tag: 0 } : { $tag: 1, _0: v.featureReports })
  #| })

///|
/// Convert from JsValue
pub fn HIDCollectionInfo::from_js(value : JsValue) -> HIDCollectionInfo {
  HIDCollectionInfo::from_js_ffi(value)
}

///|
/// HIDReportInfo dictionary
pub(all) struct HIDReportInfo {
  reportId : Int?
  items : Array[HIDReportItem]?
}

///|
/// Create a new HIDReportInfo with default values
pub fn HIDReportInfo::default() -> HIDReportInfo {
  HIDReportInfo::{ reportId: None, items: None }
}

///|
extern "js" fn HIDReportInfo::to_js_ffi(self : HIDReportInfo) -> JsValue =
  #| (self) => ({
  #|   reportId: self.reportId,
  #|   items: ((() => { const v = self.items; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn HIDReportInfo::to_js(self : HIDReportInfo) -> JsValue {
  HIDReportInfo::to_js_ffi(self)
}

///|
extern "js" fn HIDReportInfo::from_js_ffi(value : JsValue) -> HIDReportInfo =
  #| (v) => ({
  #|   reportId: v.reportId,
  #|   items: (v.items === undefined ? { $tag: 0 } : { $tag: 1, _0: v.items })
  #| })

///|
/// Convert from JsValue
pub fn HIDReportInfo::from_js(value : JsValue) -> HIDReportInfo {
  HIDReportInfo::from_js_ffi(value)
}

///|
/// HIDReportItem dictionary
pub(all) struct HIDReportItem {
  isAbsolute : Bool?
  isArray : Bool?
  isBufferedBytes : Bool?
  isConstant : Bool?
  isLinear : Bool?
  isRange : Bool?
  isVolatile : Bool?
  hasNull : Bool?
  hasPreferredState : Bool?
  wrap : Bool?
  usages : Array[Int]?
  usageMinimum : Int?
  usageMaximum : Int?
  reportSize : Int?
  reportCount : Int?
  unitExponent : Int?
  unitSystem : HIDUnitSystem?
  unitFactorLengthExponent : Int?
  unitFactorMassExponent : Int?
  unitFactorTimeExponent : Int?
  unitFactorTemperatureExponent : Int?
  unitFactorCurrentExponent : Int?
  unitFactorLuminousIntensityExponent : Int?
  logicalMinimum : Int?
  logicalMaximum : Int?
  physicalMinimum : Int?
  physicalMaximum : Int?
  strings : Array[String]?
}

///|
/// Create a new HIDReportItem with default values
pub fn HIDReportItem::default() -> HIDReportItem {
  HIDReportItem::{
    isAbsolute: None,
    isArray: None,
    isBufferedBytes: None,
    isConstant: None,
    isLinear: None,
    isRange: None,
    isVolatile: None,
    hasNull: None,
    hasPreferredState: None,
    wrap: None,
    usages: None,
    usageMinimum: None,
    usageMaximum: None,
    reportSize: None,
    reportCount: None,
    unitExponent: None,
    unitSystem: None,
    unitFactorLengthExponent: None,
    unitFactorMassExponent: None,
    unitFactorTimeExponent: None,
    unitFactorTemperatureExponent: None,
    unitFactorCurrentExponent: None,
    unitFactorLuminousIntensityExponent: None,
    logicalMinimum: None,
    logicalMaximum: None,
    physicalMinimum: None,
    physicalMaximum: None,
    strings: None,
  }
}

///|
extern "js" fn HIDReportItem::to_js_ffi(self : HIDReportItem) -> JsValue =
  #| (self) => ({
  #|   isAbsolute: (self.isAbsolute === -1 ? undefined : self.isAbsolute),
  #|   isArray: (self.isArray === -1 ? undefined : self.isArray),
  #|   isBufferedBytes: (self.isBufferedBytes === -1 ? undefined : self.isBufferedBytes),
  #|   isConstant: (self.isConstant === -1 ? undefined : self.isConstant),
  #|   isLinear: (self.isLinear === -1 ? undefined : self.isLinear),
  #|   isRange: (self.isRange === -1 ? undefined : self.isRange),
  #|   isVolatile: (self.isVolatile === -1 ? undefined : self.isVolatile),
  #|   hasNull: (self.hasNull === -1 ? undefined : self.hasNull),
  #|   hasPreferredState: (self.hasPreferredState === -1 ? undefined : self.hasPreferredState),
  #|   wrap: (self.wrap === -1 ? undefined : self.wrap),
  #|   usages: ((() => { const v = self.usages; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   usageMinimum: self.usageMinimum,
  #|   usageMaximum: self.usageMaximum,
  #|   reportSize: self.reportSize,
  #|   reportCount: self.reportCount,
  #|   unitExponent: self.unitExponent,
  #|   unitSystem: ((() => { const v = self.unitSystem; if (v === undefined) return undefined; return ['none', 'si-linear', 'si-rotation', 'english-linear', 'english-rotation', 'vendor-defined', 'reserved'][v]; })()),
  #|   unitFactorLengthExponent: self.unitFactorLengthExponent,
  #|   unitFactorMassExponent: self.unitFactorMassExponent,
  #|   unitFactorTimeExponent: self.unitFactorTimeExponent,
  #|   unitFactorTemperatureExponent: self.unitFactorTemperatureExponent,
  #|   unitFactorCurrentExponent: self.unitFactorCurrentExponent,
  #|   unitFactorLuminousIntensityExponent: self.unitFactorLuminousIntensityExponent,
  #|   logicalMinimum: self.logicalMinimum,
  #|   logicalMaximum: self.logicalMaximum,
  #|   physicalMinimum: self.physicalMinimum,
  #|   physicalMaximum: self.physicalMaximum,
  #|   strings: ((() => { const v = self.strings; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn HIDReportItem::to_js(self : HIDReportItem) -> JsValue {
  HIDReportItem::to_js_ffi(self)
}

///|
extern "js" fn HIDReportItem::from_js_ffi(value : JsValue) -> HIDReportItem =
  #| (v) => ({
  #|   isAbsolute: (v.isAbsolute === undefined ? -1 : v.isAbsolute),
  #|   isArray: (v.isArray === undefined ? -1 : v.isArray),
  #|   isBufferedBytes: (v.isBufferedBytes === undefined ? -1 : v.isBufferedBytes),
  #|   isConstant: (v.isConstant === undefined ? -1 : v.isConstant),
  #|   isLinear: (v.isLinear === undefined ? -1 : v.isLinear),
  #|   isRange: (v.isRange === undefined ? -1 : v.isRange),
  #|   isVolatile: (v.isVolatile === undefined ? -1 : v.isVolatile),
  #|   hasNull: (v.hasNull === undefined ? -1 : v.hasNull),
  #|   hasPreferredState: (v.hasPreferredState === undefined ? -1 : v.hasPreferredState),
  #|   wrap: (v.wrap === undefined ? -1 : v.wrap),
  #|   usages: (v.usages === undefined ? { $tag: 0 } : { $tag: 1, _0: v.usages }),
  #|   usageMinimum: v.usageMinimum,
  #|   usageMaximum: v.usageMaximum,
  #|   reportSize: v.reportSize,
  #|   reportCount: v.reportCount,
  #|   unitExponent: v.unitExponent,
  #|   unitSystem: (v.unitSystem === undefined ? undefined : ['none', 'si-linear', 'si-rotation', 'english-linear', 'english-rotation', 'vendor-defined', 'reserved'].indexOf(v.unitSystem)),
  #|   unitFactorLengthExponent: v.unitFactorLengthExponent,
  #|   unitFactorMassExponent: v.unitFactorMassExponent,
  #|   unitFactorTimeExponent: v.unitFactorTimeExponent,
  #|   unitFactorTemperatureExponent: v.unitFactorTemperatureExponent,
  #|   unitFactorCurrentExponent: v.unitFactorCurrentExponent,
  #|   unitFactorLuminousIntensityExponent: v.unitFactorLuminousIntensityExponent,
  #|   logicalMinimum: v.logicalMinimum,
  #|   logicalMaximum: v.logicalMaximum,
  #|   physicalMinimum: v.physicalMinimum,
  #|   physicalMaximum: v.physicalMaximum,
  #|   strings: (v.strings === undefined ? { $tag: 0 } : { $tag: 1, _0: v.strings })
  #| })

///|
/// Convert from JsValue
pub fn HIDReportItem::from_js(value : JsValue) -> HIDReportItem {
  HIDReportItem::from_js_ffi(value)
}

///|
/// HID interface
pub type HID

///|
pub extern "js" fn HID::to_js_value(self : HID) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HID (unchecked)
pub extern "js" fn HID::from_js_value(v : JsValue) -> HID =
  #| (v) => v

///|
/// Safely cast JsValue to HID (checked with instanceof)
pub extern "js" fn HID::from_js_value_opt(v : JsValue) -> HID? =
  #| (v) => (v instanceof HID) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HID (checked with instanceof)
pub extern "js" fn JsValue::as_hid(self : JsValue) -> HID? =
  #| (self) => (self instanceof HID) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HID (unchecked)
pub extern "js" fn JsValue::to_hid(self : JsValue) -> HID =
  #| (self) => self

///|
pub extern "js" fn HID::to_event_target(self : HID) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HID::get_onconnect(self : HID) -> EventHandler =
  #| (self) => self.onconnect

///|
pub extern "js" fn HID::set_onconnect(self : HID, value : EventHandler) -> Unit =
  #| (self, value) => { self.onconnect = value }

///|
pub extern "js" fn HID::get_ondisconnect(self : HID) -> EventHandler =
  #| (self) => self.ondisconnect

///|
pub extern "js" fn HID::set_ondisconnect(
  self : HID,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondisconnect = value }

///|
pub extern "js" fn HID::get_devices(self : HID) -> Promise[Array[HIDDevice]] =
  #| (self) => self.getDevices()

///|
extern "js" fn HID::request_device_ffi(
  self : HID,
  options : JsValue,
) -> Promise[Array[HIDDevice]] =
  #| (self, options) => self.requestDevice(options)

///|
pub fn HID::request_device(
  self : HID,
  options : HIDDeviceRequestOptions,
) -> Promise[Array[HIDDevice]] {
  HID::request_device_ffi(self, options.to_js())
}

///|
/// HIDDevice interface
pub type HIDDevice

///|
pub extern "js" fn HIDDevice::to_js_value(self : HIDDevice) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HIDDevice (unchecked)
pub extern "js" fn HIDDevice::from_js_value(v : JsValue) -> HIDDevice =
  #| (v) => v

///|
/// Safely cast JsValue to HIDDevice (checked with instanceof)
pub extern "js" fn HIDDevice::from_js_value_opt(v : JsValue) -> HIDDevice? =
  #| (v) => (v instanceof HIDDevice) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HIDDevice (checked with instanceof)
pub extern "js" fn JsValue::as_hid_device(self : JsValue) -> HIDDevice? =
  #| (self) => (self instanceof HIDDevice) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HIDDevice (unchecked)
pub extern "js" fn JsValue::to_hid_device(self : JsValue) -> HIDDevice =
  #| (self) => self

///|
pub extern "js" fn HIDDevice::to_event_target(self : HIDDevice) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HIDDevice::get_oninputreport(
  self : HIDDevice,
) -> EventHandler =
  #| (self) => self.oninputreport

///|
pub extern "js" fn HIDDevice::set_oninputreport(
  self : HIDDevice,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oninputreport = value }

///|
pub extern "js" fn HIDDevice::get_opened(self : HIDDevice) -> Bool =
  #| (self) => self.opened

///|
pub extern "js" fn HIDDevice::get_vendor_id(self : HIDDevice) -> Int =
  #| (self) => self.vendorId

///|
pub extern "js" fn HIDDevice::get_product_id(self : HIDDevice) -> Int =
  #| (self) => self.productId

///|
pub extern "js" fn HIDDevice::get_product_name(self : HIDDevice) -> String =
  #| (self) => self.productName

///|
pub extern "js" fn HIDDevice::get_collections(self : HIDDevice) -> JsValue =
  #| (self) => self.collections

///|
pub extern "js" fn HIDDevice::open(self : HIDDevice) -> Promise[Unit] =
  #| (self) => self.open()

///|
pub extern "js" fn HIDDevice::close(self : HIDDevice) -> Promise[Unit] =
  #| (self) => self.close()

///|
pub extern "js" fn HIDDevice::forget(self : HIDDevice) -> Promise[Unit] =
  #| (self) => self.forget()

///|
pub extern "js" fn HIDDevice::send_report(
  self : HIDDevice,
  report_id : Int,
  data : BufferSource,
) -> Promise[Unit] =
  #| (self, report_id, data) => self.sendReport(report_id, data)

///|
pub extern "js" fn HIDDevice::send_feature_report(
  self : HIDDevice,
  report_id : Int,
  data : BufferSource,
) -> Promise[Unit] =
  #| (self, report_id, data) => self.sendFeatureReport(report_id, data)

///|
pub extern "js" fn HIDDevice::receive_feature_report(
  self : HIDDevice,
  report_id : Int,
) -> Promise[DataView] =
  #| (self, report_id) => self.receiveFeatureReport(report_id)

///|
pub extern "js" fn HIDDevice::send_report_with_array_buffer_view(
  self : HIDDevice,
  report_id : Int,
  data : ArrayBufferView,
) -> Promise[Unit] =
  #| (self, report_id, data) => self.sendReport(report_id, data)

///|
pub extern "js" fn HIDDevice::send_report_with_array_buffer(
  self : HIDDevice,
  report_id : Int,
  data : ArrayBuffer,
) -> Promise[Unit] =
  #| (self, report_id, data) => self.sendReport(report_id, data)

///|
pub extern "js" fn HIDDevice::send_feature_report_with_array_buffer_view(
  self : HIDDevice,
  report_id : Int,
  data : ArrayBufferView,
) -> Promise[Unit] =
  #| (self, report_id, data) => self.sendFeatureReport(report_id, data)

///|
pub extern "js" fn HIDDevice::send_feature_report_with_array_buffer(
  self : HIDDevice,
  report_id : Int,
  data : ArrayBuffer,
) -> Promise[Unit] =
  #| (self, report_id, data) => self.sendFeatureReport(report_id, data)

///|
/// HIDConnectionEvent interface
pub type HIDConnectionEvent

///|
pub extern "js" fn HIDConnectionEvent::to_js_value(
  self : HIDConnectionEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HIDConnectionEvent (unchecked)
pub extern "js" fn HIDConnectionEvent::from_js_value(
  v : JsValue,
) -> HIDConnectionEvent =
  #| (v) => v

///|
/// Safely cast JsValue to HIDConnectionEvent (checked with instanceof)
pub extern "js" fn HIDConnectionEvent::from_js_value_opt(
  v : JsValue,
) -> HIDConnectionEvent? =
  #| (v) => (v instanceof HIDConnectionEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HIDConnectionEvent (checked with instanceof)
pub extern "js" fn JsValue::as_hid_connection_event(
  self : JsValue,
) -> HIDConnectionEvent? =
  #| (self) => (self instanceof HIDConnectionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HIDConnectionEvent (unchecked)
pub extern "js" fn JsValue::to_hid_connection_event(
  self : JsValue,
) -> HIDConnectionEvent =
  #| (self) => self

///|
pub extern "js" fn HIDConnectionEvent::to_event(
  self : HIDConnectionEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn HIDConnectionEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> HIDConnectionEvent =
  #| (type_, event_init_dict) => new HIDConnectionEvent(type_, event_init_dict)

///|
pub fn HIDConnectionEvent::new(
  type_ : String,
  event_init_dict : HIDConnectionEventInit,
) -> HIDConnectionEvent {
  HIDConnectionEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn HIDConnectionEvent::get_device(
  self : HIDConnectionEvent,
) -> HIDDevice =
  #| (self) => self.device

///|
/// HIDInputReportEvent interface
pub type HIDInputReportEvent

///|
pub extern "js" fn HIDInputReportEvent::to_js_value(
  self : HIDInputReportEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HIDInputReportEvent (unchecked)
pub extern "js" fn HIDInputReportEvent::from_js_value(
  v : JsValue,
) -> HIDInputReportEvent =
  #| (v) => v

///|
/// Safely cast JsValue to HIDInputReportEvent (checked with instanceof)
pub extern "js" fn HIDInputReportEvent::from_js_value_opt(
  v : JsValue,
) -> HIDInputReportEvent? =
  #| (v) => (v instanceof HIDInputReportEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HIDInputReportEvent (checked with instanceof)
pub extern "js" fn JsValue::as_hid_input_report_event(
  self : JsValue,
) -> HIDInputReportEvent? =
  #| (self) => (self instanceof HIDInputReportEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HIDInputReportEvent (unchecked)
pub extern "js" fn JsValue::to_hid_input_report_event(
  self : JsValue,
) -> HIDInputReportEvent =
  #| (self) => self

///|
pub extern "js" fn HIDInputReportEvent::to_event(
  self : HIDInputReportEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn HIDInputReportEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> HIDInputReportEvent =
  #| (type_, event_init_dict) => new HIDInputReportEvent(type_, event_init_dict)

///|
pub fn HIDInputReportEvent::new(
  type_ : String,
  event_init_dict : HIDInputReportEventInit,
) -> HIDInputReportEvent {
  HIDInputReportEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn HIDInputReportEvent::get_device(
  self : HIDInputReportEvent,
) -> HIDDevice =
  #| (self) => self.device

///|
pub extern "js" fn HIDInputReportEvent::get_report_id(
  self : HIDInputReportEvent,
) -> Int =
  #| (self) => self.reportId

///|
pub extern "js" fn HIDInputReportEvent::get_data(
  self : HIDInputReportEvent,
) -> DataView =
  #| (self) => self.data
