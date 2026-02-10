// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/presentation-api

///|
/// PresentationConnectionState enum
pub(all) enum PresentationConnectionState {
  Connecting
  Connected
  Closed
  Terminated
} derive(Eq, Show)

///|
/// Convert to string value
pub fn PresentationConnectionState::to_string(
  self : PresentationConnectionState,
) -> String {
  match self {
    PresentationConnectionState::Connecting => "connecting"
    PresentationConnectionState::Connected => "connected"
    PresentationConnectionState::Closed => "closed"
    PresentationConnectionState::Terminated => "terminated"
  }
}

///|
/// Parse from string value
pub fn PresentationConnectionState::from_string(
  s : String,
) -> PresentationConnectionState? {
  match s {
    "connecting" => Some(PresentationConnectionState::Connecting)
    "connected" => Some(PresentationConnectionState::Connected)
    "closed" => Some(PresentationConnectionState::Closed)
    "terminated" => Some(PresentationConnectionState::Terminated)
    _ => None
  }
}

///|
/// PresentationConnectionCloseReason enum
pub(all) enum PresentationConnectionCloseReason {
  Error
  Closed
  Wentaway
} derive(Eq, Show)

///|
/// Convert to string value
pub fn PresentationConnectionCloseReason::to_string(
  self : PresentationConnectionCloseReason,
) -> String {
  match self {
    PresentationConnectionCloseReason::Error => "error"
    PresentationConnectionCloseReason::Closed => "closed"
    PresentationConnectionCloseReason::Wentaway => "wentaway"
  }
}

///|
/// Parse from string value
pub fn PresentationConnectionCloseReason::from_string(
  s : String,
) -> PresentationConnectionCloseReason? {
  match s {
    "error" => Some(PresentationConnectionCloseReason::Error)
    "closed" => Some(PresentationConnectionCloseReason::Closed)
    "wentaway" => Some(PresentationConnectionCloseReason::Wentaway)
    _ => None
  }
}

///|
/// PresentationConnectionAvailableEventInit dictionary
pub(all) struct PresentationConnectionAvailableEventInit {
  connection : PresentationConnection
}

///|
/// Create a new PresentationConnectionAvailableEventInit
pub fn PresentationConnectionAvailableEventInit::new(
  connection~ : PresentationConnection,
) -> PresentationConnectionAvailableEventInit {
  PresentationConnectionAvailableEventInit::{ connection, }
}

///|
extern "js" fn PresentationConnectionAvailableEventInit::to_js_ffi(
  self : PresentationConnectionAvailableEventInit,
) -> JsValue =
  #| (self) => ({
  #|   connection: self.connection
  #| })

///|
/// Convert to JsValue
pub fn PresentationConnectionAvailableEventInit::to_js(
  self : PresentationConnectionAvailableEventInit,
) -> JsValue {
  PresentationConnectionAvailableEventInit::to_js_ffi(self)
}

///|
extern "js" fn PresentationConnectionAvailableEventInit::from_js_ffi(
  value : JsValue,
) -> PresentationConnectionAvailableEventInit =
  #| (v) => ({
  #|   connection: v.connection
  #| })

///|
/// Convert from JsValue
pub fn PresentationConnectionAvailableEventInit::from_js(
  value : JsValue,
) -> PresentationConnectionAvailableEventInit {
  PresentationConnectionAvailableEventInit::from_js_ffi(value)
}

///|
/// PresentationConnectionCloseEventInit dictionary
pub(all) struct PresentationConnectionCloseEventInit {
  reason : PresentationConnectionCloseReason
  message : String?
}

///|
/// Create a new PresentationConnectionCloseEventInit
pub fn PresentationConnectionCloseEventInit::new(
  reason~ : PresentationConnectionCloseReason,
) -> PresentationConnectionCloseEventInit {
  PresentationConnectionCloseEventInit::{ reason, message: None }
}

///|
extern "js" fn PresentationConnectionCloseEventInit::to_js_ffi(
  self : PresentationConnectionCloseEventInit,
) -> JsValue =
  #| (self) => ({
  #|   reason: ['error', 'closed', 'wentaway'][self.reason],
  #|   message: self.message
  #| })

///|
/// Convert to JsValue
pub fn PresentationConnectionCloseEventInit::to_js(
  self : PresentationConnectionCloseEventInit,
) -> JsValue {
  PresentationConnectionCloseEventInit::to_js_ffi(self)
}

