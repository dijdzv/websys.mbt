// Headers API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Headers
// Rust web-sys ref: crates/web-sys/tests/wasm/response.rs (Headers usage)
// Pattern: interface (constructor, String methods, Bool checks)

///|
/// Test Headers — append, get, has, set, delete.
/// Equivalent to:
///   const headers = new Headers()
///   headers.append("Content-Type", "application/json")
///   headers.get("Content-Type") // "application/json"
///   headers.has("Content-Type") // true
pub fn test_headers() -> Unit {
  let headers = @websys.Headers::new()

  // append — Web API: headers.append(name, value)
  headers.append("Content-Type", "application/json")
  assert_true(headers.has("Content-Type"), label="has Content-Type")

  // get — Web API: headers.get(name) → String?
  match headers.get("Content-Type") {
    Some(v) => assert_eq(v, "application/json", label="get Content-Type")
    None => abort("FAIL: get returned None for Content-Type")
  }

  // get non-existent
  match headers.get("X-Not-Exist") {
    None => () // expected
    Some(_) => abort("FAIL: get returned Some for non-existent header")
  }

  // set — Web API: headers.set(name, value) — overwrites
  headers.set("Content-Type", "text/html")
  match headers.get("Content-Type") {
    Some(v) => assert_eq(v, "text/html", label="get after set")
    None => abort("FAIL: get returned None after set")
  }

  // append adds to existing (comma-separated)
  headers.append("Accept", "text/html")
  headers.append("Accept", "application/json")
  assert_true(headers.has("Accept"), label="has Accept")

  // append comma join — Web API: multiple appends combine with ", "
  headers.append("x-multi", "a")
  headers.append("x-multi", "b")
  match headers.get("x-multi") {
    Some(v) => assert_eq(v, "a, b", label="append comma join")
    None => abort("FAIL: get returned None for x-multi")
  }

  // case insensitive — Web API: header names are case-insensitive
  headers.set("Content-Type", "text/html")
  match headers.get("content-type") {
    Some(v) => assert_eq(v, "text/html", label="case insensitive")
    None => abort("FAIL: get returned None for content-type (case insensitive)")
  }

  // delete — Web API: headers.delete(name)
  headers.delete("Content-Type")
  assert_false(headers.has("Content-Type"), label="has after delete")
  println("  headers: ok")
}
