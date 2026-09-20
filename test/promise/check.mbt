///|
#external
type Callback

///|
priv suberror InvalidBody

///|
pub fn gpu_readback(device : @web.GPUDevice, callback : Callback) -> Unit {
  @async.run_async_main(async fn() {
    let texture = device.create_texture(@web.GPUTextureDescriptor::{
      size: Case0([2U, 2U, 1U]),
      format: Rgba8unorm,
      usage: 17U,
    })
    defer texture.destroy()
    let buffer = device.create_buffer(@web.GPUBufferDescriptor::{
      size: 512UL,
      usage: 9U,
      mappedAtCreation: None,
    })
    defer buffer.destroy()
    let encoder = device.create_command_encoder()
    let pass = encoder.begin_render_pass(
      clear_descriptor(texture.create_view(), true, false),
    )
    pass.end()
    encoder.copy_texture_to_buffer(
      @web.GPUTexelCopyTextureInfo::{ texture, },
      @web.GPUTexelCopyBufferInfo::{
        buffer,
        offset: None,
        bytesPerRow: Some(256U),
        rowsPerImage: Some(2U),
      },
      Case1(@web.GPUExtent3DDict::{
        width: 2U,
        height: Some(2U),
        depthOrArrayLayers: Some(1U),
      }),
    )
    device.queue().submit([encoder.finish()])
    device.queue().on_submitted_work_done().wait()
    buffer.map_async(1U).wait()
    let bytes = buffer.get_mapped_range().to_bytes().unwrap()
    buffer.unmap()
    let mut valid = bytes.length() == 512
    for row in 0..<2 {
      for col in 0..<2 {
        let offset = row * 256 + col * 4
        valid = valid &&
          bytes[offset] == 255 &&
          bytes[offset + 1] == 0 &&
          bytes[offset + 2] == 0 &&
          bytes[offset + 3] == 255
      }
    }
    notify(callback, if valid { 1 } else { 2 }, "rgba-red")
  })
}

///|
fn clear_descriptor(
  view : @web.GPUTextureView,
  dict : Bool,
  hole : Bool,
) -> @web.GPURenderPassDescriptor {
  let color : @web.Input_websys_input_GPURenderPassColorAttachment_clearValueValue = if dict {
    Case1(@web.GPUColorDict::{ r: 1.0, g: 0.0, b: 0.0, a: 1.0, })
  } else {
    Case0([1.0, 0.0, 0.0, 1.0])
  }
  let attachment = @web.GPURenderPassColorAttachment::{
    view,
    clearValue: Some(color),
    loadOp: Clear,
    storeOp: Store,
  }
  @web.GPURenderPassDescriptor::{
    colorAttachments: if hole {
      [None, Some(attachment)]
    } else {
      [Some(attachment)]
    },
  }
}

///|
pub fn render_options(view : @web.GPUTextureView, dict : Bool) -> @web.JsValue {
  clear_descriptor(view, dict, true).to_js()
}

///|
pub fn encode_clear(
  device : @web.GPUDevice,
  view : @web.GPUTextureView,
  dict : Bool,
) -> @web.GPUCommandBuffer {
  let encoder = device.create_command_encoder()
  let pass = encoder.begin_render_pass(clear_descriptor(view, dict, false))
  pass.end()
  encoder.finish()
}

///|
pub fn submit_clear(
  device : @web.GPUDevice,
  view : @web.GPUTextureView,
  dict : Bool,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    let commands = encode_clear(device, view, dict)
    device.queue().submit([])
    device.queue().submit([commands])
    device.queue().on_submitted_work_done().wait()
    notify(callback, 1, "submitted")
  })
}

///|
pub fn unsigned_sequence(probe : @web.SequenceProbe) -> Unit {
  probe.unsigned_values([0U, 2147483648U, 4294967295U])
}

///|
pub fn enum_options(mode : Int) -> @web.JsValue {
  @web.EnumInputs::{
    mode: MirrorRepeat,
    optionalMode: match mode {
      0 => Undefined
      1 => Null
      _ => Value(ClampToEdge)
    },
    filters: Some([Nearest, Linear]),
  }.to_js()
}

///|
pub fn buffer_size_options(size : UInt64) -> @web.JsValue {
  @web.GPUBufferDescriptor::{ size, usage: 6U, mappedAtCreation: None, }.to_js()
}

