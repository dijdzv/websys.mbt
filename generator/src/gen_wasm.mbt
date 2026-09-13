///|
extern "js" fn read_wasm_input(path : String) -> String =
  #| path => require('fs').readFileSync(path, 'utf8')

///|
fn wasm_has_argument_annotations(item : JsValue) -> Bool {
  let args = get_arguments(item)
  for i = 0; i < js_array_length(args); i = i + 1 {
    let arg = js_array_get(args, i)
    if js_array_length(get_ext_attrs(arg)) != 0 ||
      js_array_length(get_ext_attrs(get_idl_type(arg))) != 0 {
      return true
    }
  }
  false
}

///|
fn validate_wasm_input(parsed : JsValue) -> String? {
  let items = get_parse_data(parsed)
  for i = 0; i < js_array_length(items); i = i + 1 {
    let item = js_array_get(items, i)
    if (is_partial(item) && get_type(item) != "interface") ||
      js_array_length(get_ext_attrs(item)) != 0 {
      return Some(
        "WasmGC non-interface partials and extended attributes are not implemented",
      )
    }
    match get_type(item) {
      "interface" | "interface mixin" => {
        let members = get_members(item)
        for j = 0; j < js_array_length(members); j = j + 1 {
          let mem = js_array_get(members, j)
          if get_special(mem) != "" || js_array_length(get_ext_attrs(mem)) != 0 {
            return Some(
              "WasmGC special members and extended attributes are not implemented",
            )
          }
          if get_type(mem) != "operation" && get_type(mem) != "attribute" {
            return Some("Unsupported WasmGC member: " + get_type(mem))
          }
          if wasm_has_argument_annotations(mem) ||
            js_array_length(get_ext_attrs(get_idl_type(mem))) != 0 {
            return Some(
              "WasmGC type/argument extended attributes are not implemented",
            )
          }
        }
      }
      "includes" => ()
      "callback" =>
        if wasm_has_argument_annotations(item) ||
          js_array_length(get_ext_attrs(get_idl_type(item))) != 0 {
          return Some("WasmGC callback extended attributes are not implemented")
        }
      _ => return Some("Unsupported WasmGC definition: " + get_type(item))
    }
  }
  None
}

///|
fn wasm_type(t : IdlType, names : Array[String]) -> String? {
  match t {
    Void => Some("Unit")
    String => Some("String")
    Primitive("boolean") => Some("Bool")
    Primitive("long") => Some("Int")
    Primitive("double") => Some("Double")
    Named(name) if names.contains(name) => Some(name)
    Nullable(String) => Some("String?")
    Nullable(Named(name)) if names.contains(name) => Some(name + "?")
    _ => None
  }
}

///|
fn require_wasm_type(t : IdlType, names : Array[String]) -> String {
  match wasm_type(t, names) {
    Some(name) => name
    None =>
      abort(
        "Unsupported WasmGC type; this backend accepts a restricted WebIDL subset",
      )
  }
}

///|
fn wasm_js_arg(t : IdlType, name : String) -> String {
  match t {
    Primitive("boolean") => "Boolean(" + name + ")"
    _ => name
  }
}

