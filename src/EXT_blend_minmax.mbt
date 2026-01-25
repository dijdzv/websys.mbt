// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_blend_minmax

///|
/// EXT_blend_minmax interface
pub type EXT_blend_minmax

///|
pub extern "js" fn EXT_blend_minmax::to_js_value(
  self : EXT_blend_minmax,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_blend_minmax (unchecked)
pub extern "js" fn EXT_blend_minmax::from_js_value(
  v : JsValue,
) -> EXT_blend_minmax =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_blend_minmax (checked with instanceof)
pub extern "js" fn EXT_blend_minmax::from_js_value_opt(
  v : JsValue,
) -> EXT_blend_minmax? =
  #| (v) => (v instanceof EXT_blend_minmax) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_blend_minmax (checked with instanceof)
pub extern "js" fn JsValue::as_ext_blend_minmax(
  self : JsValue,
) -> EXT_blend_minmax? =
  #| (self) => (self instanceof EXT_blend_minmax) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_blend_minmax (unchecked)
pub extern "js" fn JsValue::to_ext_blend_minmax(
  self : JsValue,
) -> EXT_blend_minmax =
  #| (self) => self

// EXT_blend_minmax.MIN_EXT

///|
pub let ext_blend_minmax_min_ext : Int = 0x8007

// EXT_blend_minmax.MAX_EXT

///|
pub let ext_blend_minmax_max_ext : Int = 0x8008
