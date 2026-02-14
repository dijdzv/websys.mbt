// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-transitions

///|
/// TransitionEventInit dictionary
pub(all) struct TransitionEventInit {
  propertyName : String?
  elapsedTime : Double?
  pseudoElement : String?
}

///|
/// Create a new TransitionEventInit with default values
pub fn TransitionEventInit::default() -> TransitionEventInit {
  TransitionEventInit::{
    propertyName: None,
    elapsedTime: None,
    pseudoElement: None,
  }
}

///|
extern "js" fn TransitionEventInit::to_js_ffi(
  self : TransitionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   propertyName: self.propertyName,
  #|   elapsedTime: self.elapsedTime,
  #|   pseudoElement: self.pseudoElement
  #| })

///|
/// Convert to JsValue
pub fn TransitionEventInit::to_js(self : TransitionEventInit) -> JsValue {
  TransitionEventInit::to_js_ffi(self)
}

///|
extern "js" fn TransitionEventInit::from_js_ffi(
  value : JsValue,
) -> TransitionEventInit =
  #| (v) => ({
  #|   propertyName: v.propertyName,
  #|   elapsedTime: v.elapsedTime,
  #|   pseudoElement: v.pseudoElement
  #| })

///|
/// Convert from JsValue
pub fn TransitionEventInit::from_js(value : JsValue) -> TransitionEventInit {
  TransitionEventInit::from_js_ffi(value)
}

///|
/// TransitionEvent interface
pub type TransitionEvent

///|
pub extern "js" fn TransitionEvent::to_js_value(
  self : TransitionEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TransitionEvent (unchecked)
pub extern "js" fn TransitionEvent::from_js_value(
  v : JsValue,
) -> TransitionEvent =
  #| (v) => v

///|
/// Safely cast JsValue to TransitionEvent (checked with instanceof)
pub extern "js" fn TransitionEvent::from_js_value_opt(
  v : JsValue,
) -> TransitionEvent? =
  #| (v) => (v instanceof TransitionEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TransitionEvent (checked with instanceof)
pub extern "js" fn JsValue::as_transition_event(
  self : JsValue,
) -> TransitionEvent? =
  #| (self) => (self instanceof TransitionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TransitionEvent (unchecked)
pub extern "js" fn JsValue::to_transition_event(
  self : JsValue,
) -> TransitionEvent =
  #| (self) => self

///|
pub extern "js" fn TransitionEvent::to_event(self : TransitionEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn TransitionEvent::new(type_ : String) -> TransitionEvent =
  #| (type_) => new TransitionEvent(type_)

///|
extern "js" fn TransitionEvent::new_with_transition_event_init_dict_ffi(
  type_ : String,
  transition_event_init_dict : JsValue,
) -> TransitionEvent =
  #| (type_, transition_event_init_dict) => new TransitionEvent(type_, transition_event_init_dict)

///|
pub fn TransitionEvent::new_with_transition_event_init_dict(
  type_ : String,
  transition_event_init_dict : TransitionEventInit,
) -> TransitionEvent {
  TransitionEvent::new_with_transition_event_init_dict_ffi(
    type_,
    transition_event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn TransitionEvent::get_property_name(
  self : TransitionEvent,
) -> String =
  #| (self) => self.propertyName

///|
pub extern "js" fn TransitionEvent::get_elapsed_time(
  self : TransitionEvent,
) -> Double =
  #| (self) => self.elapsedTime

///|
pub extern "js" fn TransitionEvent::get_pseudo_element(
  self : TransitionEvent,
) -> String =
  #| (self) => self.pseudoElement
