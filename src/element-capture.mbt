// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/element-capture

///|
/// RestrictionTarget interface
pub type RestrictionTarget

pub extern "js" fn RestrictionTarget::to_js_value(self : RestrictionTarget) -> JsValue =
  #| (self) => self

pub extern "js" fn RestrictionTarget::from_element(element : Element) -> Promise[RestrictionTarget] =
  #| (element) => RestrictionTarget.fromElement(element)

