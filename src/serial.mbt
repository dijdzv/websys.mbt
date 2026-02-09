// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/serial

///|
/// ParityType enum
pub(all) enum ParityType {
  None
  Even
  Odd
}

///|
/// Convert to string value
pub fn ParityType::to_string(self : ParityType) -> String {
  match self {
    ParityType::None => "none"
    ParityType::Even => "even"
    ParityType::Odd => "odd"
  }
}

///|
/// Parse from string value
pub fn ParityType::from_string(s : String) -> ParityType? {
  match s {
    "none" => Some(ParityType::None)
    "even" => Some(ParityType::Even)
    "odd" => Some(ParityType::Odd)
    _ => None
  }
}

///|
/// FlowControlType enum
pub(all) enum FlowControlType {
  None
  Hardware
}

///|
/// Convert to string value
pub fn FlowControlType::to_string(self : FlowControlType) -> String {
  match self {
    FlowControlType::None => "none"
    FlowControlType::Hardware => "hardware"
  }
}

///|
/// Parse from string value
pub fn FlowControlType::from_string(s : String) -> FlowControlType? {
  match s {
    "none" => Some(FlowControlType::None)
    "hardware" => Some(FlowControlType::Hardware)
    _ => None
  }
}

///|
/// SerialPortRequestOptions dictionary
pub(all) struct SerialPortRequestOptions {
  filters : Array[SerialPortFilter]?
  allowedBluetoothServiceClassIds : Array[BluetoothServiceUUID]?
}

///|
/// Create a new SerialPortRequestOptions with default values
pub fn SerialPortRequestOptions::default() -> SerialPortRequestOptions {
  SerialPortRequestOptions::{
    filters: None,
    allowedBluetoothServiceClassIds: None,
  }
}

