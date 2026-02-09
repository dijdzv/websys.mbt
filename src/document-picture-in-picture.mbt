// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/document-picture-in-picture

///|
/// DocumentPictureInPictureOptions dictionary
pub(all) struct DocumentPictureInPictureOptions {
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
extern "js" fn DocumentPictureInPictureOptions::to_js_ffi(
  self : DocumentPictureInPictureOptions,
) -> JsValue =
  #| (self) => ({
  #|   width: self.width,
  #|   height: self.height,
  #|   disallowReturnToOpener: (self.disallowReturnToOpener === -1 ? undefined : self.disallowReturnToOpener),
  #|   preferInitialWindowPlacement: (self.preferInitialWindowPlacement === -1 ? undefined : self.preferInitialWindowPlacement)
  #| })

///|
/// Convert to JsValue
pub fn DocumentPictureInPictureOptions::to_js(
  self : DocumentPictureInPictureOptions,
) -> JsValue {
  DocumentPictureInPictureOptions::to_js_ffi(self)
}

///|
/// DocumentPictureInPictureEventInit dictionary
pub(all) struct DocumentPictureInPictureEventInit {
  window : Window
}

///|
/// Create a new DocumentPictureInPictureEventInit
pub fn DocumentPictureInPictureEventInit::new(
  window~ : Window,
) -> DocumentPictureInPictureEventInit {
  DocumentPictureInPictureEventInit::{ window, }
}

///|
extern "js" fn DocumentPictureInPictureEventInit::to_js_ffi(
  self : DocumentPictureInPictureEventInit,
) -> JsValue =
  #| (self) => ({
  #|   window: self.window
  #| })

///|
/// Convert to JsValue
pub fn DocumentPictureInPictureEventInit::to_js(
  self : DocumentPictureInPictureEventInit,
) -> JsValue {
  DocumentPictureInPictureEventInit::to_js_ffi(self)
}

///|
/// DocumentPictureInPicture interface
pub type DocumentPictureInPicture

///|
pub extern "js" fn DocumentPictureInPicture::to_js_value(
  self : DocumentPictureInPicture,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DocumentPictureInPicture (unchecked)
pub extern "js" fn DocumentPictureInPicture::from_js_value(
  v : JsValue,
) -> DocumentPictureInPicture =
  #| (v) => v

///|
/// Safely cast JsValue to DocumentPictureInPicture (checked with instanceof)
pub extern "js" fn DocumentPictureInPicture::from_js_value_opt(
  v : JsValue,
) -> DocumentPictureInPicture? =
  #| (v) => (v instanceof DocumentPictureInPicture) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DocumentPictureInPicture (checked with instanceof)
pub extern "js" fn JsValue::as_document_picture_in_picture(
  self : JsValue,
) -> DocumentPictureInPicture? =
  #| (self) => (self instanceof DocumentPictureInPicture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DocumentPictureInPicture (unchecked)
pub extern "js" fn JsValue::to_document_picture_in_picture(
  self : JsValue,
) -> DocumentPictureInPicture =
  #| (self) => self

///|
pub extern "js" fn DocumentPictureInPicture::to_event_target(
  self : DocumentPictureInPicture,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn DocumentPictureInPicture::request_window(
  self : DocumentPictureInPicture,
) -> Promise[Window] =
  #| (self) => self.requestWindow()

///|
extern "js" fn DocumentPictureInPicture::request_window_with_options_ffi(
  self : DocumentPictureInPicture,
  options : JsValue,
) -> Promise[Window] =
  #| (self, options) => self.requestWindow(options)

///|
pub fn DocumentPictureInPicture::request_window_with_options(
  self : DocumentPictureInPicture,
  options : DocumentPictureInPictureOptions,
) -> Promise[Window] {
  DocumentPictureInPicture::request_window_with_options_ffi(
    self,
    options.to_js(),
  )
}

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
/// Cast JsValue to DocumentPictureInPictureEvent (unchecked)
pub extern "js" fn DocumentPictureInPictureEvent::from_js_value(
  v : JsValue,
) -> DocumentPictureInPictureEvent =
  #| (v) => v

///|
/// Safely cast JsValue to DocumentPictureInPictureEvent (checked with instanceof)
pub extern "js" fn DocumentPictureInPictureEvent::from_js_value_opt(
  v : JsValue,
) -> DocumentPictureInPictureEvent? =
  #| (v) => (v instanceof DocumentPictureInPictureEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DocumentPictureInPictureEvent (checked with instanceof)
pub extern "js" fn JsValue::as_document_picture_in_picture_event(
  self : JsValue,
) -> DocumentPictureInPictureEvent? =
  #| (self) => (self instanceof DocumentPictureInPictureEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DocumentPictureInPictureEvent (unchecked)
pub extern "js" fn JsValue::to_document_picture_in_picture_event(
  self : JsValue,
) -> DocumentPictureInPictureEvent =
  #| (self) => self

///|
pub extern "js" fn DocumentPictureInPictureEvent::to_event(
  self : DocumentPictureInPictureEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn DocumentPictureInPictureEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> DocumentPictureInPictureEvent =
  #| (type_, event_init_dict) => new DocumentPictureInPictureEvent(type_, event_init_dict)

///|
pub fn DocumentPictureInPictureEvent::new(
  type_ : String,
  event_init_dict : DocumentPictureInPictureEventInit,
) -> DocumentPictureInPictureEvent {
  DocumentPictureInPictureEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn DocumentPictureInPictureEvent::get_window(
  self : DocumentPictureInPictureEvent,
) -> Window =
  #| (self) => self.window
