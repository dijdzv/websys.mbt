///|
test "callback-only Promise any emits Promise support and resolver without interfaces" {
  let parsed = parse_webidl_raw("callback Run = Promise<any> (object input);")
  assert_eq(validate_wasm_input(parsed), None)
  let (code, host) = generate_wasm(convert_to_definitions(parsed))
  assert_true(code.contains("pub type JsValue"))
  assert_true(code.contains("pub struct WebsysPromise"))
  assert_true(code.contains("new_js_value_promise"))
  assert_true(code.contains("callback : (JsValue) -> WebsysPromise[JsValue] raise"))
  assert_true(host.contains("typeof a0 !== 'object'"))
  assert_true(host.contains("slot.resolve = slot.reject = undefined"))
  assert_true(host.contains("return Promise.reject(error)"))
}

///|
test "callback dictionaries share their single snapshot decoder with Promise methods" {
  let parsed = parse_webidl_raw(
    "interface AbortSignal {}; dictionary Options { required AbortSignal signal; }; callback Run = Promise<any> (object input, Options options); interface Source { Promise<Options> read(); };",
  )
  assert_eq(validate_wasm_input(parsed), None)
  let (code, host) = generate_wasm(convert_to_definitions(parsed))
  assert_true(code.contains("websys_promise_decode_Options(a1)"))
  assert_eq(code.split("fn websys_promise_decode_Options(").to_array().length(), 2)
  assert_eq(host.split("const value = input.signal").to_array().length(), 2)
  assert_true(code.contains("DictionaryReadError(reason)"))
}

///|
test "Promise any preserves null and undefined as opaque values" {
  let plan = wasm_promise_value(Any).unwrap()
  assert_eq(plan.name, "JsValue")
  assert_eq(plan.predicate, "true")
  let parsed = parse_webidl_raw("interface Source { Promise<any> read(); };")
  let (code, _) = generate_wasm(convert_to_definitions(parsed))
  assert_true(code.contains("pub type JsValue"))
  assert_true(code.contains("WebsysPromise[JsValue]"))
}
