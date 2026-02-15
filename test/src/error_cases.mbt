// Error case and boundary value tests
// Tests codegen patterns: error handling, null returns, invalid arguments

///|
/// Test querySelector with invalid selector returns Err(SyntaxError).
pub fn test_error_invalid_selector() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")

  // Invalid CSS selector should return Err
  match div.query_selector(">>>invalid") {
    Err(SyntaxError(_)) => ()
    _ => abort("FAIL: expected SyntaxError for invalid selector")
  }
  println("  error_invalid_selector: ok")
}

///|
/// Test getElementById returns None for non-existent element.
pub fn test_error_null_returns() -> Unit {
  let doc = get_document()

  // getElementById for non-existent element
  assert_true(
    doc.get_element_by_id("non-existent-id-12345") is None,
    label="getElementById returns None",
  )

  // querySelector for non-matching selector
  let div = doc.create_element("div")
  assert_true(
    div.query_selector(".no-such-class").unwrap() is None,
    label="querySelector returns None",
  )

  // parentNode of detached element
  let span = doc.create_element("span")
  assert_true(
    span.to_node().get_parent_node() is None,
    label="parentNode of detached is None",
  )

  // previousSibling of first child
  assert_true(
    span.to_node().get_previous_sibling() is None,
    label="previousSibling of detached is None",
  )
  println("  error_null_returns: ok")
}

///|
/// Test boundary values — empty strings, zero values, negative indices.
pub fn test_boundary_values() -> Unit {
  let doc = get_document()

  // Empty string element ID
  let div = doc.create_element("div")
  div.set_id("")
  assert_eq(div.get_id(), "", label="empty id")

  // Zero-length NodeList
  let list = div.query_selector_all("span").unwrap()
  assert_eq(list.get_length(), 0, label="empty NodeList length")
  assert_true(list.item(0) is None, label="NodeList item(0) on empty")

  // Empty className
  div.set_class_name("")
  assert_eq(div.get_class_name(), "", label="empty className")

  // URL with empty components
  let url = @websys.URL::new("https://example.com").unwrap()
  assert_eq(url.get_pathname(), "/", label="URL default pathname")
  assert_eq(url.get_hash(), "", label="URL empty hash")
  assert_eq(url.get_search(), "", label="URL empty search")
  assert_eq(url.get_port(), "", label="URL default port")
  println("  boundary_values: ok")
}

///|
/// Test CSSStyleSheet deleteRule with out-of-range index throws.
pub fn test_error_invalid_css() -> Unit {
  let sheet = @websys.CSSStyleSheet::new()

  // deleteRule with out-of-range index should return Err
  match sheet.delete_rule(999) {
    Err(_) => ()
    Ok(_) => abort("FAIL: expected error for deleteRule out-of-range")
  }
  println("  error_invalid_css: ok")
}

///|
/// Test DOMException from invalid operations.
pub fn test_error_dom_exception() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let span = doc.create_element("span")

  // removeChild on non-child should return Err
  match div.to_node().remove_child(span.to_node()) {
    Err(_) => ()
    Ok(_) => abort("FAIL: expected error for removeChild non-child")
  }

  // insertBefore with invalid reference should return Err
  let child = doc.create_element("p")
  match div.to_node().insert_before(child.to_node(), Some(span.to_node())) {
    Err(_) => ()
    Ok(_) => abort("FAIL: expected error for insertBefore invalid ref")
  }
  println("  error_dom_exception: ok")
}
