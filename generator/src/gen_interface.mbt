// Interface binding generation logic

///|
/// Convert WebIDL type to MoonBit type (collecting inline unions)
pub fn idl_type_to_moonbit_collecting(
  idl_type : IdlType,
  collector : InlineUnionCollector,
) -> String {
  match idl_type {
    Primitive(name) => primitive_to_moonbit(name)
    String => "String"
    Void => "Unit"
    Nullable(inner) => {
      let inner_type = idl_type_to_moonbit_collecting(inner, collector)
      // Prevent double nullable
      if ends_with_question(inner_type) {
        inner_type
      } else {
        inner_type + "?"
      }
    }
    Named(name) => {
      // Convert lowercase type names to JsValue (invalid type names like object)
      let first_char = get_first_char(name)
      if first_char >= 'a' && first_char <= 'z' {
        "JsValue"
      } else {
        name
      }
    }
    Sequence(inner) =>
      // Treat nullable elements as JsValue (Rust web-sys style)
      match inner {
        Nullable(_) => "FixedArray[JsValue]"
        _ => {
          let inner_type = idl_type_to_moonbit_collecting(inner, collector)
          "FixedArray[" + inner_type + "]"
        }
      }
    Promise(inner) => {
      let inner_type = idl_type_to_moonbit_collecting(inner, collector)
      "Promise[" + inner_type + "]"
    }
    Union(members) => {
      // For single-member Union, use the type directly
      if members.length() == 1 {
        return idl_type_to_moonbit_collecting(members[0], collector)
      }
      // Generate inline Union name and add to collector (using function from ast.mbt)
      let union_name = generate_union_name(members)
      // Add only if not already added
      if !has_inline_union(collector, union_name) {
        collector.push((union_name, members))
      }
      union_name
    }
    Any => "JsValue"
  }
}

///|
/// Convert WebIDL type to MoonBit type (inline Union returns generated name)
pub fn idl_type_to_moonbit(idl_type : IdlType) -> String {
  match idl_type {
    Primitive(name) => primitive_to_moonbit(name)
    String => "String"
    Void => "Unit"
    Nullable(inner) => {
      let inner_type = idl_type_to_moonbit(inner)
      if ends_with_question(inner_type) {
        inner_type
      } else {
        inner_type + "?"
      }
    }
    Named(name) => {
      let first_char = get_first_char(name)
      if first_char >= 'a' && first_char <= 'z' {
        "JsValue"
      } else {
        name
      }
    }
    Sequence(inner) =>
      // Treat nullable elements as JsValue (Rust web-sys style)
      match inner {
        Nullable(_) => "FixedArray[JsValue]"
        _ => {
          let inner_type = idl_type_to_moonbit(inner)
          "FixedArray[" + inner_type + "]"
        }
      }
    Promise(inner) => {
      let inner_type = idl_type_to_moonbit(inner)
      "Promise[" + inner_type + "]"
    }
    Union(members) => {
      // For single-member Union, use the type directly
      if members.length() == 1 {
        return idl_type_to_moonbit(members[0])
      }
      // Generate and return inline Union name (using function from ast.mbt)
      generate_union_name(members)
    }
    Any => "JsValue"
  }
}

///|
/// Check if collector already has a Union with the specified name
fn has_inline_union(collector : InlineUnionCollector, name : String) -> Bool {
  collector.iter().any(fn(entry) { entry.0 == name })
}

///|
/// Generate extern js fn from Static Operation
pub fn gen_static_operation(
  interface_name : String,
  op : OperationDef,
  enum_map : Array[(String, Array[String])],
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  gen_static_operation_with_suffix(
    interface_name,
    op,
    enum_map,
    "",
    dict_map~,
    primitive_typedef_map~,
  )
}

///|
/// Generate extern js fn from Static Operation (with suffix)
pub fn gen_static_operation_with_suffix(
  interface_name : String,
  op : OperationDef,
  enum_map : Array[(String, Array[String])],
  suffix : String,
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  // Skip special methods without name
  if op.name.is_empty() {
    return ""
  }
  let base_fn_name = op.name |> to_snake_case |> escape_reserved
  let fn_name = if suffix == "" { base_fn_name } else { base_fn_name + suffix }
  let (return_type, is_throwing) = compute_throws_context(
    op.throws,
    op.name,
    interface_name,
    idl_type_to_moonbit(op.return_type),
    idl_return_type=op.return_type,
  )
  let args_len = op.arguments.length()
  let needs_wrapper = has_dict_args(op.arguments, args_len, dict_map)

  // Generate argument list (without self)
  let args = StringBuilder()
  for i = 0; i < args_len; i = i + 1 {
    let arg = op.arguments[i]
    if i > 0 {
      args.write_string(", ")
    }
    args.write_string(arg.name |> to_snake_case |> escape_reserved)
    args.write_string(" : ")
    if needs_wrapper {
      args.write_string(gen_ffi_arg_type(arg, dict_map))
    } else {
      args.write_string(idl_type_to_moonbit(arg.idl_type))
    }
  }

  // JS call arguments
  let js_call_args = StringBuilder()
  for i = 0; i < args_len; i = i + 1 {
    if i > 0 {
      js_call_args.write_string(", ")
    }
    js_call_args.write_string(
      gen_js_call_arg(
        op.arguments[i],
        enum_map,
        dict_map,
        primitive_typedef_map~,
      ),
    )
  }

  // JS side argument list (variable names only)
  let js_params = StringBuilder()
  for i = 0; i < args_len; i = i + 1 {
    let arg = op.arguments[i]
    if i > 0 {
      js_params.write_string(", ")
    }
    js_params.write_string(arg.name |> to_snake_case |> escape_reserved)
  }
  let result = StringBuilder()
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
  result.write_string("(")
  result.write_string(args.to_string())
  result.write_string(") -> ")
  result.write_string(return_type)
  result.write_string(" =\n")
  result.write_string("  #| (")
  result.write_string(js_params.to_string())
  let js_expr = interface_name +
    "." +
    op.name +
    "(" +
    js_call_args.to_string() +
    ")"
  let js_expr = match_promise_dict(js_expr, op.return_type, dict_map, enum_map)
  let wrapped = wrap_return_or_throwing(
    js_expr,
    op.return_type,
    is_throwing,
    op.throws,
  )
  result.write_string(") => ")
  result.write_string(wrapped)
  result.write_string("\n")
  if needs_wrapper {
    let full_fn_name = interface_name + "::" + fn_name
    gen_dict_wrapper(
      result,
      full_fn_name,
      op.arguments,
      args_len,
      return_type,
      dict_map,
      false,
      interface_name,
    )
  }
  result.to_string()
}

///|
/// Generate Static Operation with specified argument count
/// fn_suffix: Suffix to add to function name (empty string for none)
pub fn gen_static_operation_with_arg_count(
  interface_name : String,
  op : OperationDef,
  enum_map : Array[(String, Array[String])],
  arg_count : Int,
  fn_suffix : String,
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  if op.name.is_empty() {
    return ""
  }
  let base_fn_name = op.name |> to_snake_case |> escape_reserved
  let fn_name = if fn_suffix == "" {
    base_fn_name
  } else {
    base_fn_name + fn_suffix
  }
  let (return_type, is_throwing) = compute_throws_context(
    op.throws,
    op.name,
    interface_name,
    idl_type_to_moonbit(op.return_type),
    idl_return_type=op.return_type,
  )
  let needs_wrapper = has_dict_args(op.arguments, arg_count, dict_map)

  // Generate argument list (without self, up to arg_count)
  let args = StringBuilder()
  for i = 0; i < arg_count; i = i + 1 {
    let arg = op.arguments[i]
    if i > 0 {
      args.write_string(", ")
    }
    args.write_string(arg.name |> to_snake_case |> escape_reserved)
    args.write_string(" : ")
    if needs_wrapper {
      args.write_string(gen_ffi_arg_type(arg, dict_map))
    } else {
      args.write_string(idl_type_to_moonbit(arg.idl_type))
    }
  }

  // JS call arguments
  let js_call_args = StringBuilder()
  for i = 0; i < arg_count; i = i + 1 {
    if i > 0 {
      js_call_args.write_string(", ")
    }
    js_call_args.write_string(
      gen_js_call_arg(
        op.arguments[i],
        enum_map,
        dict_map,
        primitive_typedef_map~,
      ),
    )
  }

  // JS side argument list (variable names only)
  let js_params = StringBuilder()
  for i = 0; i < arg_count; i = i + 1 {
    let arg = op.arguments[i]
    if i > 0 {
      js_params.write_string(", ")
    }
    js_params.write_string(arg.name |> to_snake_case |> escape_reserved)
  }
  let result = StringBuilder()
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
  result.write_string("(")
  result.write_string(args.to_string())
  result.write_string(") -> ")
  result.write_string(return_type)
  result.write_string(" =\n")
  result.write_string("  #| (")
  result.write_string(js_params.to_string())
  let js_expr = interface_name +
    "." +
    op.name +
    "(" +
    js_call_args.to_string() +
    ")"
  let js_expr = match_promise_dict(js_expr, op.return_type, dict_map, enum_map)
  let wrapped = wrap_return_or_throwing(
    js_expr,
    op.return_type,
    is_throwing,
    op.throws,
  )
  result.write_string(") => ")
  result.write_string(wrapped)
  result.write_string("\n")
  if needs_wrapper {
    let full_fn_name = interface_name + "::" + fn_name
    gen_dict_wrapper(
      result,
      full_fn_name,
      op.arguments,
      arg_count,
      return_type,
      dict_map,
      false,
      interface_name,
    )
  }
  result.to_string()
}

