// Event handler tests
// Tests set_onXxx / clear_onXxx patterns with typed event parameters.

///|
/// set_onclick / clear_onclick with PointerEvent dispatch.
pub fn test_event_handler_onclick() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let el = @websys.HTMLElement::from_js_value(div.to_js_value())
  let call_count : Ref[Int] = Ref::new(0)
  el.set_onclick(fn(_event : @websys.PointerEvent) {
    call_count.val = call_count.val + 1
  })
  // dispatch click
  let event = @websys.PointerEvent::new("click")
  let _ = el.to_event_target().dispatch_event(event.to_event())
  assert_eq(call_count.val, 1, label="onclick called once")
  // clear and dispatch again
  el.clear_onclick()
  let event2 = @websys.PointerEvent::new("click")
  let _ = el.to_event_target().dispatch_event(event2.to_event())
  assert_eq(call_count.val, 1, label="onclick not called after clear")
  println("  event_handler_onclick: ok")
}

///|
/// set_onkeydown with KeyboardEvent dispatch.
pub fn test_event_handler_onkeydown() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let el = @websys.HTMLElement::from_js_value(div.to_js_value())
  let called : Ref[Bool] = Ref::new(false)
  el.set_onkeydown(fn(_event : @websys.KeyboardEvent) { called.val = true })
  let event = @websys.KeyboardEvent::new("keydown")
  let _ = el.to_event_target().dispatch_event(event.to_event())
  assert_true(called.val, label="onkeydown called")
  println("  event_handler_onkeydown: ok")
}

///|
/// set_onfocus / set_onblur with FocusEvent dispatch.
pub fn test_event_handler_onfocus_onblur() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let el = @websys.HTMLElement::from_js_value(div.to_js_value())
  let focus_called : Ref[Bool] = Ref::new(false)
  let blur_called : Ref[Bool] = Ref::new(false)
  el.set_onfocus(fn(_event : @websys.FocusEvent) { focus_called.val = true })
  el.set_onblur(fn(_event : @websys.FocusEvent) { blur_called.val = true })
  let focus_event = @websys.FocusEvent::new("focus")
  let _ = el.to_event_target().dispatch_event(focus_event.to_event())
  assert_true(focus_called.val, label="onfocus called")
  let blur_event = @websys.FocusEvent::new("blur")
  let _ = el.to_event_target().dispatch_event(blur_event.to_event())
  assert_true(blur_called.val, label="onblur called")
  println("  event_handler_onfocus_onblur: ok")
}

///|
/// Typed event properties via KeyboardEventInit.
pub fn test_event_handler_typed_event_properties() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let el = @websys.HTMLElement::from_js_value(div.to_js_value())
  let received_key : Ref[String] = Ref::new("")
  let received_code : Ref[String] = Ref::new("")
  let received_ctrl : Ref[Bool] = Ref::new(false)
  el.set_onkeydown(fn(event : @websys.KeyboardEvent) {
    received_key.val = event.get_key()
    received_code.val = event.get_code()
    received_ctrl.val = event.get_ctrl_key()
  })
  let init : @websys.KeyboardEventInit = {
    ..@websys.KeyboardEventInit::default(),
    key: Some("Enter"),
    code: Some("Enter"),
    ctrlKey: Some(true),
  }
  let event = @websys.KeyboardEvent::new_with_event_init_dict("keydown", init)
  let _ = el.to_event_target().dispatch_event(event.to_event())
  assert_eq(received_key.val, "Enter", label="key is Enter")
  assert_eq(received_code.val, "Enter", label="code is Enter")
  assert_true(received_ctrl.val, label="ctrlKey is true")
  println("  event_handler_typed_event_properties: ok")
}
