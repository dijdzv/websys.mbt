///|
extern "js" fn shader_uniform_bytes(bytes : Bytes) -> @websys.ArrayBuffer =
  #| bytes => bytes.slice().buffer

///|
async fn test_gpu_shader() -> Unit {
  let adapter = @websys.window()
    .unwrap()
    .get_navigator()
    .get_gpu()
    .request_adapter()
    .wait()
    .unwrap()
  let device = adapter.request_device().wait().unwrap()
  defer device.destroy()
  device.push_error_scope(Validation)
  let shader = device.create_shader_module(@websys.GPUShaderModuleDescriptor::{
    ..@websys.GPUShaderModuleDescriptor::default(),
    code: (
      #|@group(0) @binding(0) var<uniform> color: vec4u;
      #|@vertex fn vs(@builtin(vertex_index) i: u32) -> @builtin(position) vec4f {
      #|  let positions = array<vec2f, 3>(vec2f(-1,-1), vec2f(3,-1), vec2f(-1,3));
      #|  return vec4f(positions[i], 0, 1);
      #|}
      #|@fragment fn fs() -> @location(0) vec4f { return vec4f(color) / 255.0; }
    ),
  })
  let descriptor = @websys.GPURenderPipelineDescriptor::{
    ..@websys.GPURenderPipelineDescriptor::new(
      layout=@websys.GPUPipelineLayoutOrGPUAutoLayoutMode::from_gpu_auto_layout_mode(
        Auto,
      ),
      vertex=@websys.GPUVertexState::{
        ..@websys.GPUVertexState::new(module_=shader),
        entryPoint: Some("vs"),
      },
    ),
    fragment: Some(@websys.GPUFragmentState::{
      ..@websys.GPUFragmentState::new(module_=shader),
      entryPoint: Some("fs"),
      targets: [@websys.GPUColorTargetState::new(format=Rgba8unorm).to_js()],
    }),
  }
  let roundtrip = @websys.GPURenderPipelineDescriptor::from_js(
    descriptor.to_js(),
  )
  assert_eq(roundtrip.layout.as_gpu_auto_layout_mode(), Some(Auto))
  assert_eq(roundtrip.vertex.entryPoint, Some("vs"))
  assert_true(roundtrip.fragment is Some(_))
  assert_eq(roundtrip.fragment.unwrap().entryPoint, Some("fs"))
  assert_true(roundtrip.primitive is None)
  let synchronous = device.create_render_pipeline(descriptor)
  if device.pop_error_scope().wait() is Some(error) {
    println(error.get_message())
    fail("Synchronous pipeline validation failed")
  }
  device.push_error_scope(Validation)
  let asynchronous = device.create_render_pipeline_async(descriptor).wait()
  let uniform = device
    .create_buffer(@websys.GPUBufferDescriptor::new(size=16L, usage=72))
    .unwrap()
  defer uniform.destroy()
  let extent = @websys.GPUExtent3D::from_array_of_gpu_integer_coordinate([
    2, 2, 1,
  ])
  let texture = device.create_texture(
    @websys.GPUTextureDescriptor::new(size=extent, format=Rgba8unorm, usage=17),
  )
  defer texture.destroy()
  let output = device
    .create_buffer(@websys.GPUBufferDescriptor::new(size=512L, usage=9))
    .unwrap()
  defer output.destroy()
  for index in 0..<2 {
    let pipeline = if index == 0 { synchronous } else { asynchronous }
    let group = device.create_bind_group(@websys.GPUBindGroupDescriptor::{
      ..@websys.GPUBindGroupDescriptor::new(
        layout=pipeline.get_bind_group_layout(0),
      ),
      entries: [
        @websys.GPUBindGroupEntry::new(
          binding=0,
          resource=@websys.GPUBindingResource::from_gpu_buffer_binding(@websys.GPUBufferBinding::{
            ..@websys.GPUBufferBinding::new(buffer=uniform),
            offset: Some(0L),
            size: Some(16L),
          }),
        ),
      ],
    })
    let red : Byte = if index == 0 { 255 } else { 0 }
    let green : Byte = if index == 0 { 0 } else { 255 }
    let data = shader_uniform_bytes(
      Bytes::from_array([red, 0, 0, 0, green, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0]),
    )
    let uploaded = if index == 0 {
      device
      .get_queue()
      .write_buffer(
        uniform,
        0L,
        @websys.AllowSharedBufferSource::from_array_buffer(data),
      )
    } else {
      device
      .get_queue()
      .write_buffer_with_array_buffer(uniform, 0L, data, 0L, 16L)
    }
    match uploaded {
      Ok(_) => ()
      Err(OperationError(error) | OtherError(error)) => {
        println("Uniform upload: " + error.message())
        fail("Generated uniform upload failed")
      }
    }
    let encoder = device.create_command_encoder()
    let attachment = @websys.GPURenderPassColorAttachment::new(
      view=@websys.GPUTextureOrGPUTextureView::from_gpu_texture_view(
        texture.create_view(),
      ),
      loadOp=Clear,
      storeOp=Store,
    )
    let pass = encoder.begin_render_pass(@websys.GPURenderPassDescriptor::{
      ..@websys.GPURenderPassDescriptor::default(),
      colorAttachments: [attachment.to_js()],
    })
    pass.set_pipeline(pipeline)
    pass.set_bind_group(0, Some(group))
    pass.draw(3)
    pass.end()
    encoder.copy_texture_to_buffer(
      @websys.GPUTexelCopyTextureInfo::new(texture~),
      @websys.GPUTexelCopyBufferInfo::{
        ..@websys.GPUTexelCopyBufferInfo::new(buffer=output),
        bytesPerRow: Some(256),
        rowsPerImage: Some(2),
      },
      extent,
    )
    device.get_queue().submit([encoder.finish()])
    device.get_queue().on_submitted_work_done().wait()
    output.map_async(1).wait()
    let pixels = copy_gpu_bytes(output.get_mapped_range())
    output.unmap()
    for row in 0..<2 {
      for col in 0..<2 {
        let offset = row * 256 + col * 4
        assert_eq(pixels[offset], red)
        assert_eq(pixels[offset + 1], green)
        assert_eq(pixels[offset + 2], 0)
        assert_eq(pixels[offset + 3], 255)
      }
    }
  }
  assert_true(device.pop_error_scope().wait() is None)
}
