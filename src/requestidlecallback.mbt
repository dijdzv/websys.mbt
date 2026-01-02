// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/requestidlecallback

/// IdleRequestCallback callback interface
pub type IdleRequestCallback

/// Create IdleRequestCallback from a MoonBit function
pub extern "js" fn IdleRequestCallback::from_fn(handler : (IdleDeadline) -> Unit) -> IdleRequestCallback =
  #| (handler) => handler

///|
/// IdleRequestOptions dictionary
pub struct IdleRequestOptions {
  timeout : Int?
}

/// Create a new IdleRequestOptions with default values
pub fn IdleRequestOptions::default() -> IdleRequestOptions {
  IdleRequestOptions::{
    timeout: None,
  }
}

/// Convert to JsValue
pub extern "js" fn IdleRequestOptions::to_js(self : IdleRequestOptions) -> JsValue =
  #| (self) => ({
  #|   timeout: self.timeout
  #| })

///|
/// IdleDeadline interface
pub type IdleDeadline

pub extern "js" fn IdleDeadline::to_js_value(self : IdleDeadline) -> JsValue =
  #| (self) => self

pub extern "js" fn IdleDeadline::time_remaining(self : IdleDeadline) -> DOMHighResTimeStamp =
  #| (self) => self.timeRemaining()

pub extern "js" fn IdleDeadline::get_did_timeout(self : IdleDeadline) -> Bool =
  #| (self) => self.didTimeout

