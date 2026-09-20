///|
priv suberror InvalidBool {
  InvalidBool
}

///|
#cfg(target="wasm-gc")
fn is_boolean(value : @bridge.JsValue) -> Bool = "fixture" "is_boolean"

///|
#cfg(target="js")
extern "js" fn is_boolean(value : @bridge.JsValue) -> Bool =
  #| value => typeof value === 'boolean'

///|
#cfg(target="wasm-gc")
fn read_boolean(value : @bridge.JsValue) -> Bool = "fixture" "read_boolean"

///|
#cfg(target="js")
extern "js" fn read_boolean(value : @bridge.JsValue) -> Bool = "value => value"

///|
#cfg(target="wasm-gc")
fn notify_boolean(callback : @bridge.JsValue, code : Int, value : Bool) -> Unit = "fixture" "notify_boolean"

///|
#cfg(target="js")
extern "js" fn notify_boolean(
  callback : @bridge.JsValue,
  code : Int,
  value : Bool,
) -> Unit = "(callback, code, value) => callback(code, (value => Boolean(value))(value))"

///|
fn decode_boolean(value : @bridge.JsValue) -> Bool raise {
  if !is_boolean(value) {
    raise InvalidBool
  }
  read_boolean(value)
}

///|
pub fn start_boolean(
  promise : @js_async.Promise[Bool],
  controller : @bridge.JsValue,
  callback : @bridge.JsValue,
) -> Unit {
  @async.run_async_main(async fn() {
    let value = @async.with_timeout(500, async fn() {
      @bridge.wait(promise, decode_boolean, () => abort_request(controller))
    }) catch {
      InvalidBool => {
        notify_boolean(callback, 4, false)
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
    notify_boolean(callback, 1, value)
  })
}
