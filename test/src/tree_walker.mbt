///|
fn test_tree_walker() -> Unit {
  let doc = get_document()
  // Build a small tree: div > (p, span > em)
  let div = doc.create_element("div")
  let p = doc.create_element("p")
  @websys.HTMLElement::from_js_value(p.to_js_value()).set_inner_text(
    "paragraph",
  )
  let span = doc.create_element("span")
  let em = doc.create_element("em")
  @websys.HTMLElement::from_js_value(em.to_js_value()).set_inner_text(
    "emphasis",
  )
  span.to_node().append_child(em.to_node()) |> ignore
  div.to_node().append_child(p.to_node()) |> ignore
  div.to_node().append_child(span.to_node()) |> ignore
  doc.get_body().unwrap().to_node().append_child(div.to_node()) |> ignore
  // Create a TreeWalker (default shows all nodes)
  let walker = doc.create_tree_walker(div.to_node())
  // root
  assert_eq(walker.get_root().get_node_name(), "DIV", label="root nodeName")
  // currentNode starts at root
  assert_eq(
    walker.get_current_node().get_node_name(),
    "DIV",
    label="currentNode initial",
  )
  // firstChild -> p
  let first = walker.first_child()
  assert_true(first is Some(_), label="firstChild exists")
  assert_eq(
    walker.get_current_node().get_node_name(),
    "P",
    label="after firstChild",
  )
  // nextSibling -> span
  let next = walker.next_sibling()
  assert_true(next is Some(_), label="nextSibling exists")
  assert_eq(
    walker.get_current_node().get_node_name(),
    "SPAN",
    label="after nextSibling",
  )
  // firstChild -> em
  let child = walker.first_child()
  assert_true(child is Some(_), label="firstChild of span")
  assert_eq(walker.get_current_node().get_node_name(), "EM", label="em node")
  // parentNode -> span
  let parent = walker.parent_node()
  assert_true(parent is Some(_), label="parentNode exists")
  assert_eq(
    walker.get_current_node().get_node_name(),
    "SPAN",
    label="back to span",
  )
  // previousSibling -> p
  let prev = walker.previous_sibling()
  assert_true(prev is Some(_), label="previousSibling exists")
  assert_eq(walker.get_current_node().get_node_name(), "P", label="back to p")
  // cleanup
  doc.get_body().unwrap().to_node().remove_child(div.to_node()) |> ignore
}
