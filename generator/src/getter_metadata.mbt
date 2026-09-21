///|
fn getter_error_metadata(
  text : String,
  methods? : Bool = false,
) -> ThrowsMap raise {
  let entries : Map[String, Map[String, Array[String]]] = @json.from_json(
    @json.parse(text),
  )
  let output = create_throws_map()
  let identifier = (value : String) => {
    !value.is_empty() &&
    value
    .iter()
    .all(ch => {
      (ch >= 'A' && ch <= 'Z') ||
      (ch >= 'a' && ch <= 'z') ||
      (ch >= '0' && ch <= '9') ||
      ch == '_'
    }) &&
    !(value[0] >= '0' && value[0] <= '9')
  }
  for owner, fields in entries {
    assert_true(identifier(owner), msg="Invalid getter metadata interface")
    for field, errors in fields {
      assert_true(identifier(field), msg="Invalid getter metadata attribute")
      assert_false(errors.is_empty(), msg="Getter errors must not be empty")
      let seen : Array[String] = []
      for error in errors {
        assert_true(
          identifier(error) &&
          error[0] >= 'A' &&
          error[0] <= 'Z' &&
          error != "OtherError" &&
          !seen.contains(error),
          msg="Invalid or duplicate getter exception",
        )
        seen.push(error)
      }
      if methods {
        set_throws(output, owner, field, errors)
      } else {
        set_attribute_getter_throws(output, owner, field, errors)
      }
    }
  }
  output
}
