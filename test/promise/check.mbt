///|
#external
type Callback

///|
fn notify(callback : Callback, code : Int, text : String) -> Unit = "fixture" "notify"

///|
fn abort_wait(callback : Callback) -> Unit = "fixture" "abort"

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