///|
fn emit_wasm_function(
  out : StringBuilder,
  owner : String,
  member_name : String,
  params : Array[(String, IdlType)],
  result : IdlType,
  names : Array[String],
) -> Unit {
  let public_params = params
    .map(p => p.0 + " : " + require_wasm_type(p.1, names))
    .join(", ")
  let result_type = require_wasm_type(result, names)
  let key = owner + "_" + member_name
  let needs_wrapper = result is Nullable(_) ||
    params.any(p => p.1 is Nullable(_))
  if !needs_wrapper {
    out.write_string(
      "pub fn \{owner}::\{member_name}(\{public_params}) -> \{result_type} = \"websys\" \"\{key}\"\n",
    )
    return
  }
  let raw_params = params
    .map(p => {
      (if p.0 == "self" { "receiver" } else { p.0 }) +
      " : " +
      (if p.1 is Nullable(_) {
        "WebsysNullable"
      } else {
        require_wasm_type(p.1, names)
      })
    })
    .join(", ")
  let raw_result = if result is Nullable(_) {
    "WebsysNullable"
  } else {
    result_type
  }
  let args = params
    .map(p => {
      match p.1 {
        Nullable(inner) =>
          "match \{p.0} { None => websys_null(); Some(v) => websys_wrap_\{require_wasm_type(inner, names)}(v) }"
        _ => p.0
      }
    })
    .join(", ")
  out.write_string(
    "fn websys_raw_\{key}(\{raw_params}) -> \{raw_result} = \"websys\" \"\{key}\"\n",
  )
  out.write_string(
    "pub fn \{owner}::\{member_name}(\{public_params}) -> \{result_type} {\n",
  )
  match result {
    Nullable(inner) =>
      out.write_string(
        "  let value = websys_raw_\{key}(\{args})\n  if websys_is_null(value) { None } else { Some(websys_unwrap_\{require_wasm_type(inner, names)}(value)) }\n",
      )
    _ => out.write_string("  websys_raw_\{key}(\{args})\n")
  }
  out.write_string("}\n")
}

