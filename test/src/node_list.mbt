///|
fn test_node_list() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let s1 = doc.create_element("span")
  let s2 = doc.create_element("span")
  let s3 = doc.create_element("span")
  div.to_node().append_child(s1.to_node()) |> ignore
  div.to_node().append_child(s2.to_node()) |> ignore
  div.to_node().append_child(s3.to_node()) |> ignore
  doc.get_body().unwrap().to_node().append_child(div.to_node()) |> ignore
  // querySelectorAll returns NodeList
  let list = div.query_selector_all("span")
  assert_eq(list.get_length(), 3, label="NodeList length")
  // item
  match list.item(0) {
    Some(node) => assert_eq(node.get_node_name(), "SPAN", label="item(0)")
    None => abort("FAIL: item(0) is None")
  }
  match list.item(2) {
    Some(node) => assert_eq(node.get_node_name(), "SPAN", label="item(2)")
    None => abort("FAIL: item(2) is None")
  }
  // cleanup
  doc.get_body().unwrap().to_node().remove_child(div.to_node()) |> ignore
}

///|
fn test_html_collection() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let p1 = doc.create_element("p")
  let p2 = doc.create_element("p")
  p2.set_id("test-p2")
  div.to_node().append_child(p1.to_node()) |> ignore
  div.to_node().append_child(p2.to_node()) |> ignore
  // children returns HTMLCollection
  let children = div.get_children()
  assert_eq(children.get_length(), 2, label="HTMLCollection length")
  // item
  match children.item(0) {
    Some(el) => assert_eq(el.get_tag_name(), "P", label="item(0)")
    None => abort("FAIL: item(0) is None")
  }
  // namedItem
  let named = children.named_item("test-p2")
  match named {
    Some(el) => assert_eq(el.get_id(), "test-p2", label="namedItem")
    None => abort("FAIL: namedItem is None")
  }
}
