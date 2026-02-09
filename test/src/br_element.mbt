// HTMLBRElement test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLBRElement
// Rust web-sys ref: crates/web-sys/tests/wasm/br_element.rs

///|
fn test_br_element() -> Unit {
  let doc = get_document()
  let br = @websys.HTMLBRElement::from_js_value(
    doc.create_element("br").to_js_value(),
  )
  // clear (deprecated)
  assert_eq(br.get_clear(), "", label="clear default")
  br.set_clear("left")
  assert_eq(br.get_clear(), "left", label="clear set")
  br.set_clear("all")
  assert_eq(br.get_clear(), "all", label="clear all")
  // type conversions
  let _html : @websys.HTMLElement = br.to_html_element()
  let _el : @websys.Element = br.to_element()
  let _node : @websys.Node = br.to_node()

}
