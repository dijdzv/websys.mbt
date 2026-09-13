///|
struct WasmInventory {
  definitions : Int
  constructs : Map[String, Int]
  first_raw_rejection : String?
  parse_error : String?
} derive(ToJson)

///|
fn inventory_count(counts : Map[String, Int], key : String) -> Unit {
  counts[key] = counts.get(key).unwrap_or(0) + 1
}

///|
fn inventory_type(value : JsValue, counts : Map[String, Int]) -> Unit {
  if is_nullable_type(value) {
    inventory_count(counts, "type:nullable")
  }
  if is_union_type(value) ||
    is_sequence_type(value) ||
    is_promise_type(value) ||
    is_record_type(value) {
    let kind = if is_union_type(value) {
      "union"
    } else if is_sequence_type(value) {
      "sequence-or-array"
    } else if is_promise_type(value) {
      "Promise"
    } else {
      "record"
    }
    inventory_count(counts, "type:" + kind)
    let children = get_union_types(value)
    for i = 0; i < js_array_length(children); i = i + 1 {
      inventory_type(js_array_get(children, i), counts)
    }
  } else {
    let name = get_type_name(value)
    if name != "" {
      inventory_count(counts, "type-name:" + name)
    }
  }
}

///|
fn inventory_item(item : JsValue, counts : Map[String, Int]) -> Unit {
  let kind = get_type(item)
  inventory_count(counts, "construct:" + kind)
  if is_partial(item) {
    inventory_count(counts, "partial:" + kind)
  }
  if get_inheritance(item) != "" {
    inventory_count(counts, "inheritance:" + kind)
  }
  let attrs = get_ext_attrs(item)
  for i = 0; i < js_array_length(attrs); i = i + 1 {
    inventory_count(counts, "attribute:" + get_name(js_array_get(attrs, i)))
  }
  if kind == "operation" ||
    kind == "attribute" ||
    kind == "field" ||
    kind == "typedef" ||
    kind == "callback" ||
    kind == "const" ||
    kind == "argument" {
    inventory_type(get_idl_type(item), counts)
  }
  if kind == "maplike" || kind == "setlike" || kind == "iterable" {
    let types = get_maplike_types(item)
    for i = 0; i < js_array_length(types); i = i + 1 {
      inventory_type(js_array_get(types, i), counts)
    }
  }
  let args = get_arguments(item)
  for i = 0; i < js_array_length(args); i = i + 1 {
    let arg = js_array_get(args, i)
    if is_optional(arg) {
      inventory_count(counts, "argument:optional")
    }
    if is_variadic(arg) {
      inventory_count(counts, "argument:variadic")
    }
    inventory_item(arg, counts)
  }
  let members = get_members(item)
  for i = 0; i < js_array_length(members); i = i + 1 {
    inventory_item(js_array_get(members, i), counts)
  }
}

///|
fn inventory_wasm_source(source : String) -> WasmInventory {
  let parsed = parse_webidl_raw(source)
  let constructs : Map[String, Int] = Map([])
  if !is_parse_success(parsed) {
    return {
      definitions: 0,
      constructs,
      first_raw_rejection: None,
      parse_error: Some(get_parse_error(parsed)),
    }
  }
  let items = get_parse_data(parsed)
  for i = 0; i < js_array_length(items); i = i + 1 {
    inventory_item(js_array_get(items, i), constructs)
  }
  {
    definitions: js_array_length(items),
    constructs,
    first_raw_rejection: validate_wasm_input(parsed),
    parse_error: None,
  }
}
