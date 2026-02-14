// CSSStyleDeclaration tests — setProperty, getPropertyValue, removeProperty, cssText
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/CSSStyleDeclaration

///|
fn test_css_style() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let html = @websys.HTMLElement::from_js_value(div.to_js_value())
  let style = html.get_style().to_css_style_declaration()
  // Initially no styles
  assert_eq(style.get_length(), 0, label="initially empty")
  // setProperty
  style.set_property("color", "red")
  assert_eq(style.get_property_value("color"), "red", label="color")
  style.set_property("font-size", "16px")
  assert_eq(style.get_property_value("font-size"), "16px", label="font-size")
  assert_eq(style.get_length(), 2, label="length after set")
  // removeProperty
  let removed = style.remove_property("color")
  assert_eq(removed, "red", label="removed value")
  assert_eq(style.get_length(), 1, label="length after remove")
  // cssText
  let css_text = style.get_css_text()
  assert_true(
    css_text.contains("font-size"),
    label="cssText contains font-size",
  )
}

///|
fn test_css_style_text() -> Unit {
  let doc = get_document()
  let div = doc.create_element("div")
  let html = @websys.HTMLElement::from_js_value(div.to_js_value())
  let style = html.get_style().to_css_style_declaration()
  // Test that HTMLElement.get_style() returns a usable style object
  style.set_property("background-color", "blue")
  assert_eq(
    style.get_property_value("background-color"),
    "blue",
    label="background-color",
  )
}
