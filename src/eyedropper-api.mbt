// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/eyedropper-api

///|
/// ColorSelectionResult dictionary
pub struct ColorSelectionResult {
  sRGBHex : String?
}

///|
/// Create a new ColorSelectionResult with default values
pub fn ColorSelectionResult::default() -> ColorSelectionResult {
  ColorSelectionResult::{ sRGBHex: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ColorSelectionResult::to_js(
  self : ColorSelectionResult,
) -> JsValue =
  #| (self) => ({
  #|   sRGBHex: self.sRGBHex
  #| })

///|
/// ColorSelectionOptions dictionary
pub struct ColorSelectionOptions {
  signal : AbortSignal?
}

///|
/// Create a new ColorSelectionOptions with default values
pub fn ColorSelectionOptions::default() -> ColorSelectionOptions {
  ColorSelectionOptions::{ signal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ColorSelectionOptions::to_js(
  self : ColorSelectionOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: self.signal
  #| })

///|
/// EyeDropper interface
pub type EyeDropper

///|
pub extern "js" fn EyeDropper::to_js_value(self : EyeDropper) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn EyeDropper::new() -> EyeDropper =
  #| () => new EyeDropper()

///|
pub extern "js" fn EyeDropper::open(
  self : EyeDropper,
) -> Promise[ColorSelectionResult] =
  #| (self) => self.open()

///|
pub extern "js" fn EyeDropper::open_with_options(
  self : EyeDropper,
  options : ColorSelectionOptions,
) -> Promise[ColorSelectionResult] =
  #| (self, options) => self.open(options)
