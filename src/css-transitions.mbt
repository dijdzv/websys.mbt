// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-transitions

///|
/// TransitionEventInit dictionary
pub struct TransitionEventInit {
  propertyName : CSSOMString?
  elapsedTime : Double?
  pseudoElement : CSSOMString?
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
/// Convert to JsValue
pub extern "js" fn TransitionEventInit::to_js(
  self : TransitionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   propertyName: self.propertyName,
  #|   elapsedTime: self.elapsedTime,
  #|   pseudoElement: self.pseudoElement
  #| })

///|
/// TransitionEvent interface
pub type TransitionEvent

///|
pub extern "js" fn TransitionEvent::to_js_value(
  self : TransitionEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn TransitionEvent::new(
  type_ : CSSOMString,
  transition_event_init_dict : TransitionEventInit,
) -> TransitionEvent =
  #| (type_, transition_event_init_dict) => new TransitionEvent(type_, transition_event_init_dict)

///|
pub extern "js" fn TransitionEvent::get_property_name(
  self : TransitionEvent,
) -> CSSOMString =
  #| (self) => self.propertyName

///|
pub extern "js" fn TransitionEvent::get_elapsed_time(
  self : TransitionEvent,
) -> Double =
  #| (self) => self.elapsedTime

///|
pub extern "js" fn TransitionEvent::get_pseudo_element(
  self : TransitionEvent,
) -> CSSOMString =
  #| (self) => self.pseudoElement
