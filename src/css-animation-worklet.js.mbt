// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-animation-worklet

/// AnimatorInstanceConstructor callback interface
pub type AnimatorInstanceConstructor

///|
/// AnimationWorkletGlobalScope interface
pub type AnimationWorkletGlobalScope

pub extern "js" fn AnimationWorkletGlobalScope::to_js_value(self : AnimationWorkletGlobalScope) -> JsValue =
  #| (self) => self

pub extern "js" fn AnimationWorkletGlobalScope::register_animator(self : AnimationWorkletGlobalScope, name : String, animator_ctor : AnimatorInstanceConstructor) -> Unit =
  #| (self, name, animator_ctor) => self.registerAnimator(name, animator_ctor)

///|
/// WorkletAnimationEffect interface
pub type WorkletAnimationEffect

pub extern "js" fn WorkletAnimationEffect::to_js_value(self : WorkletAnimationEffect) -> JsValue =
  #| (self) => self

pub extern "js" fn WorkletAnimationEffect::get_timing(self : WorkletAnimationEffect) -> EffectTiming =
  #| (self) => self.getTiming()

pub extern "js" fn WorkletAnimationEffect::get_computed_timing(self : WorkletAnimationEffect) -> ComputedEffectTiming =
  #| (self) => self.getComputedTiming()

pub extern "js" fn WorkletAnimationEffect::get_local_time(self : WorkletAnimationEffect) -> Double? =
  #| (self) => self.localTime

pub extern "js" fn WorkletAnimationEffect::set_local_time(self : WorkletAnimationEffect, value : Double?) -> Unit =
  #| (self, value) => { self.localTime = value }

///|
/// WorkletAnimation interface
pub type WorkletAnimation

pub extern "js" fn WorkletAnimation::to_js_value(self : WorkletAnimation) -> JsValue =
  #| (self) => self

pub extern "js" fn WorkletAnimation::new(animator_name : String, effects : JsValue, timeline : AnimationTimeline?, options : JsValue) -> WorkletAnimation =
  #| (animator_name, effects, timeline, options) => new WorkletAnimation(animator_name, effects, timeline, options)

pub extern "js" fn WorkletAnimation::get_animator_name(self : WorkletAnimation) -> String =
  #| (self) => self.animatorName

///|
/// WorkletGroupEffect interface
pub type WorkletGroupEffect

pub extern "js" fn WorkletGroupEffect::to_js_value(self : WorkletGroupEffect) -> JsValue =
  #| (self) => self

pub extern "js" fn WorkletGroupEffect::get_children(self : WorkletGroupEffect) -> JsValue =
  #| (self) => self.getChildren()

