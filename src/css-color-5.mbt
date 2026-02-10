// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-color-5

///|
/// CSSColorProfileRule interface
pub type CSSColorProfileRule

///|
pub extern "js" fn CSSColorProfileRule::to_js_value(
  self : CSSColorProfileRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSColorProfileRule (unchecked)
pub extern "js" fn CSSColorProfileRule::from_js_value(
  v : JsValue,
) -> CSSColorProfileRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSColorProfileRule (checked with instanceof)
pub extern "js" fn CSSColorProfileRule::from_js_value_opt(
  v : JsValue,
) -> CSSColorProfileRule? =
  #| (v) => (v instanceof CSSColorProfileRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSColorProfileRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_color_profile_rule(
  self : JsValue,
) -> CSSColorProfileRule? =
  #| (self) => (self instanceof CSSColorProfileRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSColorProfileRule (unchecked)
pub extern "js" fn JsValue::to_css_color_profile_rule(
  self : JsValue,
) -> CSSColorProfileRule =
  #| (self) => self

///|
pub extern "js" fn CSSColorProfileRule::to_css_rule(
  self : CSSColorProfileRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSColorProfileRule::get_name(
  self : CSSColorProfileRule,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn CSSColorProfileRule::get_src(
  self : CSSColorProfileRule,
) -> String =
  #| (self) => self.src

///|
pub extern "js" fn CSSColorProfileRule::get_rendering_intent(
  self : CSSColorProfileRule,
) -> String =
  #| (self) => self.renderingIntent

///|
pub extern "js" fn CSSColorProfileRule::get_components(
  self : CSSColorProfileRule,
) -> String =
  #| (self) => self.components
