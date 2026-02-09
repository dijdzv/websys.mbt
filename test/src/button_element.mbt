// HTMLButtonElement tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLButtonElement
// Rust web-sys ref: crates/web-sys/tests/wasm/button_element.rs

///|
/// Test HTMLButtonElement — disabled, name, type, value.
/// Equivalent to:
///   const btn = document.createElement("button")
///   btn.disabled = true
///   btn.type // "submit"
pub fn test_button_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("button")
  let btn = @websys.HTMLButtonElement::from_js_value(el.to_js_value())

  // autofocus — via HTMLElement (Rust uses Deref, MoonBit needs upcast)
  let btn_html = btn.to_html_element()
  assert_false(btn_html.get_autofocus(), label="autofocus default")
  btn_html.set_autofocus(true)
  assert_true(btn_html.get_autofocus(), label="autofocus set")
  btn_html.set_autofocus(false)

  // disabled — Web API: btn.disabled
  assert_false(btn.get_disabled(), label="disabled default")
  btn.set_disabled(true)
  assert_true(btn.get_disabled(), label="disabled set")

  // type — Web API: btn.type (default is "submit")
  assert_eq(btn.get_type(), "submit", label="type default")
  btn.set_type("button")
  assert_eq(btn.get_type(), "button", label="type set")
  btn.set_type("reset")
  assert_eq(btn.get_type(), "reset", label="type reset")

  // name — Web API: btn.name
  assert_eq(btn.get_name(), "", label="name default")
  btn.set_name("submit-btn")
  assert_eq(btn.get_name(), "submit-btn", label="name set")

  // value — Web API: btn.value
  assert_eq(btn.get_value(), "", label="value default")
  btn.set_value("Submit")
  assert_eq(btn.get_value(), "Submit", label="value set")

  // formNoValidate — Web API: btn.formNoValidate
  assert_false(btn.get_form_no_validate(), label="formNoValidate default")
  btn.set_form_no_validate(true)
  assert_true(btn.get_form_no_validate(), label="formNoValidate set")

  // form — Web API: btn.form (null when detached from form)
  assert_true(btn.get_form() is None, label="form detached")

  // formAction — Web API: btn.formAction
  btn.set_form_action("https://example.com/submit")
  assert_eq(
    btn.get_form_action(),
    "https://example.com/submit",
    label="formAction set",
  )

  // formEnctype — Web API: btn.formEnctype
  btn.set_form_enctype("text/plain")
  assert_eq(btn.get_form_enctype(), "text/plain", label="formEnctype set")

  // formMethod — Web API: btn.formMethod
  btn.set_form_method("post")
  assert_eq(btn.get_form_method(), "post", label="formMethod set")

  // formTarget — Web API: btn.formTarget
  btn.set_form_target("_blank")
  assert_eq(btn.get_form_target(), "_blank", label="formTarget set")

  // willValidate — Web API: btn.willValidate
  // Re-enable and restore type to "submit" (disabled buttons and type="reset"/"button" have willValidate=false)
  btn.set_disabled(false)
  btn.set_type("submit")
  assert_true(btn.get_will_validate(), label="willValidate")

  // validationMessage — Web API: btn.validationMessage
  assert_eq(btn.get_validation_message(), "", label="validationMessage")

  // checkValidity — Web API: btn.checkValidity()
  assert_true(btn.check_validity(), label="checkValidity")

  // reportValidity — Web API: btn.reportValidity()
  assert_true(btn.report_validity(), label="reportValidity")

  // setCustomValidity + checkValidity — Web API: btn.setCustomValidity("error")
  btn.set_custom_validity("error")
  assert_false(btn.check_validity(), label="checkValidity after custom")

  // labels — Web API: btn.labels
  assert_eq(btn.get_labels().get_length(), 0, label="labels")
  println("  button_element: ok")
}
