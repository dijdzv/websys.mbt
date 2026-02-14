// HTMLParamElement test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLParamElement
// Equivalent Rust web-sys test: param_element.rs

///|
fn test_param_element() -> Unit {
  let doc = get_document()
  let param = @websys.HTMLParamElement::from_js_value(
    doc.create_element("param").to_js_value(),
  )
  param.set_name("color")
  assert_eq(param.get_name(), "color", label="name")
  param.set_value("purple")
  assert_eq(param.get_value(), "purple", label="value")
  param.set_value_type("ref")
  assert_eq(param.get_value_type(), "ref", label="valueType")
  param.set_type("text/plain")
  assert_eq(param.get_type(), "text/plain", label="type")
}
