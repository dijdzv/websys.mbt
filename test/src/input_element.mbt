// HTMLInputElement tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLInputElement
// Rust web-sys ref: crates/web-sys/tests/wasm/input_element.rs

///|
/// Test HTMLInputElement — value, type, name, disabled, checked, placeholder.
/// Equivalent to:
///   const input = document.createElement("input")
///   input.type = "text"
///   input.value = "hello"
pub fn test_input_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("input")
  let input = @websys.HTMLInputElement::from_js_value(el.to_js_value())

  // autofocus — via HTMLElement (Rust uses Deref, MoonBit needs upcast)
  let input_html = input.to_html_element()
  assert_false(input_html.get_autofocus(), label="autofocus default")
  input_html.set_autofocus(true)
  assert_true(input_html.get_autofocus(), label="autofocus set")
  input_html.set_autofocus(false)

  // type — Web API: input.type (default is "text")
  assert_eq(input.get_type(), "text", label="type default")
  input.set_type("password")
  assert_eq(input.get_type(), "password", label="type password")
  input.set_type("text")

  // value — Web API: input.value
  assert_eq(input.get_value(), "", label="value default")
  input.set_value("hello")
  assert_eq(input.get_value(), "hello", label="value set")

  // name — Web API: input.name
  assert_eq(input.get_name(), "", label="name default")
  input.set_name("username")
  assert_eq(input.get_name(), "username", label="name set")

  // placeholder — Web API: input.placeholder
  assert_eq(input.get_placeholder(), "", label="placeholder default")
  input.set_placeholder("Enter name...")
  assert_eq(input.get_placeholder(), "Enter name...", label="placeholder set")

  // disabled — Web API: input.disabled
  assert_false(input.get_disabled(), label="disabled default")
  input.set_disabled(true)
  assert_true(input.get_disabled(), label="disabled set")
  input.set_disabled(false)

  // required — Web API: input.required
  assert_false(input.get_required(), label="required default")
  input.set_required(true)
  assert_true(input.get_required(), label="required set")

  // readOnly — Web API: input.readOnly
  assert_false(input.get_read_only(), label="readOnly default")
  input.set_read_only(true)
  assert_true(input.get_read_only(), label="readOnly set")

  // accept — Web API: input.accept
  input.set_accept("text/html")
  assert_eq(input.get_accept(), "text/html", label="accept")

  // alt — Web API: input.alt
  input.set_alt("alternate text")
  assert_eq(input.get_alt(), "alternate text", label="alt")

  // autocomplete — Web API: input.autocomplete
  input.set_autocomplete("on")
  assert_eq(input.get_autocomplete(), "on", label="autocomplete")

  // form — None for detached input
  assert_true(input.get_form() is None, label="form is None")

  // formAction — Web API: input.formAction
  input.set_form_action("http://example.com/submit")
  assert_eq(
    input.get_form_action(),
    "http://example.com/submit",
    label="form_action",
  )

  // formEnctype — Web API: input.formEnctype
  input.set_form_enctype("text/plain")
  assert_eq(input.get_form_enctype(), "text/plain", label="form_enctype")

  // formMethod — Web API: input.formMethod
  input.set_form_method("post")
  assert_eq(input.get_form_method(), "post", label="form_method")

  // formNoValidate — Web API: input.formNoValidate
  input.set_form_no_validate(true)
  assert_true(input.get_form_no_validate(), label="form_no_validate")

  // formTarget — Web API: input.formTarget
  input.set_form_target("_blank")
  assert_eq(input.get_form_target(), "_blank", label="form_target")

  // defaultValue — Web API: input.defaultValue
  input.set_default_value("default")
  assert_eq(input.get_default_value(), "default", label="default_value")

  // size — Web API: input.size
  input.set_size(432)
  assert_eq(input.get_size(), 432, label="size")

  // min — Web API: input.min
  input.set_min("1")
  assert_eq(input.get_min(), "1", label="min")

  // max — Web API: input.max
  input.set_max("432")
  assert_eq(input.get_max(), "432", label="max")

  // pattern — Web API: input.pattern
  input.set_pattern("[0-9]")
  assert_eq(input.get_pattern(), "[0-9]", label="pattern")

  // step — Web API: input.step
  input.set_step("2")
  assert_eq(input.get_step(), "2", label="step")

  // multiple — Web API: input.multiple
  input.set_multiple(true)
  assert_true(input.get_multiple(), label="multiple")

  // indeterminate — Web API: input.indeterminate
  input.set_indeterminate(true)
  assert_true(input.get_indeterminate(), label="indeterminate")

  // valueAsNumber — Web API: input.valueAsNumber
  input.set_type("number")
  input.set_value_as_number(1.0)
  assert_eq(input.get_value_as_number(), 1.0, label="value_as_number")

  // align (deprecated) — Web API: input.align
  input.set_align("right")
  assert_eq(input.get_align(), "right", label="align")
  println("  input_element: ok")
}

