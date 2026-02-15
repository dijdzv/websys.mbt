// ImageData test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/ImageData
// Rust web-sys ref: crates/web-sys/tests/wasm/image_data.rs
// Note: ImageData is not available in jsdom (no canvas support)

///|
fn test_image_data() -> Unit {
  let img = @websys.ImageData::new(100, 50)
  assert_eq(img.get_width(), 100, label="width")
  assert_eq(img.get_height(), 50, label="height")
}
