///|
fn test_body_element() -> Unit {
  let doc = get_document()
  let body = @websys.HTMLBodyElement::from_js_value(
    doc.create_element("body").to_js_value(),
  )
  // deprecated string properties
  body.set_text("#000000")
  assert_eq(body.get_text(), "#000000", label="text")
  body.set_bg_color("#ffffff")
  assert_eq(body.get_bg_color(), "#ffffff", label="bgColor")
  body.set_link("#0000ff")
  assert_eq(body.get_link(), "#0000ff", label="link")
  body.set_v_link("#800080")
  assert_eq(body.get_v_link(), "#800080", label="vLink")
  body.set_a_link("#ff0000")
  assert_eq(body.get_a_link(), "#ff0000", label="aLink")
  body.set_background("bg.png")
  assert_eq(body.get_background(), "bg.png", label="background")
  // type conversion
  let _html : @websys.HTMLElement = body.to_html_element()
  let _el : @websys.Element = body.to_element()
  let _node : @websys.Node = body.to_node()
}
