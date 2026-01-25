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
/// Cast JsValue to EyeDropper (unchecked)
pub extern "js" fn EyeDropper::from_js_value(v : JsValue) -> EyeDropper =
  #| (v) => v

///|
/// Safely cast JsValue to EyeDropper (checked with instanceof)
pub extern "js" fn EyeDropper::from_js_value_opt(v : JsValue) -> EyeDropper? =
  #| (v) => (v instanceof EyeDropper) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EyeDropper (checked with instanceof)
pub extern "js" fn JsValue::as_eye_dropper(self : JsValue) -> EyeDropper? =
  #| (self) => (self instanceof EyeDropper) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EyeDropper (unchecked)
pub extern "js" fn JsValue::to_eye_dropper(self : JsValue) -> EyeDropper =
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
