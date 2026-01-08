// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webmidi

///|
/// MIDIPortType enum
pub(all) enum MIDIPortType {
  Input
  Output
}

///|
/// Convert to string value
pub fn MIDIPortType::to_string(self : MIDIPortType) -> String {
  match self {
    Input => "input"
    Output => "output"
  }
}

///|
/// Parse from string value
pub fn MIDIPortType::from_string(s : String) -> MIDIPortType? {
  match s {
    "input" => Some(Input)
    "output" => Some(Output)
    _ => None
  }
}

///|
/// MIDIPortDeviceState enum
pub(all) enum MIDIPortDeviceState {
  Disconnected
  Connected
}

///|
/// Convert to string value
pub fn MIDIPortDeviceState::to_string(self : MIDIPortDeviceState) -> String {
  match self {
    Disconnected => "disconnected"
    Connected => "connected"
  }
}

///|
/// Parse from string value
pub fn MIDIPortDeviceState::from_string(s : String) -> MIDIPortDeviceState? {
  match s {
    "disconnected" => Some(Disconnected)
    "connected" => Some(Connected)
    _ => None
  }
}

///|
/// MIDIPortConnectionState enum
pub(all) enum MIDIPortConnectionState {
  Open
  Closed
  Pending
}

///|
/// Convert to string value
pub fn MIDIPortConnectionState::to_string(
  self : MIDIPortConnectionState,
) -> String {
  match self {
    Open => "open"
    Closed => "closed"
    Pending => "pending"
  }
}

///|
/// Parse from string value
pub fn MIDIPortConnectionState::from_string(
  s : String,
) -> MIDIPortConnectionState? {
  match s {
    "open" => Some(Open)
    "closed" => Some(Closed)
    "pending" => Some(Pending)
    _ => None
  }
}

///|
/// MidiPermissionDescriptor dictionary
pub struct MidiPermissionDescriptor {
  sysex : Bool?
}

