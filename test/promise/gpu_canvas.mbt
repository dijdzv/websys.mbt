///|
pub fn gpu_canvas_frame(
  gpu : @web.GPU,
  device : @web.GPUDevice,
  context : @web.GPUCanvasContext,
  green : Bool,
) -> UInt {
  context.configure({
    device,
    format: gpu.get_preferred_canvas_format(),
    usage: None,
    alphaMode: Some(Opaque),
  })
  let texture = context.get_current_texture()
  let descriptor : @web.GPURenderPassDescriptor = {
    colorAttachments: [
      Some({
        view: texture.create_view(),
        loadOp: Clear,
        storeOp: Store,
        clearValue: Some(
          Case0(if green { [0.0, 1.0, 0.0, 1.0] } else { [1.0, 0.0, 0.0, 1.0] }),
        ),
      }),
    ],
  }
  let encoder = device.create_command_encoder()
  encoder.begin_render_pass(descriptor).end()
  device.queue().submit([encoder.finish()])
  (texture.width() << 16) | texture.height()
}

///|
pub fn gpu_canvas_finish(context : @web.GPUCanvasContext) -> Unit {
  context.unconfigure()
}
