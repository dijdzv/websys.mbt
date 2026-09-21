///|
test "getter metadata rejects malformed structures and unsafe names" {
  for
    input in [
      "[]", "null", "{\"Window\":[]}", "{\"\":{\"value\":[\"SecurityError\"]}}",
      "{\"Window\":{\"1value\":[\"SecurityError\"]}}", "{\"Window\":{\"value\":[]}}",
      "{\"Window\":{\"value\":[\"OtherError\"]}}", "{\"Window\":{\"value\":[\"securityError\"]}}",
      "{\"Window\":{\"value\":[\"SecurityError\",\"SecurityError\"]}}", "{\"Window\":{\"value\":[\"Error){}\"]}}",
    ] {
    let rejected = try {
      ignore(getter_error_metadata(input))
      false
    } catch {
      _ => true
    }
    assert_true(rejected, msg=input)
  }
}

///|
test "explicit getter metadata keeps setter failures independent" {
  let map = getter_error_metadata(
    "{\"Window\":{\"localStorage\":[\"SecurityError\"]}}",
  )
  assert_eq(
    js_array_to_strings(get_throws(map, "Window", "get_localStorage")),
    ["SecurityError"],
  )
  assert_eq(
    js_array_to_strings(get_throws(map, "Window", "set_localStorage")),
    [],
  )
}
