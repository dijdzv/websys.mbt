///|
priv suberror InvalidInteger {
  InvalidInteger
}

///|
#cfg(target="wasm-gc")
fn is_integer(value : @bridge.JsValue) -> Bool = "fixture" "is_integer"

///|
#cfg(target="js")
extern "js" fn is_integer(value : @bridge.JsValue) -> Bool =
  #| value => typeof value === 'number' && Number.isInteger(value) && value >= -2147483648 && value <= 2147483647

///|
#cfg(target="wasm-gc")
fn read_integer(value : @bridge.JsValue) -> Int = "fixture" "read_integer"

///|
#cfg(target="js")
extern "js" fn read_integer(value : @bridge.JsValue) -> Int = "value => value"

///|
#cfg(target="wasm-gc")
fn notify_integer(callback : @bridge.JsValue, code : Int, value : Int) -> Unit = "fixture" "notify_integer"

///|
#cfg(target="js")
extern "js" fn notify_integer(
  callback : @bridge.JsValue,
  code : Int,
  value : Int,
) -> Unit = "(callback, code, value) => callback(code, value)"

///|
fn decode_integer(value : @bridge.JsValue) -> Int raise {
  if !is_integer(value) {
    raise InvalidInteger
  }
  read_integer(value)
}

///|
pub fn start_integer(
  promise : @js_async.Promise[Int],
  controller : @bridge.JsValue,
  callback : @bridge.JsValue,
) -> Unit {
  @async.run_async_main(async fn() {
    let value = @async.with_timeout(500, async fn() {
      @bridge.wait(promise, decode_integer, () => abort_request(controller))
    }) catch {
      InvalidInteger => {
        notify_integer(callback, 4, 0)
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
    notify_integer(callback, 1, value)
  })
}
