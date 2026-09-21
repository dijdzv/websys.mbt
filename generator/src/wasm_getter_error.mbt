///|
fn emit_wasm_getter_error_support(
  mbt : StringBuilder,
  js : StringBuilder,
) -> Unit {
  mbt.write_string(
    "#external\npub type JsError\n#external\npriv type WebsysGetterOutcome\n" +
    "pub fn JsError::name(self : JsError) -> String = \"websys\" \"getter_error_name\"\n" +
    "pub fn JsError::message(self : JsError) -> String = \"websys\" \"getter_error_message\"\n" +
    "pub impl Debug for JsError with to_repr(self) { @debug.Repr::Repr(self.message()) }\n" +
    "fn websys_getter_ok(result : WebsysGetterOutcome) -> Bool = \"websys\" \"getter_ok\"\n" +
    "fn websys_getter_error(result : WebsysGetterOutcome) -> JsError = \"websys\" \"getter_error\"\n",
  )
  js.write_string(
    "    getter_ok: result => result.ok, getter_error: result => result.error,\n" +
    "    getter_error_name: error => (error && error.name) || '',\n" +
    "    getter_error_message: error => String(error?.message ?? error),\n",
  )
}

///|
fn emit_wasm_throwing_getter(
  mbt : StringBuilder,
  js : StringBuilder,
  owner : String,
  member_name : String,
  attr : AttributeDef,
  names : Array[String],
  dictionaries : Array[String],
) -> Unit {
  match attr.idl_type {
    Named(name) | Nullable(Named(name)) if dictionaries.contains(name) =>
      abort("WasmGC dictionary getter results are not implemented")
    _ => ()
  }
  let value_type = require_wasm_type(attr.idl_type, names)
  let raw_type = if attr.idl_type is Nullable(_) {
    "WebsysNullable"
  } else {
    value_type
  }
  let key = owner + "_" + member_name
  let error_type = gen_error_enum_name(
    "get_" + attr.name,
    interface_prefix=owner,
  )
  mbt.write_string(gen_error_enum(error_type, attr.getter_throws))
  mbt.write_string(
    "fn websys_get_\{key}(receiver : \{owner}) -> WebsysGetterOutcome = \"websys\" \"\{key}\"\n",
  )
  mbt.write_string(
    "fn websys_get_value_\{key}(result : WebsysGetterOutcome) -> \{raw_type} = \"websys\" \"\{key}_value\"\n",
  )
  mbt.write_string(
    "pub fn \{owner}::\{member_name}(self : \{owner}) -> Result[\{value_type}, \{error_type}] {\n  let result = websys_get_\{key}(self)\n  if !websys_getter_ok(result) {\n    let error = websys_getter_error(result)\n    return Err(match error.name() {\n",
  )
  for exception in attr.getter_throws {
    mbt.write_string(
      "      \"\{exception}\" => \{error_type}::\{capitalize_first(exception)}(error)\n",
    )
  }
  mbt.write_string(
    "      _ => \{error_type}::OtherError(error)\n    })\n  }\n  let value = websys_get_value_\{key}(result)\n",
  )
  if attr.idl_type is Nullable(inner) {
    let typ = require_wasm_type(inner, names)
    mbt.write_string(
      "  Ok(if websys_is_null(value) { None } else { Some(websys_unwrap_\{typ}(value)) })\n}\n",
    )
  } else {
    mbt.write_string("  Ok(value)\n}\n")
  }
  // The property is read exactly once; decoding reads the captured result.
  js.write_string(
    "    \{key}: self => { try { return { ok: true, value: self.\{attr.name} }; } catch(error) { return { ok: false, error }; } },\n    \{key}_value: result => result.value,\n",
  )
}
