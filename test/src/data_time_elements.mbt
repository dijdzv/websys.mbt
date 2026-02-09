// HTMLDataElement / HTMLTimeElement / HTMLDetailsElement tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLDataElement
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLTimeElement
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLDetailsElement

///|
fn test_data_element() -> Unit {
  let doc = get_document()
  let data = @websys.HTMLDataElement::from_js_value(
    doc.create_element("data").to_js_value(),
  )
  // value
  assert_eq(data.get_value(), "", label="value default")
  data.set_value("42")
  assert_eq(data.get_value(), "42", label="value set")
  // type conversions
  let _html : @websys.HTMLElement = data.to_html_element()

}

///|
fn test_time_element() -> Unit {
  let doc = get_document()
  let time = @websys.HTMLTimeElement::from_js_value(
    doc.create_element("time").to_js_value(),
  )
  // dateTime
  assert_eq(time.get_date_time(), "", label="dateTime default")
  time.set_date_time("2024-12-25")
  assert_eq(time.get_date_time(), "2024-12-25", label="dateTime set")
  time.set_date_time("2024-12-25T18:00:00Z")
  assert_eq(time.get_date_time(), "2024-12-25T18:00:00Z", label="dateTime ISO")
}

///|
fn test_details_element() -> Unit {
  let doc = get_document()
  let details = @websys.HTMLDetailsElement::from_js_value(
    doc.create_element("details").to_js_value(),
  )
  // open
  assert_false(details.get_open(), label="open default")
  details.set_open(true)
  assert_true(details.get_open(), label="open set")
  details.set_open(false)
  assert_false(details.get_open(), label="open unset")
  // name
  assert_eq(details.get_name(), "", label="name default")
  details.set_name("accordion-group")
  assert_eq(details.get_name(), "accordion-group", label="name set")
}
