///|
fn emit_wasm_dictionary(
  dict : DictionaryDef,
  mbt : StringBuilder,
  js : StringBuilder,
  references : Array[String],
  dictionaries : Array[String],
  dictionary_types? : Map[String, WasmSemanticType] = Map([]),
) -> Unit {
  let name = dict.name
  let compound_types : Map[String, String] = Map([])
  let converters : Map[String, String] = Map([])
  let nullable_fields : Array[String] = []
  for field in dict.members {
    if dictionary_types.get(name + "." + field.name) is Some(typ) {
      if typ.nullable {
        nullable_fields.push(field.name)
      }
    } else if field.idl_type is Nullable(_) {
      nullable_fields.push(field.name)
    }
  }
  for field in dict.members {
    if dictionary_types.get(name + "." + field.name) is Some(typ) &&
      !(typ.kind is Name(_)) {
      guard plan_wasm_input(
          { ..typ, nullable: false, },
          references=references.filter(name => !dictionaries.contains(name)),
        )
        is Some(plan) else {
        println(
          "Unsupported compound dictionary input: " + name + "." + field.name,
        )
        abort("Unsupported dictionary input")
      }
      let prefix = "websys_input_" +
        name +
        "_" +
        field_name_to_moonbit(field.name)
      compound_types[field.name] = emit_wasm_input_plan(plan, prefix, mbt, js)
      converters[field.name] = prefix
    }
  }
  mbt.write_string("pub(all) struct \{name} {\n")
  let fields : Array[String] = []
  for field in dict.members {
    if dictionary_types.get(name + "." + field.name) is Some(typ) {
      if !compound_types.contains(field.name) &&
        typ.conversion_error() is Some(message) {
        println(message)
        abort("Unsupported dictionary input conversion")
      }
    }
    let key = field_name_to_moonbit(field.name)
    guard !fields.contains(key) else {
      abort("Duplicate dictionary field: " + name + "." + key)
    }
    fields.push(key)
    let plan = plan_dictionary_field(field)
    let value_type = match plan.value_type {
      Nullable(inner) => inner
      other => other
    }
    let typ = if compound_types.get(field.name) is Some(typ) {
      typ
    } else if value_type is Any {
      "JsValue"
    } else {
      require_wasm_type(value_type, references)
    }
    let presence = if !field.required && nullable_fields.contains(field.name) {
      OptionalNullable
    } else {
      plan.presence
    }
    let public_type = match presence {
      Required =>
        if nullable_fields.contains(field.name) {
          typ + "?"
        } else {
          typ
        }
      Optional => typ + "?"
      OptionalNullable => "Nullable[" + typ + "]"
    }
    mbt.write_string("  \{key} : \{public_type}\n")
  }
  mbt.write_string("}\n")
  for field in dict.members {
    let key = field_name_to_moonbit(field.name)
    let plan = plan_dictionary_field(field)
    let value_type = match plan.value_type {
      Nullable(inner) => inner
      other => other
    }
    let typ = if compound_types.contains(field.name) {
      "JsValue"
    } else if value_type is Any {
      "JsValue"
    } else if value_type is Named(name) && dictionaries.contains(name) {
      "JsValue"
    } else {
      require_wasm_type(value_type, references)
    }
    mbt.write_string(
      "fn websys_dict_\{name}_\{key}(target : JsValue, value : \{typ}) -> Unit = \"websys\" \"dict_\{name}_\{key}\"\n",
    )
    let value = wasm_js_arg(value_type, "value")
    js.write_string(
      "    dict_\{name}_\{key}: (target, value) => { target.\{field.name} = \{value}; },\n",
    )
  }
  mbt.write_string(
    "pub fn \{name}::to_js(self : \{name}) -> JsValue {\n  let target = websys_dict_new()\n",
  )
  for field in dict.members {
    let key = field_name_to_moonbit(field.name)
    let nested = match field.idl_type {
      Named(name) | Nullable(Named(name)) => dictionaries.contains(name)
      _ => false
    }
    let converted = if converters.get(field.name) is Some(convert) {
      convert + "(value)"
    } else if nested {
      "value.to_js()"
    } else {
      "value"
    }
    let set = "websys_dict_\{name}_\{key}(target, \{converted})"
    let null = "websys_dict_null(target, \"\{field.name}\")"
    let presence = if !field.required && nullable_fields.contains(field.name) {
      OptionalNullable
    } else {
      plan_dictionary_field(field).presence
    }
    match presence {
      Required =>
        if nullable_fields.contains(field.name) {
          mbt.write_string(
            "  match self.\{key} { None => \{null}; Some(value) => \{set} }\n",
          )
        } else {
          let value = if converters.get(field.name) is Some(convert) {
            convert + "(self." + key + ")"
          } else {
            "self." + key + (if nested { ".to_js()" } else { "" })
          }
          mbt.write_string("  websys_dict_\{name}_\{key}(target, \{value})\n")
        }
      Optional =>
        mbt.write_string("  if self.\{key} is Some(value) { \{set} }\n")
      OptionalNullable =>
        mbt.write_string(
          "  match self.\{key} { Undefined => (); Null => \{null}; Value(value) => \{set} }\n",
        )
    }
  }
  mbt.write_string("  target\n}\n")
}

///|
fn prepare_wasm_dictionaries(
  definitions : Array[Definition],
) -> Result[Array[Definition], String] {
  let dictionaries : Array[(String, DictionaryDef)] = []
  for definition in definitions {
    if definition is Dictionary(dict) {
      if lookup_dict(dictionaries, dict.name) is Some(_) {
        return Err("Duplicate dictionary: " + dict.name)
      }
      dictionaries.push((dict.name, dict))
    }
  }
  for entry in dictionaries {
    let seen : Array[String] = []
    let fields : Array[String] = []
    let mut current = Some(entry.0)
    while current is Some(name) {
      if seen.contains(name) {
        return Err("Cyclic dictionary inheritance: " + name)
      }
      seen.push(name)
      let dict = match lookup_dict(dictionaries, name) {
        Some(value) => value
        None => return Err("Unknown dictionary parent: " + name)
      }
      for field in dict.members {
        if fields.contains(field.name) {
          return Err("Duplicate dictionary field: " + field.name)
        }
        fields.push(field.name)
      }
      current = dict.inheritance
    }
  }
  resolve_dictionary_inheritance(dictionaries)
  Ok(
    definitions.map(fn(definition) {
      match definition {
        Dictionary(dict) =>
          Dictionary(lookup_dict(dictionaries, dict.name).unwrap())
        _ => definition
      }
    }),
  )
}
