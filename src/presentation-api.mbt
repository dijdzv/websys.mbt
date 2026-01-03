// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/presentation-api

///|
/// PresentationConnectionState enum
pub(all) enum PresentationConnectionState {
  Connecting
  Connected
  Closed
  Terminated
}

/// Convert to string value
pub fn PresentationConnectionState::to_string(self : PresentationConnectionState) -> String {
  match self {
    Connecting => "connecting"
    Connected => "connected"
    Closed => "closed"
    Terminated => "terminated"
  }
}

/// Parse from string value
pub fn PresentationConnectionState::from_string(s : String) -> PresentationConnectionState? {
  match s {
    "connecting" => Some(Connecting)
    "connected" => Some(Connected)
    "closed" => Some(Closed)
    "terminated" => Some(Terminated)
    _ => None
  }
}

///|
/// PresentationConnectionCloseReason enum
pub(all) enum PresentationConnectionCloseReason {
  Error
  Closed
  Wentaway
}

/// Convert to string value
pub fn PresentationConnectionCloseReason::to_string(self : PresentationConnectionCloseReason) -> String {
  match self {
    Error => "error"
    Closed => "closed"
    Wentaway => "wentaway"
  }
}

/// Parse from string value
pub fn PresentationConnectionCloseReason::from_string(s : String) -> PresentationConnectionCloseReason? {
  match s {
    "error" => Some(Error)
    "closed" => Some(Closed)
    "wentaway" => Some(Wentaway)
    _ => None
  }
}

///|
/// PresentationConnectionAvailableEventInit dictionary
pub struct PresentationConnectionAvailableEventInit {
  connection : PresentationConnection
}

