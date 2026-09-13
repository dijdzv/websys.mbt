///|
priv struct InputLifecycle {
  window : @bindings.Window
  input : @bindings.Element
  listener : @bindings.EventListener
  active : Ref[Bool]
  pending : Ref[UInt?]
}

///|
let lifecycle : Ref[InputLifecycle?] = Ref(None)

///|
let callbacks : Ref[Int] = Ref(0)

///|
let frames : Ref[Int] = Ref(0)

///|
let observed_text : Ref[String] = Ref("")

///|
let observed_selection : Ref[(UInt?, UInt?, String?)] = Ref((None, None, None))

///|
let observed_preedit : Ref[String] = Ref("")

///|
pub fn input_stop() -> Unit {
  if lifecycle.val is Some(state) {
    state.active.val = false
    if state.pending.val is Some(handle) {
      state.window.cancel_animation_frame(handle)
      state.pending.val = None
    }
    state.input.remove_event_listener("input", state.listener, false)
    state.input.remove_event_listener("compositionend", state.listener, false)
    state.input.remove_event_listener(
      "compositionupdate",
      state.listener,
      false,
    )
    lifecycle.val = None
  }
}

///|
pub fn input_start(
  window : @bindings.Window,
  input : @bindings.Element,
) -> Unit {
  input_stop()
  let read_value : () -> String = if @bindings.HTMLInputElement::from_element_opt(
      input,
    )
    is Some(field) {
    fn() { field.value() }
  } else if @bindings.HTMLTextAreaElement::from_element_opt(input)
    is Some(field) {
    fn() { field.value() }
  } else {
    abort("Expected input or textarea")
  }
  let active = Ref(true)
  let read_selection = fn() {
    if @bindings.HTMLInputElement::from_element_opt(input) is Some(field) {
      (
        field.selection_start(),
        field.selection_end(),
        field.selection_direction(),
      )
    } else {
      let field = @bindings.HTMLTextAreaElement::from_element_opt(input).unwrap()
      (
        Some(field.selection_start()),
        Some(field.selection_end()),
        Some(field.selection_direction()),
      )
    }
  }
  let pending : Ref[UInt?] = Ref(None)
  let listener = @bindings.EventListener::new(fn(event) {
    if !active.val {
      return
    }
    callbacks.val += 1
    if event.type_() == "compositionend" {
      if pending.val is Some(handle) {
        window.cancel_animation_frame(handle)
        pending.val = None
      }
      observed_text.val = read_value()
      observed_selection.val = read_selection()
      return
    }
    if @bindings.InputEvent::from_event_opt(event) is Some(typed) &&
      typed.is_composing() {
      return
    }
    if event.type_() == "compositionupdate" {
      guard @bindings.CompositionEvent::from_event_opt(event)
        is Some(composition) else {
        return
      }
      observed_preedit.val = composition.data()
    }
    if pending.val is None {
      let callback = @bindings.FrameRequestCallback::new(fn(_timestamp) {
        pending.val = None
        if active.val {
          frames.val += 1
          observed_text.val = read_value()
          observed_selection.val = read_selection()
        }
      })
      pending.val = Some(window.request_animation_frame(callback))
    }
  })
  input.add_event_listener("input", listener, false)
  input.add_event_listener("compositionend", listener, false)
  input.add_event_listener("compositionupdate", listener, false)
  lifecycle.val = Some({ window, input, listener, active, pending, })
}

///|
pub fn input_callbacks() -> Int {
  callbacks.val
}

///|
pub fn input_frames() -> Int {
  frames.val
}

///|
pub fn input_text_matches(value : String) -> Bool {
  observed_text.val == value
}

///|
pub fn input_snapshot_matches(
  start : UInt,
  end : UInt,
  direction : String,
  preedit : String,
) -> Bool {
  observed_selection.val == (Some(start), Some(end), Some(direction)) &&
  observed_preedit.val == preedit
}

///|
pub fn input_focus(input : @bindings.Element) -> Unit {
  if @bindings.HTMLElement::from_element_opt(input) is Some(element) {
    element.focus()
  }
}

///|
pub fn input_is_focused(
  document : @bindings.Document,
  input : @bindings.Element,
) -> Bool {
  match document.active_element() {
    Some(active) => input.is_same_node(Some(active.as_node()))
    None => false
  }
}
