///|
test "dictionary presence preserves required nullable and optional states" {
  let field : DictionaryMember = {
    name: "value",
    idl_type: Nullable(String),
    required: true,
    default_value: None,
  }
  let required = plan_dictionary_field(field)
  assert_eq(required.presence, Required)
  assert_eq(required.public_type(), "String?")
  let optional = plan_dictionary_field({ ..field, required: false, })
  assert_eq(optional.presence, OptionalNullable)
  assert_eq(optional.public_type(), "Nullable[String]")
  let ordinary = plan_dictionary_field({
    ..field,
    required: false,
    idl_type: String,
  })
  assert_eq(ordinary.presence, Optional)
  assert_eq(ordinary.public_type(), "String?")
}

///|
test "WasmGC dictionary arguments use host conversion instead of struct ABI" {
  let parsed = parse_webidl_raw(
    "dictionary Options { DOMString? label; boolean enabled = true; }; interface X { undefined apply(Options options); };",
  )
  assert_eq(validate_wasm_input(parsed), None)
  let (code, runtime) = generate_wasm(convert_to_definitions(parsed))
  assert_true(code.contains("arg0.to_js()"))
  assert_true(code.contains("arg0 : JsValue"))
  assert_true(code.contains("Undefined => ()"))
  assert_true(runtime.contains("Boolean(value)"))
  assert_true(!runtime.contains("$tag"))
}

///|
test "dictionary defaults do not erase omission" {
  let plan = plan_dictionary_field({
    name: "enabled",
    idl_type: Primitive("boolean"),
    required: false,
    default_value: Some("true"),
  })
  assert_eq(plan.presence, Optional)
  assert_eq(plan.public_type(), "Bool?")
  assert_eq(plan.default_value, Some("true"))
}

///|
test "dictionary field planning retains existing public record signatures" {
  let parsed = parse_webidl_raw(
    "dictionary Options { required DOMString name; DOMString? label; boolean enabled = true; };",
  )
  assert_true(is_parse_success(parsed))
  let definitions = convert_to_definitions(parsed)
  guard definitions[0] is Dictionary(dict) else { fail("Expected dictionary") }
  let generated = gen_dictionary(dict, [], [])
  assert_true(generated.contains("name : String"))
  assert_true(generated.contains("label : Nullable[String]"))
  assert_true(generated.contains("enabled : Bool?"))
}

///|
test "WasmGC dictionary inheritance rejects unresolved and ambiguous fields" {
  for
    source in [
      "dictionary A : Missing {};", "dictionary A : B {}; dictionary B : A {};",
      "dictionary A { long x; }; dictionary B : A { long x; };", "dictionary A {}; dictionary A {};",
    ] {
    let parsed = parse_webidl_raw(source)
    assert_true(is_parse_success(parsed))
    assert_true(
      prepare_wasm_dictionaries(convert_to_definitions(parsed)) is Err(_),
    )
  }
}
