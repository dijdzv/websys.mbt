// Performance API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Performance
// Rust web-sys ref: crates/web-sys/tests/wasm/performance.rs

///|
/// Test Performance API — now(), timeOrigin.
/// Equivalent to:
///   performance.now() // > 0
///   performance.timeOrigin // > 0
pub fn test_performance() -> Unit {
  let win = match @websys.window() {
    Some(w) => w
    None => abort("FAIL: window() returned None")
  }
  let perf = win.get_performance()

  // now() — Web API: performance.now() → DOMHighResTimeStamp (Double)
  let t1 = perf.now()
  assert_true(t1 >= 0.0, label="performance.now() >= 0")

  // Call again — should be >= first call
  let t2 = perf.now()
  assert_true(t2 >= t1, label="performance.now() monotonic")

  // timeOrigin — Web API: performance.timeOrigin → DOMHighResTimeStamp (Double)
  let origin = perf.get_time_origin()
  assert_true(origin > 0.0, label="performance.timeOrigin > 0")

  // toJSON — Web API: performance.toJSON() → object
  let _ = perf.to_json()
  println("  performance: ok")
}
