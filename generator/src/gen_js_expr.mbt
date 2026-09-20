// JS call expression generation: argument conversion, dictionary wrappers

///|
/// Generate JS call argument expression for a single argument.
/// Handles: enum array lookup, nullable enum, nullable named type unwrap, Int64 conversion,
/// dictionary to_js conversion, and pass-through for other types.
fn gen_js_call_arg(
  arg : Argument,
  enum_map : Array[(String, Array[String])],
  dict_map : Array[(String, DictionaryDef)],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  let arg_name = arg.name |> to_snake_case |> escape_parameter
  match resolve_dictionary_alias(arg.idl_type, primitive_typedef_map) {
    Named(type_name) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) => gen_enum_array_lookup(values, arg_name)
        None =>
          // Dictionary type: pass through (wrapper handles .to_js() conversion)
          if !(lookup_dict(dict_map, type_name) is None) {
            arg_name
          } else if is_int64_type(arg.idl_type) {
            int64_param_to_js(arg_name)
          } else {
            arg_name
          }
      }
    Nullable(Named(type_name)) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) => gen_nullable_enum_array_lookup(values, arg_name)
        None =>
          // Nullable named type: unwrap from MoonBit Option[T]
          // Option[T] uses $tag:0=None, $tag:1/_0=Some (NOT Nullable enum)
          unwrap_option_named_param(arg_name)
      }
    Primitive("long long") => int64_param_to_js(arg_name)
    Primitive("unsigned long long") => "Number(" + arg_name + ")"
    _ => arg_name
  }
}

///|
/// Lookup dictionary by name from dict_map
pub fn lookup_dict(
  dict_map : Array[(String, DictionaryDef)],
  name : String,
) -> DictionaryDef? {
  dict_map
  .iter()
  .fold(init=(None : DictionaryDef?), fn(found, entry) {
    match found {
      Some(_) => found
      None => if entry.0 == name { Some(entry.1) } else { None }
    }
  })
}

///|
/// Check if any argument in the list is a dictionary type
fn has_dict_args(
  args : Array[Argument],
  arg_count : Int,
  dict_map : Array[(String, DictionaryDef)],
) -> Bool {
  for i = 0; i < arg_count; i = i + 1 {
    match args[i].idl_type {
      Named(type_name) =>
        if !(lookup_dict(dict_map, type_name) is None) {
          return true
        }
      _ => ()
    }
  }
  false
}

///|
/// Get MoonBit arg type for FFI function (JsValue for dict args)
fn gen_ffi_arg_type(
  arg : Argument,
  dict_map : Array[(String, DictionaryDef)],
) -> String {
  match arg.idl_type {
    Named(type_name) =>
      if !(lookup_dict(dict_map, type_name) is None) {
        "JsValue"
      } else {
        idl_type_to_moonbit(arg.idl_type)
      }
    _ => idl_type_to_moonbit(arg.idl_type)
  }
}

///|
/// Generate wrapper call arg (name.to_js() for dict args, name for others)
fn gen_wrapper_call_arg(
  arg : Argument,
  dict_map : Array[(String, DictionaryDef)],
) -> String {
  let arg_name = arg.name |> to_snake_case |> escape_parameter
  match arg.idl_type {
    Named(type_name) =>
      if !(lookup_dict(dict_map, type_name) is None) {
        arg_name + ".to_js()"
      } else {
        arg_name
      }
    _ => arg_name
  }
}

