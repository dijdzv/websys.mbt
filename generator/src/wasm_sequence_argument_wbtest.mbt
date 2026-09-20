///|
test "sequence operation arguments use host arrays while results remain unsupported" {
  let parsed = parse_webidl_raw(
    "interface Item {}; interface Queue { undefined submit(sequence<Item> values); undefined nested(sequence<sequence<boolean>> values); };",
  )
  assert_true(validate_wasm_input(parsed) is None)
  let (code, host) = generate_wasm(convert_to_definitions(parsed))
  assert_true(code.contains("arg0 : Array[Item]"))
  assert_true(code.contains("arg0 : Array[Array[Bool]]"))
  assert_true(code.contains("arg0 : JsValue"))
  assert_true(host.contains("value !== 0"))
  assert_eq(wasm_type(Sequence(Named("Item")), ["Item"]), None)
}
