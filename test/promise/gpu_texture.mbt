///|
pub fn gpu_texture(
  device : @web.GPUDevice,
  initial : @web.ArrayBufferView,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    let shader = device.create_shader_module({
      code: (
        #|@group(0) @binding(0) var pixels: texture_2d<f32>;
        #|@vertex fn vs(@builtin(vertex_index) i: u32) -> @builtin(position) vec4f {
        #|  let p = array<vec2f,3>(vec2f(-1,-1),vec2f(3,-1),vec2f(-1,3));
        #|  return vec4f(p[i],0,1);
        #|}
        #|@fragment fn fs(@builtin(position) p: vec4f) -> @location(0) vec4f { return textureLoad(pixels,vec2i(p.xy),0); }
      ),
    })
    let pipeline = device.create_render_pipeline({
      layout: Case1(Auto),
      vertex: { module_: shader, entryPoint: Some("vs"), },
      fragment: Some({
        module_: shader,
        entryPoint: Some("fs"),
        targets: [Some({ format: Rgba8unorm, })],
      }),
    })
    let source = device.create_texture({
      size: Case0([2U, 2U, 1U]),
      format: Rgba8unorm,
      usage: 6U,
    })
    defer source.destroy()
    let target = device.create_texture({
      size: Case0([2U, 2U, 1U]),
      format: Rgba8unorm,
      usage: 17U,
    })
    defer target.destroy()
    let output = device.create_buffer({
      size: 512UL,
      usage: 9U,
      mappedAtCreation: None,
    })
    defer output.destroy()
    let group = device.create_bind_group({
      layout: pipeline.get_bind_group_layout(0U),
      entries: [{ binding: 0U, resource: Case2(source.create_view()), }],
    })
    let mut valid = true
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
      let upload : @web.Input_websys_arg_GPUQueue_write_texture_1Value = if round ==
        0 {
        Case2(initial)
      } else {
        Case0(@web.ArrayBuffer::from_bytes(packed))
      }
      device
      .queue()
      .write_texture(
        { texture: source, },
        upload,
        { offset: Some(4UL), bytesPerRow: Some(12U), rowsPerImage: Some(2U), },
        Case0([2U, 2U, 1U]),
      )
      let encoder = device.create_command_encoder()
      let pass = encoder.begin_render_pass(
        clear_descriptor(target.create_view(), true, false),
      )
      pass.set_pipeline(pipeline)
      pass.set_bind_group(0U, Some(group))
      pass.draw(3U)
      pass.end()
      encoder.copy_texture_to_buffer(
        { texture: target, },
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
      let actual = output.get_mapped_range().to_bytes().unwrap()
      output.unmap()
      for row in 0..<2 {
        for col in 0..<2 {
          for channel in 0..<4 {
            valid = valid &&
              actual[row * 256 + col * 4 + channel] ==
              expected[row * 8 + col * 4 + channel]
          }
        }
      }
    }
    notify(callback, if valid { 1 } else { 2 }, "texture-patterns")
  })
}
