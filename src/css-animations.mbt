// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-animations

///|
/// AnimationEventInit dictionary
pub(all) struct AnimationEventInit {
  animationName : String?
  elapsedTime : Double?
  pseudoElement : String?
}

///|
/// Create a new AnimationEventInit with default values
pub fn AnimationEventInit::default() -> AnimationEventInit {
  AnimationEventInit::{
    animationName: None,
    elapsedTime: None,
    pseudoElement: None,
  }
}

///|
extern "js" fn AnimationEventInit::to_js_ffi(
  self : AnimationEventInit,
) -> JsValue =
  #| (self) => ({
  #|   animationName: self.animationName,
  #|   elapsedTime: self.elapsedTime,
  #|   pseudoElement: self.pseudoElement
  #| })

///|
/// Convert to JsValue
pub fn AnimationEventInit::to_js(self : AnimationEventInit) -> JsValue {
  AnimationEventInit::to_js_ffi(self)
}

///|
extern "js" fn AnimationEventInit::from_js_ffi(
  value : JsValue,
) -> AnimationEventInit =
  #| (v) => ({
  #|   animationName: v.animationName,
  #|   elapsedTime: v.elapsedTime,
  #|   pseudoElement: v.pseudoElement
  #| })

///|
/// Convert from JsValue
pub fn AnimationEventInit::from_js(value : JsValue) -> AnimationEventInit {
  AnimationEventInit::from_js_ffi(value)
}

///|
/// AnimationEvent interface
pub type AnimationEvent

///|
pub extern "js" fn AnimationEvent::to_js_value(
  self : AnimationEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AnimationEvent (unchecked)
pub extern "js" fn AnimationEvent::from_js_value(v : JsValue) -> AnimationEvent =
  #| (v) => v

///|
/// Safely cast JsValue to AnimationEvent (checked with instanceof)
pub extern "js" fn AnimationEvent::from_js_value_opt(
  v : JsValue,
) -> AnimationEvent? =
  #| (v) => (v instanceof AnimationEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AnimationEvent (checked with instanceof)
pub extern "js" fn JsValue::as_animation_event(
  self : JsValue,
) -> AnimationEvent? =
  #| (self) => (self instanceof AnimationEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AnimationEvent (unchecked)
pub extern "js" fn JsValue::to_animation_event(
  self : JsValue,
) -> AnimationEvent =
  #| (self) => self

///|
pub extern "js" fn AnimationEvent::to_event(self : AnimationEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn AnimationEvent::new(type_ : String) -> AnimationEvent =
  #| (type_) => new AnimationEvent(type_)

///|
extern "js" fn AnimationEvent::new_with_animation_event_init_dict_ffi(
  type_ : String,
  animation_event_init_dict : JsValue,
) -> AnimationEvent =
  #| (type_, animation_event_init_dict) => new AnimationEvent(type_, animation_event_init_dict)

///|
pub fn AnimationEvent::new_with_animation_event_init_dict(
  type_ : String,
  animation_event_init_dict : AnimationEventInit,
) -> AnimationEvent {
  AnimationEvent::new_with_animation_event_init_dict_ffi(
    type_,
    animation_event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn AnimationEvent::get_animation_name(
  self : AnimationEvent,
) -> String =
  #| (self) => self.animationName

///|
pub extern "js" fn AnimationEvent::get_elapsed_time(
  self : AnimationEvent,
) -> Double =
  #| (self) => self.elapsedTime

///|
pub extern "js" fn AnimationEvent::get_pseudo_element(
  self : AnimationEvent,
) -> String =
  #| (self) => self.pseudoElement

///|
/// CSSKeyframeRule interface
pub type CSSKeyframeRule

///|
pub extern "js" fn CSSKeyframeRule::to_js_value(
  self : CSSKeyframeRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSKeyframeRule (unchecked)
pub extern "js" fn CSSKeyframeRule::from_js_value(
  v : JsValue,
) -> CSSKeyframeRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSKeyframeRule (checked with instanceof)
pub extern "js" fn CSSKeyframeRule::from_js_value_opt(
  v : JsValue,
) -> CSSKeyframeRule? =
  #| (v) => (v instanceof CSSKeyframeRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSKeyframeRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_keyframe_rule(
  self : JsValue,
) -> CSSKeyframeRule? =
  #| (self) => (self instanceof CSSKeyframeRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSKeyframeRule (unchecked)
pub extern "js" fn JsValue::to_css_keyframe_rule(
  self : JsValue,
) -> CSSKeyframeRule =
  #| (self) => self

///|
pub extern "js" fn CSSKeyframeRule::to_css_rule(
  self : CSSKeyframeRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSKeyframeRule::get_key_text(
  self : CSSKeyframeRule,
) -> String =
  #| (self) => self.keyText

///|
pub extern "js" fn CSSKeyframeRule::set_key_text(
  self : CSSKeyframeRule,
  value : String,
) -> Unit =
  #| (self, value) => { self.keyText = value }

///|
pub extern "js" fn CSSKeyframeRule::get_style(
  self : CSSKeyframeRule,
) -> CSSStyleProperties =
  #| (self) => self.style

///|
/// CSSKeyframesRule interface
pub type CSSKeyframesRule

///|
pub extern "js" fn CSSKeyframesRule::to_js_value(
  self : CSSKeyframesRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSKeyframesRule (unchecked)
pub extern "js" fn CSSKeyframesRule::from_js_value(
  v : JsValue,
) -> CSSKeyframesRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSKeyframesRule (checked with instanceof)
pub extern "js" fn CSSKeyframesRule::from_js_value_opt(
  v : JsValue,
) -> CSSKeyframesRule? =
  #| (v) => (v instanceof CSSKeyframesRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSKeyframesRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_keyframes_rule(
  self : JsValue,
) -> CSSKeyframesRule? =
  #| (self) => (self instanceof CSSKeyframesRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSKeyframesRule (unchecked)
pub extern "js" fn JsValue::to_css_keyframes_rule(
  self : JsValue,
) -> CSSKeyframesRule =
  #| (self) => self

///|
pub extern "js" fn CSSKeyframesRule::to_css_rule(
  self : CSSKeyframesRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSKeyframesRule::get_name(
  self : CSSKeyframesRule,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn CSSKeyframesRule::set_name(
  self : CSSKeyframesRule,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }

///|
pub extern "js" fn CSSKeyframesRule::get_css_rules(
  self : CSSKeyframesRule,
) -> CSSRuleList =
  #| (self) => self.cssRules

///|
pub extern "js" fn CSSKeyframesRule::get_length(self : CSSKeyframesRule) -> Int =
  #| (self) => self.length

///|
#alias("_[_]")
pub extern "js" fn CSSKeyframesRule::get(
  self : CSSKeyframesRule,
  index : Int,
) -> CSSKeyframeRule =
  #| (self, index) => self[index]

///|
pub extern "js" fn CSSKeyframesRule::append_rule(
  self : CSSKeyframesRule,
  rule : String,
) -> Unit =
  #| (self, rule) => self.appendRule(rule)

///|
pub extern "js" fn CSSKeyframesRule::delete_rule(
  self : CSSKeyframesRule,
  select : String,
) -> Unit =
  #| (self, select) => self.deleteRule(select)

///|
pub extern "js" fn CSSKeyframesRule::find_rule(
  self : CSSKeyframesRule,
  select : String,
) -> CSSKeyframeRule? =
  #| (self, select) => (() => { const v = self.findRule(select); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
