// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/picture-in-picture

///|
/// PictureInPictureEventInit dictionary
pub(all) struct PictureInPictureEventInit {
  pictureInPictureWindow : PictureInPictureWindow
}

///|
/// Create a new PictureInPictureEventInit
pub fn PictureInPictureEventInit::new(
  pictureInPictureWindow~ : PictureInPictureWindow,
) -> PictureInPictureEventInit {
  PictureInPictureEventInit::{ pictureInPictureWindow, }
}

///|
extern "js" fn PictureInPictureEventInit::to_js_ffi(
  self : PictureInPictureEventInit,
) -> JsValue =
  #| (self) => ({
  #|   pictureInPictureWindow: self.pictureInPictureWindow
  #| })

///|
/// Convert to JsValue
pub fn PictureInPictureEventInit::to_js(
  self : PictureInPictureEventInit,
) -> JsValue {
  PictureInPictureEventInit::to_js_ffi(self)
}

///|
/// PictureInPictureWindow interface
pub type PictureInPictureWindow

///|
pub extern "js" fn PictureInPictureWindow::to_js_value(
  self : PictureInPictureWindow,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PictureInPictureWindow (unchecked)
pub extern "js" fn PictureInPictureWindow::from_js_value(
  v : JsValue,
) -> PictureInPictureWindow =
  #| (v) => v

///|
/// Safely cast JsValue to PictureInPictureWindow (checked with instanceof)
pub extern "js" fn PictureInPictureWindow::from_js_value_opt(
  v : JsValue,
) -> PictureInPictureWindow? =
  #| (v) => (v instanceof PictureInPictureWindow) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PictureInPictureWindow (checked with instanceof)
pub extern "js" fn JsValue::as_picture_in_picture_window(
  self : JsValue,
) -> PictureInPictureWindow? =
  #| (self) => (self instanceof PictureInPictureWindow) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PictureInPictureWindow (unchecked)
pub extern "js" fn JsValue::to_picture_in_picture_window(
  self : JsValue,
) -> PictureInPictureWindow =
  #| (self) => self

///|
pub extern "js" fn PictureInPictureWindow::to_event_target(
  self : PictureInPictureWindow,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn PictureInPictureWindow::get_width(
  self : PictureInPictureWindow,
) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn PictureInPictureWindow::get_height(
  self : PictureInPictureWindow,
) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn PictureInPictureWindow::get_onresize(
  self : PictureInPictureWindow,
) -> EventHandler =
  #| (self) => self.onresize

///|
pub extern "js" fn PictureInPictureWindow::set_onresize(
  self : PictureInPictureWindow,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresize = value }

///|
/// PictureInPictureEvent interface
pub type PictureInPictureEvent

///|
pub extern "js" fn PictureInPictureEvent::to_js_value(
  self : PictureInPictureEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PictureInPictureEvent (unchecked)
pub extern "js" fn PictureInPictureEvent::from_js_value(
  v : JsValue,
) -> PictureInPictureEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PictureInPictureEvent (checked with instanceof)
pub extern "js" fn PictureInPictureEvent::from_js_value_opt(
  v : JsValue,
) -> PictureInPictureEvent? =
  #| (v) => (v instanceof PictureInPictureEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PictureInPictureEvent (checked with instanceof)
pub extern "js" fn JsValue::as_picture_in_picture_event(
  self : JsValue,
) -> PictureInPictureEvent? =
  #| (self) => (self instanceof PictureInPictureEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PictureInPictureEvent (unchecked)
pub extern "js" fn JsValue::to_picture_in_picture_event(
  self : JsValue,
) -> PictureInPictureEvent =
  #| (self) => self

///|
pub extern "js" fn PictureInPictureEvent::to_event(
  self : PictureInPictureEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn PictureInPictureEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PictureInPictureEvent =
  #| (type_, event_init_dict) => new PictureInPictureEvent(type_, event_init_dict)

///|
pub fn PictureInPictureEvent::new(
  type_ : String,
  event_init_dict : PictureInPictureEventInit,
) -> PictureInPictureEvent {
  PictureInPictureEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn PictureInPictureEvent::get_picture_in_picture_window(
  self : PictureInPictureEvent,
) -> PictureInPictureWindow =
  #| (self) => self.pictureInPictureWindow
