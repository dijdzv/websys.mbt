// WebSocket API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/WebSocket
// Tests codegen patterns: constructor with URL, enum getter/setter, constants, close method

///|
/// Test WebSocket constructor and initial properties.
/// Note: WebSocket will attempt to connect, but we test properties immediately.
pub fn test_websocket() -> Unit {
  // Use wss:// URL — connection will fail but object is valid
  let ws = @websys.WebSocket::new("wss://localhost:0/test")

  // url — reflects the constructor argument
  assert_eq(ws.get_url(), "wss://localhost:0/test", label="url")

  // readyState — CONNECTING (0) immediately after construction
  assert_eq(
    ws.get_ready_state(),
    @websys.web_socket_connecting,
    label="readyState CONNECTING",
  )

  // protocol — empty before connection
  assert_eq(ws.get_protocol(), "", label="protocol default")

  // extensions — empty before connection
  assert_eq(ws.get_extensions(), "", label="extensions default")

  // binaryType — default is "blob"
  // BinaryType is an enum, verify getter doesn't throw
  let _bt = ws.get_binary_type()

  // set_binary_type — enum setter pattern
  ws.set_binary_type(@websys.BinaryType::Arraybuffer)
  let _bt2 = ws.get_binary_type()

  // close — should not throw (already connecting/failed)
  ws.close()
  println("  websocket: ok")
}

///|
/// Test WebSocket constants.
pub fn test_websocket_constants() -> Unit {
  assert_eq(@websys.web_socket_connecting, 0, label="CONNECTING")
  assert_eq(@websys.web_socket_open, 1, label="OPEN")
  assert_eq(@websys.web_socket_closing, 2, label="CLOSING")
  assert_eq(@websys.web_socket_closed, 3, label="CLOSED")
  println("  websocket_constants: ok")
}

///|
/// Test CloseEvent construction and properties.
pub fn test_close_event() -> Unit {
  let evt = @websys.CloseEvent::new("close")

  // wasClean — default false
  assert_false(evt.get_was_clean(), label="wasClean default")

  // code — default 0
  assert_eq(evt.get_code(), 0, label="code default")

  // reason — default empty
  assert_eq(evt.get_reason(), "", label="reason default")

  // CloseEvent with init (dictionary pattern)
  let init = @websys.CloseEventInit::{
    code: Some(1000),
    reason: Some("normal closure"),
    wasClean: Some(true),
  }
  let evt2 = @websys.CloseEvent::new_with_event_init_dict(
    "close",
    init,
  )
  assert_eq(evt2.get_code(), 1000, label="init code")
  assert_eq(evt2.get_reason(), "normal closure", label="init reason")
  assert_true(evt2.get_was_clean(), label="init wasClean")
  println("  close_event: ok")
}
