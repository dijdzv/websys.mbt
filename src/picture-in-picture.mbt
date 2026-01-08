// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/picture-in-picture

///|
/// PictureInPictureEventInit dictionary
pub struct PictureInPictureEventInit {
  pictureInPictureWindow : PictureInPictureWindow
}

///|
/// Create a new PictureInPictureEventInit with default values
pub fn PictureInPictureEventInit::default() -> PictureInPictureEventInit {
  PictureInPictureEventInit::{ pictureInPictureWindow: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn PictureInPictureEventInit::to_js(
  self : PictureInPictureEventInit,
) -> JsValue =
  #| (self) => ({
  #|   pictureInPictureWindow: self.pictureInPictureWindow
  #| })

///|
/// PictureInPictureWindow interface
pub type PictureInPictureWindow

///|
pub extern "js" fn PictureInPictureWindow::to_js_value(
  self : PictureInPictureWindow,
) -> JsValue =
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
pub extern "js" fn PictureInPictureEvent::new(
  type_ : String,
  event_init_dict : PictureInPictureEventInit,
) -> PictureInPictureEvent =
  #| (type_, event_init_dict) => new PictureInPictureEvent(type_, event_init_dict)

///|
pub extern "js" fn PictureInPictureEvent::get_picture_in_picture_window(
  self : PictureInPictureEvent,
) -> PictureInPictureWindow =
  #| (self) => self.pictureInPictureWindow
