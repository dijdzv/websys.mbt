// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/element-capture

///|
/// RestrictionTarget interface
pub type RestrictionTarget

///|
pub extern "js" fn RestrictionTarget::to_js_value(
  self : RestrictionTarget,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RestrictionTarget (unchecked)
pub extern "js" fn RestrictionTarget::from_js_value(
  v : JsValue,
) -> RestrictionTarget =
  #| (v) => v

///|
/// Safely cast JsValue to RestrictionTarget (checked with instanceof)
pub extern "js" fn RestrictionTarget::from_js_value_opt(
  v : JsValue,
) -> RestrictionTarget? =
  #| (v) => (v instanceof RestrictionTarget) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RestrictionTarget (checked with instanceof)
pub extern "js" fn JsValue::as_restriction_target(
  self : JsValue,
) -> RestrictionTarget? =
  #| (self) => (self instanceof RestrictionTarget) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RestrictionTarget (unchecked)
pub extern "js" fn JsValue::to_restriction_target(
  self : JsValue,
) -> RestrictionTarget =
  #| (self) => self

///|
pub extern "js" fn RestrictionTarget::from_element(
  element : Element,
) -> Promise[RestrictionTarget] =
  #| (element) => RestrictionTarget.fromElement(element)