///|
/// Test HTMLInputElement as image input — width, height, src.
/// Equivalent to Rust web-sys input_element.rs image tests.
pub fn test_input_image() -> Unit {
  let doc = get_document()
  let el = doc.create_element("input")
  let input = @websys.HTMLInputElement::from_js_value(el.to_js_value())
  input.set_type("image")

  // width — Web API: input.width
  input.set_width(234)
  assert_eq(input.get_width(), 234, label="image width")

  // height — Web API: input.height
  input.set_height(543)
  assert_eq(input.get_height(), 543, label="image height")

  // src — URL reflected attribute
  input.set_src("http://example.com/image.png")
  assert_eq(input.get_src(), "http://example.com/image.png", label="image src")
  println("  input_image: ok")
}

///|
/// Test HTMLInputElement validation API.
/// Equivalent to Rust web-sys input_element.rs validation tests.
pub fn test_input_validation() -> Unit {
  let doc = get_document()
  let el = doc.create_element("input")
  let input = @websys.HTMLInputElement::from_js_value(el.to_js_value())
  input.set_type("text")

  // willValidate — Web API: input.willValidate
  assert_true(input.get_will_validate(), label="will_validate")

  // validationMessage — empty by default
  assert_eq(
    input.get_validation_message(),
    "",
    label="validation_message default",
  )

  // checkValidity — true by default
  assert_true(input.check_validity(), label="check_validity default")

  // reportValidity — true by default
  assert_true(input.report_validity(), label="report_validity default")

  // setCustomValidity — makes the input invalid
  input.set_custom_validity("oops")
  assert_false(input.check_validity(), label="check_validity after custom")

  // labels — empty NodeList for standalone input
  match input.get_labels() {
    Some(labels) => assert_eq(labels.get_length(), 0, label="labels empty")
    None => {
      let msg = "FAIL [labels]: expected Some(NodeList), got None"
      println(msg)
      abort(msg)
    }
  }
  println("  input_validation: ok")
}

///|
/// Test HTMLInputElement checkbox behavior.
/// Equivalent to:
///   const cb = document.createElement("input")
///   cb.type = "checkbox"
///   cb.checked = true
pub fn test_input_checkbox() -> Unit {
  let doc = get_document()
  let el = doc.create_element("input")
  let cb = @websys.HTMLInputElement::from_js_value(el.to_js_value())
  cb.set_type("checkbox")
  assert_eq(cb.get_type(), "checkbox", label="type checkbox")

  // checked — Web API: input.checked
  assert_false(cb.get_checked(), label="checked default")
  cb.set_checked(true)
  assert_true(cb.get_checked(), label="checked set")
  cb.set_checked(false)
  assert_false(cb.get_checked(), label="checked unset")

  // defaultChecked — Web API: input.defaultChecked
  assert_false(cb.get_default_checked(), label="defaultChecked default")
  cb.set_default_checked(true)
  assert_true(cb.get_default_checked(), label="defaultChecked set")
  println("  input_checkbox: ok")
}

///|
/// Test HTMLInputElement length constraints (minLength, maxLength).
pub fn test_input_length() -> Unit {
  let doc = get_document()
  let el = doc.create_element("input")
  let input = @websys.HTMLInputElement::from_js_value(el.to_js_value())
  input.set_type("text")

  // minLength — Web API: input.minLength
  input.set_min_length(3)
  assert_eq(input.get_min_length(), 3, label="minLength set")

  // maxLength — Web API: input.maxLength
  input.set_max_length(100)
  assert_eq(input.get_max_length(), 100, label="maxLength set")
  println("  input_length: ok")
}
