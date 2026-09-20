///|
extern "js" fn timer_callback(callback : () -> Unit) -> @websys.Function =
  #| callback => callback

///|
async fn test_js_timer() -> Unit {
  let window = @websys.window().unwrap()
  let calls = Ref(0)
  let callback = timer_callback(fn() { calls.val += 3 })
  ignore(
    window
    .set_timeout_with_function(callback, 0, @websys.JsValue::undefined())
    .unwrap(),
  )
  let canceled = window
    .set_timeout_with_function(callback, 0, @websys.JsValue::undefined())
    .unwrap()
  window.clear_timeout_with_id(canceled)
  assert_eq(calls.val, 0, label="deferred callback")
  @async.sleep(50)
  assert_eq(calls.val, 3, label="callback and cancellation")
}
