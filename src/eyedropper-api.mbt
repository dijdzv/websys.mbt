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
extern "js" fn ColorSelectionResult::from_js_ffi(
  value : JsValue,
) -> ColorSelectionResult =
  #| (v) => ({
  #|   sRGBHex: v.sRGBHex
  #| })

///|
/// Convert from JsValue
pub fn ColorSelectionResult::from_js(value : JsValue) -> ColorSelectionResult {
  ColorSelectionResult::from_js_ffi(value)
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
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ColorSelectionOptions::to_js(self : ColorSelectionOptions) -> JsValue {
  ColorSelectionOptions::to_js_ffi(self)
}

///|
extern "js" fn ColorSelectionOptions::from_js_ffi(
  value : JsValue,
) -> ColorSelectionOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn ColorSelectionOptions::from_js(value : JsValue) -> ColorSelectionOptions {
  ColorSelectionOptions::from_js_ffi(value)
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
/// Error type for throwing methods
pub(all) enum EyeDropperOpenError {
  Promise(JsError)
  AbortError(JsError)
  OperationError(JsError)
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn EyeDropper::new() -> EyeDropper =
  #| () => new EyeDropper()

///|
pub extern "js" fn EyeDropper::open(
  self : EyeDropper,
) -> Promise[Result[ColorSelectionResult, EyeDropperOpenError]] =
  #| (self) => self.open().then(v => ({
  #|   sRGBHex: v.sRGBHex
  #| })).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'Promise') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'OperationError') return { $tag: 2, _0: e }; if (n === 'NotAllowedError') return { $tag: 3, _0: e }; if (n === 'InvalidStateError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

///|
extern "js" fn EyeDropper::open_with_options_ffi(
  self : EyeDropper,
  options : JsValue,
) -> Promise[Result[ColorSelectionResult, EyeDropperOpenError]] =
  #| (self, options) => self.open(options).then(v => ({
  #|   sRGBHex: v.sRGBHex
  #| })).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'Promise') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'OperationError') return { $tag: 2, _0: e }; if (n === 'NotAllowedError') return { $tag: 3, _0: e }; if (n === 'InvalidStateError') return { $tag: 4, _0: e }; return { $tag: 5, _0: e }; })() }))

///|
pub fn EyeDropper::open_with_options(
  self : EyeDropper,
  options : ColorSelectionOptions,
) -> Promise[Result[ColorSelectionResult, EyeDropperOpenError]] {
  EyeDropper::open_with_options_ffi(self, options.to_js())
}
