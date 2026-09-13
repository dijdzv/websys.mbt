// Namespace, iterable, maplike, and setlike binding generation

///|
/// Generate async iterable methods (keys, values, entries)
/// All return JsValue (untyped async iterators)
pub fn gen_async_iterable(
  interface_name : String,
  generated_methods : Array[String],
) -> String {
  let result = StringBuilder()
  let method_names = ["keys", "values", "entries"]
  for i = 0; i < method_names.length(); i = i + 1 {
    let name = method_names[i]
    if !generated_methods.contains(name) {
      generated_methods.push(name)
      result.write_string("pub extern \"js\" fn ")
      result.write_string(interface_name)
      result.write_string("::")
      result.write_string(name)
      result.write_string("(self : ")
      result.write_string(interface_name)
      result.write_string(") -> JsValue =\n")
      result.write_string("  #| (self) => self.")
      result.write_string(name)
      result.write_string("()\n\n")
    }
  }
  result.to_string()
}

///|
/// Generate sync iterable methods (keys, values, entries, forEach)
/// All return JsValue (untyped iterators)
pub fn gen_sync_iterable(
  interface_name : String,
  generated_methods : Array[String],
) -> String {
  let result = StringBuilder()
  let method_names = ["keys", "values", "entries"]
  for i = 0; i < method_names.length(); i = i + 1 {
    let name = method_names[i]
    if !generated_methods.contains(name) {
      generated_methods.push(name)
      result.write_string("pub extern \"js\" fn ")
      result.write_string(interface_name)
      result.write_string("::")
      result.write_string(name)
      result.write_string("(self : ")
      result.write_string(interface_name)
      result.write_string(") -> JsValue =\n")
      result.write_string("  #| (self) => self.")
      result.write_string(name)
      result.write_string("()\n\n")
    }
  }
  // forEach
  if !generated_methods.contains("for_each") {
    generated_methods.push("for_each")
    result.write_string("pub extern \"js\" fn ")
    result.write_string(interface_name)
    result.write_string("::for_each(self : ")
    result.write_string(interface_name)
    result.write_string(", callback : JsValue) -> Unit =\n")
    result.write_string(
      "  #| (self, callback) => { self.forEach(callback) }\n\n",
    )
  }
  result.to_string()
}

///|
/// Generate Maplike methods
fn gen_maplike_methods(
  interface_name : String,
  maplike : MaplikeDef,
  generated_methods : Array[String],
) -> String {
  let result = StringBuilder()
  let key_type = idl_type_to_moonbit(maplike.key_type)
  let value_type = idl_type_to_moonbit(maplike.value_type)

  // get(key) -> value?
  if !generated_methods.contains("get") {
    generated_methods.push("get")
    result.write_string("pub extern \"js\" fn ")
    result.write_string(interface_name)
    result.write_string("::get(self : ")
    result.write_string(interface_name)
    result.write_string(", key : ")
    result.write_string(key_type)
    result.write_string(") -> ")
    result.write_string(value_type)
    result.write_string("? =\n")
    // MoonBit auto-wraps extern "js" returns: null/undefined → None, value → Some(value)
    result.write_string("  #| (self, key) => self.get(key)\n\n")
  }

  // has(key) -> Bool
  if !generated_methods.contains("has") {
    generated_methods.push("has")
    result.write_string("pub extern \"js\" fn ")
    result.write_string(interface_name)
    result.write_string("::has(self : ")
    result.write_string(interface_name)
    result.write_string(", key : ")
    result.write_string(key_type)
    result.write_string(") -> Bool =\n")
    result.write_string("  #| (self, key) => self.has(key)\n\n")
  }

  // If not readonly, add set/delete/clear
  if !maplike.is_readonly {
    // set(key, value) -> Unit
    if !generated_methods.contains("set") {
      generated_methods.push("set")
      result.write_string("pub extern \"js\" fn ")
      result.write_string(interface_name)
      result.write_string("::set(self : ")
      result.write_string(interface_name)
      result.write_string(", key : ")
      result.write_string(key_type)
      result.write_string(", value : ")
      result.write_string(value_type)
      result.write_string(") -> Unit =\n")
      result.write_string(
        "  #| (self, key, value) => { self.set(key, value) }\n\n",
      )
    }

    // delete(key) -> Bool
    if !generated_methods.contains("delete") {
      generated_methods.push("delete")
      result.write_string("pub extern \"js\" fn ")
      result.write_string(interface_name)
      result.write_string("::delete(self : ")
      result.write_string(interface_name)
      result.write_string(", key : ")
      result.write_string(key_type)
      result.write_string(") -> Bool =\n")
      result.write_string("  #| (self, key) => self.delete(key)\n\n")
    }

    // clear() -> Unit
    if !generated_methods.contains("clear") {
      generated_methods.push("clear")
      result.write_string("pub extern \"js\" fn ")
      result.write_string(interface_name)
      result.write_string("::clear(self : ")
      result.write_string(interface_name)
      result.write_string(") -> Unit =\n")
      result.write_string("  #| (self) => { self.clear() }\n\n")
    }
  }
  result.to_string()
}

