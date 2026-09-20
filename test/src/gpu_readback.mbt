///|
extern "js" fn copy_gpu_bytes(buffer : @websys.ArrayBuffer) -> Bytes =
  #| buffer => new Uint8Array(buffer).slice()

///|
extern "js" fn has_number_size(value : @websys.JsValue) -> Bool =
  #| value => typeof value.size === 'number' && value.size === 512

///|
extern "js" fn has_number_offset(value : @websys.JsValue) -> Bool =
  #| value => typeof value.offset === 'number' && value.offset === 0

///|
async fn test_gpu_readback() -> Unit {
  let adapter = @websys.window()
    .unwrap()
    .get_navigator()
    .get_gpu()
    .request_adapter()
    .wait()
    .unwrap()
  let device = adapter.request_device().wait().unwrap()
  defer device.destroy()
  let descriptor = @websys.GPUBufferDescriptor::new(size=512L, usage=9)
  assert_true(has_number_size(descriptor.to_js()))
  assert_eq(@websys.GPUBufferDescriptor::from_js(descriptor.to_js()).size, 512L)
  device.push_error_scope(Validation)
  let extent = @websys.GPUExtent3D::from_array_of_gpu_integer_coordinate([
    2, 2, 1,
  ])
  let texture = device.create_texture(
    @websys.GPUTextureDescriptor::new(size=extent, format=Rgba8unorm, usage=17),
  )
  defer texture.destroy()
  let buffer = match
    device.create_buffer(@websys.GPUBufferDescriptor::new(size=512L, usage=9)) {
    Ok(buffer) => buffer
    Err(RangeError(error) | OtherError(error)) => {
      println(error.message())
      fail("Generated buffer creation failed")
    }
  }
  defer buffer.destroy()
  let destination = @websys.GPUTexelCopyBufferInfo::{
    ..@websys.GPUTexelCopyBufferInfo::new(buffer~),
    offset: Some(0L),
    bytesPerRow: Some(256),
    rowsPerImage: Some(2),
  }
  assert_true(has_number_offset(destination.to_js()))
  assert_eq(
    @websys.GPUTexelCopyBufferInfo::from_js(destination.to_js()).offset,
    Some(0L),
  )
  let attachment = @websys.GPURenderPassColorAttachment::{
    ..@websys.GPURenderPassColorAttachment::new(
      view=@websys.GPUTextureOrGPUTextureView::from_gpu_texture_view(
        texture.create_view(),
      ),
      loadOp=Clear,
      storeOp=Store,
    ),
    clearValue: Some(
      @websys.GPUColor::from_array_of_double([1.0, 0.0, 0.0, 1.0]),
    ),
  }
  let encoder = device.create_command_encoder()
  let pass = encoder.begin_render_pass(@websys.GPURenderPassDescriptor::{
    ..@websys.GPURenderPassDescriptor::default(),
    colorAttachments: [attachment.to_js()],
  })
  pass.end()
  encoder.copy_texture_to_buffer(
    @websys.GPUTexelCopyTextureInfo::new(texture~),
    destination,
    extent,
  )
  device.get_queue().submit([encoder.finish()])
  device.get_queue().on_submitted_work_done().wait()
  buffer.map_async(1).wait()
  let bytes = copy_gpu_bytes(buffer.get_mapped_range())
  buffer.unmap()
  assert_eq(bytes.length(), 512)
  for row in 0..<2 {
    for col in 0..<2 {
      let offset = row * 256 + col * 4
      assert_eq(bytes[offset], 255)
      assert_eq(bytes[offset + 1], 0)
      assert_eq(bytes[offset + 2], 0)
      assert_eq(bytes[offset + 3], 255)
    }
  }
  assert_true(device.pop_error_scope().wait() is None)
}
