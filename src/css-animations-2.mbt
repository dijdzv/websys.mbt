// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-animations-2

///|
/// CSSAnimation interface
pub type CSSAnimation

///|
pub extern "js" fn CSSAnimation::to_js_value(self : CSSAnimation) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSAnimation::get_animation_name(
  self : CSSAnimation,
) -> CSSOMString =
  #| (self) => self.animationName
