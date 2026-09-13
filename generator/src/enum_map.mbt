// Enum map operations

///|
/// Get value list from enum map
pub fn lookup_enum(
  enum_map : Array[(String, Array[String])],
  name : String,
) -> Array[String]? {
  enum_map
  .iter()
  .fold(init=Option::None, fn(result, pair) {
    match result {
      Some(_) => result
      None => if pair.0 == name { Some(pair.1) } else { None }
    }
  })
}

///|
/// Generate enum array lookup expression
/// Example: ['value1', 'value2'][index_expr]
pub fn gen_enum_array_lookup(
  values : Array[String],
  index_expr : String,
) -> String {
  let result = StringBuilder()
  result.write_string("[")
  ignore(
    values
    .iter()
    .fold(init=true, fn(first, v) {
      if !first {
        result.write_string(", ")
      }
      result.write_string("'")
      result.write_string(v)
      result.write_string("'")
      false
    }),
  )
  result.write_string("][")
  result.write_string(index_expr)
  result.write_string("]")
  result.to_string()
}

///|
/// Generate enum indexOf expression (JS string → MoonBit enum index)
/// Example: gen_enum_index_of_expr(["sendrecv", "sendonly"], "self.direction") =>
///   "['sendrecv', 'sendonly'].indexOf(self.direction)"
pub fn gen_enum_index_of_expr(
  values : Array[String],
  str_expr : String,
) -> String {
  let result = StringBuilder()
  result.write_string("[")
  ignore(
    values
    .iter()
    .fold(init=true, fn(first, v) {
      if !first {
        result.write_string(", ")
      }
      result.write_string("'")
      result.write_string(v)
      result.write_string("'")
      false
    }),
  )
  result.write_string("].indexOf(")
  result.write_string(str_expr)
  result.write_string(")")
  result.to_string()
}

///|
/// Generate nullable enum array lookup expression (with null check)
/// Example: (var_name != null ? ['value1', 'value2'][var_name] : null)
pub fn gen_nullable_enum_array_lookup(
  values : Array[String],
  var_name : String,
) -> String {
  let result = StringBuilder()
  result.write_string("(")
  result.write_string(var_name)
  result.write_string(" != null ? [")
  ignore(
    values
    .iter()
    .fold(init=true, fn(first, v) {
      if !first {
        result.write_string(", ")
      }
      result.write_string("'")
      result.write_string(v)
      result.write_string("'")
      false
    }),
  )
  result.write_string("][")
  result.write_string(var_name)
  result.write_string("] : null)")
  result.to_string()
}