///|
pub fn gpu_buffer_sample(gpu : @web.GPU, callback : Callback) -> Unit {
  @async.run_async_main(async fn() {
    let adapter = gpu.request_adapter().wait().unwrap()
    let device = adapter.request_device().wait()
    defer device.destroy()
    let sampler = device.create_sampler(@web.GPUSamplerDescriptor::{
      label: Some("enum sampler"),
      addressModeU: Some(Repeat),
      minFilter: Some(Linear),
    })
    let buffer = device.create_buffer(@web.GPUBufferDescriptor::{
      size: 4UL,
      usage: 6U,
      mappedAtCreation: Some(true),
    })
    defer buffer.destroy()
    let mapped = buffer.get_mapped_range()
    let bytes = mapped.to_bytes().unwrap()
    buffer.unmap()
    let valid = sampler.label() == "enum sampler" &&
      bytes.length() == 4 &&
      bytes[0] == b'\x00' &&
      mapped.to_bytes() is None
    notify(callback, if valid { 1 } else { 2 }, "buffer-copied")
  })
}

///|
pub fn gpu_discovery(gpu : @web.GPU, callback : Callback) -> Unit {
  @async.run_async_main(async fn() {
    let adapter = gpu.request_adapter().wait()
    guard adapter is Some(adapter) else {
      notify(callback, 1, "unavailable")
      return
    }
    let device = adapter.request_device().wait()
    device.destroy()
    let rejected = try {
      let second = adapter.request_device().wait()
      second.destroy()
      false
    } catch {
      @bridge.Rejection(_) => true
      error => raise error
    }
    notify(callback, if rejected { 1 } else { 2 }, "created-destroyed-rejected")
  })
}

///|
pub fn read_optional_response(
  values : @web.Values,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    let result = values.read_optional_response().wait() catch {
        @web.PromiseDecodeError(_) => {
          notify(callback, 2, "")
          return
        }
        @bridge.Rejection(_) => {
          notify(callback, 3, "")
          return
        }
        error => raise error
      }
    match result {
      None => notify(callback, 1, "none")
      Some(response) => notify(callback, 1, response.status().to_string())
    }
  })
}

///|
pub fn inspect_response(response : @web.Response, callback : Callback) -> Unit {
  let content_type = match response.headers().get("Content-Type") {
    None => "missing"
    Some(value) => "present:" + value
  }
  notify(
    callback,
    1,
    response.status().to_string() +
    "|" +
    response.ok().to_string() +
    "|" +
    content_type,
  )
}

///|
pub fn fetch_metadata(
  host : @web.Window,
  url : String,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    let response = host.fetch(url, @web.RequestInit::{ signal: None, }).wait()
    if response.body() is Some(body) {
      let reader = @web.ReadableStreamDefaultReader::new(body)
      defer reader.release_lock()
      reader.cancel("metadata only").wait()
    }
    inspect_response(response, callback)
  })
}

///|
pub fn post_body(
  host : @web.PostHost,
  url : String,
  blob : @web.Blob,
  params : @web.URLSearchParams,
  mode : Int,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    let body : @web.Nullable[@web.Input_websys_input_PostOptions_bodyValue] = match
      mode {
      0 => Undefined
      1 => Null
      2 => Value(Case0(blob))
      3 => Value(Case1(params))
      _ => Value(Case2("日本😀"))
    }
    let response = host
      .fetch(url, @web.PostOptions::{
        method_: "POST",
        headers: Case1([("Accept", "text/plain")]),
        body,
      })
      .wait()
    notify(callback, 1, response.text().wait())
  })
}

///|
pub fn post_headers(
  host : @web.PostHost,
  url : String,
  record : Bool,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    let headers : @web.Input_websys_input_PostOptions_headersValue = if record {
      Case1([("Content-Type", "text/plain"), ("Accept", "text/plain")])
    } else {
      Case0([["Content-Type", "text/plain"], ["Accept", "text/plain"]])
    }
    let response = host
      .fetch(url, @web.PostOptions::{
        method_: "POST",
        headers,
        body: Value(Case2("日本😀")),
      })
      .wait()
    notify(callback, 1, response.text().wait())
  })
}

///|
fn notify(callback : Callback, code : Int, text : String) -> Unit = "fixture" "notify"

///|
fn abort_wait(callback : Callback) -> Unit = "fixture" "abort"

///|
fn notify_value(callback : Callback, value : @web.JsValue) -> Unit = "fixture" "value"

///|
fn notify_error(callback : Callback, value : @bridge.JsValue) -> Unit = "fixture" "error"

///|
pub fn fetch_body(
  window : @web.Window,
  url : String,
  timeout : Int,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    let controller = @web.AbortController::new()
    let abort = fn() {
      abort_wait(callback)
      controller.abort()
    }
    let output = @async.with_timeout(timeout, async fn() {
      let response = window
        .fetch(url, @web.RequestInit::{ signal: Some(controller.signal()), })
        .wait(abort~)
      guard response.body() is Some(body) else { return "no-body" }
      let reader = @web.ReadableStreamDefaultReader::new(body)
      defer reader.release_lock()
      let bytes : Array[String] = []
      while true {
        let result = reader.read().wait(abort~)
        if result.done == Some(true) {
          break
        }
        guard result.value is Some(value) && value.to_bytes() is Some(chunk) else {
          controller.abort()
          raise InvalidBody
        }
        for byte in chunk {
          bytes.push(byte.to_int().to_string())
        }
      }
      bytes.join(",")
    }) catch {
      @async.TimeoutError => {
        notify(callback, 4, controller.signal().aborted().to_string())
        return
      }
      @bridge.Rejection(error) => {
        notify_error(callback, error)
        notify(callback, 3, "")
        return
      }
      error => raise error
    }
    notify(callback, 1, output)
  })
}

