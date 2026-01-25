// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-conditional

///|
/// CSSConditionRule interface
pub type CSSConditionRule

///|
pub extern "js" fn CSSConditionRule::to_js_value(
  self : CSSConditionRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSConditionRule (unchecked)
pub extern "js" fn CSSConditionRule::from_js_value(
  v : JsValue,
) -> CSSConditionRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSConditionRule (checked with instanceof)
pub extern "js" fn CSSConditionRule::from_js_value_opt(
  v : JsValue,
) -> CSSConditionRule? =
  #| (v) => (v instanceof CSSConditionRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSConditionRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_condition_rule(
  self : JsValue,
) -> CSSConditionRule? =
  #| (self) => (self instanceof CSSConditionRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSConditionRule (unchecked)
pub extern "js" fn JsValue::to_css_condition_rule(
  self : JsValue,
) -> CSSConditionRule =
  #| (self) => self

///|
pub extern "js" fn CSSConditionRule::to_css_grouping_rule(
  self : CSSConditionRule,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSConditionRule::to_css_rule(
  self : CSSConditionRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSConditionRule::as_css_media_rule(
  self : CSSConditionRule,
) -> CSSMediaRule? =
  #| (self) => (self instanceof CSSMediaRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSConditionRule::as_css_supports_rule(
  self : CSSConditionRule,
) -> CSSSupportsRule? =
  #| (self) => (self instanceof CSSSupportsRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSConditionRule::as_css_container_rule(
  self : CSSConditionRule,
) -> CSSContainerRule? =
  #| (self) => (self instanceof CSSContainerRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSConditionRule::get_condition_text(
  self : CSSConditionRule,
) -> CSSOMString =
  #| (self) => self.conditionText

///|
/// CSSMediaRule interface
pub type CSSMediaRule

///|
pub extern "js" fn CSSMediaRule::to_js_value(self : CSSMediaRule) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSMediaRule (unchecked)
pub extern "js" fn CSSMediaRule::from_js_value(v : JsValue) -> CSSMediaRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSMediaRule (checked with instanceof)
pub extern "js" fn CSSMediaRule::from_js_value_opt(
  v : JsValue,
) -> CSSMediaRule? =
  #| (v) => (v instanceof CSSMediaRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSMediaRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_media_rule(self : JsValue) -> CSSMediaRule? =
  #| (self) => (self instanceof CSSMediaRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSMediaRule (unchecked)
pub extern "js" fn JsValue::to_css_media_rule(self : JsValue) -> CSSMediaRule =
  #| (self) => self

///|
pub extern "js" fn CSSMediaRule::to_css_condition_rule(
  self : CSSMediaRule,
) -> CSSConditionRule =
  #| (self) => self

///|
pub extern "js" fn CSSMediaRule::to_css_grouping_rule(
  self : CSSMediaRule,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSMediaRule::to_css_rule(self : CSSMediaRule) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSMediaRule::get_media(self : CSSMediaRule) -> MediaList =
  #| (self) => self.media

///|
pub extern "js" fn CSSMediaRule::get_matches(self : CSSMediaRule) -> Bool =
  #| (self) => self.matches

///|
/// CSSSupportsRule interface
pub type CSSSupportsRule

///|
pub extern "js" fn CSSSupportsRule::to_js_value(
  self : CSSSupportsRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSSupportsRule (unchecked)
pub extern "js" fn CSSSupportsRule::from_js_value(
  v : JsValue,
) -> CSSSupportsRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSSupportsRule (checked with instanceof)
pub extern "js" fn CSSSupportsRule::from_js_value_opt(
  v : JsValue,
) -> CSSSupportsRule? =
  #| (v) => (v instanceof CSSSupportsRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSSupportsRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_supports_rule(
  self : JsValue,
) -> CSSSupportsRule? =
  #| (self) => (self instanceof CSSSupportsRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSSupportsRule (unchecked)
pub extern "js" fn JsValue::to_css_supports_rule(
  self : JsValue,
) -> CSSSupportsRule =
  #| (self) => self

///|
pub extern "js" fn CSSSupportsRule::to_css_condition_rule(
  self : CSSSupportsRule,
) -> CSSConditionRule =
  #| (self) => self

///|
pub extern "js" fn CSSSupportsRule::to_css_grouping_rule(
  self : CSSSupportsRule,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSSupportsRule::to_css_rule(
  self : CSSSupportsRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSSupportsRule::get_matches(self : CSSSupportsRule) -> Bool =
  #| (self) => self.matches
