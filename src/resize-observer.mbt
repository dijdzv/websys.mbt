// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/resize-observer

///|
/// ResizeObserverBoxOptions enum
pub(all) enum ResizeObserverBoxOptions {
  BorderBox
  ContentBox
  DevicePixelContentBox
}

///|
/// Convert to string value
pub fn ResizeObserverBoxOptions::to_string(
  self : ResizeObserverBoxOptions,
) -> String {
  match self {
    ResizeObserverBoxOptions::BorderBox => "border-box"
    ResizeObserverBoxOptions::ContentBox => "content-box"
    ResizeObserverBoxOptions::DevicePixelContentBox =>
      "device-pixel-content-box"
  }
}

///|
/// Parse from string value
pub fn ResizeObserverBoxOptions::from_string(
  s : String,
) -> ResizeObserverBoxOptions? {
  match s {
    "border-box" => Some(ResizeObserverBoxOptions::BorderBox)
    "content-box" => Some(ResizeObserverBoxOptions::ContentBox)
    "device-pixel-content-box" =>
      Some(ResizeObserverBoxOptions::DevicePixelContentBox)
    _ => None
  }
}

///|
/// ResizeObserverCallback callback interface
pub type ResizeObserverCallback

///|
/// Create ResizeObserverCallback from a MoonBit function
pub extern "js" fn ResizeObserverCallback::from_fn(
  handler : (Array[ResizeObserverEntry], ResizeObserver) -> Unit,
) -> ResizeObserverCallback =
  #| (handler) => handler

///|
/// ResizeObserverOptions dictionary
pub struct ResizeObserverOptions {
  box : ResizeObserverBoxOptions?
}

///|
/// Create a new ResizeObserverOptions with default values
pub fn ResizeObserverOptions::default() -> ResizeObserverOptions {
  ResizeObserverOptions::{ box: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ResizeObserverOptions::to_js(
  self : ResizeObserverOptions,
) -> JsValue =
  #| (self) => ({
  #|   box: ['border-box', 'content-box', 'device-pixel-content-box'][self.box]
  #| })

///|
/// ResizeObserver interface
pub type ResizeObserver

///|
pub extern "js" fn ResizeObserver::to_js_value(
  self : ResizeObserver,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ResizeObserver::new(
  callback : ResizeObserverCallback,
) -> ResizeObserver =
  #| (callback) => new ResizeObserver(callback)

///|
pub extern "js" fn ResizeObserver::observe(
  self : ResizeObserver,
  target : Element,
) -> Unit =
  #| (self, target) => self.observe(target)

///|
pub extern "js" fn ResizeObserver::observe_with_options(
  self : ResizeObserver,
  target : Element,
  options : ResizeObserverOptions,
) -> Unit =
  #| (self, target, options) => self.observe(target, options)

///|
pub extern "js" fn ResizeObserver::unobserve(
  self : ResizeObserver,
  target : Element,
) -> Unit =
  #| (self, target) => self.unobserve(target)

///|
pub extern "js" fn ResizeObserver::disconnect(self : ResizeObserver) -> Unit =
  #| (self) => self.disconnect()

///|
/// ResizeObserverEntry interface
pub type ResizeObserverEntry

///|
pub extern "js" fn ResizeObserverEntry::to_js_value(
  self : ResizeObserverEntry,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ResizeObserverEntry::get_target(
  self : ResizeObserverEntry,
) -> Element =
  #| (self) => self.target

///|
pub extern "js" fn ResizeObserverEntry::get_content_rect(
  self : ResizeObserverEntry,
) -> DOMRectReadOnly =
  #| (self) => self.contentRect

///|
pub extern "js" fn ResizeObserverEntry::get_border_box_size(
  self : ResizeObserverEntry,
) -> JsValue =
  #| (self) => self.borderBoxSize

///|
pub extern "js" fn ResizeObserverEntry::get_content_box_size(
  self : ResizeObserverEntry,
) -> JsValue =
  #| (self) => self.contentBoxSize

///|
pub extern "js" fn ResizeObserverEntry::get_device_pixel_content_box_size(
  self : ResizeObserverEntry,
) -> JsValue =
  #| (self) => self.devicePixelContentBoxSize

///|
/// ResizeObserverSize interface
pub type ResizeObserverSize

///|
pub extern "js" fn ResizeObserverSize::to_js_value(
  self : ResizeObserverSize,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ResizeObserverSize::get_inline_size(
  self : ResizeObserverSize,
) -> Double =
  #| (self) => self.inlineSize

///|
pub extern "js" fn ResizeObserverSize::get_block_size(
  self : ResizeObserverSize,
) -> Double =
  #| (self) => self.blockSize
