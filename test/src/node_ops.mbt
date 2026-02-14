///|
fn test_node_clone() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  div.set_id("original")
  div.set_class_name("test-class")
  let span = doc.create_element("span")
  @websys.HTMLElement::from_js_value(span.to_js_value()).set_inner_text("child")
  div.to_node().append_child(span.to_node()) |> ignore
  // shallow clone
  let shallow = div.to_node().clone_node()
  let shallow_el = @websys.Element::from_js_value(shallow.to_js_value())
  assert_eq(shallow_el.get_id(), "original", label="shallow clone id")
  assert_eq(
    shallow_el.get_class_name(),
    "test-class",
    label="shallow clone class",
  )
  assert_false(shallow.has_child_nodes(), label="shallow clone has no children")
  // deep clone
  let deep = div.to_node().clone_node_with_subtree(true)
  let deep_el = @websys.Element::from_js_value(deep.to_js_value())
  assert_eq(deep_el.get_id(), "original", label="deep clone id")
  assert_true(deep.has_child_nodes(), label="deep clone has children")
}

///|
fn test_node_compare() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let child1 = doc.create_element("span")
  let child2 = doc.create_element("em")
  div.to_node().append_child(child1.to_node()) |> ignore
  div.to_node().append_child(child2.to_node()) |> ignore
  // compareDocumentPosition
  // child1 is before child2 → DOCUMENT_POSITION_FOLLOWING (4)
  let pos = child1.to_node().compare_document_position(child2.to_node())
  assert_eq(pos, 4, label="child1 before child2")
  // child2 is after child1 → DOCUMENT_POSITION_PRECEDING (2)
  let pos2 = child2.to_node().compare_document_position(child1.to_node())
  assert_eq(pos2, 2, label="child2 after child1")
  // contains
  assert_true(
    div.to_node().contains(Some(child1.to_node())),
    label="div contains child1",
  )
  assert_false(
    child1.to_node().contains(Some(div.to_node())),
    label="child1 not contains div",
  )
}

///|
fn test_node_replace() -> Unit {
  let doc = get_document()
  let parent = doc.create_element("div")
  let old_child = doc.create_element("span")
  let new_child = doc.create_element("em")
  parent.to_node().append_child(old_child.to_node()) |> ignore
  assert_eq(parent.get_child_element_count(), 1, label="before replace")
  parent.to_node().replace_child(new_child.to_node(), old_child.to_node())
  |> ignore
  assert_eq(parent.get_child_element_count(), 1, label="after replace")
  let first = parent.get_first_element_child()
  match first {
    Some(el) => assert_eq(el.get_tag_name(), "EM", label="replaced element tag")
    None => abort("FAIL: no first element child after replace")
  }
}
