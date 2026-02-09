// History API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/History
// Rust web-sys ref: crates/web-sys/tests/wasm/history.rs

///|
/// Test History API — length, scrollRestoration.
/// Equivalent to:
///   window.history.length // >= 1
///   window.history.scrollRestoration // "auto"
pub fn test_history() -> Unit {
  let win = match @websys.window() {
    Some(w) => w
    None => abort("FAIL: window() returned None")
  }
  let history = win.get_history()

  // length — Web API: history.length (at least 1)
  let len = history.get_length()
  assert_true(len >= 1, label="history.length >= 1")

  // scrollRestoration — Web API: history.scrollRestoration
  // Default is "auto" in most browsers
  let _sr = history.get_scroll_restoration()

  // set scrollRestoration to manual and verify
  history.set_scroll_restoration(@websys.ScrollRestoration::Manual)
  assert_eq(
    history.get_scroll_restoration().to_string(),
    "manual",
    label="scroll_restoration manual",
  )

  // set scrollRestoration back to auto and verify
  history.set_scroll_restoration(@websys.ScrollRestoration::Auto)
  assert_eq(
    history.get_scroll_restoration().to_string(),
    "auto",
    label="scroll_restoration auto",
  )
  println("  history: ok")
}
