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
    if is_partial(item) ||
      get_inheritance(item) != "" ||
      js_array_length(get_ext_attrs(item)) != 0 {
      return Some(
        "WasmGC partial definitions, inheritance and extended attributes are not implemented",
      )
    }
    match get_type(item) {
      "interface" => {
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
fn generate_wasm(definitions : Array[Definition]) -> (String, String) {
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
  mbt.write_string("// Generated from WebIDL. Do not edit.\n")
  js.write_string(
    "// Generated from WebIDL. Do not edit.\nexport function createImports() {\n  return { 'moonbit:ffi': { make_closure: (fn, closure) => fn.bind(null, closure) }, websys: {\n",
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
        guard iface.inheritance is None else {
          abort("WasmGC inheritance is not implemented")
        }
        let name = iface.name
        mbt.write_string("#external\npub type \{name}\n")
        let emitted : Array[String] = []
        for mem in iface.members {
          match mem {
            Attribute(attr) => {
              let typ = require_wasm_type(attr.idl_type, names)
              let getter = to_snake_case(attr.name) |> escape_reserved
              guard !emitted.contains(getter) else {
                abort("Duplicate WasmGC member")
              }
              emitted.push(getter)
              mbt.write_string(
                "pub fn \{name}::\{getter}(self : \{name}) -> \{typ} = \"websys\" \"\{name}_\{getter}\"\n",
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
                mbt.write_string(
                  "pub fn \{name}::\{setter}(self : \{name}, value : \{typ}) -> Unit = \"websys\" \"\{name}_\{setter}\"\n",
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
              let parameters = StringBuilder()
              let arguments = StringBuilder()
              let values = StringBuilder()
              for i, arg in op.arguments {
                guard !arg.optional && !arg.variadic else {
                  abort(
                    "Optional/variadic WasmGC arguments are not implemented",
                  )
                }
                let typ = require_wasm_type(arg.idl_type, names)
                parameters.write_string(", arg\{i} : \{typ}")
                if i > 0 {
                  arguments.write_string(", ")
                }
                if i > 0 {
                  values.write_string(", ")
                }
                arguments.write_string("arg\{i}")
                values.write_string(wasm_js_arg(arg.idl_type, "arg\{i}"))
              }
              let result = require_wasm_type(op.return_type, names)
              mbt.write_string(
                "pub fn \{name}::\{fn_name}(self : \{name}\{parameters}) -> \{result} = \"websys\" \"\{name}_\{fn_name}\"\n",
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