///|
/// Generate extern js fn from Special operation (getter/setter/deleter)
pub fn gen_special_operation(
  interface_name : String,
  op : OperationDef,
  special_type : String,
) -> String {
  match special_type {
    "getter" => {
      // There are two types of getters:
      // 1. Index-based: getter T? item(unsigned long index)
      // 2. Name-based: getter T? namedItem(DOMString name)
      let args_len = op.arguments.length()
      if args_len != 1 {
        return "" // getter should have 1 argument
      }
      let arg = op.arguments[0]
      let arg_type = idl_type_to_moonbit(arg.idl_type)
      let (return_type, is_throwing) = compute_throws_context(
        op.throws,
        op.name,
        interface_name,
        idl_type_to_moonbit(op.return_type),
        idl_return_type=op.return_type,
      )

      // Determine if index or named based on argument type
      let is_index_getter = match arg.idl_type {
        Primitive(_) => true // unsigned long, etc.
        _ => false
      }
      let fn_name = if is_index_getter { "get" } else { "get_named" }
      let arg_name = arg.name |> to_snake_case |> escape_reserved
      let result = StringBuilder()
      if is_index_getter {
        result.write_string("#alias(\"_[_]\")\n")
      }
      result.write_string("pub extern \"js\" fn ")
      result.write_string(interface_name)
      result.write_string("::")
      result.write_string(fn_name)
      result.write_string("(self : ")
      result.write_string(interface_name)
      result.write_string(", ")
      result.write_string(arg_name)
      result.write_string(" : ")
      result.write_string(arg_type)
      result.write_string(") -> ")
      result.write_string(return_type)
      result.write_string(" =\n")
      result.write_string("  #| (self, ")
      result.write_string(arg_name)
      let js_expr = "self[" + arg_name + "]"
      let wrapped = wrap_return_or_throwing(
        js_expr,
        op.return_type,
        is_throwing,
        op.throws,
      )
      result.write_string(") => ")
      result.write_string(wrapped)
      result.write_string("\n")
      result.to_string()
    }
    "setter" => {
      // setter has the form: setter undefined (unsigned long index, T value)
      let args_len = op.arguments.length()
      if args_len != 2 {
        return "" // setter should have 2 arguments
      }
      let index_arg = op.arguments[0]
      let value_arg = op.arguments[1]
      let index_type = idl_type_to_moonbit(index_arg.idl_type)
      let value_type = idl_type_to_moonbit(value_arg.idl_type)
      let index_name = index_arg.name |> to_snake_case |> escape_reserved
      let value_name = value_arg.name |> to_snake_case |> escape_reserved
      let is_index_setter = index_arg.idl_type is Primitive(_)
      let is_throwing = op.throws.length() > 0
      let error_enum_name = if is_throwing {
        gen_error_enum_name(op.name, interface_prefix=interface_name)
      } else {
        ""
      }
      let return_type = if is_throwing {
        gen_throwing_return_type("Unit", error_enum_name)
      } else {
        "Unit"
      }
      let result = StringBuilder()
      if is_index_setter {
        result.write_string("#alias(\"_[_]=_\")\n")
      }
      result.write_string("pub extern \"js\" fn ")
      result.write_string(interface_name)
      result.write_string("::set(self : ")
      result.write_string(interface_name)
      result.write_string(", ")
      result.write_string(index_name)
      result.write_string(" : ")
      result.write_string(index_type)
      result.write_string(", ")
      result.write_string(value_name)
      result.write_string(" : ")
      result.write_string(value_type)
      result.write_string(") -> ")
      result.write_string(return_type)
      result.write_string(" =\n")
      let assign_expr = "self[" + index_name + "] = " + value_name
      result.write_string("  #| (self, ")
      result.write_string(index_name)
      result.write_string(", ")
      result.write_string(value_name)
      if is_throwing {
        result.write_string(") => ")
        result.write_string(wrap_throwing_js_expr(assign_expr, Void, op.throws))
        result.write_string("\n")
      } else {
        result.write_string(") => { ")
        result.write_string(assign_expr)
        result.write_string(" }\n")
      }
      result.to_string()
    }
    "deleter" => {
      // deleter has the form: deleter undefined (T key)
      let args_len = op.arguments.length()
      if args_len != 1 {
        return "" // deleter should have 1 argument
      }
      let arg = op.arguments[0]
      let arg_type = idl_type_to_moonbit(arg.idl_type)
      let arg_name = arg.name |> to_snake_case |> escape_reserved
      let is_throwing = op.throws.length() > 0
      let error_enum_name = if is_throwing {
        gen_error_enum_name(op.name, interface_prefix=interface_name)
      } else {
        ""
      }
      let return_type = if is_throwing {
        gen_throwing_return_type("Unit", error_enum_name)
      } else {
        "Unit"
      }
      let result = StringBuilder()
      result.write_string("pub extern \"js\" fn ")
      result.write_string(interface_name)
      result.write_string("::delete(self : ")
      result.write_string(interface_name)
      result.write_string(", ")
      result.write_string(arg_name)
      result.write_string(" : ")
      result.write_string(arg_type)
      result.write_string(") -> ")
      result.write_string(return_type)
      result.write_string(" =\n")
      let delete_expr = "delete self[" + arg_name + "]"
      result.write_string("  #| (self, ")
      result.write_string(arg_name)
      if is_throwing {
        result.write_string(") => ")
        result.write_string(wrap_throwing_js_expr(delete_expr, Void, op.throws))
        result.write_string("\n")
      } else {
        result.write_string(") => { ")
        result.write_string(delete_expr)
        result.write_string(" }\n")
      }
      result.to_string()
    }
    _ => ""
  }
}

///|
/// Generate extern js fn from Operation
pub fn gen_operation(
  interface_name : String,
  op : OperationDef,
  enum_map : Array[(String, Array[String])],
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  // Skip regular methods without name
  // (special operations are handled in gen_interface_binding)
  if op.name.is_empty() {
    return ""
  }
  let fn_name = op.name |> to_snake_case |> escape_reserved
  let (return_type, is_throwing) = compute_throws_context(
    op.throws,
    op.name,
    interface_name,
    idl_type_to_moonbit(op.return_type),
    idl_return_type=op.return_type,
  )
  let args_len = op.arguments.length()
  let needs_wrapper = has_dict_args(op.arguments, args_len, dict_map)

  // Generate argument list
  let args = StringBuilder()
  args.write_string("self : ")
  args.write_string(interface_name)
  for i = 0; i < args_len; i = i + 1 {
    let arg = op.arguments[i]
    args.write_string(", ")
    args.write_string(arg.name |> to_snake_case |> escape_reserved)
    args.write_string(" : ")
    if needs_wrapper {
      args.write_string(gen_ffi_arg_type(arg, dict_map))
    } else {
      args.write_string(idl_type_to_moonbit(arg.idl_type))
    }
  }

  // Generate JS call code
  let js_args = StringBuilder()
  js_args.write_string("self")
  for i = 0; i < args_len; i = i + 1 {
    let arg = op.arguments[i]
    js_args.write_string(", ")
    js_args.write_string(arg.name |> to_snake_case |> escape_reserved)
  }

  // JS call arguments
  let js_call_args = StringBuilder()
  for i = 0; i < args_len; i = i + 1 {
    if i > 0 {
      js_call_args.write_string(", ")
    }
    js_call_args.write_string(
      gen_js_call_arg(
        op.arguments[i],
        enum_map,
        dict_map,
        primitive_typedef_map~,
      ),
    )
  }
  let result = StringBuilder()
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
  result.write_string("(")
  result.write_string(args.to_string())
  result.write_string(") -> ")
  result.write_string(return_type)
  result.write_string(" =\n")
  result.write_string("  #| (")
  result.write_string(js_args.to_string())
  let js_expr = "self." + op.name + "(" + js_call_args.to_string() + ")"
  let js_expr = match_promise_dict(js_expr, op.return_type, dict_map, enum_map)
  let wrapped = wrap_return_or_throwing(
    js_expr,
    op.return_type,
    is_throwing,
    op.throws,
  )
  result.write_string(") => ")
  result.write_string(wrapped)
  result.write_string("\n")
  if needs_wrapper {
    let full_fn_name = interface_name + "::" + fn_name
    gen_dict_wrapper(
      result,
      full_fn_name,
      op.arguments,
      args_len,
      return_type,
      dict_map,
      true,
      interface_name,
    )
  }
  result.to_string()
}

///|
/// Group operations by name and sort by argument count
/// Returns Array[(String, Array[OperationDef])] instead of Map type

///|
/// Add Operation to group (add to existing group or create new one)
fn add_to_operation_group(
  groups : Array[(String, Array[OperationDef])],
  op : OperationDef,
) -> Unit {
  for i = 0; i < groups.length(); i = i + 1 {
    let (name, ops) = groups[i]
    if name == op.name {
      ops.push(op)
      groups[i] = (name, ops)
      return
    }
  }
  // Create new group
  groups.push((op.name, [op]))
}