///|
extern "js" fn SerialPortRequestOptions::to_js_ffi(
  self : SerialPortRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   filters: ((() => { const v = self.filters; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   allowedBluetoothServiceClassIds: ((() => { const v = self.allowedBluetoothServiceClassIds; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn SerialPortRequestOptions::to_js(
  self : SerialPortRequestOptions,
) -> JsValue {
  SerialPortRequestOptions::to_js_ffi(self)
}

///|
/// SerialPortFilter dictionary
pub(all) struct SerialPortFilter {
  usbVendorId : Int?
  usbProductId : Int?
  bluetoothServiceClassId : BluetoothServiceUUID?
}

///|
/// Create a new SerialPortFilter with default values
pub fn SerialPortFilter::default() -> SerialPortFilter {
  SerialPortFilter::{
    usbVendorId: None,
    usbProductId: None,
    bluetoothServiceClassId: None,
  }
}

///|
extern "js" fn SerialPortFilter::to_js_ffi(self : SerialPortFilter) -> JsValue =
  #| (self) => ({
  #|   usbVendorId: self.usbVendorId,
  #|   usbProductId: self.usbProductId,
  #|   bluetoothServiceClassId: ((() => { const v = self.bluetoothServiceClassId; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn SerialPortFilter::to_js(self : SerialPortFilter) -> JsValue {
  SerialPortFilter::to_js_ffi(self)
}

///|
/// SerialPortInfo dictionary
pub(all) struct SerialPortInfo {
  usbVendorId : Int?
  usbProductId : Int?
  bluetoothServiceClassId : BluetoothServiceUUID?
}

///|
/// Create a new SerialPortInfo with default values
pub fn SerialPortInfo::default() -> SerialPortInfo {
  SerialPortInfo::{
    usbVendorId: None,
    usbProductId: None,
    bluetoothServiceClassId: None,
  }
}

///|
extern "js" fn SerialPortInfo::to_js_ffi(self : SerialPortInfo) -> JsValue =
  #| (self) => ({
  #|   usbVendorId: self.usbVendorId,
  #|   usbProductId: self.usbProductId,
  #|   bluetoothServiceClassId: ((() => { const v = self.bluetoothServiceClassId; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn SerialPortInfo::to_js(self : SerialPortInfo) -> JsValue {
  SerialPortInfo::to_js_ffi(self)
}

///|
/// SerialOptions dictionary
pub(all) struct SerialOptions {
  baudRate : Int
  dataBits : Int?
  stopBits : Int?
  parity : ParityType?
  bufferSize : Int?
  flowControl : FlowControlType?
}

///|
/// Create a new SerialOptions with default values
pub fn SerialOptions::default() -> SerialOptions {
  SerialOptions::{
    baudRate: 0,
    dataBits: None,
    stopBits: None,
    parity: None,
    bufferSize: None,
    flowControl: None,
  }
}

///|
extern "js" fn SerialOptions::to_js_ffi(self : SerialOptions) -> JsValue =
  #| (self) => ({
  #|   baudRate: self.baudRate,
  #|   dataBits: self.dataBits,
  #|   stopBits: self.stopBits,
  #|   parity: ((() => { const v = self.parity; if (v === undefined) return undefined; return ['none', 'even', 'odd'][v]; })()),
  #|   bufferSize: self.bufferSize,
  #|   flowControl: ((() => { const v = self.flowControl; if (v === undefined) return undefined; return ['none', 'hardware'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn SerialOptions::to_js(self : SerialOptions) -> JsValue {
  SerialOptions::to_js_ffi(self)
}

///|
/// SerialOutputSignals dictionary
pub(all) struct SerialOutputSignals {
  dataTerminalReady : Bool?
  requestToSend : Bool?
  break_ : Bool?
}

///|
/// Create a new SerialOutputSignals with default values
pub fn SerialOutputSignals::default() -> SerialOutputSignals {
  SerialOutputSignals::{
    dataTerminalReady: None,
    requestToSend: None,
    break_: None,
  }
}

///|
extern "js" fn SerialOutputSignals::to_js_ffi(
  self : SerialOutputSignals,
) -> JsValue =
  #| (self) => ({
  #|   dataTerminalReady: (self.dataTerminalReady === -1 ? undefined : self.dataTerminalReady),
  #|   requestToSend: (self.requestToSend === -1 ? undefined : self.requestToSend),
  #|   break: (self.break_ === -1 ? undefined : self.break_)
  #| })

///|
/// Convert to JsValue
pub fn SerialOutputSignals::to_js(self : SerialOutputSignals) -> JsValue {
  SerialOutputSignals::to_js_ffi(self)
}

///|
/// SerialInputSignals dictionary
pub(all) struct SerialInputSignals {
  dataCarrierDetect : Bool
  clearToSend : Bool
  ringIndicator : Bool
  dataSetReady : Bool
}

///|
/// Create a new SerialInputSignals with default values
pub fn SerialInputSignals::default() -> SerialInputSignals {
  SerialInputSignals::{
    dataCarrierDetect: false,
    clearToSend: false,
    ringIndicator: false,
    dataSetReady: false,
  }
}

///|
extern "js" fn SerialInputSignals::to_js_ffi(
  self : SerialInputSignals,
) -> JsValue =
  #| (self) => ({
  #|   dataCarrierDetect: self.dataCarrierDetect,
  #|   clearToSend: self.clearToSend,
  #|   ringIndicator: self.ringIndicator,
  #|   dataSetReady: self.dataSetReady
  #| })

///|
/// Convert to JsValue
pub fn SerialInputSignals::to_js(self : SerialInputSignals) -> JsValue {
  SerialInputSignals::to_js_ffi(self)
}

///|
/// Serial interface
pub type Serial

///|
pub extern "js" fn Serial::to_js_value(self : Serial) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Serial (unchecked)
pub extern "js" fn Serial::from_js_value(v : JsValue) -> Serial =
  #| (v) => v

///|
/// Safely cast JsValue to Serial (checked with instanceof)
pub extern "js" fn Serial::from_js_value_opt(v : JsValue) -> Serial? =
  #| (v) => (v instanceof Serial) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Serial (checked with instanceof)
pub extern "js" fn JsValue::as_serial(self : JsValue) -> Serial? =
  #| (self) => (self instanceof Serial) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Serial (unchecked)
pub extern "js" fn JsValue::to_serial(self : JsValue) -> Serial =
  #| (self) => self

///|
pub extern "js" fn Serial::to_event_target(self : Serial) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Serial::get_onconnect(self : Serial) -> EventHandler =
  #| (self) => self.onconnect

///|
pub extern "js" fn Serial::set_onconnect(
  self : Serial,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onconnect = value }

///|
pub extern "js" fn Serial::get_ondisconnect(self : Serial) -> EventHandler =
  #| (self) => self.ondisconnect

///|
pub extern "js" fn Serial::set_ondisconnect(
  self : Serial,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondisconnect = value }

///|
pub extern "js" fn Serial::get_ports(
  self : Serial,
) -> Promise[Array[SerialPort]] =
  #| (self) => self.getPorts()

///|
pub extern "js" fn Serial::request_port(self : Serial) -> Promise[SerialPort] =
  #| (self) => self.requestPort()

///|
extern "js" fn Serial::request_port_with_options_ffi(
  self : Serial,
  options : JsValue,
) -> Promise[SerialPort] =
  #| (self, options) => self.requestPort(options)

///|
pub fn Serial::request_port_with_options(
  self : Serial,
  options : SerialPortRequestOptions,
) -> Promise[SerialPort] {
  Serial::request_port_with_options_ffi(self, options.to_js())
}

///|
/// SerialPort interface
pub type SerialPort

///|
pub extern "js" fn SerialPort::to_js_value(self : SerialPort) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SerialPort (unchecked)
pub extern "js" fn SerialPort::from_js_value(v : JsValue) -> SerialPort =
  #| (v) => v

///|
/// Safely cast JsValue to SerialPort (checked with instanceof)
pub extern "js" fn SerialPort::from_js_value_opt(v : JsValue) -> SerialPort? =
  #| (v) => (v instanceof SerialPort) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SerialPort (checked with instanceof)
pub extern "js" fn JsValue::as_serial_port(self : JsValue) -> SerialPort? =
  #| (self) => (self instanceof SerialPort) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SerialPort (unchecked)
pub extern "js" fn JsValue::to_serial_port(self : JsValue) -> SerialPort =
  #| (self) => self

///|
pub extern "js" fn SerialPort::to_event_target(
  self : SerialPort,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SerialPort::get_onconnect(self : SerialPort) -> EventHandler =
  #| (self) => self.onconnect

///|
pub extern "js" fn SerialPort::set_onconnect(
  self : SerialPort,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onconnect = value }

///|
pub extern "js" fn SerialPort::get_ondisconnect(
  self : SerialPort,
) -> EventHandler =
  #| (self) => self.ondisconnect

///|
pub extern "js" fn SerialPort::set_ondisconnect(
  self : SerialPort,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondisconnect = value }

///|
pub extern "js" fn SerialPort::get_connected(self : SerialPort) -> Bool =
  #| (self) => self.connected

///|
pub extern "js" fn SerialPort::get_readable(
  self : SerialPort,
) -> ReadableStream =
  #| (self) => self.readable

///|
pub extern "js" fn SerialPort::get_writable(
  self : SerialPort,
) -> WritableStream =
  #| (self) => self.writable

///|
pub extern "js" fn SerialPort::get_info(self : SerialPort) -> SerialPortInfo =
  #| (self) => self.getInfo()

///|
extern "js" fn SerialPort::open_ffi(
  self : SerialPort,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.open(options)

///|
pub fn SerialPort::open(
  self : SerialPort,
  options : SerialOptions,
) -> Promise[Unit] {
  SerialPort::open_ffi(self, options.to_js())
}

///|
pub extern "js" fn SerialPort::set_signals(self : SerialPort) -> Promise[Unit] =
  #| (self) => self.setSignals()

///|
extern "js" fn SerialPort::set_signals_with_signals_ffi(
  self : SerialPort,
  signals : JsValue,
) -> Promise[Unit] =
  #| (self, signals) => self.setSignals(signals)

///|
pub fn SerialPort::set_signals_with_signals(
  self : SerialPort,
  signals : SerialOutputSignals,
) -> Promise[Unit] {
  SerialPort::set_signals_with_signals_ffi(self, signals.to_js())
}

///|
pub extern "js" fn SerialPort::get_signals(
  self : SerialPort,
) -> Promise[SerialInputSignals] =
  #| (self) => self.getSignals()

///|
pub extern "js" fn SerialPort::close(self : SerialPort) -> Promise[Unit] =
  #| (self) => self.close()

///|
pub extern "js" fn SerialPort::forget(self : SerialPort) -> Promise[Unit] =
  #| (self) => self.forget()
