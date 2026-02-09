// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/is-input-pending

///|
/// IsInputPendingOptions dictionary
pub(all) struct IsInputPendingOptions {
  includeContinuous : Bool?
}

///|
/// Create a new IsInputPendingOptions with default values
pub fn IsInputPendingOptions::default() -> IsInputPendingOptions {
  IsInputPendingOptions::{ includeContinuous: None }
}

///|
extern "js" fn IsInputPendingOptions::to_js_ffi(
  self : IsInputPendingOptions,
) -> JsValue =
  #| (self) => ({
  #|   includeContinuous: (self.includeContinuous === -1 ? undefined : self.includeContinuous)
  #| })

///|
/// Convert to JsValue
pub fn IsInputPendingOptions::to_js(self : IsInputPendingOptions) -> JsValue {
  IsInputPendingOptions::to_js_ffi(self)
}

///|
/// Scheduling interface
pub type Scheduling

///|
pub extern "js" fn Scheduling::to_js_value(self : Scheduling) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Scheduling (unchecked)
pub extern "js" fn Scheduling::from_js_value(v : JsValue) -> Scheduling =
  #| (v) => v

///|
/// Safely cast JsValue to Scheduling (checked with instanceof)
pub extern "js" fn Scheduling::from_js_value_opt(v : JsValue) -> Scheduling? =
  #| (v) => (v instanceof Scheduling) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Scheduling (checked with instanceof)
pub extern "js" fn JsValue::as_scheduling(self : JsValue) -> Scheduling? =
  #| (self) => (self instanceof Scheduling) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Scheduling (unchecked)
pub extern "js" fn JsValue::to_scheduling(self : JsValue) -> Scheduling =
  #| (self) => self

///|
pub extern "js" fn Scheduling::is_input_pending(self : Scheduling) -> Bool =
  #| (self) => self.isInputPending()

///|
extern "js" fn Scheduling::is_input_pending_with_is_input_pending_options_ffi(
  self : Scheduling,
  is_input_pending_options : JsValue,
) -> Bool =
  #| (self, is_input_pending_options) => self.isInputPending(is_input_pending_options)

///|
pub fn Scheduling::is_input_pending_with_is_input_pending_options(
  self : Scheduling,
  is_input_pending_options : IsInputPendingOptions,
) -> Bool {
  Scheduling::is_input_pending_with_is_input_pending_options_ffi(
    self,
    is_input_pending_options.to_js(),
  )
}
