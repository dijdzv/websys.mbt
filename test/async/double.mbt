///|
priv suberror InvalidDouble {
  InvalidDouble
}

///|
#cfg(target="wasm-gc")
fn is_double(value : @bridge.JsValue) -> Bool = "fixture" "is_double"

///|
#cfg(target="js")
extern "js" fn is_double(value : @bridge.JsValue) -> Bool =
  #| value => typeof value === 'number' && Number.isFinite(value)

///|
#cfg(target="wasm-gc")
fn read_double(value : @bridge.JsValue) -> Double = "fixture" "read_double"

///|
#cfg(target="js")
extern "js" fn read_double(value : @bridge.JsValue) -> Double = "value => value"

///|
#cfg(target="wasm-gc")
fn notify_double(
  callback : @bridge.JsValue,
  code : Int,
  value : Double,
) -> Unit = "fixture" "notify_double"

///|
#cfg(target="js")
extern "js" fn notify_double(
  callback : @bridge.JsValue,
  code : Int,
  value : Double,
) -> Unit = "(callback, code, value) => callback(code, (value => value)(value))"

///|
fn decode_double(value : @bridge.JsValue) -> Double raise {
  if !is_double(value) {
    raise InvalidDouble
  }
  read_double(value)
}

///|
pub fn start_double(
  promise : @js_async.Promise[Double],
  controller : @bridge.JsValue,
  callback : @bridge.JsValue,
) -> Unit {
  @async.run_async_main(async fn() {
    let value = @async.with_timeout(500, async fn() {
      @bridge.wait(promise, decode_double, () => abort_request(controller))
    }) catch {
      InvalidDouble => {
        notify_double(callback, 4, 0.0)
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
    notify_double(callback, 1, value)
  })
}