///|
/// Generate dict wrapper function (pub fn that calls _ffi with .to_js() conversion)
fn gen_dict_wrapper(
  result : StringBuilder,
  full_fn_name : String,
  args : Array[Argument],
  arg_count : Int,
  return_type : String,
  dict_map : Array[(String, DictionaryDef)],
  has_self : Bool,
  interface_name : String,
) -> Unit {
  result.write_string("\npub fn ")
  result.write_string(full_fn_name)
  result.write_string("(")
  let mut first = true
  if has_self {
    result.write_string("self : ")
    result.write_string(interface_name)
    first = false
  }
  for i = 0; i < arg_count; i = i + 1 {
    if !first {
      result.write_string(", ")
    }
    first = false
    result.write_string(args[i].name |> to_snake_case |> escape_parameter)
    result.write_string(" : ")
    result.write_string(idl_type_to_moonbit(args[i].idl_type))
  }
  result.write_string(") -> ")
  result.write_string(return_type)
  result.write_string(" {\n  ")
  result.write_string(full_fn_name)
  result.write_string("_ffi(")
  first = true
  if has_self {
    result.write_string("self")
    first = false
  }
  for i = 0; i < arg_count; i = i + 1 {
    if !first {
      result.write_string(", ")
    }
    first = false
    result.write_string(gen_wrapper_call_arg(args[i], dict_map))
  }
  result.write_string(")\n}\n")
}

///|
/// Check if return type is Promise[DictionaryType]
fn returns_promise_dict(
  return_type : IdlType,
  dict_map : Array[(String, DictionaryDef)],
) -> Bool {
  match return_type {
    Promise(Named(type_name)) => !(lookup_dict(dict_map, type_name) is None)
    _ => false
  }
}

///|
/// Get dictionary name from Promise[Dict] return type
fn get_promise_dict_name(return_type : IdlType) -> String {
  match return_type {
    Promise(Named(type_name)) => type_name
    _ => ""
  }
}

///|
/// Wrap a JS promise expression with `.then(v => ({...}))` to convert
/// the resolved JS object to a MoonBit struct.
/// Returns a multiline string with `#|` prefixes for each field line.
fn wrap_promise_dict_return(
  js_expr : String,
  dict : DictionaryDef,
  enum_map : Array[(String, Array[String])],
) -> String {
  let result = StringBuilder()
  result.write_string(js_expr)
  result.write_string(".then(v => ({\n")
  let members_len = dict.members.length()
  for i = 0; i < members_len; i = i + 1 {
    let mem = dict.members[i]
    let moonbit_name = field_name_to_moonbit(mem.name)
    let moonbit_type = mem.idl_type.to_moonbit_simple()
    let is_nullable_type = !mem.required && ends_with_question(moonbit_type)
    let value_expr = if is_nullable_type {
      gen_from_js_nullable_field_expr(mem.idl_type, mem.name, enum_map)
    } else if !mem.required {
      gen_from_js_optional_field_expr(mem.idl_type, mem.name, enum_map)
    } else {
      gen_from_js_required_field_expr(mem.idl_type, mem.name, enum_map)
    }
    result.write_string("  #|   ")
    result.write_string(moonbit_name)
    result.write_string(": ")
    result.write_string(value_expr)
    if i < members_len - 1 {
      result.write_string(",")
    }
    result.write_string("\n")
  }
  result.write_string("  #| }))")
  result.to_string()
}

///|
/// Convert operation results before the shared nullable/exception wrapper.
fn convert_operation_result(
  js_expr : String,
  return_type : IdlType,
  dict_map : Array[(String, DictionaryDef)],
  enum_map : Array[(String, Array[String])],
) -> String {
  if return_type is Named(name) {
    if lookup_enum(enum_map, name) is Some(values) {
      return gen_enum_index_of_expr(values, js_expr)
    }
  }
  if returns_promise_dict(return_type, dict_map) {
    let dict_name = get_promise_dict_name(return_type)
    match lookup_dict(dict_map, dict_name) {
      Some(dict) => wrap_promise_dict_return(js_expr, dict, enum_map)
      None => js_expr
    }
  } else {
    js_expr
  }
}

///|
/// Remove first character from string
fn remove_leading_char(s : String) -> String {
  let chars = s.to_array()
  if chars.length() <= 1 {
    return ""
  }
  String::from_array(chars[1:])
}
