// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_lose_context

///|
/// WEBGL_lose_context interface
pub type WEBGL_lose_context

pub extern "js" fn WEBGL_lose_context::to_js_value(self : WEBGL_lose_context) -> JsValue =
  #| (self) => self

pub extern "js" fn WEBGL_lose_context::lose_context(self : WEBGL_lose_context) -> Unit =
  #| (self) => self.loseContext()

pub extern "js" fn WEBGL_lose_context::restore_context(self : WEBGL_lose_context) -> Unit =
  #| (self) => self.restoreContext()

