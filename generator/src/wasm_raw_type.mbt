///|
fn validate_wasm_raw_type(typ : JsValue) -> String? {
  if is_record_type(typ) {
    return Some("WasmGC record key/value conversion is not implemented")
  }
  if is_nullable_type(typ) &&
    (is_union_type(typ) || is_sequence_type(typ) || is_promise_type(typ)) {
    return Some("WasmGC nullable compound type conversion is not implemented")
  }
  if js_array_length(get_ext_attrs(typ)) != 0 {
    return Some("WasmGC type annotations are not implemented")
  }
  if is_union_type(typ) {
    let types = get_union_types(typ)
    for index = 0; index < js_array_length(types); index = index + 1 {
      if validate_wasm_raw_type(js_array_get(types, index)) is Some(message) {
        return Some(message)
      }
    }
  } else if is_sequence_type(typ) {
    return validate_wasm_raw_type(get_sequence_inner_type(typ))
  } else if is_promise_type(typ) {
    return validate_wasm_raw_type(get_promise_inner_type(typ))
  }
  None
}
