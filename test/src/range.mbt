///|
fn test_range() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let text = @websys.Text::new_with_data("Hello World")
  div.to_node().append_child(text.to_node()) |> ignore
  doc.get_body().unwrap().to_node().append_child(div.to_node()) |> ignore
  // Create a range
  let range = @websys.Range::new()
  range.set_start(text.to_node(), 0)
  range.set_end(text.to_node(), 5)
  // commonAncestorContainer
  let ancestor = range.get_common_ancestor_container()
  assert_eq(ancestor.get_node_name(), "#text", label="commonAncestorContainer")
  // collapse
  let range2 = range.clone_range()
  range2.collapse()
  // isPointInRange
  let in_range = range.is_point_in_range(text.to_node(), 3)
  assert_true(in_range, label="isPointInRange inside")
  let outside = range.is_point_in_range(text.to_node(), 7)
  assert_false(outside, label="isPointInRange outside")
  // comparePoint
  let cmp_before = range.compare_point(text.to_node(), 0)
  assert_eq(cmp_before, 0, label="comparePoint at start")
  // intersectsNode
  assert_true(range.intersects_node(text.to_node()), label="intersectsNode")
  // cloneRange
  let cloned = range.clone_range()
  assert_true(
    cloned.is_point_in_range(text.to_node(), 3),
    label="cloned range works",
  )
  // cleanup
  doc.get_body().unwrap().to_node().remove_child(div.to_node()) |> ignore
}
