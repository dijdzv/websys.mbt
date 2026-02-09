// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/eyedropper-api

///|
/// ColorSelectionResult dictionary
pub(all) struct ColorSelectionResult {
  sRGBHex : String?
}

///|
/// Create a new ColorSelectionResult with default values
pub fn ColorSelectionResult::default() -> ColorSelectionResult {
  ColorSelectionResult::{ sRGBHex: None }
}

///|
extern "js" fn ColorSelectionResult::to_js_ffi(
  self : ColorSelectionResult,
) -> JsValue =
  #| (self) => ({
  #|   sRGBHex: self.sRGBHex
  #| })

///|
/// Convert to JsValue
pub fn ColorSelectionResult::to_js(self : ColorSelectionResult) -> JsValue {
  ColorSelectionResult::to_js_ffi(self)
}

///|
/// ColorSelectionOptions dictionary
pub(all) struct ColorSelectionOptions {
  signal : AbortSignal?
}

///|
/// Create a new ColorSelectionOptions with default values
pub fn ColorSelectionOptions::default() -> ColorSelectionOptions {
  ColorSelectionOptions::{ signal: None }
}

///|
extern "js" fn ColorSelectionOptions::to_js_ffi(
  self : ColorSelectionOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ColorSelectionOptions::to_js(self : ColorSelectionOptions) -> JsValue {
  ColorSelectionOptions::to_js_ffi(self)
}

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
extern "js" fn EyeDropper::open_with_options_ffi(
  self : EyeDropper,
  options : JsValue,
) -> Promise[ColorSelectionResult] =
  #| (self, options) => self.open(options)

///|
pub fn EyeDropper::open_with_options(
  self : EyeDropper,
  options : ColorSelectionOptions,
) -> Promise[ColorSelectionResult] {
  EyeDropper::open_with_options_ffi(self, options.to_js())
}
