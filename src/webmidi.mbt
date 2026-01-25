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
    MIDIPortType::Input => "input"
    MIDIPortType::Output => "output"
  }
}

///|
/// Parse from string value
pub fn MIDIPortType::from_string(s : String) -> MIDIPortType? {
  match s {
    "input" => Some(MIDIPortType::Input)
    "output" => Some(MIDIPortType::Output)
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
    MIDIPortDeviceState::Disconnected => "disconnected"
    MIDIPortDeviceState::Connected => "connected"
  }
}

///|
/// Parse from string value
pub fn MIDIPortDeviceState::from_string(s : String) -> MIDIPortDeviceState? {
  match s {
    "disconnected" => Some(MIDIPortDeviceState::Disconnected)
    "connected" => Some(MIDIPortDeviceState::Connected)
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
    MIDIPortConnectionState::Open => "open"
    MIDIPortConnectionState::Closed => "closed"
    MIDIPortConnectionState::Pending => "pending"
  }
}

///|
/// Parse from string value
pub fn MIDIPortConnectionState::from_string(
  s : String,
) -> MIDIPortConnectionState? {
  match s {
    "open" => Some(MIDIPortConnectionState::Open)
    "closed" => Some(MIDIPortConnectionState::Closed)
    "pending" => Some(MIDIPortConnectionState::Pending)
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
/// Cast JsValue to MIDIInputMap (unchecked)
pub extern "js" fn MIDIInputMap::from_js_value(v : JsValue) -> MIDIInputMap =
  #| (v) => v

///|
/// Safely cast JsValue to MIDIInputMap (checked with instanceof)
pub extern "js" fn MIDIInputMap::from_js_value_opt(
  v : JsValue,
) -> MIDIInputMap? =
  #| (v) => (v instanceof MIDIInputMap) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MIDIInputMap (checked with instanceof)
pub extern "js" fn JsValue::as_midi_input_map(self : JsValue) -> MIDIInputMap? =
  #| (self) => (self instanceof MIDIInputMap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MIDIInputMap (unchecked)
pub extern "js" fn JsValue::to_midi_input_map(self : JsValue) -> MIDIInputMap =
  #| (self) => self

///|
pub extern "js" fn MIDIInputMap::get(
  self : MIDIInputMap,
  key : String,
) -> MIDIInput? =
  #| (self, key) => { const v = self.get(key); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

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
/// Cast JsValue to MIDIOutputMap (unchecked)
pub extern "js" fn MIDIOutputMap::from_js_value(v : JsValue) -> MIDIOutputMap =
  #| (v) => v

///|
/// Safely cast JsValue to MIDIOutputMap (checked with instanceof)
pub extern "js" fn MIDIOutputMap::from_js_value_opt(
  v : JsValue,
) -> MIDIOutputMap? =
  #| (v) => (v instanceof MIDIOutputMap) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MIDIOutputMap (checked with instanceof)
pub extern "js" fn JsValue::as_midi_output_map(
  self : JsValue,
) -> MIDIOutputMap? =
  #| (self) => (self instanceof MIDIOutputMap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MIDIOutputMap (unchecked)
pub extern "js" fn JsValue::to_midi_output_map(self : JsValue) -> MIDIOutputMap =
  #| (self) => self

///|
pub extern "js" fn MIDIOutputMap::get(
  self : MIDIOutputMap,
  key : String,
) -> MIDIOutput? =
  #| (self, key) => { const v = self.get(key); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

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
/// Cast JsValue to MIDIAccess (unchecked)
pub extern "js" fn MIDIAccess::from_js_value(v : JsValue) -> MIDIAccess =
  #| (v) => v

///|
/// Safely cast JsValue to MIDIAccess (checked with instanceof)
pub extern "js" fn MIDIAccess::from_js_value_opt(v : JsValue) -> MIDIAccess? =
  #| (v) => (v instanceof MIDIAccess) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MIDIAccess (checked with instanceof)
pub extern "js" fn JsValue::as_midi_access(self : JsValue) -> MIDIAccess? =
  #| (self) => (self instanceof MIDIAccess) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MIDIAccess (unchecked)
pub extern "js" fn JsValue::to_midi_access(self : JsValue) -> MIDIAccess =
  #| (self) => self

///|
pub extern "js" fn MIDIAccess::to_event_target(
  self : MIDIAccess,
) -> EventTarget =
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
/// Cast JsValue to MIDIPort (unchecked)
pub extern "js" fn MIDIPort::from_js_value(v : JsValue) -> MIDIPort =
  #| (v) => v

///|
/// Safely cast JsValue to MIDIPort (checked with instanceof)
pub extern "js" fn MIDIPort::from_js_value_opt(v : JsValue) -> MIDIPort? =
  #| (v) => (v instanceof MIDIPort) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MIDIPort (checked with instanceof)
pub extern "js" fn JsValue::as_midi_port(self : JsValue) -> MIDIPort? =
  #| (self) => (self instanceof MIDIPort) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MIDIPort (unchecked)
pub extern "js" fn JsValue::to_midi_port(self : JsValue) -> MIDIPort =
  #| (self) => self

///|
pub extern "js" fn MIDIPort::to_event_target(self : MIDIPort) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn MIDIPort::as_midi_input(self : MIDIPort) -> MIDIInput? =
  #| (self) => (self instanceof MIDIInput) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn MIDIPort::as_midi_output(self : MIDIPort) -> MIDIOutput? =
  #| (self) => (self instanceof MIDIOutput) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn MIDIPort::get_id(self : MIDIPort) -> String =
  #| (self) => self.id

///|
pub extern "js" fn MIDIPort::get_manufacturer(self : MIDIPort) -> String? =
  #| (self) => { const v = self.manufacturer; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn MIDIPort::get_name(self : MIDIPort) -> String? =
  #| (self) => { const v = self.name; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn MIDIPort::get_type(self : MIDIPort) -> MIDIPortType =
  #| (self) => self.type

///|
pub extern "js" fn MIDIPort::get_version(self : MIDIPort) -> String? =
  #| (self) => { const v = self.version; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

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
/// Cast JsValue to MIDIInput (unchecked)
pub extern "js" fn MIDIInput::from_js_value(v : JsValue) -> MIDIInput =
  #| (v) => v

///|
/// Safely cast JsValue to MIDIInput (checked with instanceof)
pub extern "js" fn MIDIInput::from_js_value_opt(v : JsValue) -> MIDIInput? =
  #| (v) => (v instanceof MIDIInput) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MIDIInput (checked with instanceof)
pub extern "js" fn JsValue::as_midi_input(self : JsValue) -> MIDIInput? =
  #| (self) => (self instanceof MIDIInput) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MIDIInput (unchecked)
pub extern "js" fn JsValue::to_midi_input(self : JsValue) -> MIDIInput =
  #| (self) => self

///|
pub extern "js" fn MIDIInput::to_midi_port(self : MIDIInput) -> MIDIPort =
  #| (self) => self

///|
pub extern "js" fn MIDIInput::to_event_target(self : MIDIInput) -> EventTarget =
  #| (self) => self

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
/// Cast JsValue to MIDIOutput (unchecked)
pub extern "js" fn MIDIOutput::from_js_value(v : JsValue) -> MIDIOutput =
  #| (v) => v

///|
/// Safely cast JsValue to MIDIOutput (checked with instanceof)
pub extern "js" fn MIDIOutput::from_js_value_opt(v : JsValue) -> MIDIOutput? =
  #| (v) => (v instanceof MIDIOutput) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MIDIOutput (checked with instanceof)
pub extern "js" fn JsValue::as_midi_output(self : JsValue) -> MIDIOutput? =
  #| (self) => (self instanceof MIDIOutput) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MIDIOutput (unchecked)
pub extern "js" fn JsValue::to_midi_output(self : JsValue) -> MIDIOutput =
  #| (self) => self

///|
pub extern "js" fn MIDIOutput::to_midi_port(self : MIDIOutput) -> MIDIPort =
  #| (self) => self

///|
pub extern "js" fn MIDIOutput::to_event_target(
  self : MIDIOutput,
) -> EventTarget =
  #| (self) => self

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
/// Cast JsValue to MIDIMessageEvent (unchecked)
pub extern "js" fn MIDIMessageEvent::from_js_value(
  v : JsValue,
) -> MIDIMessageEvent =
  #| (v) => v

///|
/// Safely cast JsValue to MIDIMessageEvent (checked with instanceof)
pub extern "js" fn MIDIMessageEvent::from_js_value_opt(
  v : JsValue,
) -> MIDIMessageEvent? =
  #| (v) => (v instanceof MIDIMessageEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MIDIMessageEvent (checked with instanceof)
pub extern "js" fn JsValue::as_midi_message_event(
  self : JsValue,
) -> MIDIMessageEvent? =
  #| (self) => (self instanceof MIDIMessageEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MIDIMessageEvent (unchecked)
pub extern "js" fn JsValue::to_midi_message_event(
  self : JsValue,
) -> MIDIMessageEvent =
  #| (self) => self

///|
pub extern "js" fn MIDIMessageEvent::to_event(self : MIDIMessageEvent) -> Event =
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
  #| (self) => { const v = self.data; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
/// MIDIConnectionEvent interface
pub type MIDIConnectionEvent

///|
pub extern "js" fn MIDIConnectionEvent::to_js_value(
  self : MIDIConnectionEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MIDIConnectionEvent (unchecked)
pub extern "js" fn MIDIConnectionEvent::from_js_value(
  v : JsValue,
) -> MIDIConnectionEvent =
  #| (v) => v

///|
/// Safely cast JsValue to MIDIConnectionEvent (checked with instanceof)
pub extern "js" fn MIDIConnectionEvent::from_js_value_opt(
  v : JsValue,
) -> MIDIConnectionEvent? =
  #| (v) => (v instanceof MIDIConnectionEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MIDIConnectionEvent (checked with instanceof)
pub extern "js" fn JsValue::as_midi_connection_event(
  self : JsValue,
) -> MIDIConnectionEvent? =
  #| (self) => (self instanceof MIDIConnectionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MIDIConnectionEvent (unchecked)
pub extern "js" fn JsValue::to_midi_connection_event(
  self : JsValue,
) -> MIDIConnectionEvent =
  #| (self) => self

///|
pub extern "js" fn MIDIConnectionEvent::to_event(
  self : MIDIConnectionEvent,
) -> Event =
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
  #| (self) => { const v = self.port; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }
