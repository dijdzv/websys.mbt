///|
test "compound dictionary planning consumes resolved inherited semantic types" {
  let parsed = parse_webidl_raw(
    "typedef (sequence<sequence<ByteString>> or record<ByteString, ByteString>) HeadersInit; dictionary Base { HeadersInit headers; }; dictionary Child : Base { DOMString body; };",
  )
  assert_true(validate_wasm_input(parsed) is None)
  let types = wasm_dictionary_semantics(parsed)
  assert_eq(types["Base.headers"], types["Child.headers"])
  guard plan_wasm_input(types["Child.headers"]) is Some(plan) else {
    fail("Missing header conversion plan")
  }
  guard plan is WasmInputPlan::Union(branches) else {
    fail("Expected both header branches")
  }
  assert_eq(branches.length(), 2)
  assert_true(
    branches[0]
    is WasmInputPlan::Sequence(
      WasmInputPlan::Sequence(Scalar("String", "ByteString"))
    ),
  )
  assert_true(
    branches[1]
    is Record(Scalar("String", "ByteString"), Scalar("String", "ByteString")),
  )
  let (code, host) = generate_wasm(
    convert_to_definitions(parsed),
    dictionary_types=types,
  )
  assert_true(code.contains("Array[Array[String]]"))
  assert_true(code.contains("Array[(String, String)]"))
  assert_true(host.contains("Object.create(null)"))
}
