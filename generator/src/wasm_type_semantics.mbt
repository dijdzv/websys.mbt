///|
enum WasmTypeKind {
  Name(String)
  Generic(String, Array[WasmSemanticType])
  Union(Array[WasmSemanticType])
} derive(Eq, Debug)

///|
struct WasmSemanticType {
  kind : WasmTypeKind
  nullable : Bool
  annotated : Bool
} derive(Eq, Debug)

///|
extern "js" fn wasm_generic_name(value : JsValue) -> String =
  #| value => value.generic || ''

///|
fn parse_wasm_semantic_type(value : JsValue) -> WasmSemanticType {
  let generic = wasm_generic_name(value)
  let kind : WasmTypeKind = if is_union_type(value) || generic != "" {
    let raw = get_union_types(value)
    let children : Array[WasmSemanticType] = []
    for index = 0; index < js_array_length(raw); index = index + 1 {
      children.push(parse_wasm_semantic_type(js_array_get(raw, index)))
    }
    if is_union_type(value) {
      Union(children)
    } else {
      Generic(generic, children)
    }
  } else {
    Name(get_type_name(value))
  }
  {
    kind,
    nullable: is_nullable_type(value),
    annotated: js_array_length(get_ext_attrs(value)) != 0,
  }
}

///|
fn WasmSemanticType::conversion_error(self : WasmSemanticType) -> String? {
  if self.annotated {
    return Some("WasmGC type annotations are not implemented")
  }
  if self.kind is Generic("record", _) {
    return Some("WasmGC record key/value conversion is not implemented")
  }
  if self.nullable && !(self.kind is Name(_)) {
    return Some("WasmGC nullable compound type conversion is not implemented")
  }
  match self.kind {
    Name(_) => None
    Generic(_, children) | Union(children) => {
      for child in children {
        if child.conversion_error() is Some(message) {
          return Some(message)
        }
      }
      None
    }
  }
}

///|
priv suberror SemanticAliasError {
  SemanticAliasError(String)
}

///|
fn resolve_wasm_semantic_aliases(
  parsed : JsValue,
) -> Result[Map[String, WasmSemanticType], String] {
  let aliases : Map[String, WasmSemanticType] = Map([])
  let items = get_parse_data(parsed)
  for index = 0; index < js_array_length(items); index = index + 1 {
    let item = js_array_get(items, index)
    if get_type(item) == "typedef" {
      let name = get_name(item)
      if aliases.contains(name) {
        return Err("Duplicate WasmGC typedef: " + name)
      }
      aliases[name] = parse_wasm_semantic_type(get_idl_type(item))
    }
  }
  fn resolve(
    typ : WasmSemanticType,
    path : Array[String],
  ) -> WasmSemanticType raise SemanticAliasError {
    let kind = match typ.kind {
      Name(name) =>
        match aliases.get(name) {
          None => typ.kind
          Some(target) => {
            if path.contains(name) {
              raise SemanticAliasError("Cyclic WasmGC typedef: " + name)
            }
            let target = resolve(target, path + [name])
            if typ.nullable && target.nullable {
              raise SemanticAliasError(
                "Repeated nullable WasmGC typedef: " + name,
              )
            }
            return {
              ..target,
              nullable: typ.nullable || target.nullable,
              annotated: typ.annotated || target.annotated,
            }
          }
        }
      Generic(name, children) =>
        Generic(name, children.map(child => resolve(child, path)))
      Union(children) =>
        WasmTypeKind::Union(children.map(child => resolve(child, path)))
    }
    { ..typ, kind, }
  }
  try {
    let resolved : Map[String, WasmSemanticType] = Map([])
    for name, typ in aliases {
      resolved[name] = resolve(typ, [name])
    }
    Ok(resolved)
  } catch {
    SemanticAliasError(message) => Err(message)
  }
}
