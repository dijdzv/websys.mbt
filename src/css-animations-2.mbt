// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-animations-2

///|
/// CSSAnimation interface
pub type CSSAnimation

///|
pub extern "js" fn CSSAnimation::to_js_value(self : CSSAnimation) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSAnimation (unchecked)
pub extern "js" fn CSSAnimation::from_js_value(v : JsValue) -> CSSAnimation =
  #| (v) => v

///|
/// Safely cast JsValue to CSSAnimation (checked with instanceof)
pub extern "js" fn CSSAnimation::from_js_value_opt(
  v : JsValue,
) -> CSSAnimation? =
  #| (v) => (v instanceof CSSAnimation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSAnimation (checked with instanceof)
pub extern "js" fn JsValue::as_css_animation(self : JsValue) -> CSSAnimation? =
  #| (self) => (self instanceof CSSAnimation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSAnimation (unchecked)
pub extern "js" fn JsValue::to_css_animation(self : JsValue) -> CSSAnimation =
  #| (self) => self

///|
pub extern "js" fn CSSAnimation::to_animation(self : CSSAnimation) -> Animation =
  #| (self) => self

///|
pub extern "js" fn CSSAnimation::to_event_target(
  self : CSSAnimation,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn CSSAnimation::get_animation_name(
  self : CSSAnimation,
) -> CSSOMString =
  #| (self) => self.animationName
