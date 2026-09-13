///|
pub fn run(document : @bindings.Document, event : @bindings.Event) -> Int {
  let element = document.create_element("button")
  element.scroll_to(@bindings.ScrollToOptions::{ left: Some(0.0), top: None, })
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
  guard element.as_node().text_content() == element.text_content() else {
    return 20
  }
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
  element.as_event_target().remove_event_listener("click", callback, false)
  ignore(element.dispatch_event(event))
  guard calls.val == 1 else { return 5 }
  let defaults = @bindings.Event::new("custom", @bindings.EventInit::{
    bubbles: None,
    cancelable: None,
    composed: None,
  })
  guard !defaults.bubbles() && !defaults.cancelable() else { return 21 }
  defaults.prevent_default()
  guard !defaults.default_prevented() else { return 22 }
  let custom = @bindings.Event::new("custom", @bindings.EventInit::{
    bubbles: Some(true),
    cancelable: Some(true),
    composed: None,
  })
  guard custom.bubbles() && custom.cancelable() else { return 23 }
  let handler = @bindings.EventListener::new(fn(value) {
    value.prevent_default()
  })
  element.add_event_listener("custom", handler, false)
  guard !element.dispatch_event(custom) && custom.default_prevented() else {
    return 24
  }
  element.remove_event_listener("custom", handler, false)
  0
}

///|
pub fn dictionary_sample(
  mode : Int,
  document : @bindings.Document,
) -> @bindings.JsValue {
  let options : @bindings.TestOptions = {
    title: "日本語😀",
    requiredNote: if mode == 2 {
      Some("確定😀")
    } else {
      None
    },
    node: if mode == 0 {
      Undefined
    } else if mode == 1 {
      Null
    } else {
      Value(document.create_element("span"))
    },
    note: if mode == 0 {
      Undefined
    } else if mode == 1 {
      Null
    } else {
      Value("")
    },
    enabled: if mode == 0 {
      None
    } else {
      Some(false)
    },
    count: if mode == 0 {
      None
    } else {
      Some(0)
    },
  }
  options.to_js()
}
