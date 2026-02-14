// HTMLImageElement tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/HTMLImageElement

///|
/// Test HTMLImageElement — src, alt, width, height.
/// Equivalent to:
///   const img = document.createElement("img")
///   img.src = "test.png"
///   img.alt = "Test image"
///   img.width = 200
pub fn test_image_element() -> Unit {
  let doc = get_document()
  let el = doc.create_element("img")
  let img = @websys.HTMLImageElement::from_js_value(el.to_js_value())

  // alt — Web API: img.alt
  assert_eq(img.get_alt(), "", label="alt default")
  img.set_alt("Test image")
  assert_eq(img.get_alt(), "Test image", label="alt set")

  // src — Web API: img.src
  img.set_src("https://example.com/test.png")
  let src = img.get_src()
  assert_true(src.contains("test.png"), label="src contains filename")

  // width / height — Web API: img.width, img.height
  img.set_width(200)
  img.set_height(100)
  assert_eq(img.get_width(), 200, label="width set")
  assert_eq(img.get_height(), 100, label="height set")

  // naturalWidth / naturalHeight — 0 for unloaded images
  assert_eq(img.get_natural_width(), 0, label="naturalWidth unloaded")
  assert_eq(img.get_natural_height(), 0, label="naturalHeight unloaded")

  // srcset — Web API: img.srcset
  img.set_srcset("small.png 300w, large.png 800w")
  assert_eq(
    img.get_srcset(),
    "small.png 300w, large.png 800w",
    label="srcset set",
  )
  println("  image_element: ok")
}
