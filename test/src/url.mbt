// URL API tests
// Ref: https://developer.mozilla.org/en-US/docs/Web/API/URL
// Pattern: interface (constructor, getter/setter, methods)

///|
/// Test URL construction and property access — the most basic Web API pattern.
/// Equivalent to: const url = new URL("https://user:pass@example.com:8080/path?key=value#hash")
pub fn test_url() -> Unit {
  // Construct URL — Web API: new URL(url)
  let url = @websys.URL::new(
    "https://user:pass@example.com:8080/path?key=value#hash",
  )

  // Read-only property
  assert_eq(url.get_origin(), "https://example.com:8080", label="origin")

  // Protocol
  assert_eq(url.get_protocol(), "https:", label="protocol")

  // Auth
  assert_eq(url.get_username(), "user", label="username")
  assert_eq(url.get_password(), "pass", label="password")

  // Host components
  assert_eq(url.get_hostname(), "example.com", label="hostname")
  assert_eq(url.get_port(), "8080", label="port")
  assert_eq(url.get_host(), "example.com:8080", label="host")

  // Path / query / fragment
  assert_eq(url.get_pathname(), "/path", label="pathname")
  assert_eq(url.get_search(), "?key=value", label="search")
  assert_eq(url.get_hash(), "#hash", label="hash")

  // href contains the full URL
  assert_eq(
    url.get_href(),
    "https://user:pass@example.com:8080/path?key=value#hash",
    label="href",
  )

  // Setter: modify pathname — Web API: url.pathname = "/new"
  url.set_pathname("/new")
  assert_eq(url.get_pathname(), "/new", label="set_pathname")

  // Setter: modify hash
  url.set_hash("#updated")
  assert_eq(url.get_hash(), "#updated", label="set_hash")

  // toJSON() should return the same as href — Web API: url.toJSON()
  assert_eq(url.to_json(), url.get_href(), label="toJSON")

  // Static methods — Web API: URL.canParse(url) / URL.canParse(url, base)
  assert_true(
    @websys.URL::can_parse("https://example.com/path"),
    label="canParse valid",
  )
  assert_false(
    @websys.URL::can_parse("http://[invalid"),
    label="canParse invalid",
  )
  // canParse with base
  assert_true(
    @websys.URL::can_parse_with_base("/path", "https://base.example/"),
    label="canParse with base",
  )

  // URL.parse — returns null for invalid URLs
  let parsed = @websys.URL::parse("https://example.com")
  match parsed {
    Some(_) => ()
    None => abort("FAIL [URL.parse valid]: expected Some")
  }
  let invalid = @websys.URL::parse("http://[invalid")
  match invalid {
    None => ()
    Some(_) => abort("FAIL [URL.parse invalid]: expected None")
  }
  println("  url: ok")
}

///|
/// Test URLSearchParams — iterable interface with append/get/set/delete.
/// Equivalent to: const params = new URLSearchParams("a=1&b=2")
pub fn test_url_search_params() -> Unit {
  // Access searchParams through URL — Web API: url.searchParams
  let url = @websys.URL::new("https://example.com?a=1&b=2&a=3")
  let params = url.get_search_params()

  // get() returns first match — Web API: params.get("a")
  match params.get("a") {
    Some(v) => assert_eq(v, "1", label="get first")
    None => abort("FAIL [get first]: expected Some")
  }
  match params.get("b") {
    Some(v) => assert_eq(v, "2", label="get b")
    None => abort("FAIL [get b]: expected Some")
  }
  match params.get("missing") {
    None => ()
    Some(_) => abort("FAIL [get missing]: expected None")
  }

  // getAll() returns all matches — Web API: params.getAll("a")
  let all_a = params.get_all("a")
  assert_eq(all_a.length(), 2, label="getAll length")

  // has() — Web API: params.has("a")
  assert_true(params.has("a"), label="has a")
  assert_false(params.has("missing"), label="has missing")

  // has with value — Web API: params.has("a", "1")
  assert_true(params.has_with_value("a", "1"), label="has a=1")
  assert_false(params.has_with_value("a", "999"), label="has a=999")

  // size — Web API: params.size
  assert_eq(params.get_size(), 3, label="size") // a=1, b=2, a=3

  // append — Web API: params.append("c", "4")
  params.append("c", "4")
  match params.get("c") {
    Some(v) => assert_eq(v, "4", label="append")
    None => abort("FAIL [append]: expected Some")
  }
  assert_eq(params.get_size(), 4, label="size after append")

  // set replaces all — Web API: params.set("a", "replaced")
  params.set("a", "replaced")
  match params.get("a") {
    Some(v) => assert_eq(v, "replaced", label="set replaces")
    None => abort("FAIL [set replaces]: expected Some")
  }
  assert_eq(params.get_all("a").length(), 1, label="set removes dups")

  // delete — Web API: params.delete("c")
  params.delete("c")
  assert_false(params.has("c"), label="delete")

  // sort — Web API: params.sort()
  params.sort()

  // Changes are reflected in the URL — Web API: url.search
  assert_true(url.get_search().contains("replaced"), label="reflected in URL")
  println("  url_search_params: ok")
}
