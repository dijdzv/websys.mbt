// CustomEvent test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/CustomEvent

///|
fn test_custom_event() -> Unit {
  // Basic CustomEvent construction
  let event = @websys.CustomEvent::new("myevent")
  let base = event.to_event()
  assert_eq(base.get_type(), "myevent", label="type")
  assert_false(base.get_bubbles(), label="bubbles default")
  assert_false(base.get_cancelable(), label="cancelable default")
}

///|
fn test_custom_event_with_init() -> Unit {
  // CustomEvent with init dict
  let init : @websys.CustomEventInit = {
    bubbles: Some(true),
    cancelable: Some(true),
    composed: None,
    detail: None,
  }
  let event = @websys.CustomEvent::new_with_event_init_dict("custom", init)
  let base = event.to_event()
  assert_eq(base.get_type(), "custom", label="type")
  assert_true(base.get_bubbles(), label="bubbles")
  assert_true(base.get_cancelable(), label="cancelable")
}
