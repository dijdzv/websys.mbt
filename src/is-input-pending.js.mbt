// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/is-input-pending

///|
/// IsInputPendingOptions dictionary
pub struct IsInputPendingOptions {
  includeContinuous : Bool?
}

/// Create a new IsInputPendingOptions with default values
pub fn IsInputPendingOptions::default() -> IsInputPendingOptions {
  IsInputPendingOptions::{
    includeContinuous: None,
  }
}

/// Convert to JsValue
pub extern "js" fn IsInputPendingOptions::to_js(self : IsInputPendingOptions) -> JsValue =
  #| (self) => ({
  #|   includeContinuous: self.includeContinuous
  #| })

///|
/// Scheduling interface
pub type Scheduling

pub extern "js" fn Scheduling::to_js_value(self : Scheduling) -> JsValue =
  #| (self) => self

pub extern "js" fn Scheduling::is_input_pending(self : Scheduling, is_input_pending_options : IsInputPendingOptions) -> Bool =
  #| (self, is_input_pending_options) => self.isInputPending(is_input_pending_options)

