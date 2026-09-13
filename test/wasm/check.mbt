///|
pub fn run(document : @bindings.Document, event : @bindings.Event) -> Int {
  let element = document.create_element("button")
  element.set_id("日本語😀 é")
  guard element.id() == "日本語😀 é" else { return 1 }
  element.set_attribute("data-test", "yes")
  guard element.has_attribute("data-test") else { return 2 }
  guard !element.has_attribute("missing") else { return 3 }
  let calls = Ref(0)
  let callback = @bindings.EventListener::new(fn(e) {
    if e.type_() == "click" {
      calls.val += 1
    }
  })
  element.add_event_listener("click", callback, false)
  element.add_event_listener("click", callback, false)
  guard element.dispatch_event(event) else { return 6 }
  guard calls.val == 1 else { return 4 }
  element.remove_event_listener("click", callback, false)
  ignore(element.dispatch_event(event))
  guard calls.val == 1 else { return 5 }
  0
}
