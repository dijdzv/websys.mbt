// Union argument overload generation

///|
/// Lookup union typedef by name
fn lookup_union_typedef(
  union_typedef_map : Array[(String, Array[IdlType])],
  name : String,
) -> Array[IdlType]? {
  union_typedef_map
  .iter()
  .fold(init=(None : Array[IdlType]?), fn(found, entry) {
    match found {
      Some(_) => found
      None => if entry.0 == name { Some(entry.1) } else { None }
    }
  })
}

///|
/// Find first union arg in an operation. Returns (arg_index, union_members) or None.
fn find_union_arg(
  args : Array[Argument],
  arg_count : Int,
  union_typedef_map : Array[(String, Array[IdlType])],
) -> (Int, Array[IdlType])? {
  for i = 0; i < arg_count; i = i + 1 {
    match args[i].idl_type {
      Named(type_name) =>
        match lookup_union_typedef(union_typedef_map, type_name) {
          Some(members) => return Some((i, members))
          None => ()
        }
      _ => ()
    }
  }
  None
}

///|
/// Generate union argument overloads for an instance operation.
/// For each union member type, generates a `_with_{type_name}` overload.
fn gen_union_arg_overloads(
  interface_name : String,
  op : OperationDef,
  union_arg_index : Int,
  union_members : Array[IdlType],
  enum_map : Array[(String, Array[String])],
  dict_map : Array[(String, DictionaryDef)],
  generated_methods : Array[String],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  let result = StringBuilder()
  let base_fn_name = op.name |> to_snake_case |> escape_reserved
  let (return_type, is_throwing) = compute_throws_context(
    op.throws,
    op.name,
    interface_name,
    idl_type_to_moonbit(op.return_type),
    idl_return_type=op.return_type,
  )
  let args_len = op.arguments.length()
  union_members
  .iter()
  .each(fn(member_type) {
    let factory_name = get_factory_name(member_type)
    let moonbit_type = member_type.to_moonbit_simple()
    // Skip JsValue (Any, nested Union, etc.)
    if factory_name == "" || moonbit_type == "JsValue" {
      return
    }
    let fn_name = base_fn_name + "_with_" + factory_name
    if generated_methods.contains(fn_name) {
      return
    }
    generated_methods.push(fn_name)
    // MoonBit signature
    let specialized_args = op.arguments.map(fn(arg) { arg })
    specialized_args[union_arg_index] = {
      ..op.arguments[union_arg_index],
      idl_type: member_type,
    }
    let needs_wrapper = has_dict_args(specialized_args, args_len, dict_map)
    if needs_wrapper {
      result.write_string("extern \"js\" fn ")
    } else {
      result.write_string("pub extern \"js\" fn ")
    }
    result.write_string(interface_name)
    result.write_string("::")
    result.write_string(fn_name)
    if needs_wrapper {
      result.write_string("_ffi")
    }
    result.write_string("(self : ")
    result.write_string(interface_name)
    for i = 0; i < args_len; i = i + 1 {
      let arg = op.arguments[i]
      result.write_string(", ")
      result.write_string(arg.name |> to_snake_case |> escape_parameter)
      result.write_string(" : ")
      if needs_wrapper {
        result.write_string(gen_ffi_arg_type(specialized_args[i], dict_map))
      } else if i == union_arg_index {
        result.write_string(moonbit_type)
      } else {
        result.write_string(idl_type_to_moonbit(arg.idl_type))
      }
    }
    result.write_string(") -> ")
    result.write_string(return_type)
    result.write_string(" =\n")
    // JS body — same as original, just pass through
    result.write_string("  #| (self")
    for i = 0; i < args_len; i = i + 1 {
      result.write_string(", ")
      result.write_string(
        op.arguments[i].name |> to_snake_case |> escape_parameter,
      )
    }
    let js_call_args = StringBuilder()
    for i = 0; i < args_len; i = i + 1 {
      if i > 0 {
        js_call_args.write_string(", ")
      }
      if i == union_arg_index {
        // Union member: pass through directly
        js_call_args.write_string(
          op.arguments[i].name |> to_snake_case |> escape_parameter,
        )
      } else {
        js_call_args.write_string(
          gen_js_call_arg(
            op.arguments[i],
            enum_map,
            dict_map,
            primitive_typedef_map~,
          ),
        )
      }
    }
    let js_expr = "self." + op.name + "(" + js_call_args.to_string() + ")"
    let js_expr = convert_operation_result(
      js_expr,
      op.return_type,
      dict_map,
      enum_map,
    )
    let wrapped = wrap_return_or_throwing(
      js_expr,
      op.return_type,
      is_throwing,
      op.throws,
    )
    result.write_string(") => ")
    result.write_string(wrapped)
    result.write_string("\n\n")
    if needs_wrapper {
      gen_dict_wrapper(
        result,
        interface_name + "::" + fn_name,
        specialized_args,
        args_len,
        return_type,
        dict_map,
        true,
        interface_name,
      )
    }
  })
  result.to_string()
}

