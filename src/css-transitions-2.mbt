// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-transitions-2

///|
/// TransitionEventInit dictionary
pub(all) struct TransitionEventInit {
  animation : Nullable[CSSTransition]
  propertyName : String?
  elapsedTime : Double?
  pseudoElement : String?
}

/// Create a new TransitionEventInit with default values
pub fn TransitionEventInit::default() -> TransitionEventInit {
  TransitionEventInit::{
    animation: Nullable::Undefined,
    propertyName: None,
    elapsedTime: None,
    pseudoElement: None,
  }
}

extern "js" fn TransitionEventInit::to_js_ffi(self : TransitionEventInit) -> JsValue =
  #| (self) => ({
  #|   animation: ((() => { const v = self.animation; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   propertyName: self.propertyName,
  #|   elapsedTime: ((() => { const v = self.elapsedTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   pseudoElement: self.pseudoElement
  #| })

/// Convert to JsValue
pub fn TransitionEventInit::to_js(self : TransitionEventInit) -> JsValue {
  TransitionEventInit::to_js_ffi(self)
}

extern "js" fn TransitionEventInit::from_js_ffi(value : JsValue) -> TransitionEventInit =
  #| (v) => ({
  #|   animation: (v.animation === undefined ? { $tag: 0 } : v.animation === null ? { $tag: 1 } : { $tag: 2, _0: v.animation }),
  #|   propertyName: v.propertyName,
  #|   elapsedTime: (v.elapsedTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.elapsedTime }),
  #|   pseudoElement: v.pseudoElement
  #| })

/// Convert from JsValue
pub fn TransitionEventInit::from_js(value : JsValue) -> TransitionEventInit {
  TransitionEventInit::from_js_ffi(value)
}

///|
/// CSSStartingStyleRule interface
pub type CSSStartingStyleRule

pub extern "js" fn CSSStartingStyleRule::to_js_value(self : CSSStartingStyleRule) -> JsValue =
  #| (self) => self

/// Cast JsValue to CSSStartingStyleRule (unchecked)
pub extern "js" fn CSSStartingStyleRule::from_js_value(v : JsValue) -> CSSStartingStyleRule =
  #| (v) => v

/// Safely cast JsValue to CSSStartingStyleRule (checked with instanceof)
pub extern "js" fn CSSStartingStyleRule::from_js_value_opt(v : JsValue) -> CSSStartingStyleRule? =
  #| (v) => (v instanceof CSSStartingStyleRule) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to CSSStartingStyleRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_starting_style_rule(self : JsValue) -> CSSStartingStyleRule? =
  #| (self) => (self instanceof CSSStartingStyleRule) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to CSSStartingStyleRule (unchecked)
pub extern "js" fn JsValue::to_css_starting_style_rule(self : JsValue) -> CSSStartingStyleRule =
  #| (self) => self

pub extern "js" fn CSSStartingStyleRule::to_css_grouping_rule(self : CSSStartingStyleRule) -> CSSGroupingRule =
  #| (self) => self

pub extern "js" fn CSSStartingStyleRule::to_css_rule(self : CSSStartingStyleRule) -> CSSRule =
  #| (self) => self

///|
/// CSSTransition interface
pub type CSSTransition

pub extern "js" fn CSSTransition::to_js_value(self : CSSTransition) -> JsValue =
  #| (self) => self

/// Cast JsValue to CSSTransition (unchecked)
pub extern "js" fn CSSTransition::from_js_value(v : JsValue) -> CSSTransition =
  #| (v) => v

/// Safely cast JsValue to CSSTransition (checked with instanceof)
pub extern "js" fn CSSTransition::from_js_value_opt(v : JsValue) -> CSSTransition? =
  #| (v) => (v instanceof CSSTransition) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to CSSTransition (checked with instanceof)
pub extern "js" fn JsValue::as_css_transition(self : JsValue) -> CSSTransition? =
  #| (self) => (self instanceof CSSTransition) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to CSSTransition (unchecked)
pub extern "js" fn JsValue::to_css_transition(self : JsValue) -> CSSTransition =
  #| (self) => self

pub extern "js" fn CSSTransition::to_animation(self : CSSTransition) -> Animation =
  #| (self) => self

pub extern "js" fn CSSTransition::to_event_target(self : CSSTransition) -> EventTarget =
  #| (self) => self

pub extern "js" fn CSSTransition::get_transition_property(self : CSSTransition) -> String =
  #| (self) => self.transitionProperty
