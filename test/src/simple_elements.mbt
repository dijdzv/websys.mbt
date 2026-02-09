// Simple HTML element tests — div, span, heading, paragraph, label
// Rust web-sys ref: div_element.rs, span_element.rs, heading_element.rs, paragraph_element.rs

///|
/// Test HTMLDivElement — basic existence via createElement.
/// Equivalent to:
///   const div = document.createElement("div")
///   div.align = "center"
pub fn test_div_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("div")
  let div = @websys.HTMLDivElement::from_js_value(el.to_js_value())

  // align — Web API: div.align (deprecated but present)
  div.set_align("center")
  assert_eq(div.get_align(), "center", label="div align")

  // Verify tag name via Element cast
  assert_eq(el.get_tag_name(), "DIV", label="div tagName")
  println("  div_element: ok")
}

///|
/// Test HTMLSpanElement — basic existence.
pub fn test_span_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("span")
  let _span = @websys.HTMLSpanElement::from_js_value(el.to_js_value())
  assert_eq(el.get_tag_name(), "SPAN", label="span tagName")

  // HTMLElement properties should work via cast
  let html_el = @websys.HTMLElement::from_js_value(el.to_js_value())
  html_el.set_title("tooltip")
  assert_eq(html_el.get_title(), "tooltip", label="span title")
  println("  span_element: ok")
}

///|
/// Test HTMLHeadingElement — h1 through h6.
pub fn test_heading_element() -> Unit {
  let doc = get_document()

  // h1
  let h1 = doc.create_element("h1")
  assert_eq(h1.get_tag_name(), "H1", label="h1 tagName")

  // h2
  let h2 = doc.create_element("h2")
  assert_eq(h2.get_tag_name(), "H2", label="h2 tagName")

  // h6
  let h6 = doc.create_element("h6")
  assert_eq(h6.get_tag_name(), "H6", label="h6 tagName")

  // HTMLHeadingElement — align property
  let heading = @websys.HTMLHeadingElement::from_js_value(h1.to_js_value())
  heading.set_align("center")
  assert_eq(heading.get_align(), "center", label="heading align")
  println("  heading_element: ok")
}

///|
/// Test HTMLParagraphElement.
pub fn test_paragraph_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("p")
  let p = @websys.HTMLParagraphElement::from_js_value(el.to_js_value())
  assert_eq(el.get_tag_name(), "P", label="p tagName")

  // align — deprecated but present
  p.set_align("justify")
  assert_eq(p.get_align(), "justify", label="p align")
  println("  paragraph_element: ok")
}

///|
/// Test HTMLLabelElement — htmlFor.
pub fn test_label_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("label")
  let label = @websys.HTMLLabelElement::from_js_value(el.to_js_value())

  // htmlFor — Web API: label.htmlFor
  assert_eq(label.get_html_for(), "", label="htmlFor default")
  label.set_html_for("input-id")
  assert_eq(label.get_html_for(), "input-id", label="htmlFor set")
  println("  label_element: ok")
}
