// DOMParser test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/DOMParser

///|
fn test_dom_parser_html() -> Unit {
  let parser = @websys.DOMParser::new()
  let doc = parser.parse_from_string(
    @websys.TrustedHTMLOrString::from_string(
      "<html><head><title>Test</title></head><body><p id=\"hello\">Hello</p></body></html>",
    ),
    @websys.DOMParserSupportedType::TextHtml,
  )
  // Verify the parsed document
  let title = doc.get_title()
  assert_eq(title, "Test", label="parsed title")
  // querySelector
  let p = doc.query_selector("p#hello")
  assert_true(p is Some(_), label="querySelector p#hello")
  match p {
    Some(el) => {
      assert_eq(el.get_id(), "hello", label="p id")
      let html = @websys.HTMLElement::from_js_value(el.to_js_value())
      assert_eq(html.get_inner_text(), "Hello", label="p innerText")
    }
    None => abort("FAIL: p not found")
  }
}

///|
fn test_dom_parser_xml() -> Unit {
  let parser = @websys.DOMParser::new()
  let doc = parser.parse_from_string(
    @websys.TrustedHTMLOrString::from_string(
      "<root><item id=\"1\">First</item><item id=\"2\">Second</item></root>",
    ),
    @websys.DOMParserSupportedType::ApplicationXml,
  )
  // XML document doesn't have a title
  let root_el = doc.get_document_element()
  assert_true(root_el is Some(_), label="documentElement exists")
  match root_el {
    Some(el) => {
      assert_eq(el.get_tag_name(), "root", label="root tagName")
      // children
      let children = el.get_children()
      assert_eq(children.get_length(), 2, label="root children count")
    }
    None => abort("FAIL: documentElement not found")
  }
}