///|
extern "js" fn PresentationConnectionCloseEventInit::from_js_ffi(
  value : JsValue,
) -> PresentationConnectionCloseEventInit =
  #| (v) => ({
  #|   reason: ['error', 'closed', 'wentaway'].indexOf(v.reason),
  #|   message: v.message
  #| })

///|
/// Convert from JsValue
pub fn PresentationConnectionCloseEventInit::from_js(
  value : JsValue,
) -> PresentationConnectionCloseEventInit {
  PresentationConnectionCloseEventInit::from_js_ffi(value)
}

///|
/// Presentation interface
pub type Presentation

///|
pub extern "js" fn Presentation::to_js_value(self : Presentation) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Presentation (unchecked)
pub extern "js" fn Presentation::from_js_value(v : JsValue) -> Presentation =
  #| (v) => v

///|
/// Safely cast JsValue to Presentation (checked with instanceof)
pub extern "js" fn Presentation::from_js_value_opt(
  v : JsValue,
) -> Presentation? =
  #| (v) => (v instanceof Presentation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Presentation (checked with instanceof)
pub extern "js" fn JsValue::as_presentation(self : JsValue) -> Presentation? =
  #| (self) => (self instanceof Presentation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Presentation (unchecked)
pub extern "js" fn JsValue::to_presentation(self : JsValue) -> Presentation =
  #| (self) => self

///|
pub extern "js" fn Presentation::get_default_request(
  self : Presentation,
) -> PresentationRequest? =
  #| (self) => (() => { const v = self.defaultRequest; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Presentation::set_default_request(
  self : Presentation,
  value : PresentationRequest?,
) -> Unit =
  #| (self, value) => { self.defaultRequest = (value.$tag === 1 ? value._0 : null) }

///|
pub extern "js" fn Presentation::get_receiver(
  self : Presentation,
) -> PresentationReceiver? =
  #| (self) => (() => { const v = self.receiver; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// PresentationRequest interface
pub type PresentationRequest

