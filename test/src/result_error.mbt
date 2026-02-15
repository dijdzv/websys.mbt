// Result Err branch tests
// Intentionally trigger errors and verify Err variants via pattern matching.
// Serves as usage examples for error handling with typed Result errors.

///|
/// URL::new with invalid URL → Err(TypeError(_))
pub fn test_result_url_type_error() -> Unit {
  match @websys.URL::new("not valid url") {
    Err(TypeError(e)) => {
      assert_true(e.message().length() > 0, label="TypeError has message")
      assert_eq(e.name(), "TypeError", label="error name is TypeError")
    }
    Ok(_) => abort("FAIL: expected TypeError for invalid URL")
    Err(_) => abort("FAIL: expected TypeError variant")
  }
  println("  result_url_type_error: ok")
}

///|
/// Document::create_element_ns with invalid character → Err(InvalidCharacterError(_))
pub fn test_result_create_element_ns_error() -> Unit {
  let doc = get_document()
  match doc.create_element_ns(None, "invalid char <>") {
    Err(InvalidCharacterError(_)) => ()
    Ok(_) => abort("FAIL: expected InvalidCharacterError for invalid element name")
    Err(_) => abort("FAIL: expected InvalidCharacterError variant")
  }
  println("  result_create_element_ns_error: ok")
}

///|
/// Node::append_child with self → Err(HierarchyRequestError(_))
pub fn test_result_append_child_hierarchy_error() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let node = div.to_node()
  match node.append_child(node) {
    Err(HierarchyRequestError(_)) => ()
    Ok(_) => abort("FAIL: expected HierarchyRequestError for self-append")
    Err(_) => abort("FAIL: expected HierarchyRequestError variant")
  }
  println("  result_append_child_hierarchy_error: ok")
}

///|
/// CSSStyleSheet::insert_rule with invalid CSS → Err(SyntaxError(_))
pub fn test_result_insert_rule_syntax_error() -> Unit {
  let sheet = @websys.CSSStyleSheet::new()
  match sheet.insert_rule("not valid css") {
    Err(SyntaxError(_)) => ()
    Ok(_) => abort("FAIL: expected SyntaxError for invalid CSS rule")
    Err(_) => abort("FAIL: expected SyntaxError variant")
  }
  println("  result_insert_rule_syntax_error: ok")
}

///|
/// Element::insert_adjacent_html with invalid position → Err(SyntaxError(_))
pub fn test_result_insert_adjacent_html_error() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  match
    div.insert_adjacent_html(
      "invalid_position",
      @websys.TrustedHTMLOrString::from_string("<b>hi</b>"),
    ) {
    Err(SyntaxError(_)) => ()
    Ok(_) => abort("FAIL: expected SyntaxError for invalid position")
    Err(_) => abort("FAIL: expected SyntaxError variant")
  }
  println("  result_insert_adjacent_html_error: ok")
}

///|
/// Element::set_attribute with invalid name → Err(InvalidCharacterError(_))
pub fn test_result_set_attribute_error() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  match
    div.set_attribute(
      "invalid<name>",
      @websys.TrustedTypeOrString::from_string("value"),
    ) {
    Err(InvalidCharacterError(_)) => ()
    Ok(_) => abort("FAIL: expected InvalidCharacterError for invalid attribute name")
    Err(_) => abort("FAIL: expected InvalidCharacterError variant")
  }
  println("  result_set_attribute_error: ok")
}

///|
/// JsError message() and name() return non-empty strings.
pub fn test_result_error_message() -> Unit {
  match @websys.URL::new(":::") {
    Err(TypeError(e)) => {
      assert_true(e.message().length() > 0, label="message is non-empty")
      assert_true(e.name().length() > 0, label="name is non-empty")
    }
    Ok(_) => abort("FAIL: expected error")
    Err(_) => abort("FAIL: expected TypeError")
  }
  println("  result_error_message: ok")
}
