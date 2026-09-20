///|
fn validate_wasm_raw_type(typ : JsValue) -> String? {
  parse_wasm_semantic_type(typ).conversion_error()
}

///|
fn validate_wasm_dictionary_input_type(
  typ : JsValue,
  aliases : Map[String, WasmSemanticType],
) -> String? {
  let semantic = resolve_wasm_field_type(parse_wasm_semantic_type(typ), aliases)
  if plan_wasm_input(semantic) is Some(_) {
    None
  } else {
    semantic.conversion_error()
  }
}