///|
pub fn group_operations_by_name(
  members : Array[InterfaceMember],
) -> Array[(String, Array[OperationDef])] {
  let groups : Array[(String, Array[OperationDef])] = []

  // Extract and group only Operations
  members
  .iter()
  .each(fn(mem) {
    match mem {
      Operation(op) => {
        // Skip operations with empty name
        if op.name.is_empty() {
          return
        }

        // Find existing group or create new one
        add_to_operation_group(groups, op)
      }
      _ => ()
    }
  })

  // Sort each group by number of required arguments (ascending)
  // For operations with optional arguments, the position of first optional argument is the required count
  for i = 0; i < groups.length(); i = i + 1 {
    let (name, ops) = groups[i]
    // Bubble sort (ascending by required argument count)
    for j = 0; j < ops.length(); j = j + 1 {
      for k = j + 1; k < ops.length(); k = k + 1 {
        // Calculate required argument count
        let first_optional_j = find_first_optional_arg_index(ops[j].arguments)
        let required_args_j = if first_optional_j < 0 {
          ops[j].arguments.length()
        } else {
          first_optional_j
        }
        let first_optional_k = find_first_optional_arg_index(ops[k].arguments)
        let required_args_k = if first_optional_k < 0 {
          ops[k].arguments.length()
        } else {
          first_optional_k
        }
        if required_args_j > required_args_k {
          // swap
          let temp = ops[j]
          ops[j] = ops[k]
          ops[k] = temp
        }
      }
    }
    groups[i] = (name, ops)
  }
  groups
}

///|
/// Generate overload suffix (difference-based)
///
/// Following Rust web-sys naming conventions, generates "_with_xxx_and_yyy" style suffix from difference arguments.
/// Note: For overloads with same argument count but different types, use gen_overload_suffix_from_all instead.
///
/// # Arguments
/// - `base_args`: Argument array of minimum signature
/// - `full_args`: Argument array of current overload
///
/// # Returns
/// - "_with_xxx_and_yyy" style suffix (empty string for base version)
///
/// # Example
/// ```moonbit nocheck
/// // base_args: [image, dx, dy], full_args: [image, dx, dy]
/// // → ""
///
/// // base_args: [image, dx, dy], full_args: [image, dx, dy, dw, dh]
/// // → "_with_dw_and_dh"
///
/// // base_args: [data, dx, dy], full_args: [data, dx, dy, dirtyX, dirtyY, dirtyWidth, dirtyHeight]
/// // → "_with_dirty_x_and_dirty_y_and_dirty_width_and_dirty_height"
/// ```
pub fn gen_overload_suffix(
  base_args : Array[Argument],
  full_args : Array[Argument],
) -> String {
  let base_len = base_args.length()
  let full_len = full_args.length()

  // Return empty string if no difference
  if base_len == full_len {
    return ""
  }

  // Collect snake_case names of difference arguments
  let result = StringBuilder()
  result.write_string("_with")
  for i = base_len; i < full_len; i = i + 1 {
    let arg_name = to_snake_case(full_args[i].name)
    result.write_string("_")
    result.write_string(arg_name)
    if i < full_len - 1 {
      result.write_string("_and")
    }
  }
  result.to_string()
}

///|
/// Convert argument type name to snake_case
fn arg_type_to_snake_case(arg_type : IdlType) -> String {
  match arg_type {
    Named(name) => to_snake_case(name)
    String => "string"
    Primitive(name) => to_snake_case(name)
    Nullable(inner) => arg_type_to_snake_case(inner)
    Sequence(_) => "array"
    Promise(_) => "promise"
    Union(_) => "union"
    Any => "any"
    Void => "void"
  }
}

///|
/// Generate overload suffix from all arguments
///
/// Used when there are overloads with same argument count but different types.
/// Generates "_with_xxx_and_yyy" style suffix from all argument names.
/// Includes type name when argument names are the same.
///
/// # Arguments
/// - `args`: Argument array
///
/// # Returns
/// - "_with_xxx_and_yyy" style suffix (empty string if no arguments)
///
/// # Example
/// ```moonbit nocheck
/// // args: [name: String]
/// // → "_with_name"
///
/// // args: [data: Blob]
/// // -> "_with_data_blob"  (includes type name)
///
/// // args: [name: String, value: Int]
/// // → "_with_name_and_value"
/// ```
pub fn gen_overload_suffix_from_all(args : Array[Argument]) -> String {
  let len = args.length()

  // Return empty string if no arguments
  if len == 0 {
    return ""
  }

  // Collect snake_case names of all arguments
  let parts = args
    .iter()
    .map(fn(arg) {
      let arg_name = to_snake_case(arg.name)
      // Also add type name (for cases where argument names alone are not distinguishable)
      // Only add for simple types (Named)
      match arg.idl_type {
        Named(_) => arg_name + "_" + arg_type_to_snake_case(arg.idl_type)
        _ => arg_name
      }
    })
    .collect()
  "_with_" +
  parts
  .iter()
  .fold(init="", fn(acc, part) {
    if acc == "" {
      part
    } else {
      acc + "_and_" + part
    }
  })
}

///|
/// Get index of first optional argument (-1 if none)
fn find_first_optional_arg_index(args : Array[Argument]) -> Int {
  args
  .iter()
  .fold(init=(-1, 0), fn(state, arg) {
    let (found, i) = state
    if found >= 0 {
      state
    } else if arg.optional {
      (i, i + 1)
    } else {
      (-1, i + 1)
    }
  }).0
}

///|
/// Generate Operation with specified argument count
/// fn_suffix: Suffix to add to function name (empty string for none)
pub fn gen_operation_with_arg_count(
  interface_name : String,
  op : OperationDef,
  enum_map : Array[(String, Array[String])],
  arg_count : Int,
  fn_suffix : String,
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  if op.name.is_empty() {
    return ""
  }
  let base_fn_name = op.name |> to_snake_case |> escape_reserved
  let fn_name = if fn_suffix == "" {
    base_fn_name
  } else {
    base_fn_name + "_" + fn_suffix
  }
  let (return_type, is_throwing) = compute_throws_context(
    op.throws,
    op.name,
    interface_name,
    idl_type_to_moonbit(op.return_type),
    idl_return_type=op.return_type,
  )
  let needs_wrapper = has_dict_args(op.arguments, arg_count, dict_map)

  // Generate argument list (up to arg_count)
  let args = StringBuilder()
  args.write_string("self : ")
  args.write_string(interface_name)
  for i = 0; i < arg_count; i = i + 1 {
    let arg = op.arguments[i]
    args.write_string(", ")
    args.write_string(arg.name |> to_snake_case |> escape_reserved)
    args.write_string(" : ")
    if needs_wrapper {
      args.write_string(gen_ffi_arg_type(arg, dict_map))
    } else {
      args.write_string(idl_type_to_moonbit(arg.idl_type))
    }
  }

  // Generate JS call code
  let js_args = StringBuilder()
  js_args.write_string("self")
  for i = 0; i < arg_count; i = i + 1 {
    let arg = op.arguments[i]
    js_args.write_string(", ")
    js_args.write_string(arg.name |> to_snake_case |> escape_reserved)
  }

  // JS call arguments
  let js_call_args = StringBuilder()
  for i = 0; i < arg_count; i = i + 1 {
    if i > 0 {
      js_call_args.write_string(", ")
    }
    js_call_args.write_string(
      gen_js_call_arg(
        op.arguments[i],
        enum_map,
        dict_map,
        primitive_typedef_map~,
      ),
    )
  }
  let result = StringBuilder()
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
  result.write_string("(")
  result.write_string(args.to_string())
  result.write_string(") -> ")
  result.write_string(return_type)
  result.write_string(" =\n")
  result.write_string("  #| (")
  result.write_string(js_args.to_string())
  let js_expr = "self." + op.name + "(" + js_call_args.to_string() + ")"
  let js_expr = match_promise_dict(js_expr, op.return_type, dict_map, enum_map)
  let wrapped = wrap_return_or_throwing(
    js_expr,
    op.return_type,
    is_throwing,
    op.throws,
  )
  result.write_string(") => ")
  result.write_string(wrapped)
  result.write_string("\n")
  if needs_wrapper {
    let full_fn_name = interface_name + "::" + fn_name
    gen_dict_wrapper(
      result,
      full_fn_name,
      op.arguments,
      arg_count,
      return_type,
      dict_map,
      true,
      interface_name,
    )
  }
  result.to_string()
}