///|
fn generate_wasm(definitions : Array[Definition]) -> (String, String) {
  let definitions = match compose_wasm_interfaces(definitions) {
    Ok(definitions) => definitions
    Err(message) => abort(message)
  }
  let names : Array[String] = []
  for definition in definitions {
    let name = match definition {
      Interface(value) => value.name
      CallbackInterface(value) => value.name
      _ => abort("Unsupported WasmGC definition")
    }
    guard !names.contains(name) else {
      abort("Duplicate WasmGC definition: " + name)
    }
    names.push(name)
  }
  let mbt = StringBuilder()
  let js = StringBuilder()
  let inputs : Array[String] = []
  let outputs : Array[String] = []
  let record = fn(t : IdlType, types : Array[String]) {
    if t is Nullable(inner) {
      let name = require_wasm_type(inner, names)
      if !types.contains(name) {
        types.push(name)
      }
    }
  }
  for definition in definitions {
    if definition is Interface(iface) {
      for mem in iface.members {
        match mem {
          Attribute(attr) => {
            record(attr.idl_type, outputs)
            if !attr.is_readonly {
              record(attr.idl_type, inputs)
            }
          }
          Operation(op) => {
            record(op.return_type, outputs)
            for arg in op.arguments {
              record(arg.idl_type, inputs)
            }
          }
          _ => ()
        }
      }
    }
  }
  mbt.write_string("// Generated from WebIDL. Do not edit.\n")
  if !inputs.is_empty() || !outputs.is_empty() {
    guard !names.contains("WebsysNullable") else {
      abort("Reserved WasmGC type name: WebsysNullable")
    }
    mbt.write_string("#external\npriv type WebsysNullable\n")
  }
  if !inputs.is_empty() {
    mbt.write_string(
      "fn websys_null() -> WebsysNullable = \"websys\" \"nullable_null\"\n",
    )
  }
  if !outputs.is_empty() {
    mbt.write_string(
      "fn websys_is_null(value : WebsysNullable) -> Bool = \"websys\" \"nullable_is_null\"\n",
    )
  }
  for typ in inputs {
    mbt.write_string(
      "fn websys_wrap_\{typ}(value : \{typ}) -> WebsysNullable = \"websys\" \"nullable_identity\"\n",
    )
  }
  for typ in outputs {
    mbt.write_string(
      "fn websys_unwrap_\{typ}(value : WebsysNullable) -> \{typ} = \"websys\" \"nullable_identity\"\n",
    )
  }
  js.write_string(
    "// Generated from WebIDL. Do not edit.\nexport function createImports() {\n  return { 'moonbit:ffi': { make_closure: (fn, closure) => fn.bind(null, closure) }, websys: {\n",
  )
  js.write_string(
    "    nullable_null: () => null, nullable_is_null: value => value === null, nullable_identity: value => value,\n",
  )
  for definition in definitions {
    match definition {
      CallbackInterface(cb) => {
        guard cb.arguments.length() == 1 && cb.return_type is Some(Void) else {
          abort(
            "WasmGC callbacks currently require one argument and a void result",
          )
        }
        let event = require_wasm_type(cb.arguments[0].idl_type, names)
        guard !(cb.arguments[0].idl_type is Nullable(_)) else {
          abort("Nullable WasmGC callback arguments are not implemented")
        }
        guard !cb.arguments[0].optional && !cb.arguments[0].variadic else {
          abort("Optional/variadic WasmGC callbacks are not implemented")
        }
        let name = cb.name
        mbt.write_string("#external\npub type \{name}\n")
        mbt.write_string(
          "pub fn \{name}::new(callback : (\{event}) -> Unit) -> \{name} = \"websys\" \"\{name}_new\"\n",
        )
        // Keep the JS function as an opaque handle so removal never reconstructs it.
        js.write_string("    \{name}_new: callback => callback,\n")
      }
      Interface(iface) => {
        let name = iface.name
        mbt.write_string("#external\npub type \{name}\n")
        let emitted : Array[String] = []
        let mut parent = iface.inheritance
        while parent is Some(ancestor) {
          let conversion = "as_" + to_snake_case(ancestor)
          emitted.push(conversion)
          mbt.write_string(
            "pub fn \{name}::\{conversion}(self : \{name}) -> \{ancestor} = \"websys\" \"\{name}_\{conversion}\"\n",
          )
          js.write_string("    \{name}_\{conversion}: self => self,\n")
          parent = None
          for definition in definitions {
            if definition is Interface(value) && value.name == ancestor {
              parent = value.inheritance
              break
            }
          }
        }
        for mem in iface.members {
          match mem {
            Attribute(attr) => {
              let getter = to_snake_case(attr.name) |> escape_reserved
              guard !emitted.contains(getter) else {
                abort("Duplicate WasmGC member")
              }
              emitted.push(getter)
              emit_wasm_function(
                mbt,
                name,
                getter,
                [("self", Named(name))],
                attr.idl_type,
                names,
              )
              js.write_string(
                "    \{name}_\{getter}: self => self.\{attr.name},\n",
              )
              if !attr.is_readonly {
                let setter = "set_" + getter
                guard !emitted.contains(setter) else {
                  abort("Duplicate WasmGC member")
                }
                emitted.push(setter)
                emit_wasm_function(
                  mbt,
                  name,
                  setter,
                  [("self", Named(name)), ("value", attr.idl_type)],
                  Void,
                  names,
                )
                let value = wasm_js_arg(attr.idl_type, "value")
                js.write_string(
                  "    \{name}_\{setter}: (self, value) => { self.\{attr.name} = \{value}; },\n",
                )
              }
            }
            Operation(op) => {
              guard op.special is None && op.name != "" else {
                abort("Unsupported WasmGC operation")
              }
              let fn_name = to_snake_case(op.name) |> escape_reserved
              guard !emitted.contains(fn_name) else {
                abort("WasmGC overloads are not implemented")
              }
              emitted.push(fn_name)
              let parameters : Array[(String, IdlType)] = [
                ("self", Named(name)),
              ]
              let arguments = StringBuilder()
              let values = StringBuilder()
              for i, arg in op.arguments {
                guard !arg.optional && !arg.variadic else {
                  abort(
                    "Optional/variadic WasmGC arguments are not implemented",
                  )
                }
                parameters.push(("arg\{i}", arg.idl_type))
                if i > 0 {
                  arguments.write_string(", ")
                }
                if i > 0 {
                  values.write_string(", ")
                }
                arguments.write_string("arg\{i}")
                values.write_string(wasm_js_arg(arg.idl_type, "arg\{i}"))
              }
              emit_wasm_function(
                mbt,
                name,
                fn_name,
                parameters,
                op.return_type,
                names,
              )
              let js_params = if op.arguments.is_empty() {
                "self"
              } else {
                "self, " + arguments.to_string()
              }
              js.write_string(
                "    \{name}_\{fn_name}: (\{js_params}) => self.\{op.name}(\{values}),\n",
              )
            }
            _ => abort("Unsupported WasmGC interface member")
          }
        }
      }
      _ => abort("Unsupported WasmGC definition")
    }
  }
  js.write_string("  } };\n}\n")
  (mbt.to_string(), js.to_string())
}
