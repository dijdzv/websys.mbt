// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_frag_depth

///|
/// EXT_frag_depth interface
pub type EXT_frag_depth

///|
pub extern "js" fn EXT_frag_depth::to_js_value(
  self : EXT_frag_depth,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_frag_depth (unchecked)
pub extern "js" fn EXT_frag_depth::from_js_value(v : JsValue) -> EXT_frag_depth =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_frag_depth (checked with instanceof)
pub extern "js" fn EXT_frag_depth::from_js_value_opt(
  v : JsValue,
) -> EXT_frag_depth? =
  #| (v) => (v instanceof EXT_frag_depth) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_frag_depth (checked with instanceof)
pub extern "js" fn JsValue::as_ext_frag_depth(
  self : JsValue,
) -> EXT_frag_depth? =
  #| (self) => (self instanceof EXT_frag_depth) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_frag_depth (unchecked)
pub extern "js" fn JsValue::to_ext_frag_depth(self : JsValue) -> EXT_frag_depth =
  #| (self) => self