///|
/// Generate all variants of Operation (with optional argument support)
/// Returns: (generated code, list of function names to register)
pub fn gen_operation_variants(
  interface_name : String,
  op : OperationDef,
  enum_map : Array[(String, Array[String])],
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> (String, Array[String]) {
  let result = StringBuilder()
  let fn_names : Array[String] = []
  if op.name.is_empty() {
    return (result.to_string(), fn_names)
  }
  let first_optional = find_first_optional_arg_index(op.arguments)
  let total_args = op.arguments.length()

  // Generate normally if no optional arguments
  if first_optional < 0 {
    let code = gen_operation(
      interface_name,
      op,
      enum_map,
      dict_map~,
      primitive_typedef_map~,
    )
    result.write_string(code)
    fn_names.push(op.name |> to_snake_case |> escape_reserved)
    return (result.to_string(), fn_names)
  }

  // Generate base version with required arguments only
  let base_fn_name = op.name |> to_snake_case |> escape_reserved
  let base_code = gen_operation_with_arg_count(
    interface_name,
    op,
    enum_map,
    first_optional,
    "",
    dict_map~,
    primitive_typedef_map~,
  )
  result.write_string(base_code)
  result.write_string("\n")
  fn_names.push(base_fn_name)

  // Generate full argument version (with suffix)
  // Use last optional argument name as suffix
  let last_optional_arg = op.arguments[total_args - 1]
  let suffix = "with_" + to_snake_case(last_optional_arg.name)
  let full_code = gen_operation_with_arg_count(
    interface_name,
    op,
    enum_map,
    total_args,
    suffix,
    dict_map~,
    primitive_typedef_map~,
  )
  result.write_string(full_code)
  fn_names.push(base_fn_name + "_" + suffix)
  (result.to_string(), fn_names)
}

///|
/// Generate all variants of overloaded regular operations
/// Minimum argument version in group uses base name, others use suffix
pub fn gen_overloaded_operations(
  interface_name : String,
  ops : Array[OperationDef],
  enum_map : Array[(String, Array[String])],
  generated_methods : Array[String],
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  let result = StringBuilder()

  // Generate nothing if empty
  if ops.length() == 0 {
    return ""
  }

  // For single operation, use existing gen_operation_variants
  if ops.length() == 1 {
    let (code, fn_names) = gen_operation_variants(
      interface_name,
      ops[0],
      enum_map,
      dict_map~,
      primitive_typedef_map~,
    )
    fn_names.iter().each(fn(name) { generated_methods.push(name) })
    return code
  }

  // For multiple overloads
  // Generate all variants considering optional arguments in each overload

  for i = 0; i < ops.length(); i = i + 1 {
    let op = ops[i]
    let first_optional = find_first_optional_arg_index(op.arguments)
    let total_args = op.arguments.length()
    if first_optional < 0 {
      // If no optional arguments
      if i == 0 {
        // First overload (minimum arguments) uses base name
        let base_fn_name = op.name |> to_snake_case |> escape_reserved
        generated_methods.push(base_fn_name)
        result.write_string(
          gen_operation(
            interface_name,
            op,
            enum_map,
            dict_map~,
            primitive_typedef_map~,
          ),
        )
        result.write_string("\n")
      } else {
        // Others generate suffix from all arguments (distinguishes even same argument count)
        let suffix = gen_overload_suffix_from_all(op.arguments)
        let fn_name = (op.name |> to_snake_case |> escape_reserved) + suffix
        generated_methods.push(fn_name)
        result.write_string(
          gen_operation_with_arg_count(
            interface_name,
            op,
            enum_map,
            total_args,
            remove_leading_char(suffix), // Remove leading underscore
            dict_map~,
            primitive_typedef_map~,
          ),
        )
        result.write_string("\n")
      }
    } else {
      // For optional arguments, generate both required part and full argument version
      let base_fn_name = op.name |> to_snake_case |> escape_reserved

      // Create array with required arguments only
      let required_args : Array[Argument] = []
      for j = 0; j < first_optional; j = j + 1 {
        required_args.push(op.arguments[j])
      }

      // Required arguments version
      let required_suffix = if i == 0 {
        ""
      } else {
        // For second and later overloads, generate suffix from all arguments based on required part
        gen_overload_suffix_from_all(required_args)
      }
      let required_fn_name = base_fn_name + required_suffix
      generated_methods.push(required_fn_name)
      result.write_string(
        gen_operation_with_arg_count(
          interface_name,
          op,
          enum_map,
          first_optional,
          if required_suffix == "" {
            ""
          } else {
            remove_leading_char(required_suffix)
          },
          dict_map~,
          primitive_typedef_map~,
        ),
      )
      result.write_string("\n")

      // Full arguments version (generate suffix from all arguments)
      let full_suffix = if i == 0 {
        // For first overload, use only last optional argument
        let last_optional_arg = op.arguments[total_args - 1]
        "_with_" + to_snake_case(last_optional_arg.name)
      } else {
        // For second and later, generate suffix from all arguments
        gen_overload_suffix_from_all(op.arguments)
      }
      let full_fn_name = base_fn_name + full_suffix
      generated_methods.push(full_fn_name)
      result.write_string(
        gen_operation_with_arg_count(
          interface_name,
          op,
          enum_map,
          total_args,
          remove_leading_char(full_suffix),
          dict_map~,
          primitive_typedef_map~,
        ),
      )
      result.write_string("\n")
    }
  }
  result.to_string()
}

///|
/// Generate all variants of overloaded static operations
pub fn gen_overloaded_static_operations(
  interface_name : String,
  ops : Array[OperationDef],
  enum_map : Array[(String, Array[String])],
  generated_methods : Array[String],
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  let result = StringBuilder()

  // Generate nothing if empty
  if ops.length() == 0 {
    return ""
  }

  // For single static operation, handle optional arguments
  if ops.length() == 1 {
    let op = ops[0]
    let first_optional = find_first_optional_arg_index(op.arguments)
    let total_args = op.arguments.length()
    if first_optional < 0 {
      // No optional args - generate normally
      let base_fn_name = op.name |> to_snake_case |> escape_reserved
      generated_methods.push(base_fn_name)
      result.write_string(
        gen_static_operation(
          interface_name,
          op,
          enum_map,
          dict_map~,
          primitive_typedef_map~,
        ),
      )
      return result.to_string()
    }
    // Has optional args - generate base + full versions
    let base_fn_name = op.name |> to_snake_case |> escape_reserved
    // Base version (required args only)
    generated_methods.push(base_fn_name)
    result.write_string(
      gen_static_operation_with_arg_count(
        interface_name,
        op,
        enum_map,
        first_optional,
        "",
        dict_map~,
        primitive_typedef_map~,
      ),
    )
    result.write_string("\n")
    // Full version (all args)
    let last_optional_arg = op.arguments[total_args - 1]
    let suffix = "_with_" + to_snake_case(last_optional_arg.name)
    let full_fn_name = base_fn_name + suffix
    generated_methods.push(full_fn_name)
    result.write_string(
      gen_static_operation_with_arg_count(
        interface_name,
        op,
        enum_map,
        total_args,
        suffix,
        dict_map~,
        primitive_typedef_map~,
      ),
    )
    return result.to_string()
  }

  // For multiple overloads
  for i = 0; i < ops.length(); i = i + 1 {
    let op = ops[i]
    let first_optional = find_first_optional_arg_index(op.arguments)
    let total_args = op.arguments.length()
    if first_optional < 0 {
      // No optional arguments
      if i == 0 {
        // First overload uses base name
        let base_fn_name = op.name |> to_snake_case |> escape_reserved
        generated_methods.push(base_fn_name)
        result.write_string(
          gen_static_operation(
            interface_name,
            op,
            enum_map,
            dict_map~,
            primitive_typedef_map~,
          ),
        )
        result.write_string("\n")
      } else {
        // Others generate suffix from all arguments
        let suffix = gen_overload_suffix_from_all(op.arguments)
        let fn_name = (op.name |> to_snake_case |> escape_reserved) + suffix
        generated_methods.push(fn_name)
        result.write_string(
          gen_static_operation_with_suffix(
            interface_name,
            op,
            enum_map,
            suffix,
            dict_map~,
            primitive_typedef_map~,
          ),
        )
        result.write_string("\n")
      }
    } else {
      // Has optional arguments - generate both required and full versions
      let base_fn_name = op.name |> to_snake_case |> escape_reserved
      // Create array with required arguments only
      let required_args : Array[Argument] = []
      for j = 0; j < first_optional; j = j + 1 {
        required_args.push(op.arguments[j])
      }
      // Required arguments version
      let required_suffix = if i == 0 {
        ""
      } else {
        gen_overload_suffix_from_all(required_args)
      }
      let required_fn_name = base_fn_name + required_suffix
      generated_methods.push(required_fn_name)
      result.write_string(
        gen_static_operation_with_arg_count(
          interface_name,
          op,
          enum_map,
          first_optional,
          required_suffix,
          dict_map~,
          primitive_typedef_map~,
        ),
      )
      result.write_string("\n")
      // Full arguments version
      let full_suffix = if i == 0 {
        let last_optional_arg = op.arguments[total_args - 1]
        "_with_" + to_snake_case(last_optional_arg.name)
      } else {
        gen_overload_suffix_from_all(op.arguments)
      }
      let full_fn_name = base_fn_name + full_suffix
      generated_methods.push(full_fn_name)
      result.write_string(
        gen_static_operation_with_arg_count(
          interface_name,
          op,
          enum_map,
          total_args,
          full_suffix,
          dict_map~,
          primitive_typedef_map~,
        ),
      )
      result.write_string("\n")
    }
  }
  result.to_string()
}

///|
/// Generate Attribute getter
pub fn gen_attribute_getter(
  interface_name : String,
  attr : AttributeDef,
  enum_map? : Array[(String, Array[String])] = [],
) -> String {
  let fn_name = "get_" + to_snake_case(attr.name)
  let return_type = idl_type_to_moonbit(attr.idl_type)
  let result = StringBuilder()
  result.write_string("pub extern \"js\" fn ")
  result.write_string(interface_name)
  result.write_string("::")
  result.write_string(fn_name)
  result.write_string("(self : ")
  result.write_string(interface_name)
  result.write_string(") -> ")
  result.write_string(return_type)
  result.write_string(" =\n")
  // Enum getter: JS returns string, MoonBit expects integer index → indexOf
  let js_expr = match attr.idl_type {
    Named(type_name) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) => gen_enum_index_of_expr(values, "self." + attr.name)
        None => wrap_return_expr("self." + attr.name, attr.idl_type)
      }
    Nullable(Named(type_name)) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) =>
          // Nullable enum getter: null → undefined, string → indexOf
          "(() => { const v = self." +
          attr.name +
          "; return v == null ? undefined : " +
          gen_enum_index_of_expr(values, "v") +
          "; })()"
        None => wrap_return_expr("self." + attr.name, attr.idl_type)
      }
    _ => wrap_return_expr("self." + attr.name, attr.idl_type)
  }
  result.write_string("  #| (self) => ")
  result.write_string(js_expr)
  result.write_string("\n")
  result.to_string()
}

