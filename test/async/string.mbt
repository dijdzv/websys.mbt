///|
priv suberror InvalidString {
  InvalidString
}

///|
#cfg(target="wasm-gc")
fn is_string(value : @bridge.JsValue) -> Bool = "fixture" "is_string"

///|
#cfg(target="js")
extern "js" fn is_string(value : @bridge.JsValue) -> Bool =
  #| value => typeof value === 'string'

///|
#cfg(target="wasm-gc")
fn read_string(value : @bridge.JsValue) -> String = "fixture" "read_string"

///|
#cfg(target="js")
extern "js" fn read_string(value : @bridge.JsValue) -> String = "value => value"

///|
#cfg(target="wasm-gc")
fn notify_string(
  callback : @bridge.JsValue,
  code : Int,
  value : String,
) -> Unit = "fixture" "notify_string"

///|
#cfg(target="js")
extern "js" fn notify_string(
  callback : @bridge.JsValue,
  code : Int,
  value : String,
) -> Unit = "(callback, code, value) => callback(code, (value => value)(value))"

///|
fn decode_string(value : @bridge.JsValue) -> String raise {
  if !is_string(value) {
    raise InvalidString
  }
  read_string(value)
}

///|
pub fn start_string(
  promise : @js_async.Promise[String],
  controller : @bridge.JsValue,
  callback : @bridge.JsValue,
) -> Unit {
  @async.run_async_main(async fn() {
    let value = @async.with_timeout(500, async fn() {
      @bridge.wait(promise, decode_string, () => abort_request(controller))
    }) catch {
      InvalidString => {
        notify_string(callback, 4, "")
        return
      }
      @bridge.Rejection(value) => {
        notify(callback, 2, value)
        return
      }
      @async.TimeoutError => {
        notify(callback, 3, controller)
        return
      }
      error => raise error
    }
    notify_string(callback, 1, value)
  })
}
