// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/captured-mouse-events

///|
/// CapturedMouseEventInit dictionary
pub(all) struct CapturedMouseEventInit {
  surfaceX : Int?
  surfaceY : Int?
}

///|
/// Create a new CapturedMouseEventInit with default values
pub fn CapturedMouseEventInit::default() -> CapturedMouseEventInit {
  CapturedMouseEventInit::{ surfaceX: None, surfaceY: None }
}

///|
extern "js" fn CapturedMouseEventInit::to_js_ffi(
  self : CapturedMouseEventInit,
) -> JsValue =
  #| (self) => ({
  #|   surfaceX: self.surfaceX,
  #|   surfaceY: self.surfaceY
  #| })

///|
/// Convert to JsValue
pub fn CapturedMouseEventInit::to_js(self : CapturedMouseEventInit) -> JsValue {
  CapturedMouseEventInit::to_js_ffi(self)
}

///|
extern "js" fn CapturedMouseEventInit::from_js_ffi(
  value : JsValue,
) -> CapturedMouseEventInit =
  #| (v) => ({
  #|   surfaceX: v.surfaceX,
  #|   surfaceY: v.surfaceY
  #| })

///|
/// Convert from JsValue
pub fn CapturedMouseEventInit::from_js(
  value : JsValue,
) -> CapturedMouseEventInit {
  CapturedMouseEventInit::from_js_ffi(value)
}

///|
/// CapturedMouseEvent interface
pub type CapturedMouseEvent

///|
pub extern "js" fn CapturedMouseEvent::to_js_value(
  self : CapturedMouseEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CapturedMouseEvent (unchecked)
pub extern "js" fn CapturedMouseEvent::from_js_value(
  v : JsValue,
) -> CapturedMouseEvent =
  #| (v) => v

///|
/// Safely cast JsValue to CapturedMouseEvent (checked with instanceof)
pub extern "js" fn CapturedMouseEvent::from_js_value_opt(
  v : JsValue,
) -> CapturedMouseEvent? =
  #| (v) => (v instanceof CapturedMouseEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CapturedMouseEvent (checked with instanceof)
pub extern "js" fn JsValue::as_captured_mouse_event(
  self : JsValue,
) -> CapturedMouseEvent? =
  #| (self) => (self instanceof CapturedMouseEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CapturedMouseEvent (unchecked)
pub extern "js" fn JsValue::to_captured_mouse_event(
  self : JsValue,
) -> CapturedMouseEvent =
  #| (self) => self

///|
pub extern "js" fn CapturedMouseEvent::to_event(
  self : CapturedMouseEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn CapturedMouseEvent::new(
  type_ : String,
) -> CapturedMouseEvent =
  #| (type_) => new CapturedMouseEvent(type_)

///|
extern "js" fn CapturedMouseEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> CapturedMouseEvent =
  #| (type_, event_init_dict) => new CapturedMouseEvent(type_, event_init_dict)

///|
pub fn CapturedMouseEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : CapturedMouseEventInit,
) -> CapturedMouseEvent {
  CapturedMouseEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn CapturedMouseEvent::get_surface_x(
  self : CapturedMouseEvent,
) -> Int =
  #| (self) => self.surfaceX

///|
pub extern "js" fn CapturedMouseEvent::get_surface_y(
  self : CapturedMouseEvent,
) -> Int =
  #| (self) => self.surfaceY