///|
/// Create a new MidiPermissionDescriptor with default values
pub fn MidiPermissionDescriptor::default() -> MidiPermissionDescriptor {
  MidiPermissionDescriptor::{ sysex: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MidiPermissionDescriptor::to_js(
  self : MidiPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   sysex: self.sysex
  #| })

///|
/// MIDIOptions dictionary
pub struct MIDIOptions {
  sysex : Bool?
  software : Bool?
}

///|
/// Create a new MIDIOptions with default values
pub fn MIDIOptions::default() -> MIDIOptions {
  MIDIOptions::{ sysex: None, software: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MIDIOptions::to_js(self : MIDIOptions) -> JsValue =
  #| (self) => ({
  #|   sysex: self.sysex,
  #|   software: self.software
  #| })

///|
/// MIDIMessageEventInit dictionary
pub struct MIDIMessageEventInit {
  data : Uint8Array?
}

///|
/// Create a new MIDIMessageEventInit with default values
pub fn MIDIMessageEventInit::default() -> MIDIMessageEventInit {
  MIDIMessageEventInit::{ data: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MIDIMessageEventInit::to_js(
  self : MIDIMessageEventInit,
) -> JsValue =
  #| (self) => ({
  #|   data: self.data
  #| })

///|
/// MIDIConnectionEventInit dictionary
pub struct MIDIConnectionEventInit {
  port : MIDIPort?
}

///|
/// Create a new MIDIConnectionEventInit with default values
pub fn MIDIConnectionEventInit::default() -> MIDIConnectionEventInit {
  MIDIConnectionEventInit::{ port: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MIDIConnectionEventInit::to_js(
  self : MIDIConnectionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   port: self.port
  #| })

///|
/// MIDIInputMap interface
pub type MIDIInputMap

///|
pub extern "js" fn MIDIInputMap::to_js_value(self : MIDIInputMap) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MIDIInputMap::get(
  self : MIDIInputMap,
  key : String,
) -> MIDIInput? =
  #| (self, key) => self.get(key)

///|
pub extern "js" fn MIDIInputMap::has(self : MIDIInputMap, key : String) -> Bool =
  #| (self, key) => self.has(key)

///|
/// MIDIOutputMap interface
pub type MIDIOutputMap

///|
pub extern "js" fn MIDIOutputMap::to_js_value(self : MIDIOutputMap) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MIDIOutputMap::get(
  self : MIDIOutputMap,
  key : String,
) -> MIDIOutput? =
  #| (self, key) => self.get(key)

///|
pub extern "js" fn MIDIOutputMap::has(
  self : MIDIOutputMap,
  key : String,
) -> Bool =
  #| (self, key) => self.has(key)

///|
/// MIDIAccess interface
pub type MIDIAccess

///|
pub extern "js" fn MIDIAccess::to_js_value(self : MIDIAccess) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MIDIAccess::get_inputs(self : MIDIAccess) -> MIDIInputMap =
  #| (self) => self.inputs

///|
pub extern "js" fn MIDIAccess::get_outputs(self : MIDIAccess) -> MIDIOutputMap =
  #| (self) => self.outputs

///|
pub extern "js" fn MIDIAccess::get_onstatechange(
  self : MIDIAccess,
) -> EventHandler =
  #| (self) => self.onstatechange

///|
pub extern "js" fn MIDIAccess::set_onstatechange(
  self : MIDIAccess,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstatechange = value }

///|
pub extern "js" fn MIDIAccess::get_sysex_enabled(self : MIDIAccess) -> Bool =
  #| (self) => self.sysexEnabled

///|
/// MIDIPort interface
pub type MIDIPort

///|
pub extern "js" fn MIDIPort::to_js_value(self : MIDIPort) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MIDIPort::get_id(self : MIDIPort) -> String =
  #| (self) => self.id

///|
pub extern "js" fn MIDIPort::get_manufacturer(self : MIDIPort) -> String? =
  #| (self) => self.manufacturer

///|
pub extern "js" fn MIDIPort::get_name(self : MIDIPort) -> String? =
  #| (self) => self.name

///|
pub extern "js" fn MIDIPort::get_type(self : MIDIPort) -> MIDIPortType =
  #| (self) => self.type

///|
pub extern "js" fn MIDIPort::get_version(self : MIDIPort) -> String? =
  #| (self) => self.version

///|
pub extern "js" fn MIDIPort::get_state(self : MIDIPort) -> MIDIPortDeviceState =
  #| (self) => self.state

///|
pub extern "js" fn MIDIPort::get_connection(
  self : MIDIPort,
) -> MIDIPortConnectionState =
  #| (self) => self.connection

///|
pub extern "js" fn MIDIPort::get_onstatechange(self : MIDIPort) -> EventHandler =
  #| (self) => self.onstatechange

///|
pub extern "js" fn MIDIPort::set_onstatechange(
  self : MIDIPort,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstatechange = value }

///|
pub extern "js" fn MIDIPort::open(self : MIDIPort) -> Promise[MIDIPort] =
  #| (self) => self.open()

///|
pub extern "js" fn MIDIPort::close(self : MIDIPort) -> Promise[MIDIPort] =
  #| (self) => self.close()

///|
/// MIDIInput interface
pub type MIDIInput

///|
pub extern "js" fn MIDIInput::to_js_value(self : MIDIInput) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MIDIInput::get_id(self : MIDIInput) -> String =
  #| (self) => self.id

///|
pub extern "js" fn MIDIInput::get_manufacturer(self : MIDIInput) -> String? =
  #| (self) => self.manufacturer

///|
pub extern "js" fn MIDIInput::get_name(self : MIDIInput) -> String? =
  #| (self) => self.name

///|
pub extern "js" fn MIDIInput::get_type(self : MIDIInput) -> MIDIPortType =
  #| (self) => self.type

///|
pub extern "js" fn MIDIInput::get_version(self : MIDIInput) -> String? =
  #| (self) => self.version

///|
pub extern "js" fn MIDIInput::get_state(
  self : MIDIInput,
) -> MIDIPortDeviceState =
  #| (self) => self.state

///|
pub extern "js" fn MIDIInput::get_connection(
  self : MIDIInput,
) -> MIDIPortConnectionState =
  #| (self) => self.connection

///|
pub extern "js" fn MIDIInput::get_onstatechange(
  self : MIDIInput,
) -> EventHandler =
  #| (self) => self.onstatechange

///|
pub extern "js" fn MIDIInput::set_onstatechange(
  self : MIDIInput,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstatechange = value }

///|
pub extern "js" fn MIDIInput::open(self : MIDIInput) -> Promise[MIDIPort] =
  #| (self) => self.open()

///|
pub extern "js" fn MIDIInput::close(self : MIDIInput) -> Promise[MIDIPort] =
  #| (self) => self.close()

///|
pub extern "js" fn MIDIInput::get_onmidimessage(
  self : MIDIInput,
) -> EventHandler =
  #| (self) => self.onmidimessage

///|
pub extern "js" fn MIDIInput::set_onmidimessage(
  self : MIDIInput,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmidimessage = value }

///|
/// MIDIOutput interface
pub type MIDIOutput

///|
pub extern "js" fn MIDIOutput::to_js_value(self : MIDIOutput) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MIDIOutput::get_id(self : MIDIOutput) -> String =
  #| (self) => self.id

///|
pub extern "js" fn MIDIOutput::get_manufacturer(self : MIDIOutput) -> String? =
  #| (self) => self.manufacturer

///|
pub extern "js" fn MIDIOutput::get_name(self : MIDIOutput) -> String? =
  #| (self) => self.name

///|
pub extern "js" fn MIDIOutput::get_type(self : MIDIOutput) -> MIDIPortType =
  #| (self) => self.type

///|
pub extern "js" fn MIDIOutput::get_version(self : MIDIOutput) -> String? =
  #| (self) => self.version

///|
pub extern "js" fn MIDIOutput::get_state(
  self : MIDIOutput,
) -> MIDIPortDeviceState =
  #| (self) => self.state

///|
pub extern "js" fn MIDIOutput::get_connection(
  self : MIDIOutput,
) -> MIDIPortConnectionState =
  #| (self) => self.connection

///|
pub extern "js" fn MIDIOutput::get_onstatechange(
  self : MIDIOutput,
) -> EventHandler =
  #| (self) => self.onstatechange

///|
pub extern "js" fn MIDIOutput::set_onstatechange(
  self : MIDIOutput,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstatechange = value }

///|
pub extern "js" fn MIDIOutput::open(self : MIDIOutput) -> Promise[MIDIPort] =
  #| (self) => self.open()

///|
pub extern "js" fn MIDIOutput::close(self : MIDIOutput) -> Promise[MIDIPort] =
  #| (self) => self.close()

///|
pub extern "js" fn MIDIOutput::send(
  self : MIDIOutput,
  data : Array[Int],
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn MIDIOutput::send_with_timestamp(
  self : MIDIOutput,
  data : Array[Int],
  timestamp : DOMHighResTimeStamp,
) -> Unit =
  #| (self, data, timestamp) => self.send(data, timestamp)

///|
pub extern "js" fn MIDIOutput::clear(self : MIDIOutput) -> Unit =
  #| (self) => self.clear()

///|
/// MIDIMessageEvent interface
pub type MIDIMessageEvent

///|
pub extern "js" fn MIDIMessageEvent::to_js_value(
  self : MIDIMessageEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MIDIMessageEvent::new(
  type_ : String,
  event_init_dict : MIDIMessageEventInit,
) -> MIDIMessageEvent =
  #| (type_, event_init_dict) => new MIDIMessageEvent(type_, event_init_dict)

///|
pub extern "js" fn MIDIMessageEvent::get_data(
  self : MIDIMessageEvent,
) -> Uint8Array? =
  #| (self) => self.data

///|
/// MIDIConnectionEvent interface
pub type MIDIConnectionEvent

///|
pub extern "js" fn MIDIConnectionEvent::to_js_value(
  self : MIDIConnectionEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MIDIConnectionEvent::new(
  type_ : String,
  event_init_dict : MIDIConnectionEventInit,
) -> MIDIConnectionEvent =
  #| (type_, event_init_dict) => new MIDIConnectionEvent(type_, event_init_dict)

///|
pub extern "js" fn MIDIConnectionEvent::get_port(
  self : MIDIConnectionEvent,
) -> MIDIPort? =
  #| (self) => self.port
