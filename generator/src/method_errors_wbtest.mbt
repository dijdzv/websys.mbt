///|
test "method-only metadata enables failure support without getter metadata" {
  let defs = convert_to_definitions(
    parse_webidl_raw(
      "interface Store { undefined save(DOMString value); DOMString? load(); Promise<DOMString> later(); };",
    ),
  )
  inject_throws(defs, [
    (
      "methods",
      getter_error_metadata(
        "{\"Store\":{\"save\":[\"QuotaExceededError\"],\"load\":[\"SecurityError\"],\"later\":[\"TypeError\"]}}",
        methods=true,
      ),
    ),
  ])
  let (code, runtime) = generate_wasm(defs)
  assert_true(code.contains("pub type JsError"))
  assert_true(code.contains("Result[Unit, StoreSaveError]"))
  assert_true(code.contains("Result[String?, StoreLoadError]"))
  assert_false(code.contains("StoreLaterError"))
  assert_true(runtime.contains("Promise.reject(error)"))
  assert_true(runtime.contains("value: self.save(arg0)"))
  assert_true(runtime.contains("Store_save_value: result => result.value"))
}
