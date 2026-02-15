// Location API test
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Location
// Rust web-sys ref: crates/web-sys/tests/wasm/location.rs

///|
fn test_location() -> Unit {
  let win = @websys.window()
  let w = match win {
    Some(w) => w
    None => abort("FAIL: window() returned None")
  }
  let loc = w.get_location()
  // URL properties should be non-empty for a loaded page
  let href = loc.get_href()
  assert_true(href.length() > 0, label="href non-empty")
  let protocol = loc.get_protocol()
  assert_true(protocol.length() > 0, label="protocol non-empty")
  assert_eq(loc.get_pathname(), "/", label="pathname")
  assert_eq(loc.get_search(), "", label="search")
  // hash setter/getter round-trip
  loc.set_hash("#test")
  assert_eq(loc.get_hash(), "#test", label="hash set")
  loc.set_hash("")
}
