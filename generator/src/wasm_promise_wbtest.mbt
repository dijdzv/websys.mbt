///|
test "Promise conversion rejects unsupported shapes before emitting bindings" {
  for
    typ in [
      Any,
      Void,
      Sequence(String),
      Nullable(String),
      Named("Response"),
      Primitive("long long"),
    ] {
    assert_true(wasm_promise_value(typ) is None)
  }
  for
    typ in [
      String,
      Primitive("long"),
      Primitive("unsigned long"),
      Primitive("boolean"),
      Primitive("double"),
    ] {
    assert_true(wasm_promise_value(typ) is Some(_))
  }
}

///|
test "Promise interface settlement requires a declared interface" {
  assert_true(
    wasm_promise_value(Named("Response"), interfaces=["Response"]) is Some(_),
  )
  assert_true(
    wasm_promise_value(Named("RequestInit"), interfaces=["Response"]) is None,
  )
  let parsed = parse_webidl_raw(
    "interface Window { Promise<Response> fetch(DOMString url); }; interface Response { Promise<DOMString> text(); };",
  )
  assert_true(is_parse_success(parsed))
  let (code, host) = generate_wasm(convert_to_definitions(parsed))
  assert_true(code.contains("WebsysPromise[Response]"))
  assert_true(host.contains("value instanceof globalThis.Response"))
}

///|
test "Promise methods decode after waiting and preserve operation rejection" {
  let parsed = parse_webidl_raw(
    "interface Response { Promise<DOMString> text(); Promise<unsigned long> size(); };",
  )
  assert_true(is_parse_success(parsed))
  let (code, host) = generate_wasm(convert_to_definitions(parsed))
  assert_true(code.contains("WebsysPromise[String]"))
  assert_true(code.contains("WebsysPromise[UInt]"))
  assert_true(code.contains("@wasm_async.wait(self.raw, self.decode, abort)"))
  assert_true(host.contains("return Promise.reject(error)"))
  assert_true(host.contains("Number.isInteger(value)"))
  assert_true(
    wasm_module_manifest("owner/package", promises=true).contains(
      "moonbitlang/async@0.22.1",
    ),
  )
}
