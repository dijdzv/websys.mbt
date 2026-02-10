// Error case and boundary value tests
// Tests codegen patterns: error handling, null returns, invalid arguments

///|
/// Test querySelector with invalid selector throws DOMException.
pub fn test_error_invalid_selector() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")

  // Invalid CSS selector should throw
  assert_true(
    @websys.try_catch(fn() {
      let _ = div.query_selector(">>>invalid")
    }) != "",
    label="invalid selector throws",
  )
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
    div.query_selector(".no-such-class") is None,
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
  let list = div.query_selector_all("span")
  assert_eq(list.get_length(), 0, label="empty NodeList length")
  assert_true(list.item(0) is None, label="NodeList item(0) on empty")

  // Empty className
  div.set_class_name("")
  assert_eq(div.get_class_name(), "", label="empty className")

  // URL with empty components
  let url = @websys.URL::new("https://example.com")
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

  // deleteRule with out-of-range index should throw IndexSizeError
  assert_true(
    @websys.try_catch(fn() { sheet.delete_rule(999) }) != "",
    label="deleteRule out-of-range throws",
  )
  println("  error_invalid_css: ok")
}

///|
/// Test DOMException from invalid operations.
pub fn test_error_dom_exception() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let span = doc.create_element("span")

  // removeChild on non-child should throw
  assert_true(
    @websys.try_catch(fn() {
      let _ = div.to_node().remove_child(span.to_node())
    }) != "",
    label="removeChild non-child throws",
  )

  // insertBefore with invalid reference should throw
  let child = doc.create_element("p")
  assert_true(
    @websys.try_catch(fn() {
      let _ = div.to_node().insert_before(child.to_node(), Some(span.to_node()))
    }) != "",
    label="insertBefore invalid ref throws",
  )
  println("  error_dom_exception: ok")
}
