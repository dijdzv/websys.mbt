///|
fn emit_wasm_dictionary(
  dict : DictionaryDef,
  mbt : StringBuilder,
  js : StringBuilder,
  references : Array[String],
) -> Unit {
  let name = dict.name
  mbt.write_string("pub(all) struct \{name} {\n")
  let fields : Array[String] = []
  for field in dict.members {
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
    ignore(require_wasm_type(value_type, references))
    mbt.write_string("  \{key} : \{plan.public_type()}\n")
  }
  mbt.write_string("}\n")
  for field in dict.members {
    let key = field_name_to_moonbit(field.name)
    let plan = plan_dictionary_field(field)
    let value_type = match plan.value_type {
      Nullable(inner) => inner
      other => other
    }
    let typ = require_wasm_type(value_type, references)
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
    let set = "websys_dict_\{name}_\{key}(target, value)"
    let null = "websys_dict_null(target, \"\{field.name}\")"
    match plan_dictionary_field(field).presence {
      Required =>
        if field.idl_type is Nullable(_) {
          mbt.write_string(
            "  match self.\{key} { None => \{null}; Some(value) => \{set} }\n",
          )
        } else {
          mbt.write_string(
            "  websys_dict_\{name}_\{key}(target, self.\{key})\n",
          )
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
