///|
test "typedef resolution follows forward aliases through containers" {
  let parsed = parse_webidl_raw(
    "typedef Count Other; typedef long Count; interface Source { Promise<Other> read(); }; dictionary Options { Other amount; };",
  )
  assert_true(validate_wasm_input(parsed) is None)
  let (code, _) = generate_wasm(convert_to_definitions(parsed))
  assert_true(code.contains("WebsysPromise[Int]"))
  assert_true(code.contains("amount : Int?"))
}

///|
test "typedef cycles and collisions are rejected before generation" {
  for
    source in [
      "typedef Second First; typedef First Second;", "typedef sequence<First> First;",
      "typedef long Item; interface Item {};",
    ] {
    let parsed = parse_webidl_raw(source)
    assert_true(is_parse_success(parsed))
    assert_true(resolve_wasm_typedefs(convert_to_definitions(parsed)) is Err(_))
  }
}
