// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/websockets

///|
/// BinaryType enum
pub(all) enum BinaryType {
  Blob
  Arraybuffer
}

/// Convert to string value
pub fn BinaryType::to_string(self : BinaryType) -> String {
  match self {
    Blob => "blob"
    Arraybuffer => "arraybuffer"
  }
}

/// Parse from string value
pub fn BinaryType::from_string(s : String) -> BinaryType? {
  match s {
    "blob" => Some(Blob)
    "arraybuffer" => Some(Arraybuffer)
    _ => None
  }
}

///|
/// CloseEventInit dictionary
pub struct CloseEventInit {
  wasClean : Bool?
  code : Int?
  reason : String?
}

/// Create a new CloseEventInit with default values
pub fn CloseEventInit::default() -> CloseEventInit {
  CloseEventInit::{
    wasClean: None,
    code: None,
    reason: None,
  }
}

/// Convert to JsValue
pub extern "js" fn CloseEventInit::to_js(self : CloseEventInit) -> JsValue =
  #| (self) => ({
  #|   wasClean: self.wasClean,
  #|   code: self.code,
  #|   reason: self.reason
  #| })

///|
/// WebSocket interface
pub type WebSocket

pub extern "js" fn WebSocket::to_js_value(self : WebSocket) -> JsValue =
  #| (self) => self

pub extern "js" fn WebSocket::new(url : String, protocols : JsValue) -> WebSocket =
  #| (url, protocols) => new WebSocket(url, protocols)

pub extern "js" fn WebSocket::get_url(self : WebSocket) -> String =
  #| (self) => self.url

// WebSocket.CONNECTING
pub let web_socket_connecting : Int = 0

// WebSocket.OPEN
pub let web_socket_open : Int = 1

// WebSocket.CLOSING
pub let web_socket_closing : Int = 2

// WebSocket.CLOSED
pub let web_socket_closed : Int = 3

pub extern "js" fn WebSocket::get_ready_state(self : WebSocket) -> Int =
  #| (self) => self.readyState

pub extern "js" fn WebSocket::get_buffered_amount(self : WebSocket) -> Int64 =
  #| (self) => self.bufferedAmount

pub extern "js" fn WebSocket::get_onopen(self : WebSocket) -> EventHandler =
  #| (self) => self.onopen

pub extern "js" fn WebSocket::set_onopen(self : WebSocket, value : EventHandler) -> Unit =
  #| (self, value) => { self.onopen = value }

pub extern "js" fn WebSocket::get_onerror(self : WebSocket) -> EventHandler =
  #| (self) => self.onerror

pub extern "js" fn WebSocket::set_onerror(self : WebSocket, value : EventHandler) -> Unit =
  #| (self, value) => { self.onerror = value }

pub extern "js" fn WebSocket::get_onclose(self : WebSocket) -> EventHandler =
  #| (self) => self.onclose

pub extern "js" fn WebSocket::set_onclose(self : WebSocket, value : EventHandler) -> Unit =
  #| (self, value) => { self.onclose = value }

pub extern "js" fn WebSocket::get_extensions(self : WebSocket) -> String =
  #| (self) => self.extensions

pub extern "js" fn WebSocket::get_protocol(self : WebSocket) -> String =
  #| (self) => self.protocol

pub extern "js" fn WebSocket::close(self : WebSocket) -> Unit =
  #| (self) => self.close()

pub extern "js" fn WebSocket::close_with_reason(self : WebSocket, code : Int, reason : String) -> Unit =
  #| (self, code, reason) => self.close(code, reason)

pub extern "js" fn WebSocket::get_onmessage(self : WebSocket) -> EventHandler =
  #| (self) => self.onmessage

pub extern "js" fn WebSocket::set_onmessage(self : WebSocket, value : EventHandler) -> Unit =
  #| (self, value) => { self.onmessage = value }

pub extern "js" fn WebSocket::get_binary_type(self : WebSocket) -> BinaryType =
  #| (self) => self.binaryType

pub extern "js" fn WebSocket::set_binary_type(self : WebSocket, value : BinaryType) -> Unit =
  #| (self, value) => { self.binaryType = value }

pub extern "js" fn WebSocket::send(self : WebSocket, data : JsValue) -> Unit =
  #| (self, data) => self.send(data)

///|
/// CloseEvent interface
pub type CloseEvent

pub extern "js" fn CloseEvent::to_js_value(self : CloseEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn CloseEvent::new(type_ : String, event_init_dict : CloseEventInit) -> CloseEvent =
  #| (type_, event_init_dict) => new CloseEvent(type_, event_init_dict)

pub extern "js" fn CloseEvent::get_was_clean(self : CloseEvent) -> Bool =
  #| (self) => self.wasClean

pub extern "js" fn CloseEvent::get_code(self : CloseEvent) -> Int =
  #| (self) => self.code

pub extern "js" fn CloseEvent::get_reason(self : CloseEvent) -> String =
  #| (self) => self.reason

