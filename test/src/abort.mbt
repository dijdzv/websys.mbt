// AbortController / AbortSignal tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/AbortController
// Pattern: interface (constructor, getter, method), type casting

///|
/// Test AbortController basic usage.
/// Equivalent to:
///   const controller = new AbortController()
///   controller.signal.aborted // false
///   controller.abort()
///   controller.signal.aborted // true
pub fn test_abort_controller() -> Unit {
  let controller = @websys.AbortController::new()

  // signal — Web API: controller.signal
  let signal = controller.get_signal()

  // Initially not aborted — Web API: signal.aborted
  assert_false(signal.get_aborted(), label="signal not aborted initially")

  // abort — Web API: controller.abort()
  controller.abort()

  // Now aborted
  assert_true(signal.get_aborted(), label="signal aborted after abort()")
  println("  abort_controller: ok")
}

///|
/// Test AbortSignal static methods.
/// Equivalent to:
///   AbortSignal.abort().aborted // true
pub fn test_abort_signal() -> Unit {
  // AbortSignal.abort() — creates an already-aborted signal
  let aborted = @websys.AbortSignal::abort()
  assert_true(aborted.get_aborted(), label="AbortSignal.abort() is aborted")

  // AbortSignal inherits from EventTarget
  let _target = aborted.to_event_target()
  println("  abort_signal: ok")
}
