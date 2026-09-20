///|
test "dictionary input plans preserve EnforceRange through typedefs" {
  let parsed = parse_webidl_raw(
    "typedef [EnforceRange] unsigned long long Size; typedef Size Alias;",
  )
  guard resolve_wasm_semantic_aliases(parsed) is Ok(types) else {
    fail("Expected aliases")
  }
  assert_eq(types["Alias"].annotations, ["EnforceRange"])
  assert_eq(
    plan_wasm_input(types["Alias"]),
    Some(Scalar("UInt64", "enforced-u64")),
  )
  assert_true(
    plan_wasm_input(
      semantic_typedef("typedef [Clamp] unsigned long long Size;"),
    )
    is None,
  )
  assert_true(
    plan_wasm_input(semantic_typedef("typedef [EnforceRange] DOMString Size;"))
    is None,
  )
}

///|
fn semantic_typedef(source : String) -> WasmSemanticType {
  let parsed = parse_webidl_raw(source)
  assert_true(is_parse_success(parsed)) catch {
    _ => abort("Invalid test IDL")
  }
  parse_wasm_semantic_type(
    get_idl_type(js_array_get(get_parse_data(parsed), 0)),
  )
}

///|
test "Fetch HeadersInit preserves both sequence and record branches" {
  let header = semantic_typedef(
    "typedef (sequence<sequence<ByteString>> or record<ByteString, ByteString>) HeadersInit;",
  )
  guard header.kind is Union(branches) else { fail("Expected union") }
  guard branches[0].kind is Generic("sequence", outer) else {
    fail("Expected sequence")
  }
  guard outer[0].kind is Generic("sequence", inner) else {
    fail("Expected nested sequence")
  }
  assert_eq(inner[0].kind, Name("ByteString"))
  guard branches[1].kind is Generic("record", fields) else {
    fail("Expected record")
  }
  assert_eq(fields.length(), 2)
  assert_eq(fields[0].kind, Name("ByteString"))
  assert_eq(fields[1].kind, Name("ByteString"))
}

///|
test "semantic types retain outer nullability and string kinds" {
  let sequence = semantic_typedef("typedef sequence<DOMString>? Values;")
  assert_true(sequence.nullable)
  guard sequence.kind is Generic("sequence", children) else {
    fail("Expected sequence")
  }
  assert_eq(children[0].kind, Name("DOMString"))
  let union = semantic_typedef("typedef (USVString or long)? Value;")
  assert_true(union.nullable)
  guard union.kind is Union(children) else { fail("Expected union") }
  assert_eq(children[0].kind, Name("USVString"))
  assert_true(!children[0].nullable)
}

///|
test "semantic aliases retain nullable body union and reject recursive records" {
  let parsed = parse_webidl_raw(
    "typedef (ReadableStream or XMLHttpRequestBodyInit) BodyInit; typedef (Blob or BufferSource or FormData or URLSearchParams or USVString) XMLHttpRequestBodyInit; typedef BodyInit? OptionalBody;",
  )
  guard resolve_wasm_semantic_aliases(parsed) is Ok(types) else {
    fail("Expected resolved aliases")
  }
  let body = types["OptionalBody"]
  assert_true(body.nullable)
  guard body.kind is Union(outer) else { fail("Expected body union") }
  assert_eq(outer[0].kind, Name("ReadableStream"))
  guard outer[1].kind is Union(inner) else {
    fail("Expected resolved inner union")
  }
  assert_eq(inner[4].kind, Name("USVString"))
  let parsed = parse_webidl_raw(
    "typedef record<DOMString, Second> First; typedef First Second;",
  )
  assert_true(resolve_wasm_semantic_aliases(parsed) is Err(_))
}
