///|
fn test_canvas_element() -> Unit {
  let doc = get_document()
  let canvas = @websys.HTMLCanvasElement::from_js_value(
    doc.create_element("canvas").to_js_value(),
  )
  // default size is 300x150
  assert_eq(canvas.get_width(), 300, label="default width")
  assert_eq(canvas.get_height(), 150, label="default height")
  // set size
  canvas.set_width(640)
  canvas.set_height(480)
  assert_eq(canvas.get_width(), 640, label="width after set")
  assert_eq(canvas.get_height(), 480, label="height after set")
  // type conversion
  let _html : @websys.HTMLElement = canvas.to_html_element()
  let _el : @websys.Element = canvas.to_element()

}
