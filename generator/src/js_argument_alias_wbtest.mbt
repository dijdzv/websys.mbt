///|
test "integer argument conversion is invariant under typedef chains" {
  for primitive in ["long long", "unsigned long long"] {
    let parsed = parse_webidl_raw(
      "interface Probe { undefined send(\{primitive} value); };",
    )
    let definitions = convert_to_definitions(parsed)
    guard definitions[0] is Interface(iface) else { fail("Missing interface") }
    guard iface.members[0] is Operation(op) else { fail("Missing operation") }
    let direct = op.arguments[0]
    let aliased = { ..direct, idl_type: Named("Outer"), }
    let aliases : Array[(String, IdlType)] = [
      ("Outer", Named("Inner")),
      ("Inner", Primitive(primitive)),
    ]
    assert_eq(
      gen_js_call_arg(aliased, [], [], primitive_typedef_map=aliases),
      gen_js_call_arg(direct, [], []),
    )
  }
}
