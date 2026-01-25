// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_lose_context

///|
/// WEBGL_lose_context interface
pub type WEBGL_lose_context

///|
pub extern "js" fn WEBGL_lose_context::to_js_value(
  self : WEBGL_lose_context,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_lose_context (unchecked)
pub extern "js" fn WEBGL_lose_context::from_js_value(
  v : JsValue,
) -> WEBGL_lose_context =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_lose_context (checked with instanceof)
pub extern "js" fn WEBGL_lose_context::from_js_value_opt(
  v : JsValue,
) -> WEBGL_lose_context? =
  #| (v) => (v instanceof WEBGL_lose_context) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_lose_context (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_lose_context(
  self : JsValue,
) -> WEBGL_lose_context? =
  #| (self) => (self instanceof WEBGL_lose_context) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_lose_context (unchecked)
pub extern "js" fn JsValue::to_webgl_lose_context(
  self : JsValue,
) -> WEBGL_lose_context =
  #| (self) => self

///|
pub extern "js" fn WEBGL_lose_context::lose_context(
  self : WEBGL_lose_context,
) -> Unit =
  #| (self) => self.loseContext()

///|
pub extern "js" fn WEBGL_lose_context::restore_context(
  self : WEBGL_lose_context,
) -> Unit =
  #| (self) => self.restoreContext()
