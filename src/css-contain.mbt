// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-contain

///|
/// ContentVisibilityAutoStateChangeEventInit dictionary
pub struct ContentVisibilityAutoStateChangeEventInit {
  skipped : Bool?
}

/// Create a new ContentVisibilityAutoStateChangeEventInit with default values
pub fn ContentVisibilityAutoStateChangeEventInit::default() -> ContentVisibilityAutoStateChangeEventInit {
  ContentVisibilityAutoStateChangeEventInit::{
    skipped: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ContentVisibilityAutoStateChangeEventInit::to_js(self : ContentVisibilityAutoStateChangeEventInit) -> JsValue =
  #| (self) => ({
  #|   skipped: self.skipped
  #| })

///|
/// ContentVisibilityAutoStateChangeEvent interface
pub type ContentVisibilityAutoStateChangeEvent

pub extern "js" fn ContentVisibilityAutoStateChangeEvent::to_js_value(self : ContentVisibilityAutoStateChangeEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn ContentVisibilityAutoStateChangeEvent::new(type_ : String, event_init_dict : ContentVisibilityAutoStateChangeEventInit) -> ContentVisibilityAutoStateChangeEvent =
  #| (type_, event_init_dict) => new ContentVisibilityAutoStateChangeEvent(type_, event_init_dict)

pub extern "js" fn ContentVisibilityAutoStateChangeEvent::get_skipped(self : ContentVisibilityAutoStateChangeEvent) -> Bool =
  #| (self) => self.skipped

