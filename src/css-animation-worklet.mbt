// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-animation-worklet

///|
/// AnimatorInstanceConstructor callback interface
pub type AnimatorInstanceConstructor

///|
/// Create AnimatorInstanceConstructor from a MoonBit function
pub extern "js" fn AnimatorInstanceConstructor::from_fn(
  handler : (JsValue, JsValue) -> JsValue,
) -> AnimatorInstanceConstructor =
  #| (handler) => handler

///|
/// AnimationWorkletGlobalScope interface
pub type AnimationWorkletGlobalScope

///|
pub extern "js" fn AnimationWorkletGlobalScope::to_js_value(
  self : AnimationWorkletGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AnimationWorkletGlobalScope (unchecked)
pub extern "js" fn AnimationWorkletGlobalScope::from_js_value(
  v : JsValue,
) -> AnimationWorkletGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to AnimationWorkletGlobalScope (checked with instanceof)
pub extern "js" fn AnimationWorkletGlobalScope::from_js_value_opt(
  v : JsValue,
) -> AnimationWorkletGlobalScope? =
  #| (v) => (v instanceof AnimationWorkletGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AnimationWorkletGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_animation_worklet_global_scope(
  self : JsValue,
) -> AnimationWorkletGlobalScope? =
  #| (self) => (self instanceof AnimationWorkletGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AnimationWorkletGlobalScope (unchecked)
pub extern "js" fn JsValue::to_animation_worklet_global_scope(
  self : JsValue,
) -> AnimationWorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn AnimationWorkletGlobalScope::to_worklet_global_scope(
  self : AnimationWorkletGlobalScope,
) -> WorkletGlobalScope =
  #| (self) => self

///|
pub extern "js" fn AnimationWorkletGlobalScope::register_animator(
  self : AnimationWorkletGlobalScope,
  name : String,
  animator_ctor : AnimatorInstanceConstructor,
) -> Unit =
  #| (self, name, animator_ctor) => self.registerAnimator(name, animator_ctor)

///|
/// WorkletAnimationEffect interface
pub type WorkletAnimationEffect

///|
pub extern "js" fn WorkletAnimationEffect::to_js_value(
  self : WorkletAnimationEffect,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WorkletAnimationEffect (unchecked)
pub extern "js" fn WorkletAnimationEffect::from_js_value(
  v : JsValue,
) -> WorkletAnimationEffect =
  #| (v) => v

///|
/// Safely cast JsValue to WorkletAnimationEffect (checked with instanceof)
pub extern "js" fn WorkletAnimationEffect::from_js_value_opt(
  v : JsValue,
) -> WorkletAnimationEffect? =
  #| (v) => (v instanceof WorkletAnimationEffect) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WorkletAnimationEffect (checked with instanceof)
pub extern "js" fn JsValue::as_worklet_animation_effect(
  self : JsValue,
) -> WorkletAnimationEffect? =
  #| (self) => (self instanceof WorkletAnimationEffect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WorkletAnimationEffect (unchecked)
pub extern "js" fn JsValue::to_worklet_animation_effect(
  self : JsValue,
) -> WorkletAnimationEffect =
  #| (self) => self

///|
pub extern "js" fn WorkletAnimationEffect::get_timing(
  self : WorkletAnimationEffect,
) -> EffectTiming =
  #| (self) => self.getTiming()

///|
pub extern "js" fn WorkletAnimationEffect::get_computed_timing(
  self : WorkletAnimationEffect,
) -> ComputedEffectTiming =
  #| (self) => self.getComputedTiming()

///|
pub extern "js" fn WorkletAnimationEffect::get_local_time(
  self : WorkletAnimationEffect,
) -> Double? =
  #| (self) => { const v = self.localTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn WorkletAnimationEffect::set_local_time(
  self : WorkletAnimationEffect,
  value : Double?,
) -> Unit =
  #| (self, value) => { self.localTime = value }

///|
/// WorkletAnimation interface
pub type WorkletAnimation

///|
pub extern "js" fn WorkletAnimation::to_js_value(
  self : WorkletAnimation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WorkletAnimation (unchecked)
pub extern "js" fn WorkletAnimation::from_js_value(
  v : JsValue,
) -> WorkletAnimation =
  #| (v) => v

///|
/// Safely cast JsValue to WorkletAnimation (checked with instanceof)
pub extern "js" fn WorkletAnimation::from_js_value_opt(
  v : JsValue,
) -> WorkletAnimation? =
  #| (v) => (v instanceof WorkletAnimation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WorkletAnimation (checked with instanceof)
pub extern "js" fn JsValue::as_worklet_animation(
  self : JsValue,
) -> WorkletAnimation? =
  #| (self) => (self instanceof WorkletAnimation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WorkletAnimation (unchecked)
pub extern "js" fn JsValue::to_worklet_animation(
  self : JsValue,
) -> WorkletAnimation =
  #| (self) => self

///|
pub extern "js" fn WorkletAnimation::to_animation(
  self : WorkletAnimation,
) -> Animation =
  #| (self) => self

///|
pub extern "js" fn WorkletAnimation::to_event_target(
  self : WorkletAnimation,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn WorkletAnimation::new(
  animator_name : String,
  effects : AnimationEffectOrArrayOfAnimationEffect,
  timeline : AnimationTimeline?,
  options : JsValue,
) -> WorkletAnimation =
  #| (animator_name, effects, timeline, options) => new WorkletAnimation(animator_name, effects, timeline, options)

///|
pub extern "js" fn WorkletAnimation::get_animator_name(
  self : WorkletAnimation,
) -> String =
  #| (self) => self.animatorName

///|
/// WorkletGroupEffect interface
pub type WorkletGroupEffect

///|
pub extern "js" fn WorkletGroupEffect::to_js_value(
  self : WorkletGroupEffect,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WorkletGroupEffect (unchecked)
pub extern "js" fn WorkletGroupEffect::from_js_value(
  v : JsValue,
) -> WorkletGroupEffect =
  #| (v) => v

///|
/// Safely cast JsValue to WorkletGroupEffect (checked with instanceof)
pub extern "js" fn WorkletGroupEffect::from_js_value_opt(
  v : JsValue,
) -> WorkletGroupEffect? =
  #| (v) => (v instanceof WorkletGroupEffect) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WorkletGroupEffect (checked with instanceof)
pub extern "js" fn JsValue::as_worklet_group_effect(
  self : JsValue,
) -> WorkletGroupEffect? =
  #| (self) => (self instanceof WorkletGroupEffect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WorkletGroupEffect (unchecked)
pub extern "js" fn JsValue::to_worklet_group_effect(
  self : JsValue,
) -> WorkletGroupEffect =
  #| (self) => self

///|
pub extern "js" fn WorkletGroupEffect::get_children(
  self : WorkletGroupEffect,
) -> Array[WorkletAnimationEffect] =
  #| (self) => self.getChildren()
