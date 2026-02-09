// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-contain

///|
/// ContentVisibilityAutoStateChangeEventInit dictionary
pub(all) struct ContentVisibilityAutoStateChangeEventInit {
  skipped : Bool?
}

///|
/// Create a new ContentVisibilityAutoStateChangeEventInit with default values
pub fn ContentVisibilityAutoStateChangeEventInit::default() -> ContentVisibilityAutoStateChangeEventInit {
  ContentVisibilityAutoStateChangeEventInit::{ skipped: None }
}

///|
extern "js" fn ContentVisibilityAutoStateChangeEventInit::to_js_ffi(
  self : ContentVisibilityAutoStateChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   skipped: (self.skipped === -1 ? undefined : self.skipped)
  #| })

///|
/// Convert to JsValue
pub fn ContentVisibilityAutoStateChangeEventInit::to_js(
  self : ContentVisibilityAutoStateChangeEventInit,
) -> JsValue {
  ContentVisibilityAutoStateChangeEventInit::to_js_ffi(self)
}

///|
/// ContentVisibilityAutoStateChangeEvent interface
pub type ContentVisibilityAutoStateChangeEvent

///|
pub extern "js" fn ContentVisibilityAutoStateChangeEvent::to_js_value(
  self : ContentVisibilityAutoStateChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ContentVisibilityAutoStateChangeEvent (unchecked)
pub extern "js" fn ContentVisibilityAutoStateChangeEvent::from_js_value(
  v : JsValue,
) -> ContentVisibilityAutoStateChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to ContentVisibilityAutoStateChangeEvent (checked with instanceof)
pub extern "js" fn ContentVisibilityAutoStateChangeEvent::from_js_value_opt(
  v : JsValue,
) -> ContentVisibilityAutoStateChangeEvent? =
  #| (v) => (v instanceof ContentVisibilityAutoStateChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ContentVisibilityAutoStateChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_content_visibility_auto_state_change_event(
  self : JsValue,
) -> ContentVisibilityAutoStateChangeEvent? =
  #| (self) => (self instanceof ContentVisibilityAutoStateChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ContentVisibilityAutoStateChangeEvent (unchecked)
pub extern "js" fn JsValue::to_content_visibility_auto_state_change_event(
  self : JsValue,
) -> ContentVisibilityAutoStateChangeEvent =
  #| (self) => self

///|
pub extern "js" fn ContentVisibilityAutoStateChangeEvent::to_event(
  self : ContentVisibilityAutoStateChangeEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn ContentVisibilityAutoStateChangeEvent::new(
  type_ : String,
) -> ContentVisibilityAutoStateChangeEvent =
  #| (type_) => new ContentVisibilityAutoStateChangeEvent(type_)

///|
extern "js" fn ContentVisibilityAutoStateChangeEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> ContentVisibilityAutoStateChangeEvent =
  #| (type_, event_init_dict) => new ContentVisibilityAutoStateChangeEvent(type_, event_init_dict)

///|
pub fn ContentVisibilityAutoStateChangeEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : ContentVisibilityAutoStateChangeEventInit,
) -> ContentVisibilityAutoStateChangeEvent {
  ContentVisibilityAutoStateChangeEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn ContentVisibilityAutoStateChangeEvent::get_skipped(
  self : ContentVisibilityAutoStateChangeEvent,
) -> Bool =
  #| (self) => self.skipped
