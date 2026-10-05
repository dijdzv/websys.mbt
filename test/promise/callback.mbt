///|
pub fn object_inputs(schema : @web.JsValue, optional : @web.JsValue, mode : Int) -> @web.JsValue {
  let optional = match mode { 0 => @web.Nullable::Undefined; 1 => Null; _ => Value(optional) }
  @web.ObjectInputs::{ schema, nullableObject: optional, objects: [schema] }.to_js()
}

///|
let pending_callback : Ref[@web.PromiseResolver[@web.JsValue]?] = Ref(None)

///|
let callback_calls : Ref[Int] = Ref(0)

///|
fn same_signal(left : @web.AbortSignal, right : @web.AbortSignal) -> Bool = "websys" "callback_same_signal"

///|
pub fn promise_callback(expected : @web.AbortSignal) -> @web.PromiseCallback {
  @web.PromiseCallback::new((input, options) => {
    callback_calls.val += 1
    guard same_signal(options.signal, expected) else { raise InvalidBody }
    guard pending_callback.val is None else { raise InvalidBody }
    let resolver = @web.new_js_value_promise()
    pending_callback.val = Some(resolver)
    ignore(input)
    resolver.promise()
  })
}

///|
pub fn settle_callback(value : @web.JsValue, reject : Bool) -> Bool {
  guard pending_callback.val is Some(resolver) else { return false }
  pending_callback.val = None
  let first = if reject { resolver.reject(value) } else { resolver.resolve(value) }
  let second = if reject { resolver.resolve(value) } else { resolver.reject(value) }
  first && !second
}

///|
pub fn callback_count() -> Int { callback_calls.val }

///|
pub fn string_callback() -> @web.StringCallback {
  @web.StringCallback::new(() => {
    let resolver = @web.new_string_promise()
    ignore(resolver.resolve("日本😀"))
    resolver.promise()
  })
}

///|
pub fn void_promise_callback() -> @web.VoidPromiseCallback {
  @web.VoidPromiseCallback::new(() => {
    let resolver = @web.new_unit_promise()
    ignore(resolver.resolve(()))
    resolver.promise()
  })
}

///|
pub fn unsigned_callback() -> @web.UnsignedCallback {
  @web.UnsignedCallback::new(() => {
    let resolver = @web.new_u_int_promise()
    ignore(resolver.resolve(4294967295U))
    resolver.promise()
  })
}

///|
pub fn dictionary_callback() -> @web.DictionaryCallback {
  @web.DictionaryCallback::new(done => {
    let resolver = @web.new_required_result_promise()
    ignore(resolver.resolve(@web.RequiredResult::{ done }))
    resolver.promise()
  })
}
