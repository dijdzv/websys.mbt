// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/requestidlecallback

///|
/// IdleRequestCallback callback interface
pub type IdleRequestCallback

///|
/// Create IdleRequestCallback from a MoonBit function
pub extern "js" fn IdleRequestCallback::from_fn(
  handler : (IdleDeadline) -> Unit,
) -> IdleRequestCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// IdleRequestOptions dictionary
pub(all) struct IdleRequestOptions {
  timeout : Int?
}

///|
/// Create a new IdleRequestOptions with default values
pub fn IdleRequestOptions::default() -> IdleRequestOptions {
  IdleRequestOptions::{ timeout: None }
}

///|
extern "js" fn IdleRequestOptions::to_js_ffi(
  self : IdleRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   timeout: self.timeout
  #| })

///|
/// Convert to JsValue
pub fn IdleRequestOptions::to_js(self : IdleRequestOptions) -> JsValue {
  IdleRequestOptions::to_js_ffi(self)
}

///|
extern "js" fn IdleRequestOptions::from_js_ffi(
  value : JsValue,
) -> IdleRequestOptions =
  #| (v) => ({
  #|   timeout: v.timeout
  #| })

///|
/// Convert from JsValue
pub fn IdleRequestOptions::from_js(value : JsValue) -> IdleRequestOptions {
  IdleRequestOptions::from_js_ffi(value)
}

///|
/// IdleDeadline interface
pub type IdleDeadline

///|
pub extern "js" fn IdleDeadline::to_js_value(self : IdleDeadline) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IdleDeadline (unchecked)
pub extern "js" fn IdleDeadline::from_js_value(v : JsValue) -> IdleDeadline =
  #| (v) => v

///|
/// Safely cast JsValue to IdleDeadline (checked with instanceof)
pub extern "js" fn IdleDeadline::from_js_value_opt(
  v : JsValue,
) -> IdleDeadline? =
  #| (v) => (v instanceof IdleDeadline) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IdleDeadline (checked with instanceof)
pub extern "js" fn JsValue::as_idle_deadline(self : JsValue) -> IdleDeadline? =
  #| (self) => (self instanceof IdleDeadline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IdleDeadline (unchecked)
pub extern "js" fn JsValue::to_idle_deadline(self : JsValue) -> IdleDeadline =
  #| (self) => self

///|
pub extern "js" fn IdleDeadline::time_remaining(
  self : IdleDeadline,
) -> DOMHighResTimeStamp =
  #| (self) => self.timeRemaining()

///|
pub extern "js" fn IdleDeadline::get_did_timeout(self : IdleDeadline) -> Bool =
  #| (self) => self.didTimeout
