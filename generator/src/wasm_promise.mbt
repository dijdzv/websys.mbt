///|
struct WasmPromiseValue {
  name : String
  predicate : String
}

///|
fn wasm_promise_value(t : IdlType) -> WasmPromiseValue? {
  match t {
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
    _ => None
  }
}

///|
fn require_wasm_promise_value(t : IdlType) -> WasmPromiseValue {
  match wasm_promise_value(t) {
    Some(plan) => plan
    None => abort("Unsupported WasmGC Promise settlement conversion")
  }
}

///|
fn emit_wasm_promise_support(
  mbt : StringBuilder,
  js : StringBuilder,
  values : Array[WasmPromiseValue],
) -> Unit {
  mbt.write_string(
    "pub struct WebsysPromise[T] {\n  raw : @js_async.Promise[T]\n  decode : (@wasm_async.JsValue) -> T raise\n}\npub async fn[T] WebsysPromise::wait(self : WebsysPromise[T], abort? : () -> Unit = fn() { () }) -> T { @wasm_async.wait(self.raw, self.decode, abort) }\npub suberror PromiseDecodeError { PromiseDecodeError(String) }\n",
  )
  for plan in values {
    let name = plan.name
    mbt.write_string(
      "fn websys_promise_is_\{name}(value : @wasm_async.JsValue) -> Bool = \"websys\" \"promise_is_\{name}\"\nfn websys_promise_read_\{name}(value : @wasm_async.JsValue) -> \{name} = \"websys\" \"promise_read_\{name}\"\nfn websys_promise_decode_\{name}(value : @wasm_async.JsValue) -> \{name} raise { if !websys_promise_is_\{name}(value) { raise PromiseDecodeError(\"\{name}\") }; websys_promise_read_\{name}(value) }\n",
    )
    js.write_string(
      "    promise_is_\{name}: value => \{plan.predicate}, promise_read_\{name}: value => value,\n",
    )
  }
}
