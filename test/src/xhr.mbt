// XMLHttpRequest API tests
// Tests constructor, state, enum, event handlers

///|
/// Test XMLHttpRequest creation and initial state.
pub fn test_xhr_basic() -> Unit {
  let xhr = @websys.XMLHttpRequest::new()
  // Initial readyState is UNSENT (0)
  assert_eq(
    xhr.get_ready_state(),
    @websys.xml_http_request_unsent,
    label="initial readyState is UNSENT",
  )
  // Open sets readyState to OPENED (1)
  xhr.open("GET", "http://localhost/test")
  assert_eq(
    xhr.get_ready_state(),
    @websys.xml_http_request_opened,
    label="readyState after open is OPENED",
  )
  // Initial status is 0
  assert_eq(xhr.get_status(), 0, label="initial status is 0")
  println("  xhr_basic: ok")
}

///|
/// Test XMLHttpRequestResponseType enum.
pub fn test_xhr_response_type() -> Unit {
  let xhr = @websys.XMLHttpRequest::new()
  // Default response type
  assert_eq(
    xhr.get_response_type(),
    @websys.XMLHttpRequestResponseType::Empty,
    label="default responseType is Empty",
  )
  // Enum to_string / from_string round-trip
  assert_eq(
    @websys.XMLHttpRequestResponseType::Json.to_string(),
    "json",
    label="Json to_string",
  )
  assert_eq(
    @websys.XMLHttpRequestResponseType::Arraybuffer.to_string(),
    "arraybuffer",
    label="Arraybuffer to_string",
  )
  assert_eq(
    @websys.XMLHttpRequestResponseType::from_string("blob"),
    Some(@websys.XMLHttpRequestResponseType::Blob),
    label="from_string blob",
  )
  assert_true(
    @websys.XMLHttpRequestResponseType::from_string("invalid") is None,
    label="from_string invalid is None",
  )
  println("  xhr_response_type: ok")
}

///|
/// Test XMLHttpRequest event handler set/clear pattern.
pub fn test_xhr_event_handlers() -> Unit {
  let xhr = @websys.XMLHttpRequest::new()
  let called : Ref[Bool] = Ref::new(false)
  // Set onreadystatechange
  xhr.set_onreadystatechange(fn(_event : @websys.Event) { called.val = true })
  // Opening triggers readystatechange
  xhr.open("GET", "http://localhost/test")
  assert_true(called.val, label="onreadystatechange called on open")
  // Clear and verify not called again
  called.val = false
  xhr.clear_onreadystatechange()
  xhr.open("GET", "http://localhost/test2")
  assert_false(called.val, label="onreadystatechange not called after clear")
  // XMLHttpRequestEventTarget event handlers
  let target = xhr.to_xml_http_request_event_target()
  let load_called : Ref[Bool] = Ref::new(false)
  target.set_onload(fn(_event : @websys.ProgressEvent) {
    load_called.val = true
  })
  target.clear_onload()
  assert_false(load_called.val, label="onload not called without request")
  println("  xhr_event_handlers: ok")
}
