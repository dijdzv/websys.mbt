// Event API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/EventTarget
// Pattern: interface, callback (EventListener)

///|
/// Test EventTarget.addEventListener with dispatch.
/// This is one of the most important Web API patterns.
/// Equivalent to:
///   const target = new EventTarget()
///   let called = false
///   target.addEventListener("click", (e) => { called = true })
///   target.dispatchEvent(new Event("click"))
///   console.assert(called === true)
pub fn test_event_target() -> Unit {
  // Create standalone EventTarget — Web API: new EventTarget()
  let target = @websys.EventTarget::new()

  // Track whether the listener was called using a mutable ref
  let call_count : Ref[Int] = Ref::new(0)

  // Create EventListener from MoonBit function
  let listener = @websys.EventListener::from_fn(fn(_event) {
    call_count.val = call_count.val + 1
  })

  // addEventListener — Web API: target.addEventListener("test", listener)
  target.add_event_listener("test", Some(listener))

  // dispatchEvent — Web API: target.dispatchEvent(new Event("test"))
  let event = @websys.Event::new("test")
  let dispatched = target.dispatch_event(event)
  assert_true(dispatched, label="dispatchEvent returns true")
  assert_eq(call_count.val, 1, label="listener called once")

  // Dispatch again
  let event2 = @websys.Event::new("test")
  let _ = target.dispatch_event(event2)
  assert_eq(call_count.val, 2, label="listener called twice")

  // removeEventListener — Web API: target.removeEventListener("test", listener)
  target.remove_event_listener("test", Some(listener))
  let event3 = @websys.Event::new("test")
  let _ = target.dispatch_event(event3)
  assert_eq(call_count.val, 2, label="not called after remove")
  println("  event_target: ok")
}

///|
/// Test Event properties and construction.
/// Equivalent to:
///   const event = new Event("click", { bubbles: true, cancelable: true })
///   event.type // "click"
///   event.bubbles // true
pub fn test_event_dispatch() -> Unit {
  // Event with options via struct literal (pub(all) struct)
  let event = @websys.Event::new_with_event_init_dict("click", {
    bubbles: Some(true),
    cancelable: Some(true),
    composed: Some(false),
  })

  // Event properties — Web API: event.type, event.bubbles, etc.
  assert_eq(event.get_type(), "click", label="event.type")
  assert_true(event.get_bubbles(), label="event.bubbles")
  assert_true(event.get_cancelable(), label="event.cancelable")
  assert_false(event.get_composed(), label="event.composed")

  // defaultPrevented — Web API: event.defaultPrevented, event.preventDefault()
  assert_false(event.get_default_prevented(), label="defaultPrevented initial")
  event.prevent_default()
  assert_true(
    event.get_default_prevented(),
    label="defaultPrevented after prevent",
  )

  // Event on a DOM element
  let doc = get_document()
  let el = doc.create_element("div")
  let target = el.to_event_target()
  let received_type : Ref[String] = Ref::new("")
  let listener = @websys.EventListener::from_fn(fn(e) {
    received_type.val = e.get_type()
  })
  target.add_event_listener("custom", Some(listener))
  let custom_event = @websys.Event::new("custom")
  let _ = target.dispatch_event(custom_event)
  assert_eq(received_type.val, "custom", label="event on element")
  println("  event_dispatch: ok")
}
