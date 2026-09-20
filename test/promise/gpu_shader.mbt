///|
pub fn gpu_shader(device : @web.GPUDevice, callback : Callback) -> Unit {
  @async.run_async_main(async fn() {
    let shader = device.create_shader_module(@web.GPUShaderModuleDescriptor::{
      code: (
        #|@group(0) @binding(0) var<uniform> color: vec4u;
        #|@vertex fn vs(@builtin(vertex_index) i: u32) -> @builtin(position) vec4f {
        #|  let positions = array<vec2f, 3>(vec2f(-1,-1), vec2f(3,-1), vec2f(-1,3));
        #|  return vec4f(positions[i], 0, 1);
        #|}
        #|@fragment fn fs() -> @location(0) vec4f { return vec4f(color) / 255.0; }
      ),
    })
    let descriptor = @web.GPURenderPipelineDescriptor::{
      layout: Case1(Auto),
      vertex: { module_: shader, entryPoint: Some("vs"), },
      fragment: Some({
        module_: shader,
        entryPoint: Some("fs"),
        targets: [Some({ format: Rgba8unorm, })],
      }),
    }
    let synchronous = device.create_render_pipeline(descriptor)
    let asynchronous = device.create_render_pipeline_async(descriptor).wait()
    let uniform = device.create_buffer({
      size: 16UL,
      usage: 72U,
      mappedAtCreation: None,
    })
    defer uniform.destroy()
    let texture = device.create_texture({
      size: Case0([2U, 2U, 1U]),
      format: Rgba8unorm,
      usage: 17U,
    })
    defer texture.destroy()
    let output = device.create_buffer({
      size: 512UL,
      usage: 9U,
      mappedAtCreation: None,
    })
    defer output.destroy()
    let mut valid = true
    for index in 0..<2 {
      let pipeline = if index == 0 { synchronous } else { asynchronous }
      let group = device.create_bind_group({
        layout: pipeline.get_bind_group_layout(0U),
        entries: [
          {
            binding: 0U,
            resource: Case4({
              buffer: uniform,
              offset: Some(0UL),
              size: Some(16UL),
            }),
          },
        ],
      })
      let red : Byte = if index == 0 { 255 } else { 0 }
      let green : Byte = if index == 0 { 0 } else { 255 }
      let bytes = Bytes::from_array([
        red, 0, 0, 0, green, 0, 0, 0, 0, 0, 0, 0, 255, 0, 0, 0,
      ])
      let upload = @web.ArrayBuffer::from_bytes(bytes)
      if index == 0 {
        device.queue().write_buffer(uniform, 0UL, Case0(upload))
      } else {
        device
        .queue()
        .write_buffer_with_size(uniform, 0UL, Case0(upload), 0UL, 16UL)
      }
      let encoder = device.create_command_encoder()
      let pass = encoder.begin_render_pass(
        clear_descriptor(texture.create_view(), true, false),
      )
      pass.set_pipeline(pipeline)
      if index == 0 {
        pass.set_bind_group(0U, Some(group))
      } else {
        pass.set_bind_group_with_dynamic_offsets(0U, Some(group), [])
      }
      if index == 0 {
        pass.draw(3U)
      } else {
        pass.draw_with_first_instance(3U, 1U, 0U, 0U)
      }
      pass.end()
      encoder.copy_texture_to_buffer(
        { texture, },
        {
          buffer: output,
          offset: None,
          bytesPerRow: Some(256U),
          rowsPerImage: Some(2U),
        },
        Case0([2U, 2U, 1U]),
      )
      device.queue().submit([encoder.finish()])
      device.queue().on_submitted_work_done().wait()
      output.map_async(1U).wait()
      let pixels = output.get_mapped_range().to_bytes().unwrap()
      output.unmap()
      for row in 0..<2 {
        for col in 0..<2 {
          let offset = row * 256 + col * 4
          valid = valid &&
            pixels[offset] == red &&
            pixels[offset + 1] == green &&
            pixels[offset + 2] == 0 &&
            pixels[offset + 3] == 255
        }
      }
    }
    notify(callback, if valid { 1 } else { 2 }, "shader-red-green")
  })
}
