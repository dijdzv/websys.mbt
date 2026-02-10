// Static method and special pattern tests
// Tests codegen patterns: static methods, createObjectURL/revokeObjectURL

///|
/// Test URL.createObjectURL / URL.revokeObjectURL — static methods with Blob.
pub fn test_url_create_object_url() -> Unit {
  // Create a Blob
  let part = @websys.BlobPart::from_string("hello world")
  let blob = @websys.Blob::new_with_options(
    [part],
    { ..@websys.BlobPropertyBag::default(), type_: Some("text/plain") },
  )

  // createObjectURL — static method on URL
  let url = @websys.URL::create_object_url(
    @websys.BlobOrMediaSource::from_blob(blob),
  )
  assert_true(url.has_prefix("blob:"), label="blob URL prefix")

  // revokeObjectURL — should not throw
  @websys.URL::revoke_object_url(url)
  println("  url_create_object_url: ok")
}

///|
/// Test createElementNS — overloaded method pattern (namespace variant).
pub fn test_create_element_ns() -> Unit {
  let doc = get_document()

  // Create SVG element via createElementNS
  let svg = doc.create_element_ns(
    Some("http://www.w3.org/2000/svg"),
    "svg",
  )
  assert_eq(svg.get_tag_name(), "svg", label="svg tagName")
  assert_eq(
    svg.get_namespace_uri(),
    Some("http://www.w3.org/2000/svg"),
    label="svg namespace",
  )

  // Create HTML element via createElementNS
  let div = doc.create_element_ns(
    Some("http://www.w3.org/1999/xhtml"),
    "div",
  )
  assert_eq(div.get_tag_name(), "DIV", label="html div tagName")
  println("  create_element_ns: ok")
}
