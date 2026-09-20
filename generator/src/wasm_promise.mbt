///|
struct WasmPromiseValue {
  name : String
  predicate : String
}

///|
fn WasmPromiseValue::key(self : WasmPromiseValue) -> String {
  if self.name.has_suffix("?") {
    "nullable_" + self.name.replace_all(old="?", new="")
  } else {
    self.name
  }
}

///|
fn wasm_promise_value(
  t : IdlType,
  interfaces? : Array[String] = [],
  dictionaries? : Array[String] = [],
) -> WasmPromiseValue? {
  match t {
    Void => Some({ name: "Unit", predicate: "value === undefined", })
    String => Some({ name: "String", predicate: "typeof value === 'string'", })
    Primitive("boolean") =>
      Some({ name: "Bool", predicate: "typeof value === 'boolean'", })
    Primitive("long") =>
      Some({
        name: "Int",
        predicate: "Number.isInteger(value) && value >= -2147483648 && value <= 2147483647",
      })
    Primitive("unsigned long") =>
      Some({
        name: "UInt",
        predicate: "Number.isInteger(value) && value >= 0 && value <= 4294967295",
      })
    Primitive("double") =>
      Some({
        name: "Double",
        predicate: "typeof value === 'number' && Number.isFinite(value)",
      })
    Named("ArrayBuffer" | "SharedArrayBuffer" as name) =>
      Some({
        name,
        predicate: "typeof globalThis.\{name} === 'function' && value instanceof globalThis.\{name}",
      })
    Named("ArrayBufferView") =>
      Some({ name: "ArrayBufferView", predicate: "ArrayBuffer.isView(value)", })
    Nullable(
      Named("ArrayBuffer" | "SharedArrayBuffer" | "ArrayBufferView" as name)
    ) => {
      let inner = wasm_promise_value(Named(name)).unwrap()
      Some({ name: name + "?", predicate: inner.predicate, })
    }
    Named(name) if interfaces.contains(name) =>
      Some({
        name,
        predicate: "typeof globalThis.\{name} === 'function' && value instanceof globalThis.\{name}",
      })
    Nullable(Named(name)) if interfaces.contains(name) =>
      Some({
        name: name + "?",
        predicate: "typeof globalThis.\{name} === 'function' && value instanceof globalThis.\{name}",
      })
    Named(name) if dictionaries.contains(name) => Some({ name, predicate: "", })
    _ => None
  }
}

///|
fn require_wasm_promise_value(
  t : IdlType,
  interfaces? : Array[String] = [],
  dictionaries? : Array[String] = [],
) -> WasmPromiseValue {
  match wasm_promise_value(t, interfaces~, dictionaries~) {
    Some(plan) => plan
    None => abort("Unsupported WasmGC Promise settlement conversion")
  }
}

///|
fn emit_wasm_promise_support(
  mbt : StringBuilder,
  js : StringBuilder,
  values : Array[WasmPromiseValue],
  definitions : Array[Definition],
  interfaces : Array[String],
) -> Unit {
  mbt.write_string(
    "pub struct WebsysPromise[T] {\n  raw : @js_async.Promise[T]\n  decode : (@wasm_async.JsValue) -> T raise\n}\npub async fn[T] WebsysPromise::wait(self : WebsysPromise[T], abort? : () -> Unit = fn() { () }) -> T { @wasm_async.wait(self.raw, self.decode, abort) }\npub suberror PromiseDecodeError { PromiseDecodeError(String) }\n",
  )
  if values.any(plan => plan.predicate == "") {
    mbt.write_string(
      "pub suberror DictionaryReadError { DictionaryReadError(@wasm_async.JsValue) }\nfn websys_result_ok(snapshot : @wasm_async.JsValue) -> Bool = \"websys\" \"result_ok\"\nfn websys_result_error(snapshot : @wasm_async.JsValue) -> @wasm_async.JsValue = \"websys\" \"result_error\"\n",
    )
    js.write_string(
      "    result_ok: snapshot => snapshot.ok, result_error: snapshot => snapshot.error,\n",
    )
  }
  for plan in values {
    let name = plan.name
    let key = plan.key()
    guard !values.any(other => other.name != name && other.key() == key) else {
      abort("Conflicting WasmGC Promise decoder names")
    }
    if plan.predicate == "" {
      for definition in definitions {
        if definition is Dictionary(dict) && dict.name == name {
          emit_wasm_dictionary_result(dict, mbt, js, interfaces)
        }
      }
      continue
    }
    if name.has_suffix("?") {
      let inner = name.replace_all(old="?", new="")
      mbt.write_string(
        "fn websys_promise_null_\{key}(value : @wasm_async.JsValue) -> Bool = \"websys\" \"promise_null_\{key}\"\nfn websys_promise_is_\{key}(value : @wasm_async.JsValue) -> Bool = \"websys\" \"promise_is_\{key}\"\nfn websys_promise_read_\{key}(value : @wasm_async.JsValue) -> \{inner} = \"websys\" \"promise_read_\{key}\"\nfn websys_promise_decode_\{key}(value : @wasm_async.JsValue) -> \{name} raise { if websys_promise_null_\{key}(value) { return None }; if !websys_promise_is_\{key}(value) { raise PromiseDecodeError(\"\{name}\") }; Some(websys_promise_read_\{key}(value)) }\n",
      )
      js.write_string(
        "    promise_null_\{key}: value => value === null, promise_is_\{key}: value => \{plan.predicate}, promise_read_\{key}: value => value,\n",
      )
      continue
    }
    mbt.write_string(
      "fn websys_promise_is_\{name}(value : @wasm_async.JsValue) -> Bool = \"websys\" \"promise_is_\{name}\"\nfn websys_promise_read_\{name}(value : @wasm_async.JsValue) -> \{name} = \"websys\" \"promise_read_\{name}\"\nfn websys_promise_decode_\{name}(value : @wasm_async.JsValue) -> \{name} raise { if !websys_promise_is_\{name}(value) { raise PromiseDecodeError(\"\{name}\") }; websys_promise_read_\{name}(value) }\n",
    )
    js.write_string(
      "    promise_is_\{name}: value => \{plan.predicate}, promise_read_\{name}: value => value,\n",
    )
  }
}
