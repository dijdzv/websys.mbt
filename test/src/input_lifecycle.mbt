///|
async fn test_js_input_lifecycle() -> Unit {
  let window = @websys.window().unwrap()
  let document = get_document()
  for tag in ["input", "textarea"] {
    let element = create_element(document, tag)
    ignore(
      document
      .get_body()
      .unwrap()
      .to_node()
      .append_child(element.to_node())
      .unwrap(),
    )
    defer element.remove()
    let html = @websys.HTMLElement::from_js_value_opt(element.to_js_value()).unwrap()
    html.focus()
    assert_true(
      document
      .get_active_element()
      .unwrap()
      .to_node()
      .is_same_node(Some(element.to_node())),
      label="focus identity",
    )
    let (read, write) : (() -> String, (String) -> Unit) = if tag == "input" {
      let field = @websys.HTMLInputElement::from_js_value_opt(
        element.to_js_value(),
      ).unwrap()
      (fn() { field.get_value() }, fn(value) { field.set_value(value) })
    } else {
      let field = @websys.HTMLTextAreaElement::from_js_value_opt(
        element.to_js_value(),
      ).unwrap()
      (fn() { field.get_value() }, fn(value) { field.set_value(value) })
    }
    let target = element.to_event_target()
    let selection = fn() {
      if @websys.HTMLInputElement::from_js_value_opt(element.to_js_value())
        is Some(field) {
        (
          field.get_selection_start(),
          field.get_selection_end(),
          field.get_selection_direction(),
        )
      } else {
        let field = @websys.HTMLTextAreaElement::from_js_value_opt(
          element.to_js_value(),
        ).unwrap()
        (
          Some(field.get_selection_start()),
          Some(field.get_selection_end()),
          Some(field.get_selection_direction()),
        )
      }
    }
    let select = fn(start : Int, end : Int, direction : String) {
      if @websys.HTMLInputElement::from_js_value_opt(element.to_js_value())
        is Some(field) {
        field.set_selection_range_with_direction(start, end, direction).unwrap()
      } else {
        @websys.HTMLTextAreaElement::from_js_value_opt(element.to_js_value())
        .unwrap()
        .set_selection_range_with_direction(start, end, direction)
      }
    }
    let observed_selection : Ref[(Int?, Int?, String?)] = Ref(
      (None, None, None),
    )
    let preedit = Ref("")
    let pending : Ref[Int?] = Ref(None)
    let active = Ref(true)
    let frames = Ref(0)
    let calls = Ref(0)
    let observed = Ref("")
    let cancel = fn() {
      if pending.val is Some(handle) {
        window.cancel_animation_frame(handle)
        pending.val = None
      }
    }
    defer cancel()
    let listener = @websys.EventListener::from_fn(fn(event) {
      if !active.val {
        return
      }
      calls.val += 1
      if event.get_type() == "compositionend" {
        cancel()
        observed.val = read()
        observed_selection.val = selection()
        return
      }
      if @websys.InputEvent::from_js_value_opt(event.to_js_value())
        is Some(input) &&
        input.get_is_composing() {
        return
      }
      if event.get_type() == "compositionupdate" {
        preedit.val = @websys.CompositionEvent::from_js_value_opt(
            event.to_js_value(),
          )
          .unwrap()
          .get_data()
      }
      if pending.val is None {
        pending.val = Some(
          window.request_animation_frame(
            @websys.FrameRequestCallback::from_fn(fn(_) {
              pending.val = None
              if active.val {
                frames.val += 1
                observed.val = read()
                observed_selection.val = selection()
              }
            }),
          ),
        )
      }
    })
    let bind = fn() {
      active.val = true
      for kind in ["input", "compositionupdate", "compositionend"] {
        target.add_event_listener(kind, Some(listener))
      }
    }
    let stop = fn() {
      active.val = false
      cancel()
      for kind in ["input", "compositionupdate", "compositionend"] {
        target.remove_event_listener(kind, Some(listener))
      }
    }
    defer stop()
    let dispatch = fn(event : @websys.Event) {
      ignore(target.dispatch_event(event).unwrap())
    }
    bind()
    write("変換中")
    dispatch(
      @websys.InputEvent::new_with_event_init_dict("input", {
        dataTransfer: Undefined,
        targetRanges: None,
        data: Undefined,
        isComposing: Some(true),
        inputType: None,
      }).to_event(),
    )
    next_input_frames().wait()
    assert_eq(frames.val, 0, label="composing input suppressed")
    dispatch(
      @websys.CompositionEvent::new_with_event_init_dict("compositionupdate", {
        data: Some("あ😀"),
      }).to_event(),
    )
    write("あ😀")
    select(1, 3, "backward")
    next_input_frames().wait()
    assert_eq(observed.val, "あ😀", label="frame observes updated DOM")
    assert_eq(observed_selection.val, (Some(1), Some(3), Some("backward")))
    assert_eq(preedit.val, "あ😀")
    assert_eq(frames.val, 1)
    dispatch(
      @websys.CompositionEvent::new_with_event_init_dict("compositionupdate", {
        data: Some("確定"),
      }).to_event(),
    )
    write("確定")
    select(2, 2, "forward")
    dispatch(@websys.CompositionEvent::new("compositionend").to_event())
    write("late DOM change")
    next_input_frames().wait()
    assert_eq(observed.val, "確定", label="composition end cancels frame")
    assert_eq(observed_selection.val, (Some(2), Some(2), Some("forward")))
    assert_eq(preedit.val, "確定")
    assert_eq(frames.val, 1)
    dispatch(@websys.InputEvent::new("input").to_event())
    stop()
    write("disposed")
    dispatch(@websys.InputEvent::new("input").to_event())
    next_input_frames().wait()
    assert_eq(observed.val, "確定", label="disposed field stable")
    assert_eq(observed_selection.val, (Some(2), Some(2), Some("forward")))
    assert_eq(frames.val, 1)
    assert_eq(calls.val, 5)
    bind()
    bind()
    write("再開")
    dispatch(@websys.InputEvent::new("input").to_event())
    next_input_frames().wait()
    assert_eq(observed.val, "再開")
    assert_eq(frames.val, 2)
    assert_eq(calls.val, 6, label="restart listener identity")
  }
}
