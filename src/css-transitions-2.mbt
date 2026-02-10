// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-transitions-2

///|
/// CSSStartingStyleRule interface
pub type CSSStartingStyleRule

///|
pub extern "js" fn CSSStartingStyleRule::to_js_value(
  self : CSSStartingStyleRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSStartingStyleRule (unchecked)
pub extern "js" fn CSSStartingStyleRule::from_js_value(
  v : JsValue,
) -> CSSStartingStyleRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSStartingStyleRule (checked with instanceof)
pub extern "js" fn CSSStartingStyleRule::from_js_value_opt(
  v : JsValue,
) -> CSSStartingStyleRule? =
  #| (v) => (v instanceof CSSStartingStyleRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSStartingStyleRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_starting_style_rule(
  self : JsValue,
) -> CSSStartingStyleRule? =
  #| (self) => (self instanceof CSSStartingStyleRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSStartingStyleRule (unchecked)
pub extern "js" fn JsValue::to_css_starting_style_rule(
  self : JsValue,
) -> CSSStartingStyleRule =
  #| (self) => self

///|
pub extern "js" fn CSSStartingStyleRule::to_css_grouping_rule(
  self : CSSStartingStyleRule,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSStartingStyleRule::to_css_rule(
  self : CSSStartingStyleRule,
) -> CSSRule =
  #| (self) => self

///|
/// CSSTransition interface
pub type CSSTransition

///|
pub extern "js" fn CSSTransition::to_js_value(self : CSSTransition) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSTransition (unchecked)
pub extern "js" fn CSSTransition::from_js_value(v : JsValue) -> CSSTransition =
  #| (v) => v

///|
/// Safely cast JsValue to CSSTransition (checked with instanceof)
pub extern "js" fn CSSTransition::from_js_value_opt(
  v : JsValue,
) -> CSSTransition? =
  #| (v) => (v instanceof CSSTransition) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSTransition (checked with instanceof)
pub extern "js" fn JsValue::as_css_transition(self : JsValue) -> CSSTransition? =
  #| (self) => (self instanceof CSSTransition) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSTransition (unchecked)
pub extern "js" fn JsValue::to_css_transition(self : JsValue) -> CSSTransition =
  #| (self) => self

///|
pub extern "js" fn CSSTransition::to_animation(
  self : CSSTransition,
) -> Animation =
  #| (self) => self

///|
pub extern "js" fn CSSTransition::to_event_target(
  self : CSSTransition,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn CSSTransition::get_transition_property(
  self : CSSTransition,
) -> String =
  #| (self) => self.transitionProperty
