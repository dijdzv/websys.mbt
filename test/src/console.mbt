// Console test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Console
// Equivalent Rust web-sys test: console.rs

///|
fn test_console() -> Unit {
  // Matching Rust web-sys test: console::time_with_label / console::time_end_with_label
  // Now uses generated bindings from src/console.mbt (namespace support)
  @websys.console_time_with_label("test label")
  @websys.console_time_end_with_label("test label")
  // If we get here without throwing, the test passes
  // (console.time / console.timeEnd are void functions)
}
