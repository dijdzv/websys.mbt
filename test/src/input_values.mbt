///|
fn test_input_values() -> Unit {
  let doc = get_document()
  let input = @websys.HTMLInputElement::from_js_value_opt(
    create_element(doc, "input").to_js_value(),
  ).unwrap()
  input.set_value("あ😀いう")
  input.set_selection_range_with_direction(1, 3, "backward").unwrap()
  assert_eq(input.get_selection_start(), Some(1), label="input UTF16 start")
  assert_eq(input.get_selection_end(), Some(3), label="input UTF16 end")
  assert_eq(
    input.get_selection_direction(),
    Some("backward"),
    label="input backward",
  )
  input.set_type("number")
  assert_eq(
    input.get_selection_start(),
    None,
    label="number input has no selection",
  )
  let editor = @websys.HTMLTextAreaElement::from_js_value_opt(
    create_element(doc, "textarea").to_js_value(),
  ).unwrap()
  editor.set_value("あ😀いう")
  editor.set_selection_range_with_direction(1, 3, "backward")
  assert_eq(editor.get_selection_start(), 1, label="textarea UTF16 start")
  assert_eq(editor.get_selection_end(), 3, label="textarea UTF16 end")
  assert_eq(
    editor.get_selection_direction(),
    "backward",
    label="textarea backward",
  )
  let event = @websys.CompositionEvent::new_with_event_init_dict(
    "compositionupdate",
    { data: Some("あ😀"), },
  )
  let restored = @websys.CompositionEvent::from_js_value_opt(
    event.to_event().to_js_value(),
  ).unwrap()
  assert_eq(restored.get_data(), "あ😀", label="composition data")
  assert_true(
    @websys.CompositionEvent::from_js_value_opt(
      @websys.Event::new("input").to_js_value(),
    )
    is None,
    label="plain event rejected",
  )
}
