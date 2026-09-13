///|
fn test_element_dataset() -> Unit {
  let doc = get_document()
  let div = create_element(doc, "div")
  // dataset via setAttribute/getAttribute
  div
  .set_attribute("data-name", @websys.TrustedTypeOrString::from_string("test"))
  .unwrap()
  assert_eq(div.get_attribute("data-name").unwrap(), "test", label="data-name")
  div
  .set_attribute("data-value", @websys.TrustedTypeOrString::from_string("42"))
  .unwrap()
  assert_eq(div.get_attribute("data-value").unwrap(), "42", label="data-value")
  assert_true(div.has_attribute("data-name"), label="hasAttribute data-name")
  div.remove_attribute("data-name")
  assert_false(div.has_attribute("data-name"), label="after removeAttribute")
  println("  element_dataset: ok")
}

///|
fn test_element_scroll() -> Unit {
  let doc = get_document()
  let div = create_element(doc, "div")
  // scrollTop/scrollLeft are 0 for unattached elements
  let html = @websys.HTMLElement::from_js_value(div.to_js_value())
  assert_eq(div.get_scroll_top(), 0.0, label="scrollTop default")
  assert_eq(div.get_scroll_left(), 0.0, label="scrollLeft default")
  assert_eq(div.get_scroll_width(), 0, label="scrollWidth")
  assert_eq(div.get_scroll_height(), 0, label="scrollHeight")
  assert_eq(div.get_client_width(), 0, label="clientWidth")
  assert_eq(div.get_client_height(), 0, label="clientHeight")
  ignore(html)
  println("  element_scroll: ok")
}

///|
fn test_element_closest() -> Unit {
  let doc = get_document()
  let outer = create_element(doc, "div")
  outer.set_class_name("outer")
  let inner = create_element(doc, "div")
  inner.set_class_name("inner")
  let span = create_element(doc, "span")
  outer.to_node().append_child(inner.to_node()) |> ignore
  inner.to_node().append_child(span.to_node()) |> ignore
  doc.get_body().unwrap().to_node().append_child(outer.to_node()) |> ignore
  // closest
  let found = span.closest(".outer").unwrap()
  match found {
    Some(el) =>
      assert_eq(el.get_class_name(), "outer", label="closest finds outer")
    None => abort("FAIL: closest did not find .outer")
  }
  let not_found = span.closest(".nonexistent").unwrap()
  match not_found {
    Some(_) => abort("FAIL: closest found nonexistent")
    None => ()
  }
  // cleanup
  doc.get_body().unwrap().to_node().remove_child(outer.to_node()) |> ignore
  println("  element_closest: ok")
}
