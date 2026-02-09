// XPathResult test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/XPathResult
// Rust web-sys ref: crates/web-sys/tests/wasm/xpath_result.rs

///|
extern "js" fn js_evaluate_xpath(
  doc : @websys.Document,
  expr : String,
  result_type : Int,
) -> @websys.XPathResult =
  #| (doc, expr, resultType) => doc.evaluate(expr, doc, null, resultType, null)

///|
fn test_xpath_result() -> Unit {
  let doc = get_document()
  // Add some elements to search
  let body = @websys.HTMLElement::from_js_value(
    doc.get_body().unwrap().to_js_value(),
  )
  let p1 = doc.create_element("p")
  p1.set_id("xpath-a")
  let p2 = doc.create_element("p")
  p2.set_id("xpath-b")
  body.to_node().append_child(p1.to_node()) |> ignore
  body.to_node().append_child(p2.to_node()) |> ignore

  // ORDERED_NODE_SNAPSHOT_TYPE = 7
  let result = js_evaluate_xpath(doc, "//p[@id]", 7)
  assert_eq(result.get_result_type(), 7, label="resultType")
  assert_eq(result.get_snapshot_length(), 2, label="snapshotLength")

  // Verify we can access snapshot items
  let node0 = result.snapshot_item(0)
  assert_true(node0 is Some(_), label="snapshotItem(0) exists")

  // NUMBER_TYPE = 1
  let count_result = js_evaluate_xpath(doc, "count(//p[@id])", 1)
  assert_eq(count_result.get_result_type(), 1, label="number resultType")
  assert_eq(count_result.get_number_value(), 2.0, label="count result")

  // STRING_TYPE = 2
  let string_result = js_evaluate_xpath(
    doc, "string(//p[@id='xpath-a']/@id)", 2,
  )
  assert_eq(string_result.get_result_type(), 2, label="string resultType")
  assert_eq(string_result.get_string_value(), "xpath-a", label="string result")

  // BOOLEAN_TYPE = 3
  let bool_result = js_evaluate_xpath(doc, "boolean(//p[@id='xpath-a'])", 3)
  assert_eq(bool_result.get_result_type(), 3, label="boolean resultType")
  assert_true(bool_result.get_boolean_value(), label="boolean result")

  // Cleanup
  body.to_node().remove_child(p1.to_node()) |> ignore
  body.to_node().remove_child(p2.to_node()) |> ignore
}
