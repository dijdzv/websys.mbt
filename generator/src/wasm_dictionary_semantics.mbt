///|
fn resolve_wasm_field_type(
  typ : WasmSemanticType,
  aliases : Map[String, WasmSemanticType],
) -> WasmSemanticType {
  let kind = match typ.kind {
    Name(name) =>
      match aliases.get(name) {
        Some(value) =>
          return {
            ..value,
            nullable: typ.nullable || value.nullable,
            annotations: typ.annotations + value.annotations,
          }
        None => typ.kind
      }
    Generic(name, args) =>
      Generic(name, args.map(arg => resolve_wasm_field_type(arg, aliases)))
    Union(args) =>
      WasmTypeKind::Union(
        args.map(arg => resolve_wasm_field_type(arg, aliases)),
      )
  }
  { ..typ, kind, }
}

///|
fn wasm_dictionary_semantics(parsed : JsValue) -> Map[String, WasmSemanticType] {
  let aliases = match resolve_wasm_semantic_aliases(parsed) {
    Ok(values) => values
    Err(message) => abort(message)
  }
  let items = get_parse_data(parsed)
  let dictionaries : Map[String, JsValue] = Map([])
  for index = 0; index < js_array_length(items); index = index + 1 {
    let item = js_array_get(items, index)
    if get_type(item) == "dictionary" {
      dictionaries[get_name(item)] = item
    }
  }
  let output : Map[String, WasmSemanticType] = Map([])
  for name, _ in dictionaries {
    let mut current = name
    let visited : Array[String] = []
    while current != "" {
      if visited.contains(current) {
        abort("Cyclic dictionary inheritance")
      }
      visited.push(current)
      let item = match dictionaries.get(current) {
        Some(value) => value
        None => abort("Missing dictionary parent")
      }
      let fields = get_members(item)
      for index = 0; index < js_array_length(fields); index = index + 1 {
        let field = js_array_get(fields, index)
        output[name + "." + get_name(field)] = resolve_wasm_field_type(
          parse_wasm_semantic_type(get_idl_type(field)),
          aliases,
        )
      }
      current = get_inheritance(item)
    }
  }
  output
}
