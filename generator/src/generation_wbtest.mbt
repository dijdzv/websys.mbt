///|
test "WasmGC ArrayBuffer uses an opaque reference including nullable values" {
  assert_eq(wasm_type(Named("ArrayBuffer"), []), Some("ArrayBuffer"))
  assert_eq(wasm_type(Nullable(Named("ArrayBuffer")), []), Some("ArrayBuffer?"))
  assert_eq(
    wasm_type(Named("SharedArrayBuffer"), []),
    Some("SharedArrayBuffer"),
  )
  assert_eq(wasm_type(Named("Uint8Array"), []), None)
  assert_eq(
    wasm_type(Nullable(Named("ArrayBufferView")), []),
    Some("ArrayBufferView?"),
  )
}

///|
test "WasmGC refuses types with no implemented ABI conversion" {
  assert_eq(wasm_type(Sequence(String), []), None)
  assert_eq(wasm_type(Nullable(Primitive("long")), []), None)
  assert_eq(wasm_type(Promise(String), []), None)
  assert_eq(wasm_type(Primitive("long long"), []), None)
  assert_eq(wasm_type(Named("Missing"), []), None)
  assert_eq(wasm_type(Named("Event"), ["Event"]), Some("Event"))
}

///|
test "WasmGC nullable references and strings expose Option" {
  assert_eq(wasm_type(Nullable(String), []), Some("String?"))
  assert_eq(
    wasm_type(Nullable(Named("Element")), ["Element"]),
    Some("Element?"),
  )
  assert_eq(wasm_type(Nullable(Named("Missing")), []), None)
}

///|
test "WasmGC rejects definitions lost by the shared AST conversion" {
  for
    source in [
      "interface X { static undefined f(); };", "partial interface mixin X { undefined f(); };",
      "interface X { stringifier; };", "[Exposed=Window] interface X {};", "callback X = undefined ([Clamp] long value);",
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
test "WasmGC composes partials and shared mixins regardless of definition order" {
  let parsed = parse_webidl_raw(
    "partial interface A { readonly attribute DOMString id; }; A includes Shared; interface B {}; B includes Shared; interface mixin Shared { undefined ping(); }; interface A {};",
  )
  assert_true(is_parse_success(parsed))
  assert_eq(validate_wasm_input(parsed), None)
  let definitions = convert_to_definitions(parsed)
  let (code, runtime) = generate_wasm(definitions)
  assert_true(code.contains("A::id("))
  assert_true(code.contains("A::ping("))
  assert_true(code.contains("B::ping("))
  assert_true(!code.contains("type Shared\n"))
  assert_true(runtime.contains("self.ping("))
  let (again, _) = generate_wasm(definitions)
  assert_eq(code, again)
}

///|
test "WasmGC rejects unresolved and duplicate composition references" {
  for
    source in [
      "partial interface Missing {};", "interface A {}; A includes Missing;", "interface mixin Shared {}; Missing includes Shared;",
      "interface A {}; interface mixin Shared {}; A includes Shared; A includes Shared;",
      "interface A {}; interface mixin A {};", "interface A : Missing {};", "interface A : B {}; interface B : A {};",
    ] {
    let parsed = parse_webidl_raw(source)
    assert_true(is_parse_success(parsed))
    assert_true(
      compose_wasm_interfaces(convert_to_definitions(parsed)) is Err(_),
    )
  }
}

///|
test "WasmGC inherits partial and mixin members and exposes ancestor conversions" {
  let parsed = parse_webidl_raw(
    "interface Child : Parent {}; interface Parent : Root {}; interface Root {}; partial interface Root { readonly attribute DOMString id; }; interface mixin Shared { undefined ping(); }; Root includes Shared;",
  )
  assert_true(is_parse_success(parsed))
  assert_eq(validate_wasm_input(parsed), None)
  let (code, runtime) = generate_wasm(convert_to_definitions(parsed))
  assert_true(code.contains("Child::id("))
  assert_true(code.contains("Child::ping("))
  assert_true(code.contains("Child::as_parent("))
  assert_true(code.contains("Child::as_root("))
  assert_true(runtime.contains("Child_as_root: self => self"))
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

///|
test "WasmGC constructors are not inherited as child constructors" {
  let parsed = parse_webidl_raw(
    "interface Parent { constructor(); }; interface Child : Parent {};",
  )
  assert_eq(validate_wasm_input(parsed), None)
  let (code, runtime) = generate_wasm(convert_to_definitions(parsed))
  assert_true(code.contains("Parent::new("))
  assert_true(!code.contains("Child::new("))
  assert_true(runtime.contains("new globalThis.Parent("))
}
