// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-conditional-5

///|
/// CSSContainerRule interface
pub type CSSContainerRule

///|
pub extern "js" fn CSSContainerRule::to_js_value(
  self : CSSContainerRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSContainerRule (unchecked)
pub extern "js" fn CSSContainerRule::from_js_value(
  v : JsValue,
) -> CSSContainerRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSContainerRule (checked with instanceof)
pub extern "js" fn CSSContainerRule::from_js_value_opt(
  v : JsValue,
) -> CSSContainerRule? =
  #| (v) => (v instanceof CSSContainerRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSContainerRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_container_rule(
  self : JsValue,
) -> CSSContainerRule? =
  #| (self) => (self instanceof CSSContainerRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSContainerRule (unchecked)
pub extern "js" fn JsValue::to_css_container_rule(
  self : JsValue,
) -> CSSContainerRule =
  #| (self) => self

///|
pub extern "js" fn CSSContainerRule::to_css_condition_rule(
  self : CSSContainerRule,
) -> CSSConditionRule =
  #| (self) => self

///|
pub extern "js" fn CSSContainerRule::to_css_grouping_rule(
  self : CSSContainerRule,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSContainerRule::to_css_rule(
  self : CSSContainerRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSContainerRule::get_container_name(
  self : CSSContainerRule,
) -> String =
  #| (self) => self.containerName

///|
pub extern "js" fn CSSContainerRule::get_container_query(
  self : CSSContainerRule,
) -> String =
  #| (self) => self.containerQuery

///|
/// CSSSupportsConditionRule interface
pub type CSSSupportsConditionRule

///|
pub extern "js" fn CSSSupportsConditionRule::to_js_value(
  self : CSSSupportsConditionRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSSupportsConditionRule (unchecked)
pub extern "js" fn CSSSupportsConditionRule::from_js_value(
  v : JsValue,
) -> CSSSupportsConditionRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSSupportsConditionRule (checked with instanceof)
pub extern "js" fn CSSSupportsConditionRule::from_js_value_opt(
  v : JsValue,
) -> CSSSupportsConditionRule? =
  #| (v) => (v instanceof CSSSupportsConditionRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSSupportsConditionRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_supports_condition_rule(
  self : JsValue,
) -> CSSSupportsConditionRule? =
  #| (self) => (self instanceof CSSSupportsConditionRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSSupportsConditionRule (unchecked)
pub extern "js" fn JsValue::to_css_supports_condition_rule(
  self : JsValue,
) -> CSSSupportsConditionRule =
  #| (self) => self

///|
pub extern "js" fn CSSSupportsConditionRule::to_css_grouping_rule(
  self : CSSSupportsConditionRule,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSSupportsConditionRule::to_css_rule(
  self : CSSSupportsConditionRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSSupportsConditionRule::get_name(
  self : CSSSupportsConditionRule,
) -> String =
  #| (self) => self.name
