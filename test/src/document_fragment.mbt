///|
fn test_document_fragment() -> Unit {
  let frag = @websys.DocumentFragment::new()
  assert_eq(frag.get_child_element_count(), 0, label="initially empty")
  // Add child elements using the document
  let doc = get_document()
  let div1 = doc.create_element("div")
  div1.set_id("frag-child-1")
  let div2 = doc.create_element("div")
  div2.set_id("frag-child-2")
  let frag_node = frag.to_node()
  frag_node.append_child(div1.to_node()) |> ignore
  frag_node.append_child(div2.to_node()) |> ignore
  assert_eq(
    frag.get_child_element_count(),
    2,
    label="childElementCount after append",
  )
  // querySelector
  let found = frag.query_selector("#frag-child-1")
  assert_true(found is Some(_), label="querySelector finds child")
  // querySelectorAll
  let all = frag.query_selector_all("div")
  assert_eq(all.get_length(), 2, label="querySelectorAll count")
  // children
  let children = frag.get_children()
  assert_eq(children.get_length(), 2, label="children length")
}

///|
fn test_document_fragment_transfer() -> Unit {
  // Test that appending a fragment to DOM transfers all children
  let doc = get_document()
  let frag = @websys.DocumentFragment::new()
  let span1 = doc.create_element("span")
  @websys.HTMLElement::from_js_value(span1.to_js_value()).set_inner_text("A")
  let span2 = doc.create_element("span")
  @websys.HTMLElement::from_js_value(span2.to_js_value()).set_inner_text("B")
  let frag_node = frag.to_node()
  frag_node.append_child(span1.to_node()) |> ignore
  frag_node.append_child(span2.to_node()) |> ignore
  // Create a container and append the fragment
  let container = doc.create_element("div")
  container.to_node().append_child(frag_node) |> ignore
  // Fragment should be empty after transfer
  assert_eq(
    frag.get_child_element_count(),
    0,
    label="fragment empty after transfer",
  )
  // Container should have the children
  assert_eq(
    container.get_child_element_count(),
    2,
    label="container has children",
  )
}
