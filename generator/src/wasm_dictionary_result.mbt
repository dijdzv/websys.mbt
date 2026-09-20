///|
fn emit_wasm_dictionary_result(
  dict : DictionaryDef,
  mbt : StringBuilder,
  js : StringBuilder,
  interfaces : Array[String],
) -> Unit {
  let name = dict.name
  let fields : Array[String] = []
  let reads = StringBuilder()
  let host = StringBuilder()
  for field in dict.members {
    let plan = plan_dictionary_field(field)
    guard plan.default_value is None && !(field.idl_type is Nullable(_)) else {
      abort(
        "WasmGC result dictionary defaults and nullable fields are not implemented: " +
        name +
        "." +
        field.name,
      )
    }
    let key = field_name_to_moonbit(field.name)
    let value = if field.idl_type is Any {
      WasmPromiseValue::{ name: "JsValue", predicate: "true", }
    } else {
      require_wasm_promise_value(field.idl_type, interfaces~)
    }
    guard !(field.idl_type is Void) else {
      abort("Unsupported void dictionary field")
    }
    // Snapshot foreign getters once before decoding; a second read may change
    // either the value or its type after validation.
    host.write_string("      { const value = input.\{field.name};\n")
    if field.required {
      host.write_string(
        "        if (value === undefined) throw new TypeError('Missing \{name}.\{field.name}');\n",
      )
    }
    host.write_string(
      "        if (value !== undefined && !(\{value.predicate})) throw new TypeError('Invalid \{name}.\{field.name}');\n        values.\{field.name} = value; }\n",
    )
    if !field.required {
      mbt.write_string(
        "fn websys_result_has_\{name}_\{key}(snapshot : @wasm_async.JsValue) -> Bool = \"websys\" \"result_has_\{name}_\{key}\"\n",
      )
    }
    mbt.write_string(
      "fn websys_result_read_\{name}_\{key}(snapshot : @wasm_async.JsValue) -> \{value.name} = \"websys\" \"result_read_\{name}_\{key}\"\n",
    )
    js.write_string(
      "    result_has_\{name}_\{key}: snapshot => snapshot.values.\{field.name} !== undefined, result_read_\{name}_\{key}: snapshot => snapshot.values.\{field.name},\n",
    )
    let read = "websys_result_read_\{name}_\{key}(snapshot)"
    reads.write_string(
      if field.required {
        "  let \{key} = \{read}\n"
      } else {
        "  let \{key} = if websys_result_has_\{name}_\{key}(snapshot) { Some(\{read}) } else { None }\n"
      },
    )
    fields.push(key + ": " + key)
  }
  js.write_string(
    "    result_snapshot_\{name}: input => { try {\n      if (input === null || (typeof input !== 'object' && typeof input !== 'function')) throw new TypeError('Expected \{name}');\n      const values = Object.create(null);\n\{host.to_string()}      return { ok: true, values };\n    } catch (error) { return { ok: false, error }; } },\n",
  )
  mbt.write_string(
    "fn websys_result_snapshot_\{name}(value : @wasm_async.JsValue) -> @wasm_async.JsValue = \"websys\" \"result_snapshot_\{name}\"\nfn websys_promise_decode_\{name}(value : @wasm_async.JsValue) -> \{name} raise {\n  let snapshot = websys_result_snapshot_\{name}(value)\n  if !websys_result_ok(snapshot) { raise DictionaryReadError(websys_result_error(snapshot)) }\n\{reads.to_string()}  \{name}::{ \{fields.join(", ")} }\n}\n",
  )
}