///|
pub extern "js" fn PresentationRequest::to_js_value(
  self : PresentationRequest,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PresentationRequest (unchecked)
pub extern "js" fn PresentationRequest::from_js_value(
  v : JsValue,
) -> PresentationRequest =
  #| (v) => v

///|
/// Safely cast JsValue to PresentationRequest (checked with instanceof)
pub extern "js" fn PresentationRequest::from_js_value_opt(
  v : JsValue,
) -> PresentationRequest? =
  #| (v) => (v instanceof PresentationRequest) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PresentationRequest (checked with instanceof)
pub extern "js" fn JsValue::as_presentation_request(
  self : JsValue,
) -> PresentationRequest? =
  #| (self) => (self instanceof PresentationRequest) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PresentationRequest (unchecked)
pub extern "js" fn JsValue::to_presentation_request(
  self : JsValue,
) -> PresentationRequest =
  #| (self) => self

///|
pub extern "js" fn PresentationRequest::to_event_target(
  self : PresentationRequest,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn PresentationRequest::new_with_string(
  url : String,
) -> PresentationRequest =
  #| (url) => new PresentationRequest(url)

///|
pub extern "js" fn PresentationRequest::new_with_array(
  urls : Array[String],
) -> PresentationRequest =
  #| (urls) => new PresentationRequest(urls)

///|
pub extern "js" fn PresentationRequest::start(
  self : PresentationRequest,
) -> Promise[PresentationConnection] =
  #| (self) => self.start()

///|
pub extern "js" fn PresentationRequest::reconnect(
  self : PresentationRequest,
  presentation_id : String,
) -> Promise[PresentationConnection] =
  #| (self, presentation_id) => self.reconnect(presentation_id)

///|
pub extern "js" fn PresentationRequest::get_availability(
  self : PresentationRequest,
) -> Promise[PresentationAvailability] =
  #| (self) => self.getAvailability()

///|
pub extern "js" fn PresentationRequest::get_onconnectionavailable(
  self : PresentationRequest,
) -> EventHandler =
  #| (self) => self.onconnectionavailable

///|
pub extern "js" fn PresentationRequest::set_onconnectionavailable(
  self : PresentationRequest,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onconnectionavailable = value }

///|
/// PresentationAvailability interface
pub type PresentationAvailability

///|
pub extern "js" fn PresentationAvailability::to_js_value(
  self : PresentationAvailability,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PresentationAvailability (unchecked)
pub extern "js" fn PresentationAvailability::from_js_value(
  v : JsValue,
) -> PresentationAvailability =
  #| (v) => v

///|
/// Safely cast JsValue to PresentationAvailability (checked with instanceof)
pub extern "js" fn PresentationAvailability::from_js_value_opt(
  v : JsValue,
) -> PresentationAvailability? =
  #| (v) => (v instanceof PresentationAvailability) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PresentationAvailability (checked with instanceof)
pub extern "js" fn JsValue::as_presentation_availability(
  self : JsValue,
) -> PresentationAvailability? =
  #| (self) => (self instanceof PresentationAvailability) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PresentationAvailability (unchecked)
pub extern "js" fn JsValue::to_presentation_availability(
  self : JsValue,
) -> PresentationAvailability =
  #| (self) => self

///|
pub extern "js" fn PresentationAvailability::to_event_target(
  self : PresentationAvailability,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn PresentationAvailability::get_value(
  self : PresentationAvailability,
) -> Bool =
  #| (self) => self.value

///|
pub extern "js" fn PresentationAvailability::get_onchange(
  self : PresentationAvailability,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn PresentationAvailability::set_onchange(
  self : PresentationAvailability,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
/// PresentationConnectionAvailableEvent interface
pub type PresentationConnectionAvailableEvent

///|
pub extern "js" fn PresentationConnectionAvailableEvent::to_js_value(
  self : PresentationConnectionAvailableEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PresentationConnectionAvailableEvent (unchecked)
pub extern "js" fn PresentationConnectionAvailableEvent::from_js_value(
  v : JsValue,
) -> PresentationConnectionAvailableEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PresentationConnectionAvailableEvent (checked with instanceof)
pub extern "js" fn PresentationConnectionAvailableEvent::from_js_value_opt(
  v : JsValue,
) -> PresentationConnectionAvailableEvent? =
  #| (v) => (v instanceof PresentationConnectionAvailableEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PresentationConnectionAvailableEvent (checked with instanceof)
pub extern "js" fn JsValue::as_presentation_connection_available_event(
  self : JsValue,
) -> PresentationConnectionAvailableEvent? =
  #| (self) => (self instanceof PresentationConnectionAvailableEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PresentationConnectionAvailableEvent (unchecked)
pub extern "js" fn JsValue::to_presentation_connection_available_event(
  self : JsValue,
) -> PresentationConnectionAvailableEvent =
  #| (self) => self

///|
pub extern "js" fn PresentationConnectionAvailableEvent::to_event(
  self : PresentationConnectionAvailableEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn PresentationConnectionAvailableEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PresentationConnectionAvailableEvent =
  #| (type_, event_init_dict) => new PresentationConnectionAvailableEvent(type_, event_init_dict)

///|
pub fn PresentationConnectionAvailableEvent::new(
  type_ : String,
  event_init_dict : PresentationConnectionAvailableEventInit,
) -> PresentationConnectionAvailableEvent {
  PresentationConnectionAvailableEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn PresentationConnectionAvailableEvent::get_connection(
  self : PresentationConnectionAvailableEvent,
) -> PresentationConnection =
  #| (self) => self.connection

///|
/// PresentationConnection interface
pub type PresentationConnection

///|
pub extern "js" fn PresentationConnection::to_js_value(
  self : PresentationConnection,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PresentationConnection (unchecked)
pub extern "js" fn PresentationConnection::from_js_value(
  v : JsValue,
) -> PresentationConnection =
  #| (v) => v

///|
/// Safely cast JsValue to PresentationConnection (checked with instanceof)
pub extern "js" fn PresentationConnection::from_js_value_opt(
  v : JsValue,
) -> PresentationConnection? =
  #| (v) => (v instanceof PresentationConnection) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PresentationConnection (checked with instanceof)
pub extern "js" fn JsValue::as_presentation_connection(
  self : JsValue,
) -> PresentationConnection? =
  #| (self) => (self instanceof PresentationConnection) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PresentationConnection (unchecked)
pub extern "js" fn JsValue::to_presentation_connection(
  self : JsValue,
) -> PresentationConnection =
  #| (self) => self

///|
pub extern "js" fn PresentationConnection::to_event_target(
  self : PresentationConnection,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn PresentationConnection::get_id(
  self : PresentationConnection,
) -> String =
  #| (self) => self.id

///|
pub extern "js" fn PresentationConnection::get_url(
  self : PresentationConnection,
) -> String =
  #| (self) => self.url

///|
pub extern "js" fn PresentationConnection::get_state(
  self : PresentationConnection,
) -> PresentationConnectionState =
  #| (self) => ['connecting', 'connected', 'closed', 'terminated'].indexOf(self.state)

///|
pub extern "js" fn PresentationConnection::close(
  self : PresentationConnection,
) -> Unit =
  #| (self) => self.close()

///|
pub extern "js" fn PresentationConnection::terminate(
  self : PresentationConnection,
) -> Unit =
  #| (self) => self.terminate()

///|
pub extern "js" fn PresentationConnection::get_onconnect(
  self : PresentationConnection,
) -> EventHandler =
  #| (self) => self.onconnect

///|
pub extern "js" fn PresentationConnection::set_onconnect(
  self : PresentationConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onconnect = value }

///|
pub extern "js" fn PresentationConnection::get_onclose(
  self : PresentationConnection,
) -> EventHandler =
  #| (self) => self.onclose

///|
pub extern "js" fn PresentationConnection::set_onclose(
  self : PresentationConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclose = value }

///|
pub extern "js" fn PresentationConnection::get_onterminate(
  self : PresentationConnection,
) -> EventHandler =
  #| (self) => self.onterminate

///|
pub extern "js" fn PresentationConnection::set_onterminate(
  self : PresentationConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onterminate = value }

///|
pub extern "js" fn PresentationConnection::get_binary_type(
  self : PresentationConnection,
) -> BinaryType =
  #| (self) => ['blob', 'arraybuffer'].indexOf(self.binaryType)

///|
pub extern "js" fn PresentationConnection::set_binary_type(
  self : PresentationConnection,
  value : BinaryType,
) -> Unit =
  #| (self, value) => { self.binaryType = ['blob', 'arraybuffer'][value] }

///|
pub extern "js" fn PresentationConnection::get_onmessage(
  self : PresentationConnection,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn PresentationConnection::set_onmessage(
  self : PresentationConnection,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn PresentationConnection::send(
  self : PresentationConnection,
  message : String,
) -> Unit =
  #| (self, message) => self.send(message)

///|
pub extern "js" fn PresentationConnection::send_with_data_blob(
  self : PresentationConnection,
  data : Blob,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_data_array_buffer(
  self : PresentationConnection,
  data : ArrayBuffer,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_data_array_buffer_view(
  self : PresentationConnection,
  data : ArrayBufferView,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_int8_array(
  self : PresentationConnection,
  data : Int8Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_int16_array(
  self : PresentationConnection,
  data : Int16Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_int32_array(
  self : PresentationConnection,
  data : Int32Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_uint8_array(
  self : PresentationConnection,
  data : Uint8Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_uint16_array(
  self : PresentationConnection,
  data : Uint16Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_uint32_array(
  self : PresentationConnection,
  data : Uint32Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_uint8_clamped_array(
  self : PresentationConnection,
  data : Uint8ClampedArray,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_big_int64_array(
  self : PresentationConnection,
  data : BigInt64Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_big_uint64_array(
  self : PresentationConnection,
  data : BigUint64Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_float16_array(
  self : PresentationConnection,
  data : Float16Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_float32_array(
  self : PresentationConnection,
  data : Float32Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_float64_array(
  self : PresentationConnection,
  data : Float64Array,
) -> Unit =
  #| (self, data) => self.send(data)

///|
pub extern "js" fn PresentationConnection::send_with_data_view(
  self : PresentationConnection,
  data : DataView,
) -> Unit =
  #| (self, data) => self.send(data)

///|
/// PresentationConnectionCloseEvent interface
pub type PresentationConnectionCloseEvent

///|
pub extern "js" fn PresentationConnectionCloseEvent::to_js_value(
  self : PresentationConnectionCloseEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PresentationConnectionCloseEvent (unchecked)
pub extern "js" fn PresentationConnectionCloseEvent::from_js_value(
  v : JsValue,
) -> PresentationConnectionCloseEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PresentationConnectionCloseEvent (checked with instanceof)
pub extern "js" fn PresentationConnectionCloseEvent::from_js_value_opt(
  v : JsValue,
) -> PresentationConnectionCloseEvent? =
  #| (v) => (v instanceof PresentationConnectionCloseEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PresentationConnectionCloseEvent (checked with instanceof)
pub extern "js" fn JsValue::as_presentation_connection_close_event(
  self : JsValue,
) -> PresentationConnectionCloseEvent? =
  #| (self) => (self instanceof PresentationConnectionCloseEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PresentationConnectionCloseEvent (unchecked)
pub extern "js" fn JsValue::to_presentation_connection_close_event(
  self : JsValue,
) -> PresentationConnectionCloseEvent =
  #| (self) => self

///|
pub extern "js" fn PresentationConnectionCloseEvent::to_event(
  self : PresentationConnectionCloseEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn PresentationConnectionCloseEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PresentationConnectionCloseEvent =
  #| (type_, event_init_dict) => new PresentationConnectionCloseEvent(type_, event_init_dict)

///|
pub fn PresentationConnectionCloseEvent::new(
  type_ : String,
  event_init_dict : PresentationConnectionCloseEventInit,
) -> PresentationConnectionCloseEvent {
  PresentationConnectionCloseEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn PresentationConnectionCloseEvent::get_reason(
  self : PresentationConnectionCloseEvent,
) -> PresentationConnectionCloseReason =
  #| (self) => ['error', 'closed', 'wentaway'].indexOf(self.reason)

///|
pub extern "js" fn PresentationConnectionCloseEvent::get_message(
  self : PresentationConnectionCloseEvent,
) -> String =
  #| (self) => self.message

///|
/// PresentationReceiver interface
pub type PresentationReceiver

///|
pub extern "js" fn PresentationReceiver::to_js_value(
  self : PresentationReceiver,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PresentationReceiver (unchecked)
pub extern "js" fn PresentationReceiver::from_js_value(
  v : JsValue,
) -> PresentationReceiver =
  #| (v) => v

///|
/// Safely cast JsValue to PresentationReceiver (checked with instanceof)
pub extern "js" fn PresentationReceiver::from_js_value_opt(
  v : JsValue,
) -> PresentationReceiver? =
  #| (v) => (v instanceof PresentationReceiver) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PresentationReceiver (checked with instanceof)
pub extern "js" fn JsValue::as_presentation_receiver(
  self : JsValue,
) -> PresentationReceiver? =
  #| (self) => (self instanceof PresentationReceiver) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PresentationReceiver (unchecked)
pub extern "js" fn JsValue::to_presentation_receiver(
  self : JsValue,
) -> PresentationReceiver =
  #| (self) => self

///|
pub extern "js" fn PresentationReceiver::get_connection_list(
  self : PresentationReceiver,
) -> Promise[PresentationConnectionList] =
  #| (self) => self.connectionList

///|
/// PresentationConnectionList interface
pub type PresentationConnectionList

///|
pub extern "js" fn PresentationConnectionList::to_js_value(
  self : PresentationConnectionList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PresentationConnectionList (unchecked)
pub extern "js" fn PresentationConnectionList::from_js_value(
  v : JsValue,
) -> PresentationConnectionList =
  #| (v) => v

///|
/// Safely cast JsValue to PresentationConnectionList (checked with instanceof)
pub extern "js" fn PresentationConnectionList::from_js_value_opt(
  v : JsValue,
) -> PresentationConnectionList? =
  #| (v) => (v instanceof PresentationConnectionList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PresentationConnectionList (checked with instanceof)
pub extern "js" fn JsValue::as_presentation_connection_list(
  self : JsValue,
) -> PresentationConnectionList? =
  #| (self) => (self instanceof PresentationConnectionList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PresentationConnectionList (unchecked)
pub extern "js" fn JsValue::to_presentation_connection_list(
  self : JsValue,
) -> PresentationConnectionList =
  #| (self) => self

///|
pub extern "js" fn PresentationConnectionList::to_event_target(
  self : PresentationConnectionList,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn PresentationConnectionList::get_connections(
  self : PresentationConnectionList,
) -> JsValue =
  #| (self) => self.connections

///|
pub extern "js" fn PresentationConnectionList::get_onconnectionavailable(
  self : PresentationConnectionList,
) -> EventHandler =
  #| (self) => self.onconnectionavailable

///|
pub extern "js" fn PresentationConnectionList::set_onconnectionavailable(
  self : PresentationConnectionList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onconnectionavailable = value }
