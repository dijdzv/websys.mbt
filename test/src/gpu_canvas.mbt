///|
fn test_gpu_canvas_format() -> Unit {
  let gpu = @websys.window().unwrap().get_navigator().get_gpu()
  let format = gpu.get_preferred_canvas_format()
  assert_true(
    format == @websys.GPUTextureFormat::Rgba8unorm ||
    format == @websys.GPUTextureFormat::Bgra8unorm,
  )
  assert_eq(
    @websys.GPUTextureFormat::from_string(format.to_string()),
    Some(format),
  )
}
