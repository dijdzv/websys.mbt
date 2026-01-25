// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/OES_element_index_uint

///|
/// OES_element_index_uint interface
pub type OES_element_index_uint

///|
pub extern "js" fn OES_element_index_uint::to_js_value(
  self : OES_element_index_uint,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OES_element_index_uint (unchecked)
pub extern "js" fn OES_element_index_uint::from_js_value(
  v : JsValue,
) -> OES_element_index_uint =
  #| (v) => v

///|
/// Safely cast JsValue to OES_element_index_uint (checked with instanceof)
pub extern "js" fn OES_element_index_uint::from_js_value_opt(
  v : JsValue,
) -> OES_element_index_uint? =
  #| (v) => (v instanceof OES_element_index_uint) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OES_element_index_uint (checked with instanceof)
pub extern "js" fn JsValue::as_oes_element_index_uint(
  self : JsValue,
) -> OES_element_index_uint? =
  #| (self) => (self instanceof OES_element_index_uint) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OES_element_index_uint (unchecked)
pub extern "js" fn JsValue::to_oes_element_index_uint(
  self : JsValue,
) -> OES_element_index_uint =
  #| (self) => self
