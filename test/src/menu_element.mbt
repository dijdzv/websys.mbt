// HTMLMenuElement test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLMenuElement
// Equivalent Rust web-sys test: menu_element.rs

///|
fn test_menu_element() -> Unit {
  let doc = get_document()
  let menu = @websys.HTMLMenuElement::from_js_value(
    doc.create_element("menu").to_js_value(),
  )
  menu.set_compact(true)
  assert_true(menu.get_compact(), label="compact set true")
  menu.set_compact(false)
  assert_false(menu.get_compact(), label="compact set false")
}
