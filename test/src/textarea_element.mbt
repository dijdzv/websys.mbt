// HTMLTextAreaElement tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLTextAreaElement

///|
/// Test HTMLTextAreaElement — value, name, rows, cols, disabled, placeholder.
/// Equivalent to:
///   const ta = document.createElement("textarea")
///   ta.value = "Hello"
///   ta.rows = 10
pub fn test_textarea_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("textarea")
  let ta = @websys.HTMLTextAreaElement::from_js_value(el.to_js_value())

  // value — Web API: textarea.value
  assert_eq(ta.get_value(), "", label="value default")
  ta.set_value("Hello, World!")
  assert_eq(ta.get_value(), "Hello, World!", label="value set")

  // name — Web API: textarea.name
  assert_eq(ta.get_name(), "", label="name default")
  ta.set_name("description")
  assert_eq(ta.get_name(), "description", label="name set")

  // rows — Web API: textarea.rows
  ta.set_rows(10)
  assert_eq(ta.get_rows(), 10, label="rows set")

  // cols — Web API: textarea.cols
  ta.set_cols(80)
  assert_eq(ta.get_cols(), 80, label="cols set")

  // placeholder — Web API: textarea.placeholder
  assert_eq(ta.get_placeholder(), "", label="placeholder default")
  ta.set_placeholder("Enter description...")
  assert_eq(
    ta.get_placeholder(),
    "Enter description...",
    label="placeholder set",
  )

  // disabled — Web API: textarea.disabled
  assert_false(ta.get_disabled(), label="disabled default")
  ta.set_disabled(true)
  assert_true(ta.get_disabled(), label="disabled set")

  // required — Web API: textarea.required
  assert_false(ta.get_required(), label="required default")
  ta.set_required(true)
  assert_true(ta.get_required(), label="required set")

  // readOnly — Web API: textarea.readOnly
  assert_false(ta.get_read_only(), label="readOnly default")
  ta.set_read_only(true)
  assert_true(ta.get_read_only(), label="readOnly set")

  // minLength / maxLength — Web API: textarea.minLength, textarea.maxLength
  ta.set_min_length(5)
  assert_eq(ta.get_min_length(), 5, label="minLength set")
  ta.set_max_length(500)
  assert_eq(ta.get_max_length(), 500, label="maxLength set")
  println("  textarea_element: ok")
}
