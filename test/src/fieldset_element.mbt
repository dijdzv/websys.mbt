///|
fn test_fieldset_element() -> Unit {
  let doc = get_document()
  let fieldset = @websys.HTMLFieldSetElement::from_js_value(
    doc.create_element("fieldset").to_js_value(),
  )
  // disabled
  assert_false(fieldset.get_disabled(), label="disabled default")
  fieldset.set_disabled(true)
  assert_true(fieldset.get_disabled(), label="disabled set")
  // name
  fieldset.set_name("group1")
  assert_eq(fieldset.get_name(), "group1", label="name")
  // type is always "fieldset"
  assert_eq(fieldset.get_type(), "fieldset", label="type")
  // elements collection
  let elements = fieldset.get_elements()
  assert_eq(elements.get_length(), 0, label="elements initially empty")
  // validation
  assert_true(fieldset.check_validity(), label="checkValidity")
}
