// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-animations-2

///|
/// AnimationEventInit dictionary
pub(all) struct AnimationEventInit {
  animation : Nullable[CSSAnimation]
  animationName : String?
  elapsedTime : Double?
  pseudoElement : String?
}

/// Create a new AnimationEventInit with default values
pub fn AnimationEventInit::default() -> AnimationEventInit {
  AnimationEventInit::{
    animation: Nullable::Undefined,
    animationName: None,
    elapsedTime: None,
    pseudoElement: None,
  }
}

extern "js" fn AnimationEventInit::to_js_ffi(self : AnimationEventInit) -> JsValue =
  #| (self) => ({
  #|   animation: ((() => { const v = self.animation; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   animationName: self.animationName,
  #|   elapsedTime: ((() => { const v = self.elapsedTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   pseudoElement: self.pseudoElement
  #| })

/// Convert to JsValue
pub fn AnimationEventInit::to_js(self : AnimationEventInit) -> JsValue {
  AnimationEventInit::to_js_ffi(self)
}

extern "js" fn AnimationEventInit::from_js_ffi(value : JsValue) -> AnimationEventInit =
  #| (v) => ({
  #|   animation: (v.animation === undefined ? { $tag: 0 } : v.animation === null ? { $tag: 1 } : { $tag: 2, _0: v.animation }),
  #|   animationName: v.animationName,
  #|   elapsedTime: (v.elapsedTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.elapsedTime }),
  #|   pseudoElement: v.pseudoElement
  #| })

/// Convert from JsValue
pub fn AnimationEventInit::from_js(value : JsValue) -> AnimationEventInit {
  AnimationEventInit::from_js_ffi(value)
}

///|
/// CSSAnimation interface
pub type CSSAnimation

pub extern "js" fn CSSAnimation::to_js_value(self : CSSAnimation) -> JsValue =
  #| (self) => self

/// Cast JsValue to CSSAnimation (unchecked)
pub extern "js" fn CSSAnimation::from_js_value(v : JsValue) -> CSSAnimation =
  #| (v) => v

/// Safely cast JsValue to CSSAnimation (checked with instanceof)
pub extern "js" fn CSSAnimation::from_js_value_opt(v : JsValue) -> CSSAnimation? =
  #| (v) => (v instanceof CSSAnimation) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to CSSAnimation (checked with instanceof)
pub extern "js" fn JsValue::as_css_animation(self : JsValue) -> CSSAnimation? =
  #| (self) => (self instanceof CSSAnimation) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to CSSAnimation (unchecked)
pub extern "js" fn JsValue::to_css_animation(self : JsValue) -> CSSAnimation =
  #| (self) => self

pub extern "js" fn CSSAnimation::to_animation(self : CSSAnimation) -> Animation =
  #| (self) => self

pub extern "js" fn CSSAnimation::to_event_target(self : CSSAnimation) -> EventTarget =
  #| (self) => self

pub extern "js" fn CSSAnimation::get_animation_name(self : CSSAnimation) -> String =
  #| (self) => self.animationName
