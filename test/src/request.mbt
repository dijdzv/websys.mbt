// Request API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/Request
// Tests codegen patterns: dictionary (RequestInit), union type (RequestInfo), enum getters

///|
/// Test Request constructor and basic properties.
pub fn test_request() -> Unit {
  // Basic constructor with string URL
  let req = @websys.Request::new(
    @websys.RequestInfo::from_string("https://example.com/api"),
  )

  assert_eq(req.get_method(), "GET", label="method default")
  assert_eq(req.get_url(), "https://example.com/api", label="url")
  assert_false(req.get_keepalive(), label="keepalive default")
  assert_eq(req.get_referrer(), "about:client", label="referrer default")
  assert_false(req.get_body_used(), label="bodyUsed default")
  assert_true(req.get_body() is None, label="body is None for GET")
  println("  request: ok")
}

///|
/// Test Request with RequestInit — dictionary to_js() with Option[Struct] fields.
pub fn test_request_with_init() -> Unit {
  let init = @websys.RequestInit::{
    ..@websys.RequestInit::default(),
    method_: Some("POST"),
  }
  let req = @websys.Request::new_with_init(
    @websys.RequestInfo::from_string("https://example.com/submit"),
    init,
  )

  assert_eq(req.get_method(), "POST", label="method POST")
  assert_eq(req.get_url(), "https://example.com/submit", label="url")
  assert_false(req.get_body_used(), label="bodyUsed")
  println("  request_with_init: ok")
}

///|
/// Test Request enum getters — mode, credentials, cache, redirect.
pub fn test_request_enum_properties() -> Unit {
  let req = @websys.Request::new(
    @websys.RequestInfo::from_string("https://example.com"),
  )

  // These return enum types — verify they don't throw (codegen enum conversion)
  let _mode = req.get_mode()
  let _credentials = req.get_credentials()
  let _cache = req.get_cache()
  let _redirect = req.get_redirect()
  let _destination = req.get_destination()
  let _referrer_policy = req.get_referrer_policy()
  let _duplex = req.get_duplex()
  println("  request_enum_properties: ok")
}

///|
/// Test Response static methods — redirect, json.
pub fn test_response_static() -> Unit {
  // Response.redirect — static method pattern
  // Note: redirect() returns a new Response with redirect status, but redirected=false
  // (redirected is only true for responses obtained via fetch that followed a redirect)
  let redirect = @websys.Response::redirect("https://example.com")
  assert_eq(redirect.get_status(), 302, label="redirect status default")
  // type is an enum, just verify no throw
  let _type = redirect.get_type()

  // Response.redirect with custom status
  let redirect301 = @websys.Response::redirect_with_status(
    "https://example.com",
    301,
  )
  assert_eq(redirect301.get_status(), 301, label="redirect 301")
  println("  response_static: ok")
}
