///|
extern "js" fn read_wasm_input(path : String) -> String =
  #| path => require('fs').readFileSync(path, 'utf8')

///|
fn wasm_has_argument_annotations(item : JsValue) -> Bool {
  let args = get_arguments(item)
  for i = 0; i < js_array_length(args); i = i + 1 {
    let arg = js_array_get(args, i)
    if js_array_length(get_ext_attrs(arg)) != 0 ||
      validate_wasm_raw_type(get_idl_type(arg)) is Some(_) {
      return true
    }
  }
  false
}

///|
fn validate_wasm_input(parsed : JsValue) -> String? {
  let aliases = match resolve_wasm_semantic_aliases(parsed) {
    Ok(values) => values
    Err(message) => return Some(message)
  }
  let items = get_parse_data(parsed)
  let references : Array[String] = [
    "ArrayBuffer", "SharedArrayBuffer", "ArrayBufferView",
  ]
  let dictionaries : Array[String] = []
  let enums : Array[String] = []
  for i = 0; i < js_array_length(items); i = i + 1 {
    let item = js_array_get(items, i)
    if get_type(item) == "dictionary" {
      dictionaries.push(get_name(item))
    }
    if get_type(item) == "enum" {
      enums.push(get_name(item))
    }
    if get_type(item) == "interface" || get_type(item) == "callback" {
      references.push(get_name(item))
    }
  }
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
          if get_type(mem) != "operation" &&
            get_type(mem) != "attribute" &&
            get_type(mem) != "constructor" {
            return Some("Unsupported WasmGC member: " + get_type(mem))
          }
          let invalid_arguments = if get_type(mem) == "operation" {
            wasm_operation_arguments_error(
              mem, aliases, references, dictionaries, enums,
            )
            is Some(_)
          } else {
            wasm_has_argument_annotations(mem)
          }
          if invalid_arguments ||
            (
              get_type(mem) != "constructor" &&
              validate_wasm_raw_type(get_idl_type(mem)) is Some(_)
            ) {
            return Some(
              "WasmGC type/argument conversion or annotation is not implemented",
            )
          }
        }
      }
      "includes" | "enum" => ()
      "typedef" =>
        if validate_wasm_dictionary_input_type(
            get_idl_type(item),
            aliases,
            references,
            dictionaries~,
            enums~,
          )
          is Some(message) {
          return Some(message)
        }
      "dictionary" => {
        let members = get_members(item)
        for j = 0; j < js_array_length(members); j = j + 1 {
          let field = js_array_get(members, j)
          if validate_wasm_dictionary_input_type(
              get_idl_type(field),
              aliases,
              references,
              dictionaries~,
              enums~,
            )
            is Some(message) {
            return Some(message)
          }
          if js_array_length(get_ext_attrs(field)) != 0 {
            return Some(
              "WasmGC dictionary extended attributes are not implemented",
            )
          }
        }
      }
      "callback" =>
        if wasm_has_argument_annotations(item) ||
          validate_wasm_raw_type(get_idl_type(item)) is Some(_) {
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
    Primitive("unsigned long") => Some("UInt")
    Primitive("unsigned short") => Some("UInt")
    Primitive("double") => Some("Double")
    Named("ArrayBuffer" | "SharedArrayBuffer" | "ArrayBufferView" as name) =>
      Some(name)
    Named(name) if names.contains(name) => Some(name)
    Nullable(String) => Some("String?")
    Nullable(Primitive("unsigned long")) => Some("UInt?")
    Nullable(
      Named("ArrayBuffer" | "SharedArrayBuffer" | "ArrayBufferView" as name)
    ) => Some(name + "?")
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
    Primitive("unsigned long") => "(" + name + " >>> 0)"
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
  dictionaries? : Array[String] = [],
  promise_interfaces? : Array[String] = [],
  input_converters? : Map[String, (String, String)] = Map([]),
  result_enums? : Array[String] = [],
) -> Unit {
  if result is Named(name) && dictionaries.contains(name) {
    abort("WasmGC dictionary results are not implemented")
  }
  if result is Nullable(Named(name)) && dictionaries.contains(name) {
    abort("Nullable WasmGC dictionaries are not implemented")
  }
  for param in params {
    if param.1 is Nullable(Named(name)) && dictionaries.contains(name) {
      abort("Nullable WasmGC dictionaries are not implemented")
    }
  }
  let public_params = params
    .map(p => {
      let typ = match input_converters.get(p.0) {
        Some((typ, _)) => typ
        None => require_wasm_type(p.1, names)
      }
      p.0 + " : " + typ
    })
    .join(", ")
  let result_type = match result {
    Named(name) if result_enums.contains(name) => name
    Promise(inner) =>
      "WebsysPromise[" +
      require_wasm_promise_value(
        inner,
        interfaces=promise_interfaces,
        dictionaries~,
      ).name +
      "]"
    _ => require_wasm_type(result, names)
  }
  let key = owner + "_" + member_name
  let enum_result = result is Named(name) && result_enums.contains(name)
  let needs_wrapper = enum_result ||
    result is Promise(_) ||
    result is Nullable(_) ||
    params.any(p => {
      input_converters.contains(p.0) ||
      p.1 is Nullable(_) ||
      (p.1 is Named(name) && dictionaries.contains(name))
    })
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
      (if input_converters.contains(p.0) {
        "JsValue"
      } else if p.1 is Nullable(_) {
        "WebsysNullable"
      } else if p.1 is Named(name) && dictionaries.contains(name) {
        "JsValue"
      } else {
        require_wasm_type(p.1, names)
      })
    })
    .join(", ")
  let raw_result = if enum_result {
    "String"
  } else if result is Promise(inner) {
    "@js_async.Promise[" +
    require_wasm_promise_value(
      inner,
      interfaces=promise_interfaces,
      dictionaries~,
    ).name +
    "]"
  } else if result is Nullable(_) {
    "WebsysNullable"
  } else {
    result_type
  }
  let args = params
    .map(p => {
      if input_converters.get(p.0) is Some((_, converter)) {
        return converter + "(" + p.0 + ")"
      }
      match p.1 {
        Named(name) if dictionaries.contains(name) => p.0 + ".to_js()"
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
    Named(name) if result_enums.contains(name) =>
      out.write_string(
        "  \{name}::from_string(websys_raw_\{key}(\{args})).unwrap()\n",
      )
    Promise(inner) => {
      let name = require_wasm_promise_value(
        inner,
        interfaces=promise_interfaces,
        dictionaries~,
      ).key()
      out.write_string(
        "  WebsysPromise::{ raw: websys_raw_\{key}(\{args}), decode: websys_promise_decode_\{name} }\n",
      )
    }
    Nullable(inner) =>
      out.write_string(
        "  let value = websys_raw_\{key}(\{args})\n  if websys_is_null(value) { None } else { Some(websys_unwrap_\{require_wasm_type(inner, names)}(value)) }\n",
      )
    _ => out.write_string("  websys_raw_\{key}(\{args})\n")
  }
  out.write_string("}\n")
}

///|
fn generate_wasm(
  definitions : Array[Definition],
  dictionary_types? : Map[String, WasmSemanticType] = Map([]),
  operation_types? : Map[String, WasmSemanticType] = Map([]),
) -> (String, String) {
  let definitions = match resolve_wasm_typedefs(definitions) {
    Ok(values) => values
    Err(message) => {
      println(message)
      abort("Invalid WasmGC typedef")
    }
  }
  let definitions = match prepare_wasm_dictionaries(definitions) {
    Ok(values) => values
    Err(message) => abort(message)
  }
  let definitions = match compose_wasm_interfaces(definitions) {
    Ok(definitions) => definitions
    Err(message) => abort(message)
  }
  let names : Array[String] = []
  let enums : Array[String] = []
  let dictionaries : Array[String] = []
  let promise_interfaces : Array[String] = []
  for definition in definitions {
    let name = match definition {
      Enum(value) => {
        guard !enums.contains(value.name) else {
          abort("Duplicate WasmGC enum")
        }
        enums.push(value.name)
        continue
      }
      Interface(value) => {
        promise_interfaces.push(value.name)
        value.name
      }
      CallbackInterface(value) => value.name
      Dictionary(value) => {
        dictionaries.push(value.name)
        value.name
      }
      _ => abort("Unsupported WasmGC definition")
    }
    guard !names.contains(name) else {
      abort("Duplicate WasmGC definition: " + name)
    }
    names.push(name)
  }
  let mbt = StringBuilder()
  let needs_js_values = !dictionaries.is_empty() || !operation_types.is_empty()
  for name in enums {
    guard !names.contains(name) else { abort("Conflicting WasmGC enum name") }
  }
  let js = StringBuilder()
  let inputs : Array[String] = []
  let outputs : Array[String] = []
  let promise_values : Array[WasmPromiseValue] = []
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
            if attr.idl_type is Promise(_) {
              abort("WasmGC Promise attributes are not implemented")
            }
            record(attr.idl_type, outputs)
            if !attr.is_readonly {
              record(attr.idl_type, inputs)
            }
          }
          Operation(op) => {
            if op.return_type is Promise(inner) {
              let plan = require_wasm_promise_value(
                inner,
                interfaces=promise_interfaces,
                dictionaries~,
              )
              if !promise_values.any(value => value.name == plan.name) {
                promise_values.push(plan)
              }
            }
            record(op.return_type, outputs)
            for arg in op.arguments {
              if wasm_type(arg.idl_type, names) is Some(_) {
                record(arg.idl_type, inputs)
              }
            }
          }
          Constructor(ctor) =>
            for arg in ctor.arguments {
              record(arg.idl_type, inputs)
            }
          _ => ()
        }
      }
    }
  }
  mbt.write_string("// Generated from WebIDL. Do not edit.\n")
  // ArrayBuffer is a WebIDL builtin, not an interface declaration or MoonBit array.
  for buffer_type in ["ArrayBuffer", "SharedArrayBuffer", "ArrayBufferView"] {
    guard !names.contains(buffer_type) else {
      abort("Reserved WebIDL buffer type name: " + buffer_type)
    }
    mbt.write_string("#external\npub type \{buffer_type}\n")
  }
  if needs_js_values {
    guard !names.contains("JsValue") && !names.contains("Nullable") else {
      abort("Reserved dictionary support type name")
    }
    mbt.write_string(
      "#external\npub type JsValue\npub(all) enum Nullable[T] { Undefined; Null; Value(T) }\nfn websys_dict_new() -> JsValue = \"websys\" \"dict_new\"\n",
    )
    if dictionary_types.values().any(typ => typ.nullable) ||
      definitions.any(def => {
        def is Dictionary(dict) &&
        dict.members.any(field => field.idl_type is Nullable(_))
      }) {
      mbt.write_string(
        "fn websys_dict_null(target : JsValue, key : String) -> Unit = \"websys\" \"dict_null\"\n",
      )
    }
  }
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
    let wrap = if typ == "UInt" {
      "nullable_unsigned"
    } else {
      "nullable_identity"
    }
    mbt.write_string(
      "fn websys_wrap_\{typ}(value : \{typ}) -> WebsysNullable = \"websys\" \"\{wrap}\"\n",
    )
  }
  for typ in outputs {
    mbt.write_string(
      "fn websys_unwrap_\{typ}(value : WebsysNullable) -> \{typ} = \"websys\" \"nullable_identity\"\n",
    )
  }
  js.write_string(
    "// Generated from WebIDL. Do not edit.\nexport function createImports() {\n  return { 'moonbit:ffi': { make_closure: (fn, closure) => fn.bind(null, closure) },\n",
  )
  if !promise_values.is_empty() {
    guard !names.contains("WebsysPromise") &&
      !names.contains("PromiseDecodeError") else {
      abort("Reserved Promise support type name")
    }
    js.write_string(
      "    'moonbit:async': { set_timeout: (duration, callback) => setTimeout(callback, duration), clear_timeout: timer => clearTimeout(timer), subscribe: (promise, resolve, reject) => { const slot = { resolve, reject }; Promise.resolve(promise).then(value => slot.resolve?.(value), reason => slot.reject?.(reason)); return slot; }, detach: slot => { slot.resolve = undefined; slot.reject = undefined; } },\n",
    )
  }
  js.write_string("    websys: {\n")
  guard !names.contains("WebsysBufferSnapshot") else {
    abort("Reserved ArrayBuffer support type name")
  }
  emit_wasm_arraybuffer_bytes(mbt, js)
  if needs_js_values {
    emit_wasm_bytes(mbt, js)
  }
  if !promise_values.is_empty() {
    emit_wasm_promise_support(
      mbt, js, promise_values, definitions, promise_interfaces,
    )
  }
  js.write_string(
    "    nullable_null: () => null, nullable_is_null: value => value === null, nullable_identity: value => value, nullable_unsigned: value => value >>> 0,\n",
  )
  if needs_js_values {
    js.write_string(
      "    dict_new: () => ({}), dict_null: (target, key) => { target[key] = null; },\n",
    )
  }
  for definition in definitions {
    match definition {
      Enum(value) => {
        let variants : Array[String] = []
        for value in value.values {
          let variant = to_pascal_case(value)
          guard !variants.contains(variant) else {
            abort("Conflicting WasmGC enum variants")
          }
          variants.push(variant)
        }
        mbt.write_string(gen_enum(value))
      }
      Dictionary(dict) =>
        emit_wasm_dictionary(
          dict,
          mbt,
          js,
          names,
          dictionaries,
          dictionary_types~,
          enums~,
        )
      CallbackInterface(cb) => {
        guard cb.arguments.length() <= 1 && cb.return_type is Some(Void) else {
          abort(
            "WasmGC callbacks currently require zero or one argument and a void result",
          )
        }
        let event = if cb.arguments.is_empty() {
          ""
        } else {
          let argument = cb.arguments[0]
          let typ = require_wasm_type(argument.idl_type, names)
          guard !dictionaries.contains(typ) else {
            abort("WasmGC dictionary callback values are not implemented")
          }
          guard !(argument.idl_type is Nullable(_)) else {
            abort("Nullable WasmGC callback arguments are not implemented")
          }
          guard !argument.optional && !argument.variadic else {
            abort("Optional/variadic WasmGC callbacks are not implemented")
          }
          typ
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
          let checked = "from_" + to_snake_case(ancestor) + "_opt"
          emitted.push(checked)
          mbt.write_string(
            "fn websys_is_\{name}_from_\{ancestor}(value : \{ancestor}) -> Bool = \"websys\" \"is_\{name}_from_\{ancestor}\"\n",
          )
          mbt.write_string(
            "fn websys_cast_\{name}_from_\{ancestor}(value : \{ancestor}) -> \{name} = \"websys\" \"cast_\{name}_from_\{ancestor}\"\n",
          )
          mbt.write_string(
            "pub fn \{name}::\{checked}(value : \{ancestor}) -> \{name}? { if websys_is_\{name}_from_\{ancestor}(value) { Some(websys_cast_\{name}_from_\{ancestor}(value)) } else { None } }\n",
          )
          js.write_string(
            "    is_\{name}_from_\{ancestor}: value => typeof globalThis.\{name} === 'function' && value instanceof globalThis.\{name},\n    cast_\{name}_from_\{ancestor}: value => value,\n",
          )
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
                dictionaries~,
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
                  dictionaries~,
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
              for (fn_name, variant_arguments) in wasm_operation_variants(op) {
                guard !emitted.contains(fn_name) else {
                  abort("WasmGC overloads are not implemented")
                }
                emitted.push(fn_name)
                let parameters : Array[(String, IdlType)] = [
                  ("self", Named(name)),
                ]
                let arguments = StringBuilder()
                let values = StringBuilder()
                let input_converters : Map[String, (String, String)] = Map([])
                for i, arg in variant_arguments {
                  parameters.push(("arg\{i}", arg.idl_type))
                  let semantic = operation_types.get(
                    name + "." + op.name + "." + i.to_string(),
                  )
                  let plan = match semantic {
                    Some(typ) if !typ.annotations.is_empty() ||
                      wasm_type(arg.idl_type, names) is None =>
                      plan_wasm_input(
                        typ,
                        references=names,
                        dictionaries~,
                        enums~,
                      )
                    _ =>
                      if arg.idl_type is Sequence(_) || arg.idl_type is Union(_) {
                        Some(
                          wasm_compound_argument_plan(
                            arg.idl_type,
                            names,
                            dictionaries,
                          ),
                        )
                      } else {
                        None
                      }
                  }
                  if plan is Some(plan) {
                    let converter = "websys_arg_" +
                      name +
                      "_" +
                      fn_name +
                      "_" +
                      i.to_string()
                    let typ = emit_wasm_input_plan(plan, converter, mbt, js)
                    input_converters["arg\{i}"] = (typ, converter)
                  }
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
                  dictionaries~,
                  promise_interfaces~,
                  input_converters~,
                  result_enums=enums,
                )
                let js_params = if variant_arguments.is_empty() {
                  "self"
                } else {
                  "self, " + arguments.to_string()
                }
                if op.return_type is Promise(_) {
                  js.write_string(
                    "    \{name}_\{fn_name}: (\{js_params}) => { try { return self.\{op.name}(\{values}); } catch (error) { return Promise.reject(error); } },\n",
                  )
                } else {
                  js.write_string(
                    "    \{name}_\{fn_name}: (\{js_params}) => self.\{op.name}(\{values}),\n",
                  )
                }
              }
            }
            Constructor(ctor) => {
              guard !emitted.contains("new") else {
                abort("WasmGC constructor overloads are not implemented")
              }
              emitted.push("new")
              let params : Array[(String, IdlType)] = []
              let arguments : Array[String] = []
              let values : Array[String] = []
              for i, arg in ctor.arguments {
                guard !arg.optional && !arg.variadic else {
                  abort(
                    "Optional/variadic WasmGC constructor arguments are not implemented",
                  )
                }
                params.push(("arg\{i}", arg.idl_type))
                arguments.push("arg\{i}")
                values.push(wasm_js_arg(arg.idl_type, "arg\{i}"))
              }
              emit_wasm_function(
                mbt,
                name,
                "new",
                params,
                Named(name),
                names,
                dictionaries~,
              )
              js.write_string(
                "    \{name}_new: (\{arguments.join(", ")}) => new globalThis.\{name}(\{values.join(", ")}),\n",
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
