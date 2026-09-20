///|
#external
type Callback

///|
priv suberror InvalidBody

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
