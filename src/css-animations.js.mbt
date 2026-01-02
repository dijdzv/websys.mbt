// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-animations

///|
/// AnimationEventInit dictionary
pub struct AnimationEventInit {
  animationName : CSSOMString?
  elapsedTime : Double?
  pseudoElement : CSSOMString?
}

/// Create a new AnimationEventInit with default values
pub fn AnimationEventInit::default() -> AnimationEventInit {
  AnimationEventInit::{
    animationName: None,
    elapsedTime: None,
    pseudoElement: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AnimationEventInit::to_js(self : AnimationEventInit) -> JsValue =
  #| (self) => ({
  #|   animationName: self.animationName,
  #|   elapsedTime: self.elapsedTime,
  #|   pseudoElement: self.pseudoElement
  #| })

///|
/// AnimationEvent interface
pub type AnimationEvent

pub extern "js" fn AnimationEvent::to_js_value(self : AnimationEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn AnimationEvent::new(type_ : CSSOMString, animation_event_init_dict : AnimationEventInit) -> AnimationEvent =
  #| (type_, animation_event_init_dict) => new AnimationEvent(type_, animation_event_init_dict)

pub extern "js" fn AnimationEvent::get_animation_name(self : AnimationEvent) -> CSSOMString =
  #| (self) => self.animationName

pub extern "js" fn AnimationEvent::get_elapsed_time(self : AnimationEvent) -> Double =
  #| (self) => self.elapsedTime

pub extern "js" fn AnimationEvent::get_pseudo_element(self : AnimationEvent) -> CSSOMString =
  #| (self) => self.pseudoElement

///|
/// CSSKeyframeRule interface
pub type CSSKeyframeRule

pub extern "js" fn CSSKeyframeRule::to_js_value(self : CSSKeyframeRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSKeyframeRule::get_key_text(self : CSSKeyframeRule) -> CSSOMString =
  #| (self) => self.keyText

pub extern "js" fn CSSKeyframeRule::set_key_text(self : CSSKeyframeRule, value : CSSOMString) -> Unit =
  #| (self, value) => { self.keyText = value }

pub extern "js" fn CSSKeyframeRule::get_style(self : CSSKeyframeRule) -> CSSStyleProperties =
  #| (self) => self.style

///|
/// CSSKeyframesRule interface
pub type CSSKeyframesRule

pub extern "js" fn CSSKeyframesRule::to_js_value(self : CSSKeyframesRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSKeyframesRule::get_name(self : CSSKeyframesRule) -> CSSOMString =
  #| (self) => self.name

pub extern "js" fn CSSKeyframesRule::set_name(self : CSSKeyframesRule, value : CSSOMString) -> Unit =
  #| (self, value) => { self.name = value }

pub extern "js" fn CSSKeyframesRule::get_css_rules(self : CSSKeyframesRule) -> CSSRuleList =
  #| (self) => self.cssRules

pub extern "js" fn CSSKeyframesRule::get_length(self : CSSKeyframesRule) -> Int =
  #| (self) => self.length

pub extern "js" fn CSSKeyframesRule::get(self : CSSKeyframesRule, index : Int) -> CSSKeyframeRule =
  #| (self, index) => self[index]

pub extern "js" fn CSSKeyframesRule::append_rule(self : CSSKeyframesRule, rule : CSSOMString) -> Unit =
  #| (self, rule) => self.appendRule(rule)

pub extern "js" fn CSSKeyframesRule::delete_rule(self : CSSKeyframesRule, select : CSSOMString) -> Unit =
  #| (self, select) => self.deleteRule(select)

pub extern "js" fn CSSKeyframesRule::find_rule(self : CSSKeyframesRule, select : CSSOMString) -> CSSKeyframeRule? =
  #| (self, select) => self.findRule(select)

