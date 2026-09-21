///|
extern "js" fn execute_getter_expression(code : String, mode : Int) -> String =
  #| (code, mode) => {
  #|   const expression = code.split('\n').filter(line => line.trimStart().startsWith('#|')).map(line => line.slice(line.indexOf('#|') + 2)).join('\n');
  #|   const getter = new Function('return (' + expression + ')')();
  #|   let reads = 0;
  #|   const receiver = { get name() {
  #|     reads++;
  #|     if (mode === 1) throw new DOMException('denied', 'SecurityError');
  #|     if (mode === 2) throw new TypeError('unexpected');
  #|     if (mode === 3) return null;
  #|     return '日本語';
  #|   } };
  #|   const result = getter(receiver);
  #|   return (result.$tag === 1 ? 'ok:' + String(result._0) : 'error:' + result._0.$tag) + '|' + reads;
  #| }

///|
test "generated JS getter expressions preserve success nullable values and failures" {
  let defs = convert_to_definitions(
    parse_webidl_raw(
      "interface Example { readonly attribute DOMString? name; };",
    ),
  )
  let metadata = create_throws_map()
  set_attribute_getter_throws(metadata, "Example", "name", ["SecurityError"])
  inject_throws(defs, [("fixture", metadata)])
  guard defs[0] is Interface(iface) else { abort("missing interface") }
  guard iface.members[0] is Attribute(attr) else { abort("missing getter") }
  let code = gen_attribute_getter("Example", attr)
  assert_eq(execute_getter_expression(code, 0), "ok:日本語|1")
  assert_eq(execute_getter_expression(code, 1), "error:0|1")
  assert_eq(execute_getter_expression(code, 2), "error:1|1")
  assert_eq(execute_getter_expression(code, 3), "ok:undefined|1")
}

///|
test "readonly getter failure metadata does not become setter metadata" {
  let defs = convert_to_definitions(
    parse_webidl_raw(
      "interface Example { readonly attribute DOMString name; attribute long count; };",
    ),
  )
  let metadata = create_throws_map()
  set_attribute_getter_throws(metadata, "Example", "name", ["SecurityError"])
  set_attribute_throws(metadata, "Example", "count", ["TypeError"])
  inject_throws(defs, [("fixture", metadata)])
  guard defs[0] is Interface(iface) else { abort("missing interface") }
  guard iface.members[0] is Attribute(name) else { abort("missing getter") }
  guard iface.members[1] is Attribute(count) else { abort("missing setter") }
  assert_eq(name.getter_throws, ["SecurityError"])
  assert_eq(name.setter_throws, [])
  assert_eq(count.getter_throws, [])
  assert_eq(count.setter_throws, ["TypeError"])
  let code = gen_attribute_getter("Example", name)
  assert_true(code.contains("Result[String, ExampleGetNameError]"))
  assert_true(code.contains("try {"))
  assert_true(code.contains("SecurityError"))
  assert_false(gen_attribute_getter("Example", count).contains("Result["))
  let errors = gen_error_enums_for_members("Example", iface.members)
  assert_true(errors.contains("ExampleGetNameError"))
  assert_true(errors.contains("ExampleSetCountError"))
  let (wasm, runtime) = generate_wasm(defs)
  assert_true(wasm.contains("Result[String, ExampleGetNameError]"))
  assert_true(wasm.contains("OtherError(error)"))
  assert_true(runtime.contains("value: self.name"))
  assert_true(runtime.contains("Example_name_value: result => result.value"))
}