/// Create a new PresentationConnectionAvailableEventInit with default values
pub fn PresentationConnectionAvailableEventInit::default() -> PresentationConnectionAvailableEventInit {
  PresentationConnectionAvailableEventInit::{
    connection: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn PresentationConnectionAvailableEventInit::to_js(self : PresentationConnectionAvailableEventInit) -> JsValue =
  #| (self) => ({
  #|   connection: self.connection
  #| })

///|
/// PresentationConnectionCloseEventInit dictionary
pub struct PresentationConnectionCloseEventInit {
  reason : PresentationConnectionCloseReason
  message : String?
}

/// Create a new PresentationConnectionCloseEventInit with default values
pub fn PresentationConnectionCloseEventInit::default() -> PresentationConnectionCloseEventInit {
  PresentationConnectionCloseEventInit::{
    reason: panic(),
    message: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PresentationConnectionCloseEventInit::to_js(self : PresentationConnectionCloseEventInit) -> JsValue =
  #| (self) => ({
  #|   reason: self.reason,
  #|   message: self.message
  #| })

///|
/// Presentation interface
pub type Presentation

pub extern "js" fn Presentation::to_js_value(self : Presentation) -> JsValue =
  #| (self) => self

pub extern "js" fn Presentation::get_default_request(self : Presentation) -> PresentationRequest? =
  #| (self) => self.defaultRequest

pub extern "js" fn Presentation::set_default_request(self : Presentation, value : PresentationRequest?) -> Unit =
  #| (self, value) => { self.defaultRequest = value }

pub extern "js" fn Presentation::get_receiver(self : Presentation) -> PresentationReceiver? =
  #| (self) => self.receiver

///|
/// PresentationRequest interface
pub type PresentationRequest

pub extern "js" fn PresentationRequest::to_js_value(self : PresentationRequest) -> JsValue =
  #| (self) => self

pub extern "js" fn PresentationRequest::new(url : String) -> PresentationRequest =
  #| (url) => new PresentationRequest(url)

pub extern "js" fn PresentationRequest::start(self : PresentationRequest) -> Promise[PresentationConnection] =
  #| (self) => self.start()

pub extern "js" fn PresentationRequest::reconnect(self : PresentationRequest, presentation_id : String) -> Promise[PresentationConnection] =
  #| (self, presentation_id) => self.reconnect(presentation_id)

pub extern "js" fn PresentationRequest::get_availability(self : PresentationRequest) -> Promise[PresentationAvailability] =
  #| (self) => self.getAvailability()

pub extern "js" fn PresentationRequest::get_onconnectionavailable(self : PresentationRequest) -> EventHandler =
  #| (self) => self.onconnectionavailable

pub extern "js" fn PresentationRequest::set_onconnectionavailable(self : PresentationRequest, value : EventHandler) -> Unit =
  #| (self, value) => { self.onconnectionavailable = value }

///|
/// PresentationAvailability interface
pub type PresentationAvailability

pub extern "js" fn PresentationAvailability::to_js_value(self : PresentationAvailability) -> JsValue =
  #| (self) => self

pub extern "js" fn PresentationAvailability::get_value(self : PresentationAvailability) -> Bool =
  #| (self) => self.value

pub extern "js" fn PresentationAvailability::get_onchange(self : PresentationAvailability) -> EventHandler =
  #| (self) => self.onchange

pub extern "js" fn PresentationAvailability::set_onchange(self : PresentationAvailability, value : EventHandler) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
/// PresentationConnectionAvailableEvent interface
pub type PresentationConnectionAvailableEvent

pub extern "js" fn PresentationConnectionAvailableEvent::to_js_value(self : PresentationConnectionAvailableEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn PresentationConnectionAvailableEvent::new(type_ : String, event_init_dict : PresentationConnectionAvailableEventInit) -> PresentationConnectionAvailableEvent =
  #| (type_, event_init_dict) => new PresentationConnectionAvailableEvent(type_, event_init_dict)

pub extern "js" fn PresentationConnectionAvailableEvent::get_connection(self : PresentationConnectionAvailableEvent) -> PresentationConnection =
  #| (self) => self.connection

///|
/// PresentationConnection interface
pub type PresentationConnection

pub extern "js" fn PresentationConnection::to_js_value(self : PresentationConnection) -> JsValue =
  #| (self) => self

pub extern "js" fn PresentationConnection::get_id(self : PresentationConnection) -> String =
  #| (self) => self.id

pub extern "js" fn PresentationConnection::get_url(self : PresentationConnection) -> String =
  #| (self) => self.url

pub extern "js" fn PresentationConnection::get_state(self : PresentationConnection) -> PresentationConnectionState =
  #| (self) => self.state

pub extern "js" fn PresentationConnection::close(self : PresentationConnection) -> Unit =
  #| (self) => self.close()

pub extern "js" fn PresentationConnection::terminate(self : PresentationConnection) -> Unit =
  #| (self) => self.terminate()

pub extern "js" fn PresentationConnection::get_onconnect(self : PresentationConnection) -> EventHandler =
  #| (self) => self.onconnect

pub extern "js" fn PresentationConnection::set_onconnect(self : PresentationConnection, value : EventHandler) -> Unit =
  #| (self, value) => { self.onconnect = value }

pub extern "js" fn PresentationConnection::get_onclose(self : PresentationConnection) -> EventHandler =
  #| (self) => self.onclose

pub extern "js" fn PresentationConnection::set_onclose(self : PresentationConnection, value : EventHandler) -> Unit =
  #| (self, value) => { self.onclose = value }

pub extern "js" fn PresentationConnection::get_onterminate(self : PresentationConnection) -> EventHandler =
  #| (self) => self.onterminate

pub extern "js" fn PresentationConnection::set_onterminate(self : PresentationConnection, value : EventHandler) -> Unit =
  #| (self, value) => { self.onterminate = value }

pub extern "js" fn PresentationConnection::get_binary_type(self : PresentationConnection) -> BinaryType =
  #| (self) => self.binaryType

pub extern "js" fn PresentationConnection::set_binary_type(self : PresentationConnection, value : BinaryType) -> Unit =
  #| (self, value) => { self.binaryType = value }

pub extern "js" fn PresentationConnection::get_onmessage(self : PresentationConnection) -> EventHandler =
  #| (self) => self.onmessage

pub extern "js" fn PresentationConnection::set_onmessage(self : PresentationConnection, value : EventHandler) -> Unit =
  #| (self, value) => { self.onmessage = value }

pub extern "js" fn PresentationConnection::send(self : PresentationConnection, message : String) -> Unit =
  #| (self, message) => self.send(message)

pub extern "js" fn PresentationConnection::send_with_data_blob(self : PresentationConnection, data : Blob) -> Unit =
  #| (self, data) => self.send(data)

pub extern "js" fn PresentationConnection::send_with_data_array_buffer(self : PresentationConnection, data : ArrayBuffer) -> Unit =
  #| (self, data) => self.send(data)

pub extern "js" fn PresentationConnection::send_with_data_array_buffer_view(self : PresentationConnection, data : ArrayBufferView) -> Unit =
  #| (self, data) => self.send(data)

///|
/// PresentationConnectionCloseEvent interface
pub type PresentationConnectionCloseEvent

pub extern "js" fn PresentationConnectionCloseEvent::to_js_value(self : PresentationConnectionCloseEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn PresentationConnectionCloseEvent::new(type_ : String, event_init_dict : PresentationConnectionCloseEventInit) -> PresentationConnectionCloseEvent =
  #| (type_, event_init_dict) => new PresentationConnectionCloseEvent(type_, event_init_dict)

pub extern "js" fn PresentationConnectionCloseEvent::get_reason(self : PresentationConnectionCloseEvent) -> PresentationConnectionCloseReason =
  #| (self) => self.reason

pub extern "js" fn PresentationConnectionCloseEvent::get_message(self : PresentationConnectionCloseEvent) -> String =
  #| (self) => self.message

///|
/// PresentationReceiver interface
pub type PresentationReceiver

pub extern "js" fn PresentationReceiver::to_js_value(self : PresentationReceiver) -> JsValue =
  #| (self) => self

pub extern "js" fn PresentationReceiver::get_connection_list(self : PresentationReceiver) -> Promise[PresentationConnectionList] =
  #| (self) => self.connectionList

///|
/// PresentationConnectionList interface
pub type PresentationConnectionList

pub extern "js" fn PresentationConnectionList::to_js_value(self : PresentationConnectionList) -> JsValue =
  #| (self) => self

pub extern "js" fn PresentationConnectionList::get_connections(self : PresentationConnectionList) -> JsValue =
  #| (self) => self.connections

pub extern "js" fn PresentationConnectionList::get_onconnectionavailable(self : PresentationConnectionList) -> EventHandler =
  #| (self) => self.onconnectionavailable

pub extern "js" fn PresentationConnectionList::set_onconnectionavailable(self : PresentationConnectionList, value : EventHandler) -> Unit =
  #| (self, value) => { self.onconnectionavailable = value }

