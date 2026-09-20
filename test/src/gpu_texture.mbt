///|
extern "js" fn texture_input_view(bytes : Bytes) -> @websys.ArrayBufferView =
  #| bytes => { const storage = new Uint8Array(bytes.length + 8); storage.fill(77); storage.set(bytes, 4); return new Uint8Array(storage.buffer, 4, bytes.length); }

///|
async fn test_gpu_texture() -> Unit {
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
      #|@group(0) @binding(0) var pixels: texture_2d<f32>;
      #|@vertex fn vs(@builtin(vertex_index) i: u32) -> @builtin(position) vec4f {
      #|  let p = array<vec2f,3>(vec2f(-1,-1),vec2f(3,-1),vec2f(-1,3));
      #|  return vec4f(p[i],0,1);
      #|}
      #|@fragment fn fs(@builtin(position) p: vec4f) -> @location(0) vec4f { return textureLoad(pixels,vec2i(p.xy),0); }
    ),
  })
  let pipeline = device.create_render_pipeline(@websys.GPURenderPipelineDescriptor::{
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
  })
  let extent = @websys.GPUExtent3D::from_array_of_gpu_integer_coordinate([
    2, 2, 1,
  ])
  let source = device.create_texture(
    @websys.GPUTextureDescriptor::new(size=extent, format=Rgba8unorm, usage=6),
  )
  defer source.destroy()
  let target = device.create_texture(
    @websys.GPUTextureDescriptor::new(size=extent, format=Rgba8unorm, usage=17),
  )
  defer target.destroy()
  let output = device
    .create_buffer(@websys.GPUBufferDescriptor::new(size=512L, usage=9))
    .unwrap()
  defer output.destroy()
  let group = device.create_bind_group(@websys.GPUBindGroupDescriptor::{
    ..@websys.GPUBindGroupDescriptor::new(
      layout=pipeline.get_bind_group_layout(0),
    ),
    entries: [
      @websys.GPUBindGroupEntry::new(
        binding=0,
        resource=@websys.GPUBindingResource::from_gpu_texture_view(
          source.create_view(),
        ),
      ),
    ],
  })
  for round in 0..<2 {
    let expected : Bytes = if round == 0 {
      Bytes::from_array([
        255, 0, 0, 255, 0, 255, 0, 255, 0, 0, 255, 255, 255, 255, 255, 255,
      ])
    } else {
      Bytes::from_array([
        255, 255, 0, 255, 0, 255, 255, 255, 255, 0, 255, 255, 0, 0, 0, 255,
      ])
    }
    let packed = Bytes::makei(24, i => {
      if i >= 4 && i < 12 {
        expected[i - 4]
      } else if i >= 16 {
        expected[i - 8]
      } else {
        77
      }
    })
    let upload = if round == 0 {
      @websys.AllowSharedBufferSource::from_array_buffer_view(
        texture_input_view(packed),
      )
    } else {
      @websys.AllowSharedBufferSource::from_array_buffer(
        shader_uniform_bytes(packed),
      )
    }
    device
    .get_queue()
    .write_texture(
      @websys.GPUTexelCopyTextureInfo::new(texture=source),
      upload,
      @websys.GPUTexelCopyBufferLayout::{
        offset: Some(4L),
        bytesPerRow: Some(12),
        rowsPerImage: Some(2),
      },
      extent,
    )
    let encoder = device.create_command_encoder()
    let attachment = @websys.GPURenderPassColorAttachment::new(
      view=@websys.GPUTextureOrGPUTextureView::from_gpu_texture_view(
        target.create_view(),
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
      @websys.GPUTexelCopyTextureInfo::new(texture=target),
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
    let actual = copy_gpu_bytes(output.get_mapped_range())
    output.unmap()
    for row in 0..<2 {
      for col in 0..<2 {
        for channel in 0..<4 {
          assert_eq(
            actual[row * 256 + col * 4 + channel],
            expected[row * 8 + col * 4 + channel],
          )
        }
      }
    }
  }
  assert_true(device.pop_error_scope().wait() is None)
}
