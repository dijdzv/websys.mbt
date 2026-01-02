// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/captured-mouse-events

///|
/// CapturedMouseEventInit dictionary
pub struct CapturedMouseEventInit {
  surfaceX : Int?
  surfaceY : Int?
}

/// Create a new CapturedMouseEventInit with default values
pub fn CapturedMouseEventInit::default() -> CapturedMouseEventInit {
  CapturedMouseEventInit::{
    surfaceX: None,
    surfaceY: None,
  }
}

/// Convert to JsValue
pub extern "js" fn CapturedMouseEventInit::to_js(self : CapturedMouseEventInit) -> JsValue =
  #| (self) => ({
  #|   surfaceX: self.surfaceX,
  #|   surfaceY: self.surfaceY
  #| })

///|
/// CapturedMouseEvent interface
pub type CapturedMouseEvent

pub extern "js" fn CapturedMouseEvent::to_js_value(self : CapturedMouseEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn CapturedMouseEvent::new(type_ : String, event_init_dict : CapturedMouseEventInit) -> CapturedMouseEvent =
  #| (type_, event_init_dict) => new CapturedMouseEvent(type_, event_init_dict)

pub extern "js" fn CapturedMouseEvent::get_surface_x(self : CapturedMouseEvent) -> Int =
  #| (self) => self.surfaceX

pub extern "js" fn CapturedMouseEvent::get_surface_y(self : CapturedMouseEvent) -> Int =
  #| (self) => self.surfaceY

