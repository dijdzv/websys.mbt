// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/document-picture-in-picture

///|
/// DocumentPictureInPictureOptions dictionary
pub struct DocumentPictureInPictureOptions {
  width : Int64?
  height : Int64?
  disallowReturnToOpener : Bool?
  preferInitialWindowPlacement : Bool?
}

///|
/// Create a new DocumentPictureInPictureOptions with default values
pub fn DocumentPictureInPictureOptions::default() -> DocumentPictureInPictureOptions {
  DocumentPictureInPictureOptions::{
    width: None,
    height: None,
    disallowReturnToOpener: None,
    preferInitialWindowPlacement: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn DocumentPictureInPictureOptions::to_js(
  self : DocumentPictureInPictureOptions,
) -> JsValue =
  #| (self) => ({
  #|   width: self.width,
  #|   height: self.height,
  #|   disallowReturnToOpener: self.disallowReturnToOpener,
  #|   preferInitialWindowPlacement: self.preferInitialWindowPlacement
  #| })

///|
/// DocumentPictureInPictureEventInit dictionary
pub struct DocumentPictureInPictureEventInit {
  window : Window
}

///|
/// Create a new DocumentPictureInPictureEventInit with default values
pub fn DocumentPictureInPictureEventInit::default() -> DocumentPictureInPictureEventInit {
  DocumentPictureInPictureEventInit::{ window: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn DocumentPictureInPictureEventInit::to_js(
  self : DocumentPictureInPictureEventInit,
) -> JsValue =
  #| (self) => ({
  #|   window: self.window
  #| })

///|
/// DocumentPictureInPicture interface
pub type DocumentPictureInPicture

///|
pub extern "js" fn DocumentPictureInPicture::to_js_value(
  self : DocumentPictureInPicture,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DocumentPictureInPicture::request_window(
  self : DocumentPictureInPicture,
) -> Promise[Window] =
  #| (self) => self.requestWindow()

///|
pub extern "js" fn DocumentPictureInPicture::request_window_with_options(
  self : DocumentPictureInPicture,
  options : DocumentPictureInPictureOptions,
) -> Promise[Window] =
  #| (self, options) => self.requestWindow(options)

///|
pub extern "js" fn DocumentPictureInPicture::get_window(
  self : DocumentPictureInPicture,
) -> Window =
  #| (self) => self.window

///|
pub extern "js" fn DocumentPictureInPicture::get_onenter(
  self : DocumentPictureInPicture,
) -> EventHandler =
  #| (self) => self.onenter

///|
pub extern "js" fn DocumentPictureInPicture::set_onenter(
  self : DocumentPictureInPicture,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onenter = value }

///|
/// DocumentPictureInPictureEvent interface
pub type DocumentPictureInPictureEvent

///|
pub extern "js" fn DocumentPictureInPictureEvent::to_js_value(
  self : DocumentPictureInPictureEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DocumentPictureInPictureEvent::new(
  type_ : String,
  event_init_dict : DocumentPictureInPictureEventInit,
) -> DocumentPictureInPictureEvent =
  #| (type_, event_init_dict) => new DocumentPictureInPictureEvent(type_, event_init_dict)

///|
pub extern "js" fn DocumentPictureInPictureEvent::get_window(
  self : DocumentPictureInPictureEvent,
) -> Window =
  #| (self) => self.window
