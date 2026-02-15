// Canvas 2D API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/CanvasRenderingContext2D
// Tests codegen patterns: getContext → union type downcast, fill/stroke style union types

///|
/// Helper: create a canvas and get its 2D rendering context.
fn get_canvas_2d() -> @websys.CanvasRenderingContext2D {
  let doc = get_document()
  let el = doc.create_element("canvas")
  let canvas = @websys.HTMLCanvasElement::from_js_value(el.to_js_value())
  canvas.set_width(200)
  canvas.set_height(200)
  @websys.RenderingContext::bind_as_canvas_rendering_context_2d(
    canvas.get_context("2d"),
  ).unwrap()
}

///|
/// Test Canvas 2D context creation and basic properties.
pub fn test_canvas2d_context() -> Unit {
  let ctx = get_canvas_2d()

  // canvas back-reference
  let canvas = ctx.get_canvas()
  assert_eq(canvas.get_width(), 200, label="canvas width")
  assert_eq(canvas.get_height(), 200, label="canvas height")

  // isContextLost — should be false for a freshly created context
  assert_false(ctx.is_context_lost(), label="isContextLost")
  println("  canvas2d_context: ok")
}

///|
/// Test Canvas 2D drawing operations — fillRect, strokeRect, clearRect.
pub fn test_canvas2d_drawing() -> Unit {
  let ctx = get_canvas_2d()

  // fillStyle (union type: String | CanvasGradient | CanvasPattern)
  ctx.set_fill_style(
    @websys.StringOrCanvasGradientOrCanvasPattern::from_string("#ff0000"),
  )

  // fillRect — should not throw
  ctx.fill_rect(10.0, 10.0, 50.0, 50.0)

  // strokeStyle
  ctx.set_stroke_style(
    @websys.StringOrCanvasGradientOrCanvasPattern::from_string("#0000ff"),
  )

  // strokeRect — should not throw
  ctx.stroke_rect(20.0, 20.0, 30.0, 30.0)

  // clearRect — should not throw
  ctx.clear_rect(0.0, 0.0, 200.0, 200.0)
  println("  canvas2d_drawing: ok")
}

///|
/// Test Canvas 2D path operations.
pub fn test_canvas2d_path() -> Unit {
  let ctx = get_canvas_2d()

  // Path operations
  ctx.begin_path()
  ctx.move_to(0.0, 0.0)
  ctx.line_to(100.0, 100.0)
  ctx.line_to(100.0, 0.0)
  ctx.close_path()

  // fill and stroke — should not throw
  ctx.fill()
  ctx.stroke()
  println("  canvas2d_path: ok")
}

///|
/// Test Canvas 2D state and transforms.
pub fn test_canvas2d_state() -> Unit {
  let ctx = get_canvas_2d()

  // globalAlpha
  assert_eq(ctx.get_global_alpha(), 1.0, label="globalAlpha default")
  ctx.set_global_alpha(0.5)
  assert_eq(ctx.get_global_alpha(), 0.5, label="globalAlpha set")
  ctx.set_global_alpha(1.0)

  // lineWidth
  assert_eq(ctx.get_line_width(), 1.0, label="lineWidth default")
  ctx.set_line_width(3.0)
  assert_eq(ctx.get_line_width(), 3.0, label="lineWidth set")

  // save / restore
  ctx.save()
  ctx.set_global_alpha(0.1)
  ctx.restore()
  assert_eq(ctx.get_global_alpha(), 1.0, label="globalAlpha after restore")

  // transforms — should not throw
  ctx.translate(10.0, 10.0)
  ctx.rotate(0.5)
  ctx.scale(2.0, 2.0)

  // reset — clears transform and state
  ctx.reset()
  println("  canvas2d_state: ok")
}

///|
/// Test Canvas 2D text operations.
pub fn test_canvas2d_text() -> Unit {
  let ctx = get_canvas_2d()

  // font
  ctx.set_font("16px sans-serif")
  assert_eq(ctx.get_font(), "16px sans-serif", label="font set")

  // textAlign (enum type)
  ctx.set_text_align(@websys.CanvasTextAlign::Center)
  // Just verify no throw — CanvasTextAlign is an enum without Eq/Show
  let _align = ctx.get_text_align()

  // fillText — should not throw
  ctx.fill_text("Hello", 50.0, 50.0)
  println("  canvas2d_text: ok")
}

///|
/// Test Canvas 2D ImageData operations.
pub fn test_canvas2d_image_data() -> Unit {
  let ctx = get_canvas_2d()

  // createImageData
  let imgdata = ctx.create_image_data_with_sw_and_sh(10, 10)
  assert_eq(imgdata.get_width(), 10, label="imageData width")
  assert_eq(imgdata.get_height(), 10, label="imageData height")

  // getImageData
  let captured = ctx.get_image_data(0, 0, 5, 5)
  assert_eq(captured.get_width(), 5, label="getImageData width")
  assert_eq(captured.get_height(), 5, label="getImageData height")

  // putImageData — should not throw
  ctx.put_image_data(imgdata, 0, 0)
  println("  canvas2d_image_data: ok")
}
