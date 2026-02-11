// HTMLModElement test (ins / del elements)
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLModElement
// Rust web-sys ref: crates/web-sys/tests/wasm/mod_elements.rs

///|
fn test_ins_element() -> Unit {
  let doc = get_document()
  let ins = @websys.HTMLModElement::from_js_value(
    doc.create_element("ins").to_js_value(),
  )
  // cite (URL-reflected attribute)
  assert_eq(ins.get_cite(), "", label="cite default")
  ins.set_cite("https://example.com/changelog")
  assert_eq(ins.get_cite(), "https://example.com/changelog", label="cite set")
  // dateTime
  assert_eq(ins.get_date_time(), "", label="dateTime default")
  ins.set_date_time("2024-01-15")
  assert_eq(ins.get_date_time(), "2024-01-15", label="dateTime set")
  // type conversions
  let _html : @websys.HTMLElement = ins.to_html_element()
}

///|
fn test_del_element() -> Unit {
  let doc = get_document()
  let del = @websys.HTMLModElement::from_js_value(
    doc.create_element("del").to_js_value(),
  )
  // cite (URL-reflected attribute)
  del.set_cite("https://example.com/errata")
  assert_eq(del.get_cite(), "https://example.com/errata", label="cite")
  // dateTime
  del.set_date_time("2024-06-01T12:00:00Z")
  assert_eq(del.get_date_time(), "2024-06-01T12:00:00Z", label="dateTime")
}
