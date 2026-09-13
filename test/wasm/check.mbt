///|
pub fn run(document : @bindings.Document, event : @bindings.Event) -> Int {
  let element = document.create_element("button")
  element.set_id("日本語😀 é")
  guard element.id() == "日本語😀 é" else { return 1 }
  element.set_attribute("data-test", "yes")
  guard element.has_attribute("data-test") else { return 2 }
  guard !element.has_attribute("missing") else { return 3 }
  guard element.get_attribute("missing") is None else { return 10 }
  element.set_attribute("data-empty", "")
  guard element.get_attribute("data-empty") == Some("") else { return 11 }
  element.set_attribute("data-unicode", "日本語😀 é")
  guard element.get_attribute("data-unicode") == Some("日本語😀 é") else {
    return 19
  }
  guard document.query_selector("html") is Some(_) else { return 12 }
  guard document.query_selector("#websys-not-present") is None else {
    return 13
  }
  guard element.parent_element() is None else { return 14 }
  element.set_text_content(Some("日本語😀 é"))
  guard element.text_content() == Some("日本語😀 é") else { return 15 }
  element.set_text_content(None)
  guard element.text_content() == Some("") else { return 16 }
  let child = document.create_element("span")
  ignore(element.insert_before(child, None))
  guard child.parent_element() is Some(parent) && parent.id() == element.id() else {
    return 17
  }
  let first = document.create_element("span")
  first.set_id("first")
  ignore(element.insert_before(first, Some(child)))
  guard first.parent_element() is Some(_) else { return 18 }
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
