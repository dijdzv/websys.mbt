///|
test "WasmGC rejects type information the shared AST cannot preserve" {
  for
    source in [
      "typedef record<DOMString, Promise<DOMString>> Headers;", "interface Source { Promise<record<DOMString, DOMString>> read(); };",
      "dictionary Options { sequence<Promise<DOMString>>? values; };", "dictionary Options { (Unknown or long)? value; };",
      "interface Source { undefined send(record<DOMString, DOMString> headers); };",
    ] {
    let parsed = parse_webidl_raw(source)
    assert_true(is_parse_success(parsed))
    assert_true(validate_wasm_input(parsed) is Some(_), msg=source)
  }
  let parsed = parse_webidl_raw(
    "dictionary Options { any value; DOMString? text; }; interface Source { Promise<DOMString> read(); };",
  )
  assert_true(validate_wasm_input(parsed) is None)
}
