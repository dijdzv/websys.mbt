///|
priv suberror InvalidUInt {
  InvalidUInt
}

///|
#cfg(target="wasm-gc")
fn is_unsigned(value : @bridge.JsValue) -> Bool = "fixture" "is_unsigned"

///|
#cfg(target="js")
extern "js" fn is_unsigned(value : @bridge.JsValue) -> Bool =
  #| value => typeof value === 'number' && Number.isInteger(value) && value >= 0 && value <= 4294967295

///|
#cfg(target="wasm-gc")
fn read_unsigned(value : @bridge.JsValue) -> UInt = "fixture" "read_unsigned"

///|
#cfg(target="js")
extern "js" fn read_unsigned(value : @bridge.JsValue) -> UInt = "value => value"

///|
#cfg(target="wasm-gc")
fn notify_unsigned(
  callback : @bridge.JsValue,
  code : Int,
  value : UInt,
) -> Unit = "fixture" "notify_unsigned"

///|
#cfg(target="js")
extern "js" fn notify_unsigned(
  callback : @bridge.JsValue,
  code : Int,
  value : UInt,
) -> Unit = "(callback, code, value) => callback(code, (value => value >>> 0)(value))"

///|
fn decode_unsigned(value : @bridge.JsValue) -> UInt raise {
  if !is_unsigned(value) {
    raise InvalidUInt
  }
  read_unsigned(value)
}

///|
pub fn start_unsigned(
  promise : @js_async.Promise[UInt],
  controller : @bridge.JsValue,
  callback : @bridge.JsValue,
) -> Unit {
  @async.run_async_main(async fn() {
    let value = @async.with_timeout(500, async fn() {
      @bridge.wait(promise, decode_unsigned, () => abort_request(controller))
    }) catch {
      InvalidUInt => {
        notify_unsigned(callback, 4, 0U)
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
    notify_unsigned(callback, 1, value)
  })
}