///|
/// Generate Attribute setter
pub fn gen_attribute_setter(
  interface_name : String,
  attr : AttributeDef,
  enum_map? : Array[(String, Array[String])] = [],
) -> String {
  if attr.is_readonly {
    return "" // readonly has no setter
  }
  let fn_name = "set_" + to_snake_case(attr.name)
  let value_type = idl_type_to_moonbit(attr.idl_type)
  let is_throwing = attr.setter_throws.length() > 0
  let error_enum_name = if is_throwing {
    gen_error_enum_name("set_" + attr.name, interface_prefix=interface_name)
  } else {
    ""
  }
  let return_type_str = if is_throwing {
    gen_throwing_return_type("Unit", error_enum_name)
  } else {
    "Unit"
  }
  let result = StringBuilder()
  result.write_string("pub extern \"js\" fn ")
  result.write_string(interface_name)
  result.write_string("::")
  result.write_string(fn_name)
  result.write_string("(self : ")
  result.write_string(interface_name)
  result.write_string(", value : ")
  result.write_string(value_type)
  result.write_string(") -> ")
  result.write_string(return_type_str)
  result.write_string(" =\n")
  // Compute the JS value expression for setter
  let value_expr = match attr.idl_type {
    Named(type_name) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) => gen_enum_array_lookup(values, "value")
        None => "value"
      }
    Nullable(Named(_)) => unwrap_option_named_param("value")
    _ => "value"
  }
  let assign_expr = "self." + attr.name + " = " + value_expr
  if is_throwing {
    result.write_string("  #| (self, value) => ")
    result.write_string(
      wrap_throwing_js_expr(assign_expr, Void, attr.setter_throws),
    )
    result.write_string("\n")
  } else {
    result.write_string("  #| (self, value) => { ")
    result.write_string(assign_expr)
    result.write_string(" }\n")
  }
  result.to_string()
}

///|
/// Generate pub let declaration from Const constant
/// Example: const GLenum ARRAY_BUFFER = 0x8892 -> pub let webgl_rendering_context_array_buffer : Int = 0x8892
pub fn gen_const(interface_name : String, const_def : ConstDef) -> String {
  let result = StringBuilder()

  // Generate constant name (interface_name_constant_name)
  // Example: WebGLRenderingContext + ARRAY_BUFFER -> webgl_rendering_context_array_buffer
  let interface_prefix = to_snake_case(interface_name)
  let const_suffix = const_name_to_snake_case(const_def.name)
  let const_name = interface_prefix + "_" + const_suffix

  // Convert type to MoonBit type (GLenum etc. map to Int)
  let moonbit_type = const_type_to_moonbit(const_def.idl_type)

  // Convert value (hex as-is, strings with quotes)
  let value = format_const_value(const_def.value, moonbit_type)

  // Add comment with original interface name and constant name
  result.write_string("// ")
  result.write_string(interface_name)
  result.write_string(".")
  result.write_string(const_def.name)
  result.write_string("\n")

  // Generate pub let declaration
  result.write_string("pub let ")
  result.write_string(const_name)
  result.write_string(" : ")
  result.write_string(moonbit_type)
  result.write_string(" = ")
  result.write_string(value)
  result.write_string("\n")
  result.to_string()
}

///|
/// Convert constant name to snake_case (UPPER_CASE -> lower_case)
/// WebGL constants are already underscore-separated, so just lowercase them
fn const_name_to_snake_case(name : String) -> String {
  String::from_array(
    name
    .to_array()
    .map(fn(c) {
      if c >= 'A' && c <= 'Z' {
        // Convert uppercase to lowercase (ASCII: 'A'=65, 'a'=97, diff=32)
        (c.to_int() + 32).unsafe_to_char()
      } else {
        c
      }
    }),
  )
}

///|
/// Type conversion for Const (GLenum, GLint, etc. are all Int)
fn const_type_to_moonbit(idl_type : IdlType) -> String {
  match idl_type {
    Primitive(name) => primitive_to_moonbit(name)
    String => "String"
    Named(_) => "Int" // GLenum, GLint, etc. WebGL types are all Int
    _ => "Int"
  }
}

///|
/// Format constant value
fn format_const_value(value : String, moonbit_type : String) -> String {
  // Check for empty string
  if value.is_empty() {
    return "0"
  }

  // Add quotes for string type
  if moonbit_type == "String" {
    let result = StringBuilder()
    result.write_string("\"")
    result.write_string(value)
    result.write_string("\"")
    return result.to_string()
  }

  // For Bool type
  if moonbit_type == "Bool" {
    if value == "true" || value == "1" {
      return "true"
    } else {
      return "false"
    }
  }

  // For hex, convert to MoonBit format (0x -> 0x)
  // JS hex can be used as-is in MoonBit
  value
}

///|
/// Generate extern js fn from Constructor (with suffix for overloads)
pub fn gen_constructor_with_suffix(
  interface_name : String,
  ctor : ConstructorDef,
  enum_map : Array[(String, Array[String])],
  suffix : String,
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  let (return_type, is_throwing) = compute_throws_context(
    ctor.throws,
    "constructor",
    interface_name,
    interface_name,
  )
  let args_len = ctor.arguments.length()
  let needs_wrapper = has_dict_args(ctor.arguments, args_len, dict_map)

  // Generate argument list
  let args = StringBuilder()
  for i = 0; i < args_len; i = i + 1 {
    let arg = ctor.arguments[i]
    if i > 0 {
      args.write_string(", ")
    }
    args.write_string(arg.name |> to_snake_case |> escape_reserved)
    args.write_string(" : ")
    if needs_wrapper {
      args.write_string(gen_ffi_arg_type(arg, dict_map))
    } else {
      args.write_string(idl_type_to_moonbit(arg.idl_type))
    }
  }

  // Generate JS call code
  let js_call_args = StringBuilder()
  for i = 0; i < args_len; i = i + 1 {
    if i > 0 {
      js_call_args.write_string(", ")
    }
    js_call_args.write_string(
      gen_js_call_arg(
        ctor.arguments[i],
        enum_map,
        dict_map,
        primitive_typedef_map~,
      ),
    )
  }
  let result = StringBuilder()
  if needs_wrapper {
    result.write_string("extern \"js\" fn ")
  } else {
    result.write_string("pub extern \"js\" fn ")
  }
  result.write_string(interface_name)
  result.write_string("::new")
  result.write_string(suffix)
  if needs_wrapper {
    result.write_string("_ffi")
  }
  result.write_string("(")
  result.write_string(args.to_string())
  result.write_string(") -> ")
  result.write_string(return_type)
  result.write_string(" =\n")
  result.write_string("  #| (")

  // JS side argument list (variable names only)
  for i = 0; i < args_len; i = i + 1 {
    let arg = ctor.arguments[i]
    if i > 0 {
      result.write_string(", ")
    }
    result.write_string(arg.name |> to_snake_case |> escape_reserved)
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
    result.write_string("\n")
  } else {
    result.write_string(") => ")
    result.write_string(js_ctor_expr)
    result.write_string("\n")
  }
  if needs_wrapper {
    let full_fn_name = interface_name + "::new" + suffix
    gen_dict_wrapper(
      result,
      full_fn_name,
      ctor.arguments,
      args_len,
      return_type,
      dict_map,
      false,
      interface_name,
    )
  }
  result.to_string()
}