///|
/// Generate Setlike methods
fn gen_setlike_methods(
  interface_name : String,
  setlike : SetlikeDef,
  generated_methods : Array[String],
) -> String {
  let result = StringBuilder()
  let value_type = idl_type_to_moonbit(setlike.value_type)

  // has(value) -> Bool
  if !generated_methods.contains("has") {
    generated_methods.push("has")
    result.write_string("pub extern \"js\" fn ")
    result.write_string(interface_name)
    result.write_string("::has(self : ")
    result.write_string(interface_name)
    result.write_string(", value : ")
    result.write_string(value_type)
    result.write_string(") -> Bool =\n")
    result.write_string("  #| (self, value) => self.has(value)\n\n")
  }

  // If not readonly, add add/delete/clear
  if !setlike.is_readonly {
    // add(value) -> Unit
    if !generated_methods.contains("add") {
      generated_methods.push("add")
      result.write_string("pub extern \"js\" fn ")
      result.write_string(interface_name)
      result.write_string("::add(self : ")
      result.write_string(interface_name)
      result.write_string(", value : ")
      result.write_string(value_type)
      result.write_string(") -> Unit =\n")
      result.write_string("  #| (self, value) => { self.add(value) }\n\n")
    }

    // delete(value) -> Bool
    if !generated_methods.contains("delete") {
      generated_methods.push("delete")
      result.write_string("pub extern \"js\" fn ")
      result.write_string(interface_name)
      result.write_string("::delete(self : ")
      result.write_string(interface_name)
      result.write_string(", value : ")
      result.write_string(value_type)
      result.write_string(") -> Bool =\n")
      result.write_string("  #| (self, value) => self.delete(value)\n\n")
    }

    // clear() -> Unit
    if !generated_methods.contains("clear") {
      generated_methods.push("clear")
      result.write_string("pub extern \"js\" fn ")
      result.write_string(interface_name)
      result.write_string("::clear(self : ")
      result.write_string(interface_name)
      result.write_string(") -> Unit =\n")
      result.write_string("  #| (self) => { self.clear() }\n\n")
    }
  }
  result.to_string()
}

///|
/// Generate a single namespace operation (no self, top-level function)
fn gen_namespace_operation_single(
  ns_name : String,
  ns_snake : String,
  op : OperationDef,
  fn_suffix : String,
  args : Array[Argument],
  arg_count : Int,
  enum_map : Array[(String, Array[String])],
  dict_map : Array[(String, DictionaryDef)],
) -> String {
  let op_snake = op.name |> to_snake_case |> escape_reserved
  let fn_name = ns_snake + "_" + op_snake + fn_suffix
  let (return_type, is_throwing) = compute_throws_context(
    op.throws,
    op.name,
    ns_name,
    idl_type_to_moonbit(op.return_type),
    idl_return_type=op.return_type,
  )
  let needs_wrapper = has_dict_args(args, arg_count, dict_map)
  let result = StringBuilder()
  if needs_wrapper {
    result.write_string("extern \"js\" fn ")
  } else {
    result.write_string("pub extern \"js\" fn ")
  }
  result.write_string(fn_name)
  if needs_wrapper {
    result.write_string("_ffi")
  }
  result.write_string("(")
  for i = 0; i < arg_count; i = i + 1 {
    if i > 0 {
      result.write_string(", ")
    }
    let arg = args[i]
    result.write_string(arg.name |> to_snake_case |> escape_reserved)
    result.write_string(" : ")
    if needs_wrapper {
      result.write_string(gen_ffi_arg_type(arg, dict_map))
    } else {
      result.write_string(idl_type_to_moonbit(arg.idl_type))
    }
  }
  result.write_string(") -> ")
  result.write_string(return_type)
  result.write_string(" =\n")
  result.write_string("  #| (")
  for i = 0; i < arg_count; i = i + 1 {
    if i > 0 {
      result.write_string(", ")
    }
    result.write_string(args[i].name |> to_snake_case |> escape_reserved)
  }
  result.write_string(") => ")
  let js_call_args = StringBuilder()
  for i = 0; i < arg_count; i = i + 1 {
    if i > 0 {
      js_call_args.write_string(", ")
    }
    js_call_args.write_string(gen_js_call_arg(args[i], enum_map, dict_map))
  }
  let js_expr = ns_name + "." + op.name + "(" + js_call_args.to_string() + ")"
  let wrapped = wrap_return_or_throwing(
    js_expr,
    op.return_type,
    is_throwing,
    op.throws,
  )
  result.write_string(wrapped)
  result.write_string("\n")
  if needs_wrapper {
    result.write_string("\npub fn ")
    result.write_string(fn_name)
    result.write_string("(")
    for i = 0; i < arg_count; i = i + 1 {
      if i > 0 {
        result.write_string(", ")
      }
      result.write_string(args[i].name |> to_snake_case |> escape_reserved)
      result.write_string(" : ")
      result.write_string(idl_type_to_moonbit(args[i].idl_type))
    }
    result.write_string(") -> ")
    result.write_string(return_type)
    result.write_string(" {\n  ")
    result.write_string(fn_name)
    result.write_string("_ffi(")
    for i = 0; i < arg_count; i = i + 1 {
      if i > 0 {
        result.write_string(", ")
      }
      result.write_string(gen_wrapper_call_arg(args[i], dict_map))
    }
    result.write_string(")\n}\n")
  }
  result.to_string()
}

