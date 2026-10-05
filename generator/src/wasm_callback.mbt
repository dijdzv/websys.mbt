///|
fn emit_wasm_resolvers(
  mbt : StringBuilder,
  js : StringBuilder,
  values : Array[WasmPromiseValue],
  dictionaries : Array[String],
) -> Unit {
  mbt.write_string(
    "pub struct PromiseResolver[T] { priv promise_value : WebsysPromise[T]; priv resolve_value : (T) -> Bool; priv reject_value : (JsValue) -> Bool }\npub fn[T] PromiseResolver::promise(self : PromiseResolver[T]) -> WebsysPromise[T] { self.promise_value }\npub fn[T] PromiseResolver::resolve(self : PromiseResolver[T], value : T) -> Bool { (self.resolve_value)(value) }\npub fn[T] PromiseResolver::reject(self : PromiseResolver[T], reason : JsValue) -> Bool { (self.reject_value)(reason) }\nfn websys_resolver_new() -> JsValue = \"websys\" \"resolver_new\"\nfn websys_resolver_reject(slot : JsValue, reason : JsValue) -> Bool = \"websys\" \"resolver_reject\"\n",
  )
  js.write_string(
    "    resolver_new: () => { let resolve, reject; const promise = new Promise((yes, no) => { resolve = yes; reject = no; }); return { promise, resolve, reject }; },\n    resolver_reject: (slot, reason) => { const reject = slot.reject; if (!reject) return false; slot.resolve = slot.reject = undefined; reject(reason); return true; },\n",
  )
  for value in values {
    let name = value.name
    let key = value.key()
    guard !name.has_suffix("?") else { abort("Nullable callback Promise results are not implemented") }
    let factory = "new_" + to_snake_case(key) + "_promise"
    let raw = if dictionaries.contains(name) { "JsValue" } else { name }
    let argument = if dictionaries.contains(name) { "value.to_js()" } else { "value" }
    let conversion = if name == "Unit" { "undefined" } else if name == "Bool" { "Boolean(value)" } else if name == "UInt" { "value >>> 0" } else { "value" }
    mbt.write_string(
      "fn websys_resolver_promise_\{key}(slot : JsValue) -> @js_async.Promise[\{name}] = \"websys\" \"resolver_promise_\{key}\"\nfn websys_resolver_resolve_\{key}(slot : JsValue, value : \{raw}) -> Bool = \"websys\" \"resolver_resolve_\{key}\"\npub fn \{factory}() -> PromiseResolver[\{name}] { let slot = websys_resolver_new(); { promise_value: { raw: websys_resolver_promise_\{key}(slot), decode: websys_promise_decode_\{key} }, resolve_value: value => websys_resolver_resolve_\{key}(slot, \{argument}), reject_value: reason => websys_resolver_reject(slot, reason) } }\n",
    )
    js.write_string(
      "    resolver_promise_\{key}: slot => slot.promise, resolver_resolve_\{key}: (slot, value) => { const resolve = slot.resolve; if (!resolve) return false; slot.resolve = slot.reject = undefined; resolve(\{conversion}); return true; },\n",
    )
  }
}

///|
fn emit_wasm_promise_callback(
  callback : CallbackInterfaceDef,
  mbt : StringBuilder,
  js : StringBuilder,
  names : Array[String],
  dictionaries : Array[String],
  interfaces : Array[String],
) -> Unit {
  guard callback.return_type is Some(Promise(inner)) else { abort("Expected Promise callback") }
  let result = require_wasm_promise_value(inner, interfaces~, dictionaries~)
  let raw_parameters : Array[String] = []
  let public_parameters : Array[String] = []
  let arguments : Array[String] = []
  let decoded : Array[String] = []
  let checks = StringBuilder()
  let mut dictionary_argument = false
  for index, argument in callback.arguments {
    guard !argument.optional && !argument.variadic && !(argument.idl_type is Nullable(_)) else {
      abort("Optional/nullable/variadic WasmGC callback arguments are not implemented")
    }
    let key = "a" + index.to_string()
    arguments.push(key)
    if argument.idl_type is Named(name) && dictionaries.contains(name) {
      dictionary_argument = true
      raw_parameters.push("@wasm_async.JsValue")
      public_parameters.push(name)
      decoded.push("websys_promise_decode_" + name + "(" + key + ")")
    } else if argument.idl_type is Any || argument.idl_type is Named("object") {
      raw_parameters.push("JsValue")
      public_parameters.push("JsValue")
      decoded.push(key)
      if argument.idl_type is Named("object") {
        checks.write_string("if (\{key} === null || (typeof \{key} !== 'object' && typeof \{key} !== 'function')) throw new TypeError('Expected object callback argument'); ")
      }
    } else {
      let typ = require_wasm_type(argument.idl_type, names)
      let plan = require_wasm_promise_value(argument.idl_type, interfaces~)
      raw_parameters.push(typ)
      public_parameters.push(typ)
      decoded.push(key)
      checks.write_string("{ const value = \{key}; if (!(\{plan.predicate})) throw new TypeError('Invalid callback argument'); } ")
    }
  }
  let name = callback.name
  let raw_type = "@js_async.Promise[" + result.name + "]"
  let dictionary_catch = if dictionary_argument {
    "DictionaryReadError(reason) => websys_callback_reject_" + name + "(reason); "
  } else { "" }
  let reject_declaration = if dictionary_argument {
    "fn websys_callback_reject_\{name}(reason : @wasm_async.JsValue) -> \{raw_type} = \"websys\" \"\{name}_reject\"\n"
  } else { "" }
  mbt.write_string(
    "#external\npub type \{name}\nfn websys_callback_new_\{name}(callback : (\{raw_parameters.join(", ")}) -> \{raw_type}) -> \{name} = \"websys\" \"\{name}_new\"\n\{reject_declaration}fn websys_callback_error_\{name}(message : String) -> \{raw_type} = \"websys\" \"\{name}_error\"\npub fn \{name}::new(callback : (\{public_parameters.join(", ")}) -> WebsysPromise[\{result.name}] raise) -> \{name} { websys_callback_new_\{name}((\{arguments.join(", ")}) => { try { callback(\{decoded.join(", ")}).raw } catch { \{dictionary_catch}error => websys_callback_error_\{name}(error.to_string()) } }) }\n",
  )
  js.write_string(
    "    \{name}_new: callback => (\{arguments.join(", ")}) => { try { \{checks.to_string()}return callback(\{arguments.join(", ")}); } catch (error) { return Promise.reject(error); } }, \{name}_reject: reason => Promise.reject(reason), \{name}_error: message => Promise.reject(new Error(message)),\n",
  )
}