///|
/// Generate Constructor with specified argument count
/// suffix: Suffix to add to function name (e.g., "_with_base")
pub fn gen_constructor_with_arg_count(
  interface_name : String,
  ctor : ConstructorDef,
  enum_map : Array[(String, Array[String])],
  arg_count : Int,
  suffix : String,
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  let (return_type, is_throwing) = compute_throws_context(
    ctor.throws,
    "constructor",
    interface_name,
    interface_name,
  )
  let needs_wrapper = has_dict_args(ctor.arguments, arg_count, dict_map)

  // Generate argument list (up to arg_count)
  let args = StringBuilder()
  for i = 0; i < arg_count; i = i + 1 {
    let arg = ctor.arguments[i]
    if i > 0 {
      args.write_string(", ")
    }
    args.write_string(arg.name |> to_snake_case |> escape_reserved)
    args.write_string(" : ")
    if needs_wrapper {
      args.write_string(gen_ffi_arg_type(arg, dict_map))
    } else {
      args.write_string(idl_type_to_moonbit(arg.idl_type))
    }
  }

  // Generate JS call code
  let js_call_args = StringBuilder()
  for i = 0; i < arg_count; i = i + 1 {
    if i > 0 {
      js_call_args.write_string(", ")
    }
    js_call_args.write_string(
      gen_js_call_arg(
        ctor.arguments[i],
        enum_map,
        dict_map,
        primitive_typedef_map~,
      ),
    )
  }
  let result = StringBuilder()
  if needs_wrapper {
    result.write_string("extern \"js\" fn ")
  } else {
    result.write_string("pub extern \"js\" fn ")
  }
  result.write_string(interface_name)
  result.write_string("::new")
  result.write_string(suffix)
  if needs_wrapper {
    result.write_string("_ffi")
  }
  result.write_string("(")
  result.write_string(args.to_string())
  result.write_string(") -> ")
  result.write_string(return_type)
  result.write_string(" =\n")
  result.write_string("  #| (")
  // JS side argument list (variable names only)
  for i = 0; i < arg_count; i = i + 1 {
    let arg = ctor.arguments[i]
    if i > 0 {
      result.write_string(", ")
    }
    result.write_string(arg.name |> to_snake_case |> escape_reserved)
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
    result.write_string("\n")
  } else {
    result.write_string(") => ")
    result.write_string(js_ctor_expr)
    result.write_string("\n")
  }
  if needs_wrapper {
    let full_fn_name = interface_name + "::new" + suffix
    gen_dict_wrapper(
      result,
      full_fn_name,
      ctor.arguments,
      arg_count,
      return_type,
      dict_map,
      false,
      interface_name,
    )
  }
  result.to_string()
}

///|
/// Generate extern js fn from Constructor (backward compatible wrapper)
pub fn gen_constructor(
  interface_name : String,
  ctor : ConstructorDef,
  enum_map : Array[(String, Array[String])],
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  gen_constructor_with_suffix(
    interface_name,
    ctor,
    enum_map,
    "",
    dict_map~,
    primitive_typedef_map~,
  )
}

///|
/// Collect all constructors from interface members
fn collect_constructors(
  members : Array[InterfaceMember],
) -> Array[ConstructorDef] {
  members
  .iter()
  .filter_map(fn(mem) {
    match mem {
      Constructor(ctor) => Some(ctor)
      _ => None
    }
  })
  .collect()
}

///|
/// Sort constructors by argument count (ascending)
fn sort_constructors_by_arg_count(
  constructors : Array[ConstructorDef],
) -> Array[ConstructorDef] {
  // Simple bubble sort by required argument count
  let result = constructors.copy()
  let len = result.length()
  for i = 0; i < len; i = i + 1 {
    for j = i + 1; j < len; j = j + 1 {
      let first_optional_i = find_first_optional_arg_index(result[i].arguments)
      let required_i = if first_optional_i < 0 {
        result[i].arguments.length()
      } else {
        first_optional_i
      }
      let first_optional_j = find_first_optional_arg_index(result[j].arguments)
      let required_j = if first_optional_j < 0 {
        result[j].arguments.length()
      } else {
        first_optional_j
      }
      if required_i > required_j {
        let temp = result[i]
        result[i] = result[j]
        result[j] = temp
      }
    }
  }
  result
}

///|
/// Generate constructor overload suffix based on arguments
/// Uses same naming conventions as operation overloads
fn gen_constructor_overload_suffix(
  base_ctor : ConstructorDef,
  current_ctor : ConstructorDef,
  all_ctors : Array[ConstructorDef],
) -> String {
  let base_len = base_ctor.arguments.length()
  let current_len = current_ctor.arguments.length()

  // Same argument count but different types - use type-based suffix
  let same_count_ctors = all_ctors
    .iter()
    .filter(fn(c) { c.arguments.length() == current_len })
    .collect()
  if same_count_ctors.length() > 1 {
    // Multiple constructors with same arg count - use first argument type for distinction
    if current_len > 0 {
      let first_arg = current_ctor.arguments[0]
      let type_name = arg_type_to_snake_case(first_arg.idl_type)
      return "_with_" + type_name
    }
  }

  // Different argument count - use gen_overload_suffix logic
  if base_len == current_len {
    return ""
  }

  // Generate suffix from additional arguments
  gen_overload_suffix(base_ctor.arguments, current_ctor.arguments)
}

///|
/// Generate a signature key for a constructor (for deduplication)
fn constructor_signature(ctor : ConstructorDef) -> String {
  let sig = StringBuilder()
  for i = 0; i < ctor.arguments.length(); i = i + 1 {
    if i > 0 {
      sig.write_string(",")
    }
    let arg = ctor.arguments[i]
    sig.write_string(arg.name)
    sig.write_string(":")
    sig.write_string(arg.idl_type.to_moonbit_simple())
    if arg.optional {
      sig.write_string("?")
    }
  }
  sig.to_string()
}

///|
/// Generate suffix from required argument names (for collision avoidance)
fn gen_required_args_suffix(args : Array[Argument], count : Int) -> String {
  if count == 0 {
    return ""
  }
  let result = StringBuilder()
  result.write_string("_with")
  for i = 0; i < count; i = i + 1 {
    result.write_string("_")
    result.write_string(to_snake_case(args[i].name))
    if i < count - 1 {
      result.write_string("_and")
    }
  }
  result.to_string()
}

///|
/// Check if an array of strings contains a given string
fn array_contains_string(arr : Array[String], s : String) -> Bool {
  arr.iter().any(fn(item) { item == s })
}

///|
/// Generate all constructor overloads for an interface
/// Handles both multiple constructor overloads and optional arguments within each constructor
pub fn gen_all_constructors(
  interface_name : String,
  members : Array[InterfaceMember],
  enum_map : Array[(String, Array[String])],
  dict_map? : Array[(String, DictionaryDef)] = [],
  primitive_typedef_map? : Array[(String, IdlType)] = [],
) -> String {
  let constructors = collect_constructors(members)
  if constructors.length() == 0 {
    return ""
  }

  // Deduplicate constructors with identical signatures
  let deduped : Array[ConstructorDef] = []
  let seen_sigs : Array[String] = []
  for i = 0; i < constructors.length(); i = i + 1 {
    let sig = constructor_signature(constructors[i])
    if !array_contains_string(seen_sigs, sig) {
      deduped.push(constructors[i])
      seen_sigs.push(sig)
    }
  }

  // Sort by argument count
  let sorted = sort_constructors_by_arg_count(deduped)
  let base_ctor = sorted[0]
  let result = StringBuilder()
  let generated_names : Array[String] = []
  for i = 0; i < sorted.length(); i = i + 1 {
    let ctor = sorted[i]
    let base_suffix = gen_constructor_overload_suffix(base_ctor, ctor, sorted)
    let first_optional = find_first_optional_arg_index(ctor.arguments)
    let total_args = ctor.arguments.length()
    if first_optional < 0 {
      // No optional args - generate normally
      let name = "new" + base_suffix
      if !array_contains_string(generated_names, name) {
        generated_names.push(name)
        result.write_string(
          gen_constructor_with_suffix(
            interface_name,
            ctor,
            enum_map,
            base_suffix,
            dict_map~,
            primitive_typedef_map~,
          ),
        )
        result.write_string("\n")
      }
    } else {
      // Has optional args - generate base (required only) + full versions
      // Base version (required args only)
      let base_name = "new" + base_suffix
      let actual_base_suffix = if array_contains_string(
          generated_names, base_name,
        ) {
        // Collision! Use argument names for distinction
        gen_required_args_suffix(ctor.arguments, first_optional)
      } else {
        base_suffix
      }
      let actual_base_name = "new" + actual_base_suffix
      if !array_contains_string(generated_names, actual_base_name) {
        generated_names.push(actual_base_name)
        result.write_string(
          gen_constructor_with_arg_count(
            interface_name,
            ctor,
            enum_map,
            first_optional,
            actual_base_suffix,
            dict_map~,
            primitive_typedef_map~,
          ),
        )
        result.write_string("\n")
      }
      // Full version (all args)
      let last_optional_arg = ctor.arguments[total_args - 1]
      let full_suffix = actual_base_suffix +
        "_with_" +
        to_snake_case(last_optional_arg.name)
      let full_name = "new" + full_suffix
      if !array_contains_string(generated_names, full_name) {
        generated_names.push(full_name)
        result.write_string(
          gen_constructor_with_arg_count(
            interface_name,
            ctor,
            enum_map,
            total_args,
            full_suffix,
            dict_map~,
            primitive_typedef_map~,
          ),
        )
        result.write_string("\n")
      }
    }
  }
  result.to_string()
}

