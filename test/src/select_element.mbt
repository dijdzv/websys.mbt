// HTMLSelectElement / HTMLOptionElement tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLSelectElement
// Rust web-sys ref: crates/web-sys/tests/wasm/select_element.rs, option_element.rs

///|
/// Test HTMLSelectElement — value, disabled, multiple, name, required.
/// Equivalent to:
///   const select = document.createElement("select")
///   select.name = "color"
///   select.multiple = true
pub fn test_select_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("select")
  let select = @websys.HTMLSelectElement::from_js_value(el.to_js_value())

  // autofocus — via HTMLElement (Rust uses Deref, MoonBit needs upcast)
  let select_html = select.to_html_element()
  assert_false(select_html.get_autofocus(), label="autofocus default")
  select_html.set_autofocus(true)
  assert_true(select_html.get_autofocus(), label="autofocus set")
  select_html.set_autofocus(false)

  // name — Web API: select.name
  assert_eq(select.get_name(), "", label="name default")
  select.set_name("color")
  assert_eq(select.get_name(), "color", label="name set")

  // disabled — Web API: select.disabled
  assert_false(select.get_disabled(), label="disabled default")
  select.set_disabled(true)
  assert_true(select.get_disabled(), label="disabled set")
  select.set_disabled(false)

  // multiple — Web API: select.multiple
  assert_false(select.get_multiple(), label="multiple default")
  select.set_multiple(true)
  assert_true(select.get_multiple(), label="multiple set")

  // required — Web API: select.required
  assert_false(select.get_required(), label="required default")
  select.set_required(true)
  assert_true(select.get_required(), label="required set")

  // type — Web API: select.type (reflects multiple)
  assert_eq(select.get_type(), "select-multiple", label="type multiple")
  select.set_multiple(false)
  assert_eq(select.get_type(), "select-one", label="type one")

  // size — Web API: select.size
  select.set_size(5)
  assert_eq(select.get_size(), 5, label="size set")

  // autocomplete — Web API: select.autocomplete
  select.set_autocomplete("on")
  assert_eq(select.get_autocomplete(), "on", label="autocomplete")

  // form — None for detached element
  assert_true(select.get_form() is None, label="form is None")

  // set_length — Web API: select.length (setter)
  select.set_length(34)
  assert_eq(select.get_length(), 34, label="length after set_length")
  println("  select_element: ok")
}

///|
/// Test HTMLSelectElement validation — willValidate, checkValidity, setCustomValidity, labels.
/// Equivalent to:
///   const select = document.createElement("select")
///   select.willValidate // true
///   select.checkValidity() // true
pub fn test_select_validation() -> Unit {
  let doc = get_document()
  let el = doc.create_element("select")
  let select = @websys.HTMLSelectElement::from_js_value(el.to_js_value())

  // selected_options — Web API: select.selectedOptions
  let selected = select.get_selected_options()
  let _ = selected.get_length()

  // will_validate — Web API: select.willValidate
  assert_true(select.get_will_validate(), label="will_validate")

  // validation_message — Web API: select.validationMessage
  assert_eq(select.get_validation_message(), "", label="validation_message")

  // check_validity — Web API: select.checkValidity()
  assert_true(select.check_validity(), label="check_validity")

  // report_validity — Web API: select.reportValidity()
  assert_true(select.report_validity(), label="report_validity")

  // validity — Web API: select.validity → ValidityState
  let v = select.get_validity()
  assert_true(v.get_valid(), label="validity valid")

  // set_custom_validity — Web API: select.setCustomValidity()
  select.set_custom_validity("oops")
  assert_false(select.check_validity(), label="check_validity after custom")

  // labels — Web API: select.labels (empty for detached)
  let labels = select.get_labels()
  assert_eq(labels.get_length(), 0, label="labels empty")
  println("  select_validation: ok")
}

///|
/// Test HTMLOptionElement — value, text, selected, disabled, label.
/// Equivalent to:
///   const opt = document.createElement("option")
///   opt.value = "red"
///   opt.text = "Red Color"
pub fn test_option_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("option")
  let opt = @websys.HTMLOptionElement::from_js_value(el.to_js_value())

  // value — Web API: option.value
  opt.set_value("red")
  assert_eq(opt.get_value(), "red", label="value set")

  // text — Web API: option.text
  opt.set_text("Red Color")
  assert_eq(opt.get_text(), "Red Color", label="text set")

  // selected — Web API: option.selected
  assert_false(opt.get_selected(), label="selected default")
  opt.set_selected(true)
  assert_true(opt.get_selected(), label="selected set")

  // disabled — Web API: option.disabled
  assert_false(opt.get_disabled(), label="disabled default")
  opt.set_disabled(true)
  assert_true(opt.get_disabled(), label="disabled set")

  // label — Web API: option.label
  opt.set_label("Red")
  assert_eq(opt.get_label(), "Red", label="label set")

  // defaultSelected — Web API: option.defaultSelected
  assert_false(opt.get_default_selected(), label="defaultSelected default")
  opt.set_default_selected(true)
  assert_true(opt.get_default_selected(), label="defaultSelected set")

  // form — Web API: option.form (null for detached option)
  assert_true(opt.get_form() is None, label="option form detached")

  // index — Web API: option.index (0 for detached option)
  assert_eq(opt.get_index(), 0, label="option index")
  println("  option_element: ok")
}

///|
/// Test select + option interaction.
/// Equivalent to:
///   const select = document.createElement("select")
///   const opt1 = new Option("Apple", "apple")
///   select.add(opt1)
///   select.length // 1
pub fn test_select_with_options() -> Unit {
  let doc = get_document()
  let select_el = doc.create_element("select")
  let select = @websys.HTMLSelectElement::from_js_value(select_el.to_js_value())

  // Initially empty
  assert_eq(select.get_length(), 0, label="length empty")

  // Add options via appendChild
  let opt1_el = doc.create_element("option")
  let opt1 = @websys.HTMLOptionElement::from_js_value(opt1_el.to_js_value())
  opt1.set_value("apple")
  opt1.set_text("Apple")
  let opt2_el = doc.create_element("option")
  let opt2 = @websys.HTMLOptionElement::from_js_value(opt2_el.to_js_value())
  opt2.set_value("banana")
  opt2.set_text("Banana")
  let select_node = select_el.to_node()
  let _ = select_node.append_child(opt1_el.to_node())
  let _ = select_node.append_child(opt2_el.to_node())
  assert_eq(select.get_length(), 2, label="length after add")

  // value reflects first option — Web API: select.value
  assert_eq(select.get_value(), "apple", label="value first option")

  // selectedIndex — Web API: select.selectedIndex
  assert_eq(select.get_selected_index(), 0, label="selectedIndex default")

  // options collection — Web API: select.options
  let options = select.get_options()
  assert_eq(options.get_length(), 2, label="options.length")

  // named_item — Web API: select.namedItem()
  // namedItem matches by 'id' or 'name' attribute, not by 'value'
  // HTMLOptionElement has no set_name, so just call to verify it doesn't throw
  let _named = select.named_item("apple")

  // remove_with_index — Web API: select.remove(index)
  select.remove_with_index(1)
  assert_eq(select.get_length(), 1, label="length after remove")
  println("  select_with_options: ok")
}
