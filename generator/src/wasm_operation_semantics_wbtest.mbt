///|
test "operation argument annotations survive aliases inheritance and mixins" {
  let parsed = parse_webidl_raw(
    "typedef [EnforceRange] unsigned long long Size; interface Parent { undefined send(Size size); }; interface Child : Parent {}; interface mixin Extra { undefined direct([EnforceRange] unsigned long long value); }; Child includes Extra; partial interface Child { undefined more(Size size); };",
  )
  assert_eq(validate_wasm_input(parsed), None)
  let types = wasm_operation_semantics(parsed)
  for key in ["Parent.send.0", "Child.send.0", "Child.direct.0", "Child.more.0"] {
    let typ = types.get(key).unwrap()
    assert_eq(typ.kind, Name("unsigned long long"))
    assert_eq(typ.annotations, ["EnforceRange"])
  }
}

///|
test "unsupported operation argument annotations remain rejected" {
  let parsed = parse_webidl_raw(
    "interface Probe { undefined send([Clamp] unsigned long long value); };",
  )
  assert_true(validate_wasm_input(parsed) is Some(_))
}

///|
test "operation input support does not require a dictionary declaration" {
  let parsed = parse_webidl_raw(
    "interface Probe { undefined send(record<DOMString, DOMString> headers); };",
  )
  assert_eq(validate_wasm_input(parsed), None)
  let (code, _) = generate_wasm(
    convert_to_definitions(parsed),
    operation_types=wasm_operation_semantics(parsed),
  )
  assert_true(code.contains("pub type JsValue"))
  assert_true(code.contains("Array[(String, String)]"))
}