///|
/// Generate namespace attribute getter (top-level function, no self)
fn gen_namespace_attribute_getter(
  ns_name : String,
  ns_snake : String,
  attr : AttributeDef,
  enum_map : Array[(String, Array[String])],
) -> String {
  let fn_name = ns_snake + "_get_" + to_snake_case(attr.name)
  let return_type = idl_type_to_moonbit(attr.idl_type)
  let result = StringBuilder()
  result.write_string("pub extern \"js\" fn ")
  result.write_string(fn_name)
  result.write_string("() -> ")
  result.write_string(return_type)
  result.write_string(" =\n")
  let js_expr = match attr.idl_type {
    Named(type_name) =>
      match lookup_enum(enum_map, type_name) {
        Some(values) =>
          gen_enum_index_of_expr(values, ns_name + "." + attr.name)
        None => wrap_return_expr(ns_name + "." + attr.name, attr.idl_type)
      }
    _ => wrap_return_expr(ns_name + "." + attr.name, attr.idl_type)
  }
  result.write_string("  #| () => ")
  result.write_string(js_expr)
  result.write_string("\n")
  result.to_string()
}

///|
/// Generate binding code for a namespace definition
pub fn gen_namespace_binding(ns : NamespaceDef, ctx : GenContext) -> String {
  let enum_map = ctx.enum_map
  let dict_map = ctx.dict_map
  let result = StringBuilder()
  let ns_snake = to_snake_case(ns.name)
  result.write_string("///|\n")
  result.write_string("/// ")
  result.write_string(ns.name)
  result.write_string(" namespace\n\n")
  // Pre-generate error enums for throwing namespace operations
  result.write_string(gen_error_enums_for_members(ns.name, ns.members))
  let generated_fns : Array[String] = []
  let max_variadic_arity = 8 // generate _0 through _7
  for i = 0; i < ns.members.length(); i = i + 1 {
    let mem = ns.members[i]
    match mem {
      Operation(op) => {
        if op.name.is_empty() {
          continue
        }
        let base_fn_name = ns_snake +
          "_" +
          (op.name |> to_snake_case |> escape_reserved)
        if generated_fns.contains(base_fn_name) {
          continue
        }
        generated_fns.push(base_fn_name)
        let total_args = op.arguments.length()
        let has_variadic = total_args > 0 &&
          op.arguments[total_args - 1].variadic
        if has_variadic {
          let non_variadic_count = total_args - 1
          let variadic_arg = op.arguments[total_args - 1]
          let variadic_type = variadic_arg.idl_type
          for arity = 0; arity < max_variadic_arity; arity = arity + 1 {
            let total_count = non_variadic_count + arity
            let suffix = "_" + total_count.to_string()
            let expanded_args : Array[Argument] = []
            for j = 0; j < non_variadic_count; j = j + 1 {
              expanded_args.push(op.arguments[j])
            }
            for j = 1; j <= arity; j = j + 1 {
              let arg_name = to_snake_case(variadic_arg.name) +
                "_" +
                j.to_string()
              let arg : Argument = {
                name: arg_name,
                idl_type: variadic_type,
                optional: false,
                default_value: None,
                variadic: false,
              }
              expanded_args.push(arg)
            }
            result.write_string(
              gen_namespace_operation_single(
                ns.name,
                ns_snake,
                op,
                suffix,
                expanded_args,
                total_count,
                enum_map,
                dict_map,
              ),
            )
            result.write_string("\n")
          }
        } else {
          let first_optional = find_first_optional_arg_index(op.arguments)
          if first_optional < 0 {
            result.write_string(
              gen_namespace_operation_single(
                ns.name,
                ns_snake,
                op,
                "",
                op.arguments,
                total_args,
                enum_map,
                dict_map,
              ),
            )
            result.write_string("\n")
          } else {
            result.write_string(
              gen_namespace_operation_single(
                ns.name,
                ns_snake,
                op,
                "",
                op.arguments,
                first_optional,
                enum_map,
                dict_map,
              ),
            )
            result.write_string("\n")
            let last_arg = op.arguments[total_args - 1]
            let suffix = "_with_" + to_snake_case(last_arg.name)
            result.write_string(
              gen_namespace_operation_single(
                ns.name,
                ns_snake,
                op,
                suffix,
                op.arguments,
                total_args,
                enum_map,
                dict_map,
              ),
            )
            result.write_string("\n")
          }
        }
      }
      Attribute(attr) => {
        let getter_name = ns_snake + "_get_" + to_snake_case(attr.name)
        if !generated_fns.contains(getter_name) {
          generated_fns.push(getter_name)
          result.write_string(
            gen_namespace_attribute_getter(ns.name, ns_snake, attr, enum_map),
          )
          result.write_string("\n")
        }
      }
      _ => ()
    }
  }
  result.to_string()
}
