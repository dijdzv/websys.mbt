// HTMLFormElement tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLFormElement

///|
/// Test HTMLFormElement — action, method, name, length.
/// Equivalent to:
///   const form = document.createElement("form")
///   form.method = "POST"
///   form.action = "/submit"
pub fn test_form_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("form")
  let form = @websys.HTMLFormElement::from_js_value(el.to_js_value())

  // method — Web API: form.method (default is "get")
  assert_eq(form.get_method(), "get", label="method default")
  form.set_method("post")
  assert_eq(form.get_method(), "post", label="method set")

  // action — Web API: form.action
  form.set_action("/submit")
  let action = form.get_action()
  assert_true(action.contains("/submit"), label="action contains path")

  // name — Web API: form.name
  assert_eq(form.get_name(), "", label="name default")
  form.set_name("login-form")
  assert_eq(form.get_name(), "login-form", label="name set")

  // length — Web API: form.length (number of form controls)
  assert_eq(form.get_length(), 0, label="length empty")

  // Add an input to the form
  let input_el = doc.create_element("input")
  let _ = el.to_node().append_child(input_el.to_node())
  assert_eq(form.get_length(), 1, label="length after add input")

  // Add another input
  let input2_el = doc.create_element("input")
  let _ = el.to_node().append_child(input2_el.to_node())
  assert_eq(form.get_length(), 2, label="length after add input 2")
  println("  form_element: ok")
}