///|
/// Collect parent interface chain (traverse inheritance chain)
fn collect_parent_chain(
  interfaces : Array[(String, InterfaceDef)],
  parent_name : String,
  visited : Array[String],
) -> Array[String] {
  // Detect circular inheritance
  if visited.iter().any(fn(v) { v == parent_name }) {
    return []
  }

  // Search for parent interface
  let parent_iface = interfaces
    .iter()
    .fold(init=(None : InterfaceDef?), fn(found, entry) {
      match found {
        Some(_) => found
        None => if entry.0 == parent_name { Some(entry.1) } else { None }
      }
    })
  match parent_iface {
    None => [parent_name] // Add name even if parent not found (may be external type)
    Some(iface) => {
      let result : Array[String] = [parent_name]
      match iface.inheritance {
        Some(grandparent_name) => {
          let new_visited = visited.copy()
          new_visited.push(parent_name)
          let ancestors = collect_parent_chain(
            interfaces, grandparent_name, new_visited,
          )
          ancestors.iter().each(fn(a) { result.push(a) })
        }
        None => ()
      }
      result
    }
  }
}

///|
/// Generate downcast methods (parent -> child)
fn gen_downcast_methods(
  iface : InterfaceDef,
  inheritance_map : Array[(String, Array[String])],
) -> String {
  let result = StringBuilder()
  // Get descendants from inheritance map
  let children = inheritance_map
    .iter()
    .find_first(fn(entry) { entry.0 == iface.name })
  match children {
    Some((_, child_list)) =>
      // Generate as_<child_name> method for each descendant
      child_list
      .iter()
      .each(fn(child_name) {
        let fn_name = "as_" + to_snake_case(child_name)
        result.write_string("pub extern \"js\" fn ")
        result.write_string(iface.name)
        result.write_string("::")
        result.write_string(fn_name)
        result.write_string("(self : ")
        result.write_string(iface.name)
        result.write_string(") -> ")
        result.write_string(child_name)
        result.write_string("? =\n")
        result.write_string("  #| (self) => (self instanceof ")
        result.write_string(child_name)
        result.write_string(") ? ")
        result.write_string(js_some("self"))
        result.write_string(" : ")
        result.write_string(js_none())
        result.write_string("\n\n")
      })
    None => ()
  }
  result.to_string()
}

///|
/// Generate upcast methods (child -> parent)
fn gen_upcast_methods(
  iface : InterfaceDef,
  interfaces : Array[(String, InterfaceDef)],
) -> String {
  let result = StringBuilder()
  match iface.inheritance {
    None => ()
    Some(parent_name) => {
      // Collect parent chain
      let parent_chain = collect_parent_chain(interfaces, parent_name, [
        iface.name,
      ])
      // Generate to_<parent_name> method for each parent
      parent_chain
      .iter()
      .each(fn(parent) {
        let fn_name = "to_" + to_snake_case(parent)
        result.write_string("pub extern \"js\" fn ")
        result.write_string(iface.name)
        result.write_string("::")
        result.write_string(fn_name)
        result.write_string("(self : ")
        result.write_string(iface.name)
        result.write_string(") -> ")
        result.write_string(parent)
        result.write_string(" =\n")
        result.write_string("  #| (self) => self\n\n")
      })
    }
  }
  result.to_string()
}

///|
/// Generate binding code from entire Interface

///|
/// Check if attribute is an EventHandler on* attribute
fn is_any_event_handler_attr(attr : AttributeDef) -> Bool {
  starts_with(attr.name, "on") &&
  (
    attr.idl_type is Named("EventHandler") ||
    attr.idl_type is Named("OnErrorEventHandler") ||
    attr.idl_type is Named("OnBeforeUnloadEventHandler")
  )
}

///|
/// Lookup event type from event_type_map, fallback to "Event".
/// Validates that the type exists in global interfaces.
fn lookup_event_type(
  event_type_map : Array[(String, String)],
  iface_name : String,
  attr_name : String,
  interfaces : Array[(String, InterfaceDef)],
) -> String {
  let key = iface_name + "." + attr_name
  match lookup_pair(event_type_map, key) {
    Some(t) =>
      if interfaces.iter().any(fn(e) { e.0 == t }) {
        t
      } else {
        "Event"
      }
    None => "Event"
  }
}

///|
/// Generate typed event handler setter
/// e.g. pub extern "js" fn HTMLElement::set_onclick(self : HTMLElement, handler : (PointerEvent) -> Unit) -> Unit =
///        #| (self, handler) => { self.onclick = (e) => handler(e) }
fn gen_event_handler_setter(
  interface_name : String,
  attr : AttributeDef,
  event_type : String,
) -> String {
  let fn_name = "set_" + to_snake_case(attr.name)
  let result = StringBuilder()
  result.write_string("pub extern \"js\" fn ")
  result.write_string(interface_name)
  result.write_string("::")
  result.write_string(fn_name)
  result.write_string("(self : ")
  result.write_string(interface_name)
  result.write_string(", handler : (")
  result.write_string(event_type)
  result.write_string(") -> Unit) -> Unit =\n")
  result.write_string("  #| (self, handler) => { self.")
  result.write_string(attr.name)
  result.write_string(" = (e) => handler(e) }\n")
  result.to_string()
}

///|
/// Generate clear method for event handler (sets to null)
/// e.g. pub extern "js" fn HTMLElement::clear_onclick(self : HTMLElement) -> Unit =
///        #| (self) => { self.onclick = null }
fn gen_event_handler_clear(
  interface_name : String,
  attr : AttributeDef,
) -> String {
  let fn_name = "clear_" + to_snake_case(attr.name)
  let result = StringBuilder()
  result.write_string("pub extern \"js\" fn ")
  result.write_string(interface_name)
  result.write_string("::")
  result.write_string(fn_name)
  result.write_string("(self : ")
  result.write_string(interface_name)
  result.write_string(") -> Unit =\n")
  result.write_string("  #| (self) => { self.")
  result.write_string(attr.name)
  result.write_string(" = null }\n")
  result.to_string()
}

///|
/// Check if a member key is in the deprecated set
fn is_deprecated(
  deprecated_set : Array[String],
  iface_name : String,
  member_name : String,
) -> Bool {
  let key = iface_name + "." + member_name
  deprecated_set.contains(key)
}

///|
/// Generate deprecated annotation line
fn gen_deprecated_annotation(member_label : String) -> String {
  "///| @alert deprecated \"" + member_label + " is deprecated\"\n"
}

