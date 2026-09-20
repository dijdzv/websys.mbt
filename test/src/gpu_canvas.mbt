///|
extern "js" fn canvas_fixture() -> @websys.GPUCanvasContext =
  #| () => { const canvas = document.createElement('canvas'); document.body.append(canvas); return canvas.getContext('webgpu'); }

///|
extern "js" fn resize_canvas_fixture(
  context : @websys.GPUCanvasContext,
  width : Int,
  height : Int,
) -> Unit =
  #| (context, width, height) => { context.canvas.width = width; context.canvas.height = height; }

///|
extern "js" fn remove_canvas_fixture(
  context : @websys.GPUCanvasContext,
) -> Unit =
  #| context => context.canvas.remove()

///|
extern "js" fn read_canvas_fixture(context : @websys.GPUCanvasContext) -> Bytes =
  #| context => { const canvas = document.createElement('canvas'); canvas.width = context.canvas.width; canvas.height = context.canvas.height; const copy = canvas.getContext('2d'); copy.drawImage(context.canvas, 0, 0); return new Uint8Array(copy.getImageData(0, 0, canvas.width, canvas.height).data); }

///|
async fn test_gpu_canvas() -> Unit {
  let gpu = @websys.window().unwrap().get_navigator().get_gpu()
  let device = gpu
    .request_adapter()
    .wait()
    .unwrap()
    .request_device()
    .wait()
    .unwrap()
  defer device.destroy()
  let context = canvas_fixture()
  defer remove_canvas_fixture(context)
  defer context.unconfigure()
  device.push_error_scope(Validation)
  for round in 0..<2 {
    let width = round + 2
    let height = round + 1
    resize_canvas_fixture(context, width, height)
    context
    .configure(@websys.GPUCanvasConfiguration::{
      ..@websys.GPUCanvasConfiguration::new(
        device~,
        format=gpu.get_preferred_canvas_format(),
      ),
      alphaMode: Some(Opaque),
    })
    .unwrap()
    let texture = context.get_current_texture().unwrap()
    assert_eq(texture.get_width(), width)
    assert_eq(texture.get_height(), height)
    let attachment = @websys.GPURenderPassColorAttachment::{
      ..@websys.GPURenderPassColorAttachment::new(
        view=@websys.GPUTextureOrGPUTextureView::from_gpu_texture_view(
          texture.create_view(),
        ),
        loadOp=Clear,
        storeOp=Store,
      ),
      clearValue: Some(
        @websys.GPUColor::from_array_of_double(
          if round == 0 {
            [1.0, 0.0, 0.0, 1.0]
          } else {
            [0.0, 1.0, 0.0, 1.0]
          },
        ),
      ),
    }
    let encoder = device.create_command_encoder()
    encoder
    .begin_render_pass(@websys.GPURenderPassDescriptor::{
      ..@websys.GPURenderPassDescriptor::default(),
      colorAttachments: [attachment.to_js()],
    })
    .end()
    device.get_queue().submit([encoder.finish()])
    // The browser may present and discard the current canvas texture while awaiting the queue.
    let pixels = read_canvas_fixture(context)
    device.get_queue().on_submitted_work_done().wait()
    assert_eq(pixels.length(), width * height * 4)
    for i in 0..<(width * height) {
      assert_eq(pixels[i * 4], if round == 0 { 255 } else { 0 })
      assert_eq(pixels[i * 4 + 1], if round == 0 { 0 } else { 255 })
      assert_eq(pixels[i * 4 + 2], 0)
      assert_eq(pixels[i * 4 + 3], 255)
    }
    context.unconfigure()
    assert_true(context.get_current_texture() is Err(_))
  }
  assert_true(device.pop_error_scope().wait() is None)
}

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
