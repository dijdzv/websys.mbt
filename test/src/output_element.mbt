// HTMLOutputElement test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLOutputElement
// Note: <output> is "barred from constraint validation" per HTML spec.
//   validationMessage always returns "" and checkValidity() always returns true.

///|
fn test_output_element() -> Unit {
  let doc = get_document()
  let output = @websys.HTMLOutputElement::from_js_value(
    doc.create_element("output").to_js_value(),
  )
  // name
  output.set_name("result")
  assert_eq(output.get_name(), "result", label="name")
  // type is always "output"
  assert_eq(output.get_type(), "output", label="type")
  // value / defaultValue
  output.set_default_value("0")
  assert_eq(output.get_default_value(), "0", label="defaultValue")
  output.set_value("42")
  assert_eq(output.get_value(), "42", label="value")
  // <output> is barred from constraint validation (per HTML spec):
  //   checkValidity() always returns true
  //   validationMessage always returns ""
  assert_true(
    output.check_validity(),
    label="checkValidity (always true for output)",
  )
  assert_eq(
    output.get_validation_message(),
    "",
    label="validationMessage (always empty for output)",
  )
}