///|
pub fn gen_interface_binding(iface : InterfaceDef, ctx : GenContext) -> String {
  let enum_map = ctx.enum_map
  let interfaces = ctx.interfaces
  let inheritance_map = ctx.inheritance_map
  let dict_map = ctx.dict_map
  let primitive_typedef_map = ctx.primitive_typedef_map
  let union_typedef_map = ctx.union_typedef_map
  let deprecated_set = ctx.deprecated_set
  let event_type_map = ctx.event_type_map
  let result = StringBuilder()

  // Segment marker (for avoiding 65535 line limit in large files)
  result.write_string("///|\n")

  // Type definition
  result.write_string("/// ")
  result.write_string(iface.name)
  result.write_string(" interface\n")
  result.write_string("pub type ")
  result.write_string(iface.name)
  result.write_string("\n\n")

  // Generate to_js_value method
  result.write_string("pub extern \"js\" fn ")
  result.write_string(iface.name)
  result.write_string("::to_js_value(self : ")
  result.write_string(iface.name)
  result.write_string(") -> JsValue =\n")
  result.write_string("  #| (self) => self\n\n")

  // Generate JsValue cast methods
  let snake_name = to_snake_case(iface.name)

  // from_js_value: unchecked cast from JsValue
  result.write_string("/// Cast JsValue to ")
  result.write_string(iface.name)
  result.write_string(" (unchecked)\n")
  result.write_string("pub extern \"js\" fn ")
  result.write_string(iface.name)
  result.write_string("::from_js_value(v : JsValue) -> ")
  result.write_string(iface.name)
  result.write_string(" =\n")
  result.write_string("  #| (v) => v\n\n")

  // from_js_value_opt: checked cast from JsValue (returns Option)
  result.write_string("/// Safely cast JsValue to ")
  result.write_string(iface.name)
  result.write_string(" (checked with instanceof)\n")
  result.write_string("pub extern \"js\" fn ")
  result.write_string(iface.name)
  result.write_string("::from_js_value_opt(v : JsValue) -> ")
  result.write_string(iface.name)
  result.write_string("? =\n")
  result.write_string("  #| (v) => (v instanceof ")
  result.write_string(iface.name)
  result.write_string(") ? ")
  result.write_string(js_some("v"))
  result.write_string(" : ")
  result.write_string(js_none())
  result.write_string("\n\n")

  // JsValue::as_xxx: checked cast from JsValue (returns Option)
  result.write_string("/// Safely cast JsValue to ")
  result.write_string(iface.name)
  result.write_string(" (checked with instanceof)\n")
  result.write_string("pub extern \"js\" fn JsValue::as_")
  result.write_string(snake_name)
  result.write_string("(self : JsValue) -> ")
  result.write_string(iface.name)
  result.write_string("? =\n")
  result.write_string("  #| (self) => (self instanceof ")
  result.write_string(iface.name)
  result.write_string(") ? ")
  result.write_string(js_some("self"))
  result.write_string(" : ")
  result.write_string(js_none())
  result.write_string("\n\n")

  // JsValue::to_xxx: unchecked cast from JsValue
  result.write_string("/// Cast JsValue to ")
  result.write_string(iface.name)
  result.write_string(" (unchecked)\n")
  result.write_string("pub extern \"js\" fn JsValue::to_")
  result.write_string(snake_name)
  result.write_string("(self : JsValue) -> ")
  result.write_string(iface.name)
  result.write_string(" =\n")
  result.write_string("  #| (self) => self\n\n")

  // Generate upcast methods (child -> parent)
  result.write_string(gen_upcast_methods(iface, interfaces))

  // Generate downcast methods (parent -> child)
  result.write_string(gen_downcast_methods(iface, inheritance_map))

  // Pre-generate error enums for throwing members
  result.write_string(gen_error_enums_for_members(iface.name, iface.members))

  // Track generated method names to avoid duplicates
  let generated_methods : Array[String] = []
  let generated_constants : Array[String] = []
  let mut has_constructor = false

  // Group operations by name for overload handling
  let operation_groups = group_operations_by_name(iface.members)

  // Generate members
  let members_len = iface.members.length()
  for i = 0; i < members_len; i = i + 1 {
    let mem = iface.members[i]
    match mem {
      Operation(op) =>
        // Handle special operations
        match op.special {
          Some("getter") | Some("setter") | Some("deleter") => {
            // Generate named special operations as regular methods
            if !op.name.is_empty() {
              let fn_name = to_snake_case(op.name)
              if !generated_methods.contains(fn_name) {
                generated_methods.push(fn_name)
                result.write_string(
                  gen_operation(
                    iface.name,
                    op,
                    enum_map,
                    dict_map~,
                    primitive_typedef_map~,
                  ),
                )
                result.write_string("\n")
              }
            }
            // Also generate special methods (get/set/delete)
            let special_name = match op.special {
              Some("getter") =>
                // Distinguish getter by argument type
                if op.arguments.length() > 0 {
                  match op.arguments[0].idl_type {
                    Primitive(_) => "get"
                    _ => "get_named"
                  }
                } else {
                  "get"
                }
              Some("setter") => "set"
              Some("deleter") => "delete"
              _ => ""
            }
            if !generated_methods.contains(special_name) {
              generated_methods.push(special_name)
              let code = gen_special_operation(
                iface.name,
                op,
                match op.special {
                  Some(s) => s
                  None => ""
                },
              )
              if code != "" {
                result.write_string(code)
                result.write_string("\n")
              }
            }
          }
          Some("static") => {
            // static operation - handle overloads
            let base_fn_name = to_snake_case(op.name)
            if !generated_methods.contains(base_fn_name) {
              if is_deprecated(deprecated_set, iface.name, op.name) {
                result.write_string(gen_deprecated_annotation(op.name))
              }
              // Find all static operations with this name
              let group : Array[OperationDef] = operation_groups
                .iter()
                .filter_map(fn(pair) {
                  let (name, ops) = pair
                  if name == op.name {
                    Some(
                      ops
                      .iter()
                      .filter(fn(o) { o.special is Some("static") })
                      .collect(),
                    )
                  } else {
                    None
                  }
                })
                .fold(init=Array(), fn(_, ops) { ops })

              // Generate all overloads
              if group.length() > 0 {
                let code = gen_overloaded_static_operations(
                  iface.name,
                  group,
                  enum_map,
                  generated_methods,
                  dict_map~,
                  primitive_typedef_map~,
                )
                result.write_string(code)
                result.write_string("\n")
              }
            }
          }
          _ => {
            // Regular operation - handle both overloads and optional arguments
            let base_fn_name = to_snake_case(op.name)
            if !generated_methods.contains(base_fn_name) {
              if is_deprecated(deprecated_set, iface.name, op.name) {
                result.write_string(gen_deprecated_annotation(op.name))
              }
              // Find all operations with this name
              let mut group : Array[OperationDef] = []
              for j = 0; j < operation_groups.length(); j = j + 1 {
                let (name, ops) = operation_groups[j]
                if name == op.name {
                  group = ops
                  break
                }
              }

              // Generate all overloads
              let code = gen_overloaded_operations(
                iface.name,
                group,
                enum_map,
                generated_methods,
                dict_map~,
                primitive_typedef_map~,
              )
              result.write_string(code)
              result.write_string("\n")
            }
          }
        }
      Attribute(attr) =>
        if is_any_event_handler_attr(attr) {
          // Event handler: setter + clear, no getter
          let setter_name = "set_" + to_snake_case(attr.name)
          if !generated_methods.contains(setter_name) {
            generated_methods.push(setter_name)
            if is_deprecated(deprecated_set, iface.name, attr.name) {
              result.write_string(gen_deprecated_annotation(attr.name))
            }
            if attr.idl_type is Named("EventHandler") {
              // Typed event handler: (EventType) -> Unit
              let event_type = lookup_event_type(
                event_type_map,
                iface.name,
                attr.name,
                interfaces,
              )
              result.write_string(
                gen_event_handler_setter(iface.name, attr, event_type),
              )
            } else {
              // OnErrorEventHandler/OnBeforeUnloadEventHandler: normal setter
              let setter = gen_attribute_setter(iface.name, attr, enum_map~)
              if setter != "" {
                result.write_string(setter)
              }
            }
            result.write_string("\n")
          }
          let clear_name = "clear_" + to_snake_case(attr.name)
          if !generated_methods.contains(clear_name) {
            generated_methods.push(clear_name)
            if is_deprecated(deprecated_set, iface.name, attr.name) {
              result.write_string(gen_deprecated_annotation(attr.name))
            }
            result.write_string(gen_event_handler_clear(iface.name, attr))
            result.write_string("\n")
          }
        } else {
          let getter_name = "get_" + to_snake_case(attr.name)
          if !generated_methods.contains(getter_name) {
            generated_methods.push(getter_name)
            if is_deprecated(deprecated_set, iface.name, attr.name) {
              result.write_string(gen_deprecated_annotation(attr.name))
            }
            result.write_string(
              gen_attribute_getter(iface.name, attr, enum_map~),
            )
            result.write_string("\n")
          }
          if !attr.is_readonly {
            let setter_name = "set_" + to_snake_case(attr.name)
            if !generated_methods.contains(setter_name) {
              generated_methods.push(setter_name)
              if is_deprecated(deprecated_set, iface.name, attr.name) {
                result.write_string(gen_deprecated_annotation(attr.name))
              }
              let setter = gen_attribute_setter(iface.name, attr, enum_map~)
              if setter != "" {
                result.write_string(setter)
                result.write_string("\n")
              }
            }
          }
        }
      Constructor(_) =>
        // Generate all constructor overloads (handled once via gen_all_constructors)
        if !has_constructor {
          has_constructor = true
          if is_deprecated(deprecated_set, iface.name, "constructor") {
            result.write_string(gen_deprecated_annotation("constructor"))
          }
          result.write_string(
            gen_all_constructors(
              iface.name,
              iface.members,
              enum_map,
              dict_map~,
              primitive_typedef_map~,
            ),
          )
        }
      Const(const_def) => {
        let interface_prefix = to_snake_case(iface.name)
        let const_suffix = const_name_to_snake_case(const_def.name)
        let const_name = interface_prefix + "_" + const_suffix
        if !generated_constants.contains(const_name) {
          generated_constants.push(const_name)
          result.write_string(gen_const(iface.name, const_def))
          result.write_string("\n")
        }
      }
      Maplike(maplike) => {
        // maplike: get, has, and if not readonly: set, delete, clear
        let code = gen_maplike_methods(iface.name, maplike, generated_methods)
        result.write_string(code)
      }
      Setlike(setlike) => {
        // setlike: has, and if not readonly: add, delete, clear
        let code = gen_setlike_methods(iface.name, setlike, generated_methods)
        result.write_string(code)
      }
      Iterable(iter_def) =>
        if iter_def.is_async {
          let code = gen_async_iterable(iface.name, generated_methods)
          result.write_string(code)
        } else {
          let code = gen_sync_iterable(iface.name, generated_methods)
          result.write_string(code)
        }
    }
  }

  // Generate union argument overloads for all operations and constructors
  if union_typedef_map.length() > 0 {
    for i = 0; i < members_len; i = i + 1 {
      match iface.members[i] {
        Operation(op) =>
          if !op.name.is_empty() {
            let args_len = op.arguments.length()
            match find_union_arg(op.arguments, args_len, union_typedef_map) {
              Some((idx, members)) => {
                let is_static = op.special is Some("static")
                if is_static {
                  result.write_string(
                    gen_static_union_arg_overloads(
                      iface.name,
                      op,
                      idx,
                      members,
                      enum_map,
                      dict_map,
                      generated_methods,
                      primitive_typedef_map~,
                    ),
                  )
                } else {
                  result.write_string(
                    gen_union_arg_overloads(
                      iface.name,
                      op,
                      idx,
                      members,
                      enum_map,
                      dict_map,
                      generated_methods,
                      primitive_typedef_map~,
                    ),
                  )
                }
              }
              None => ()
            }
          }
        Constructor(ctor) => {
          let args_len = ctor.arguments.length()
          match find_union_arg(ctor.arguments, args_len, union_typedef_map) {
            Some((idx, members)) =>
              result.write_string(
                gen_constructor_union_arg_overloads(
                  iface.name,
                  ctor,
                  "new",
                  idx,
                  members,
                  enum_map,
                  dict_map,
                  generated_methods,
                  primitive_typedef_map~,
                ),
              )
            None => ()
          }
        }
        _ => ()
      }
    }
  }
  result.to_string()
}