///|
/// Generate union argument overloads for a static operation.
fn gen_static_union_arg_overloads(
  interface_name : String,
  op : OperationDef,
  union_arg_index : Int,
  union_members : Array[IdlType],
  enum_map : Array[(String, Array[String])],
  dict_map : Array[(String, DictionaryDef)],
  generated_methods : Array[String],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  let result = StringBuilder()
  let base_fn_name = op.name |> to_snake_case |> escape_reserved
  let (return_type, is_throwing) = compute_throws_context(
    op.throws,
    op.name,
    interface_name,
    idl_type_to_moonbit(op.return_type),
    idl_return_type=op.return_type,
  )
  let args_len = op.arguments.length()
  union_members
  .iter()
  .each(fn(member_type) {
    let factory_name = get_factory_name(member_type)
    let moonbit_type = member_type.to_moonbit_simple()
    if factory_name == "" || moonbit_type == "JsValue" {
      return
    }
    let fn_name = base_fn_name + "_with_" + factory_name
    if generated_methods.contains(fn_name) {
      return
    }
    generated_methods.push(fn_name)
    let specialized_args = op.arguments.map(fn(arg) { arg })
    specialized_args[union_arg_index] = {
      ..op.arguments[union_arg_index],
      idl_type: member_type,
    }
    let needs_wrapper = has_dict_args(specialized_args, args_len, dict_map)
    result.write_string(
      if needs_wrapper {
        "extern \"js\" fn "
      } else {
        "pub extern \"js\" fn "
      },
    )
    result.write_string(interface_name)
    result.write_string("::")
    result.write_string(fn_name)
    if needs_wrapper {
      result.write_string("_ffi")
    }
    result.write_string("(")
    for i = 0; i < args_len; i = i + 1 {
      if i > 0 {
        result.write_string(", ")
      }
      let arg = op.arguments[i]
      result.write_string(arg.name |> to_snake_case |> escape_parameter)
      result.write_string(" : ")
      if needs_wrapper {
        result.write_string(gen_ffi_arg_type(specialized_args[i], dict_map))
      } else if i == union_arg_index {
        result.write_string(moonbit_type)
      } else {
        result.write_string(idl_type_to_moonbit(arg.idl_type))
      }
    }
    result.write_string(") -> ")
    result.write_string(return_type)
    result.write_string(" =\n")
    result.write_string("  #| (")
    for i = 0; i < args_len; i = i + 1 {
      if i > 0 {
        result.write_string(", ")
      }
      result.write_string(
        op.arguments[i].name |> to_snake_case |> escape_parameter,
      )
    }
    let js_call_args = StringBuilder()
    for i = 0; i < args_len; i = i + 1 {
      if i > 0 {
        js_call_args.write_string(", ")
      }
      if i == union_arg_index {
        js_call_args.write_string(
          op.arguments[i].name |> to_snake_case |> escape_parameter,
        )
      } else {
        js_call_args.write_string(
          gen_js_call_arg(
            op.arguments[i],
            enum_map,
            dict_map,
            primitive_typedef_map~,
          ),
        )
      }
    }
    let js_expr = interface_name +
      "." +
      op.name +
      "(" +
      js_call_args.to_string() +
      ")"
    let js_expr = convert_operation_result(
      js_expr,
      op.return_type,
      dict_map,
      enum_map,
    )
    let wrapped = wrap_return_or_throwing(
      js_expr,
      op.return_type,
      is_throwing,
      op.throws,
    )
    result.write_string(") => ")
    result.write_string(wrapped)
    result.write_string("\n\n")
    if needs_wrapper {
      gen_dict_wrapper(
        result,
        interface_name + "::" + fn_name,
        specialized_args,
        args_len,
        return_type,
        dict_map,
        false,
        interface_name,
      )
    }
  })
  result.to_string()
}

