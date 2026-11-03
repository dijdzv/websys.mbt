///|
let timer_calls : Ref[Int32] = Ref(0)

///|
pub fn timer_start(window : @bindings.Window) -> Unit {
  timer_calls.val = 0
  let increment = 3
  let callback = @bindings.TimeoutCallback::new(fn() {
    timer_calls.val += increment
  })
  ignore(window.set_timeout(callback, 0))
  let canceled = window.set_timeout(callback, 0)
  window.clear_timeout(canceled)
}

///|
pub fn timer_count() -> Int32 {
  timer_calls.val
}
