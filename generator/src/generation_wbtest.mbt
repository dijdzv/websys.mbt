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
