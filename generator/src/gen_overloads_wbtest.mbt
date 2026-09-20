///|
test "union specializations preserve dictionary input and result contracts" {
  let dictionary : DictionaryDef = {
    name: "Options",
    members: [
      { name: "label", idl_type: String, required: false, default_value: None, },
    ],
    inheritance: None,
  }
  let dictionaries = [("Options", dictionary)]
  let arguments : Array[Argument] = [
    {
      name: "input",
      idl_type: Named("Input"),
      optional: false,
      default_value: None,
      variadic: false,
    },
    {
      name: "options",
      idl_type: Named("Options"),
      optional: false,
      default_value: None,
      variadic: false,
    },
  ]
  let operation : OperationDef = {
    name: "convert",
    arguments,
    return_type: Promise(Named("Options")),
    special: None,
    throws: [],
  }
  let instance = gen_union_arg_overloads(
    "Host",
    operation,
    0,
    [String, Named("Options")],
    [],
    dictionaries,
    [],
  )
  let static_ = gen_static_union_arg_overloads(
    "Host",
    operation,
    0,
    [String, Named("Options")],
    [],
    dictionaries,
    [],
  )
  let constructor_code = gen_constructor_union_arg_overloads(
    "Host",
    { arguments, throws: [], },
    "",
    0,
    [String, Named("Options")],
    [],
    dictionaries,
    [],
  )
  for code in [instance, static_, constructor_code] {
    assert_true(code.contains("options.to_js()"))
    assert_true(code.contains("input.to_js()"))
    assert_true(code.contains("options : JsValue"))
    assert_true(code.contains("input : Options"))
    assert_true(code.contains("input : String"))
  }
  for code in [instance, static_] {
    assert_true(code.contains(".then(v => ({"))
    assert_true(code.contains("v.label"))
  }
}
