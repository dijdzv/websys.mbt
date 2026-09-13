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
