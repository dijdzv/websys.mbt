///|
fn test_olist_element() -> Unit {
  let doc = get_document()
  let ol = @websys.HTMLOListElement::from_js_value(
    doc.create_element("ol").to_js_value(),
  )
  // reversed
  assert_false(ol.get_reversed(), label="reversed default")
  ol.set_reversed(true)
  assert_true(ol.get_reversed(), label="reversed set")
  // start
  ol.set_start(5)
  assert_eq(ol.get_start(), 5, label="start")
  // type
  ol.set_type("a")
  assert_eq(ol.get_type(), "a", label="type")
  // compact (deprecated)
  assert_false(ol.get_compact(), label="compact default")
  ol.set_compact(true)
  assert_true(ol.get_compact(), label="compact set")
}

///|
fn test_li_element() -> Unit {
  let doc = get_document()
  let li = @websys.HTMLLIElement::from_js_value(
    doc.create_element("li").to_js_value(),
  )
  li.set_value(3)
  assert_eq(li.get_value(), 3, label="value")
  li.set_type("disc")
  assert_eq(li.get_type(), "disc", label="type")
}

///|
fn test_quote_element() -> Unit {
  let doc = get_document()
  let q = @websys.HTMLQuoteElement::from_js_value(
    doc.create_element("blockquote").to_js_value(),
  )
  // cite is a URL-reflected attribute: getter returns resolved absolute URL
  q.set_cite("https://example.com/source")
  assert_eq(q.get_cite(), "https://example.com/source", label="cite")
}

///|
fn test_hr_element() -> Unit {
  let doc = get_document()
  let hr = @websys.HTMLHRElement::from_js_value(
    doc.create_element("hr").to_js_value(),
  )
  hr.set_align("center")
  assert_eq(hr.get_align(), "center", label="align")
  hr.set_color("#000000")
  assert_eq(hr.get_color(), "#000000", label="color")
  assert_false(hr.get_no_shade(), label="noShade default")
  hr.set_no_shade(true)
  assert_true(hr.get_no_shade(), label="noShade set")
  hr.set_size("2")
  assert_eq(hr.get_size(), "2", label="size")
  hr.set_width("100%")
  assert_eq(hr.get_width(), "100%", label="width")
}

///|
fn test_pre_element() -> Unit {
  let doc = get_document()
  let pre = @websys.HTMLPreElement::from_js_value(
    doc.create_element("pre").to_js_value(),
  )
  // width — Rust test: pre.set_width(150); assert_eq!(pre.width(), 150)
  pre.set_width(150)
  assert_eq(pre.get_width(), 150, label="width")
}
