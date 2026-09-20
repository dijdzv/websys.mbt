///|
fn wasm_operation_semantics(parsed : JsValue) -> Map[String, WasmSemanticType] {
  let aliases = match resolve_wasm_semantic_aliases(parsed) {
    Ok(values) => values
    Err(message) => abort(message)
  }
  let items = get_parse_data(parsed)
  let fields : Map[String, Array[(String, WasmSemanticType)]] = Map([])
  let parents : Map[String, Array[String]] = Map([])
  for index = 0; index < js_array_length(items); index = index + 1 {
    let item = js_array_get(items, index)
    let name = get_name(item)
    if get_type(item) == "includes" {
      let target = get_target(item)
      let values = parents.get(target).unwrap_or([])
      values.push(get_includes(item))
      parents[target] = values
    } else if get_type(item) == "interface" ||
      get_type(item) == "interface mixin" {
      let values = fields.get(name).unwrap_or([])
      let members = get_members(item)
      for index = 0; index < js_array_length(members); index = index + 1 {
        let item = js_array_get(members, index)
        if get_type(item) != "operation" {
          continue
        }
        let arguments = get_arguments(item)
        for index = 0; index < js_array_length(arguments); index = index + 1 {
          let argument = js_array_get(arguments, index)
          values.push(
            (
              get_name(item) + "." + index.to_string(),
              resolve_wasm_field_type(
                wasm_argument_semantic_type(argument),
                aliases,
              ),
            ),
          )
        }
      }
      fields[name] = values
      let parent = get_inheritance(item)
      if parent != "" {
        let values = parents.get(name).unwrap_or([])
        values.push(parent)
        parents[name] = values
      }
    }
  }
  let output : Map[String, WasmSemanticType] = Map([])
  for name, _ in fields {
    let pending = [name]
    let visited : Array[String] = []
    let mut index = 0
    while index < pending.length() {
      let owner = pending[index]
      index += 1
      if visited.contains(owner) {
        continue
      }
      visited.push(owner)
      for (key, value) in fields.get(owner).unwrap_or([]) {
        let key = name + "." + key
        if !output.contains(key) {
          output[key] = value
        }
      }
      for parent in parents.get(owner).unwrap_or([]) {
        pending.push(parent)
      }
    }
  }
  output
}

///|
fn wasm_operation_arguments_error(
  item : JsValue,
  aliases : Map[String, WasmSemanticType],
  references : Array[String],
  dictionaries : Array[String],
  enums : Array[String],
) -> String? {
  let arguments = get_arguments(item)
  for index = 0; index < js_array_length(arguments); index = index + 1 {
    let argument = js_array_get(arguments, index)
    let typ = resolve_wasm_field_type(
      wasm_argument_semantic_type(argument),
      aliases,
    )
    if plan_wasm_input(typ, references~, dictionaries~, enums~) is None {
      if typ.conversion_error() is Some(message) {
        return Some(message)
      }
    }
  }
  None
}

///|
fn wasm_argument_semantic_type(argument : JsValue) -> WasmSemanticType {
  let typ = parse_wasm_semantic_type(get_idl_type(argument))
  let annotations = typ.annotations.copy()
  let attrs = get_ext_attrs(argument)
  for index = 0; index < js_array_length(attrs); index = index + 1 {
    annotations.push(wasm_type_annotation(js_array_get(attrs, index)))
  }
  { ..typ, annotations, }
}
