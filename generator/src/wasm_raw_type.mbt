///|
fn validate_wasm_raw_type(typ : JsValue) -> String? {
  parse_wasm_semantic_type(typ).conversion_error()
}

///|
fn validate_wasm_dictionary_input_type(
  typ : JsValue,
  aliases : Map[String, WasmSemanticType],
  references : Array[String],
  dictionaries? : Array[String] = [],
  enums? : Array[String] = [],
) -> String? {
  let semantic = resolve_wasm_field_type(parse_wasm_semantic_type(typ), aliases)
  if plan_wasm_input(
      { ..semantic, nullable: false, },
      references~,
      dictionaries~,
      enums~,
    )
    is Some(_) {
    None
  } else {
    semantic.conversion_error()
  }
}
