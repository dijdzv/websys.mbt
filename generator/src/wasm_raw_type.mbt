///|
fn validate_wasm_raw_type(typ : JsValue) -> String? {
  parse_wasm_semantic_type(typ).conversion_error()
}
