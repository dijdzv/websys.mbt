///|
#cfg(target="wasm-gc")
fn abort_request(controller : @bridge.JsValue) -> Unit = "fixture" "abort"

///|
#cfg(target="js")
extern "js" fn abort_request(controller : @bridge.JsValue) -> Unit = "controller => controller.abort()"

///|
pub fn start(
  promise : @js_async.Promise[@bridge.JsValue],
  controller : @bridge.JsValue,
  timeout : Int,
  callback : @bridge.JsValue,
) -> Unit {
  let complete = (code, value) => notify(callback, code, value)
  @async.run_async_main(async fn() {
    let value = @async.with_timeout(timeout, async fn() {
      @bridge.wait(promise, value => value, () => abort_request(controller))
    }) catch {
      @bridge.Rejection(value) => {
        complete(2, value)
        return
      }
      @async.TimeoutError => {
        complete(3, controller)
        return
      }
      error => raise error
    }
    complete(1, value)
  })
}

///|
#cfg(target="wasm-gc")
fn notify(
  callback : @bridge.JsValue,
  code : Int,
  value : @bridge.JsValue,
) -> Unit = "fixture" "notify"

///|
#cfg(target="js")
extern "js" fn notify(
  callback : @bridge.JsValue,
  code : Int,
  value : @bridge.JsValue,
) -> Unit = "(callback, code, value) => callback(code, value)"
