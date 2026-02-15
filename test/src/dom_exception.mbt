///|
fn test_dom_exception() -> Unit {
  let ex = @websys.DOMException::new()
  assert_eq(ex.get_name(), "Error", label="default name")
  assert_eq(ex.get_message(), "", label="default message")
}

///|
fn test_dom_exception_with_name() -> Unit {
  let ex = @websys.DOMException::new_with_name(
    "Invalid state", "InvalidStateError",
  )
  assert_eq(ex.get_name(), "InvalidStateError", label="name")
  assert_eq(ex.get_message(), "Invalid state", label="message")
  // code for InvalidStateError is 11
  assert_eq(ex.get_code(), 11, label="code")
}

///|
fn test_dom_exception_codes() -> Unit {
  // Test well-known exception codes
  let not_found = @websys.DOMException::new_with_name("", "NotFoundError")
  assert_eq(not_found.get_code(), 8, label="NotFoundError code")
  let hierarchy = @websys.DOMException::new_with_name(
    "", "HierarchyRequestError",
  )
  assert_eq(hierarchy.get_code(), 3, label="HierarchyRequestError code")
  let not_supported = @websys.DOMException::new_with_name(
    "", "NotSupportedError",
  )
  assert_eq(not_supported.get_code(), 9, label="NotSupportedError code")
  let syntax = @websys.DOMException::new_with_name("", "SyntaxError")
  assert_eq(syntax.get_code(), 12, label="SyntaxError code")
}