///|
/// Generate union argument overloads for a constructor.
fn gen_constructor_union_arg_overloads(
  interface_name : String,
  ctor : ConstructorDef,
  suffix : String,
  union_arg_index : Int,
  union_members : Array[IdlType],
  enum_map : Array[(String, Array[String])],
  dict_map : Array[(String, DictionaryDef)],
  generated_methods : Array[String],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  let result = StringBuilder()
  let args_len = ctor.arguments.length()
  let is_throwing = ctor.throws.length() > 0
  let error_enum_name = if is_throwing {
    gen_error_enum_name("constructor", interface_prefix=interface_name)
  } else {
    ""
  }
  let ctor_return_type = if is_throwing {
    gen_throwing_return_type(interface_name, error_enum_name)
  } else {
    interface_name
  }
  union_members
  .iter()
  .each(fn(member_type) {
    let factory_name = get_factory_name(member_type)
    let moonbit_type = member_type.to_moonbit_simple()
    if factory_name == "" || moonbit_type == "JsValue" {
      return
    }
    let fn_name = if suffix == "" {
      "new_with_" + factory_name
    } else {
      suffix + "_with_" + factory_name
    }
    if generated_methods.contains(fn_name) {
      return
    }
    generated_methods.push(fn_name)
    let specialized_args = ctor.arguments.map(fn(arg) { arg })
    specialized_args[union_arg_index] = {
      ..ctor.arguments[union_arg_index],
      idl_type: member_type,
    }
    let needs_wrapper = has_dict_args(specialized_args, args_len, dict_map)
    result.write_string(
      if needs_wrapper {
        "extern \"js\" fn "
      } else {
        "pub extern \"js\" fn "
      },
    )
    result.write_string(interface_name)
    result.write_string("::")
    result.write_string(fn_name)
    if needs_wrapper {
      result.write_string("_ffi")
    }
    result.write_string("(")
    for i = 0; i < args_len; i = i + 1 {
      if i > 0 {
        result.write_string(", ")
      }
      let arg = ctor.arguments[i]
      result.write_string(arg.name |> to_snake_case |> escape_parameter)
      result.write_string(" : ")
      if needs_wrapper {
        result.write_string(gen_ffi_arg_type(specialized_args[i], dict_map))
      } else if i == union_arg_index {
        result.write_string(moonbit_type)
      } else {
        result.write_string(idl_type_to_moonbit(arg.idl_type))
      }
    }
    result.write_string(") -> ")
    result.write_string(ctor_return_type)
    result.write_string(" =\n")
    result.write_string("  #| (")
    for i = 0; i < args_len; i = i + 1 {
      if i > 0 {
        result.write_string(", ")
      }
      result.write_string(
        ctor.arguments[i].name |> to_snake_case |> escape_parameter,
      )
    }
    let js_call_args = StringBuilder()
    for i = 0; i < args_len; i = i + 1 {
      if i > 0 {
        js_call_args.write_string(", ")
      }
      if i == union_arg_index {
        js_call_args.write_string(
          ctor.arguments[i].name |> to_snake_case |> escape_parameter,
        )
      } else {
        js_call_args.write_string(
          gen_js_call_arg(
            ctor.arguments[i],
            enum_map,
            dict_map,
            primitive_typedef_map~,
          ),
        )
      }
    }
    let js_ctor_expr = "new " +
      interface_name +
      "(" +
      js_call_args.to_string() +
      ")"
    if is_throwing {
      result.write_string(") => ")
      result.write_string(
        wrap_throwing_js_expr(js_ctor_expr, Named(interface_name), ctor.throws),
      )
      result.write_string("\n\n")
    } else {
      result.write_string(") => ")
      result.write_string(js_ctor_expr)
      result.write_string("\n\n")
    }
    if needs_wrapper {
      gen_dict_wrapper(
        result,
        interface_name + "::" + fn_name,
        specialized_args,
        args_len,
        ctor_return_type,
        dict_map,
        false,
        interface_name,
      )
    }
  })
  result.to_string()
}
