// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-color-5

///|
/// CSSColorProfileRule interface
pub type CSSColorProfileRule

///|
pub extern "js" fn CSSColorProfileRule::to_js_value(
  self : CSSColorProfileRule,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSColorProfileRule::get_name(
  self : CSSColorProfileRule,
) -> CSSOMString =
  #| (self) => self.name

///|
pub extern "js" fn CSSColorProfileRule::get_src(
  self : CSSColorProfileRule,
) -> CSSOMString =
  #| (self) => self.src

///|
pub extern "js" fn CSSColorProfileRule::get_rendering_intent(
  self : CSSColorProfileRule,
) -> CSSOMString =
  #| (self) => self.renderingIntent

///|
pub extern "js" fn CSSColorProfileRule::get_components(
  self : CSSColorProfileRule,
) -> CSSOMString =
  #| (self) => self.components