///|
pub fn read_required(values : @web.Values, callback : Callback) -> Unit {
  @async.run_async_main(async fn() {
    let result = values.read_required().wait() catch {
        @web.DictionaryReadError(error) => {
          notify_error(callback, error)
          notify(callback, 2, "")
          return
        }
        error => raise error
      }
    notify(callback, 1, result.done.to_string())
  })
}

///|
pub fn read_bytes(stream : @web.ReadableStream, callback : Callback) -> Unit {
  @async.run_async_main(async fn() {
    let reader = @web.ReadableStreamDefaultReader::new(stream)
    defer reader.release_lock()
    let output : Array[String] = []
    while true {
      let result = reader.read().wait()
      if result.done == Some(true) {
        break
      }
      let bytes = match result.value {
        Some(value) => value.to_bytes()
        None => None
      }
      guard bytes is Some(bytes) else {
        reader.cancel("Expected Uint8Array").wait()
        notify(callback, 2, "")
        return
      }
      for byte in bytes {
        output.push(byte.to_int().to_string())
      }
    }
    notify(callback, 1, output.join(","))
  })
}

///|
pub fn read_stream(
  reader : @web.ReadableStreamDefaultReader,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    let result = reader.read().wait() catch {
        @web.DictionaryReadError(error) => {
          notify_error(callback, error)
          notify(callback, 2, "")
          return
        }
        @bridge.Rejection(error) => {
          notify_error(callback, error)
          notify(callback, 3, "")
          return
        }
        error => raise error
      }
    if result.value is Some(value) {
      notify_value(callback, value)
    }
    notify(
      callback,
      1,
      match result.done {
        None => "missing"
        Some(done) => done.to_string()
      },
    )
  })
}

///|
pub fn cancel_stream(stream : @web.ReadableStream, callback : Callback) -> Unit {
  @async.run_async_main(async fn() {
    let reader = @web.ReadableStreamDefaultReader::new(stream)
    defer reader.release_lock()
    reader.cancel("requested").wait() catch {
      @bridge.Rejection(_) => {
        notify(callback, 3, "")
        return
      }
      error => raise error
    }
    notify(callback, 1, "")
  })
}

///|
pub fn fetch_text(
  window : @web.Window,
  url : String,
  timeout : Int,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    let controller = @web.AbortController::new()
    let abort = fn() {
      abort_wait(callback)
      controller.abort()
    }
    let text = @async.with_timeout(timeout, async fn() {
      let response = window
        .fetch(url, @web.RequestInit::{ signal: Some(controller.signal()), })
        .wait(abort~)
      response.text().wait(abort~)
    }) catch {
      @web.PromiseDecodeError(_) => {
        notify(callback, 2, "")
        return
      }
      @bridge.Rejection(_) => {
        notify(callback, 3, "")
        return
      }
      @async.TimeoutError => {
        notify(callback, 4, controller.signal().aborted().to_string())
        return
      }
      error => raise error
    }
    notify(callback, 1, text)
  })
}

///|
pub fn start(
  response : @web.Response,
  timeout : Int,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    let text = @async.with_timeout(timeout, async fn() {
      response.text().wait(abort=fn() { abort_wait(callback) })
    }) catch {
      @web.PromiseDecodeError(_) => {
        notify(callback, 2, "")
        return
      }
      @bridge.Rejection(_) => {
        notify(callback, 3, "")
        return
      }
      @async.TimeoutError => {
        notify(callback, 4, "")
        return
      }
      error => raise error
    }
    notify(callback, 1, text)
  })
}

///|
pub fn start_value(
  values : @web.Values,
  kind : Int,
  callback : Callback,
) -> Unit {
  @async.run_async_main(async fn() {
    let abort = fn() { abort_wait(callback) }
    let text = try {
      match kind {
        0 => values.read_integer().wait(abort~).to_string()
        1 => values.read_unsigned().wait(abort~).to_string()
        2 => values.read_boolean().wait(abort~).to_string()
        _ => values.read_double().wait(abort~).to_string()
      }
    } catch {
      @web.PromiseDecodeError(_) => {
        notify(callback, 2, "")
        return
      }
      error => raise error
    }
    notify(callback, 1, text)
  })
}
