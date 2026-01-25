// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/OES_standard_derivatives

///|
/// OES_standard_derivatives interface
pub type OES_standard_derivatives

///|
pub extern "js" fn OES_standard_derivatives::to_js_value(
  self : OES_standard_derivatives,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OES_standard_derivatives (unchecked)
pub extern "js" fn OES_standard_derivatives::from_js_value(
  v : JsValue,
) -> OES_standard_derivatives =
  #| (v) => v

///|
/// Safely cast JsValue to OES_standard_derivatives (checked with instanceof)
pub extern "js" fn OES_standard_derivatives::from_js_value_opt(
  v : JsValue,
) -> OES_standard_derivatives? =
  #| (v) => (v instanceof OES_standard_derivatives) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OES_standard_derivatives (checked with instanceof)
pub extern "js" fn JsValue::as_oes_standard_derivatives(
  self : JsValue,
) -> OES_standard_derivatives? =
  #| (self) => (self instanceof OES_standard_derivatives) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OES_standard_derivatives (unchecked)
pub extern "js" fn JsValue::to_oes_standard_derivatives(
  self : JsValue,
) -> OES_standard_derivatives =
  #| (self) => self

// OES_standard_derivatives.FRAGMENT_SHADER_DERIVATIVE_HINT_OES

///|
pub let oes_standard_derivatives_fragment_shader_derivative_hint_oes : Int = 0x8B8B
