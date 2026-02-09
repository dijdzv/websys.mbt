// DOMParser test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/DOMParser
// Note: DOMParser.parseFromString takes TrustedHTMLOrString, so we use a JS helper.

///|
extern "js" fn js_parse_html(html : String) -> @websys.Document =
  #| (html) => new DOMParser().parseFromString(html, 'text/html')

///|
extern "js" fn js_parse_xml(xml : String) -> @websys.Document =
  #| (xml) => new DOMParser().parseFromString(xml, 'application/xml')

///|
fn test_dom_parser_html() -> Unit {
  let doc = js_parse_html(
    "<html><head><title>Test</title></head><body><p id=\"hello\">Hello</p></body></html>",
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
  let doc = js_parse_xml(
    "<root><item id=\"1\">First</item><item id=\"2\">Second</item></root>",
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
