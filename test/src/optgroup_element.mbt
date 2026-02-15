// HTMLOptGroupElement test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLOptGroupElement
// Rust web-sys ref: crates/web-sys/tests/wasm/optgroup_element.rs

///|
fn test_optgroup_element() -> Unit {
  let doc = get_document()
  let optgroup = @websys.HTMLOptGroupElement::from_js_value(
    doc.create_element("optgroup").to_js_value(),
  )
  // disabled
  assert_false(optgroup.get_disabled(), label="disabled default")
  optgroup.set_disabled(true)
  assert_true(optgroup.get_disabled(), label="disabled set")
  // label
  assert_eq(optgroup.get_label(), "", label="label default")
  optgroup.set_label("Group 1")
  assert_eq(optgroup.get_label(), "Group 1", label="label set")
  // type conversions
  let _html : @websys.HTMLElement = optgroup.to_html_element()
  let _el : @websys.Element = optgroup.to_element()
}
