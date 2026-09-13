///|
test "WasmGC refuses types with no implemented ABI conversion" {
  assert_eq(wasm_type(Sequence(String), []), None)
  assert_eq(wasm_type(Nullable(String), []), None)
  assert_eq(wasm_type(Promise(String), []), None)
  assert_eq(wasm_type(Primitive("long long"), []), None)
  assert_eq(wasm_type(Named("Missing"), []), None)
  assert_eq(wasm_type(Named("Event"), ["Event"]), Some("Event"))
}

///|
test "WasmGC rejects definitions lost by the shared AST conversion" {
  for
    source in [
      "interface X { static undefined f(); };", "partial interface X { undefined f(); };",
      "interface X { stringifier; };", "interface mixin X { undefined f(); };", "[Exposed=Window] interface X {};",
      "callback X = undefined ([Clamp] long value);",
    ] {
    let parsed = parse_webidl_raw(source)
    assert_true(is_parse_success(parsed))
    assert_true(validate_wasm_input(parsed) is Some(_))
  }
}

///|
test "IDL sequences use a stable JS foreign array representation" {
  assert_eq(idl_type_to_moonbit(Sequence(String)), "FixedArray[String]")
  assert_eq(
    idl_type_to_moonbit(Sequence(Sequence(String))),
    "FixedArray[FixedArray[String]]",
  )
}

///|
test "browser names that are MoonBit keywords are escaped" {
  assert_eq(escape_reserved("extend"), "extend_")
  assert_eq(escape_reserved("append"), "append")
}

///|
test "typed browser errors expose Debug without deprecated derivation" {
  let code = gen_error_enum("ExampleError", ["TypeError"])
  assert_true(code.contains("derive(Debug)"))
  assert_true(!code.contains("derive(Show)"))
  assert_true(code.contains("OtherError(JsError)"))
}
