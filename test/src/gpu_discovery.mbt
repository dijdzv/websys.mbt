///|
async fn test_gpu_discovery() -> Unit {
  let gpu = @websys.window().unwrap().get_navigator().get_gpu()
  let adapter = gpu.request_adapter().wait().unwrap()
  let device = adapter.request_device().wait().unwrap()
  device.destroy()
  match adapter.request_device().wait() {
    Err(_) => ()
    Ok(second) => {
      second.destroy()
      assert_true(false, label="consumed adapter must reject a second device")
    }
  }
  assert_true(
    unavailable_gpu().request_adapter().wait() is None,
    label="null adapter",
  )
}

///|
extern "js" fn unavailable_gpu() -> @websys.GPU =
  #| () => ({ requestAdapter: () => Promise.resolve(null) })
