// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webidl

///|
/// ArrayBufferView typedef
pub type ArrayBufferView = JsValue

///|
/// BufferSource typedef
pub type BufferSource = JsValue

///|
/// AllowSharedBufferSource typedef
pub type AllowSharedBufferSource = JsValue

/// Function callback interface
pub type Function

/// VoidFunction callback interface
pub type VoidFunction

///|
/// QuotaExceededErrorOptions dictionary
pub struct QuotaExceededErrorOptions {
  quota : Double?
  requested : Double?
}

/// Create a new QuotaExceededErrorOptions with default values
pub fn QuotaExceededErrorOptions::default() -> QuotaExceededErrorOptions {
  QuotaExceededErrorOptions::{
    quota: None,
    requested: None,
  }
}

/// Convert to JsValue
pub extern "js" fn QuotaExceededErrorOptions::to_js(self : QuotaExceededErrorOptions) -> JsValue =
  #| (self) => ({
  #|   quota: self.quota,
  #|   requested: self.requested
  #| })

///|
/// QuotaExceededError interface
pub type QuotaExceededError

pub extern "js" fn QuotaExceededError::to_js_value(self : QuotaExceededError) -> JsValue =
  #| (self) => self

pub extern "js" fn QuotaExceededError::new(message : String, name : String) -> QuotaExceededError =
  #| (message, name) => new QuotaExceededError(message, name)

pub extern "js" fn QuotaExceededError::get_name(self : QuotaExceededError) -> String =
  #| (self) => self.name

pub extern "js" fn QuotaExceededError::get_message(self : QuotaExceededError) -> String =
  #| (self) => self.message

pub extern "js" fn QuotaExceededError::get_code(self : QuotaExceededError) -> Int =
  #| (self) => self.code

pub extern "js" fn QuotaExceededError::get_quota(self : QuotaExceededError) -> Double? =
  #| (self) => self.quota

pub extern "js" fn QuotaExceededError::get_requested(self : QuotaExceededError) -> Double? =
  #| (self) => self.requested

///|
/// DOMException interface
pub type DOMException

pub extern "js" fn DOMException::to_js_value(self : DOMException) -> JsValue =
  #| (self) => self

pub extern "js" fn DOMException::new(message : String, name : String) -> DOMException =
  #| (message, name) => new DOMException(message, name)

pub extern "js" fn DOMException::get_name(self : DOMException) -> String =
  #| (self) => self.name

pub extern "js" fn DOMException::get_message(self : DOMException) -> String =
  #| (self) => self.message

pub extern "js" fn DOMException::get_code(self : DOMException) -> Int =
  #| (self) => self.code

