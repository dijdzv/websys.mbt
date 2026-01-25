// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/model-element

///|
/// HTMLModelElement interface
pub type HTMLModelElement

///|
pub extern "js" fn HTMLModelElement::to_js_value(
  self : HTMLModelElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLModelElement (unchecked)
pub extern "js" fn HTMLModelElement::from_js_value(
  v : JsValue,
) -> HTMLModelElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLModelElement (checked with instanceof)
pub extern "js" fn HTMLModelElement::from_js_value_opt(
  v : JsValue,
) -> HTMLModelElement? =
  #| (v) => (v instanceof HTMLModelElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLModelElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_model_element(
  self : JsValue,
) -> HTMLModelElement? =
  #| (self) => (self instanceof HTMLModelElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLModelElement (unchecked)
pub extern "js" fn JsValue::to_html_model_element(
  self : JsValue,
) -> HTMLModelElement =
  #| (self) => self

///|
pub extern "js" fn HTMLModelElement::to_html_element(
  self : HTMLModelElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLModelElement::to_element(
  self : HTMLModelElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLModelElement::to_node(self : HTMLModelElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLModelElement::to_event_target(
  self : HTMLModelElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLModelElement::get_ready(
  self : HTMLModelElement,
) -> Promise[HTMLModelElement] =
  #| (self) => self.ready

///|
pub extern "js" fn HTMLModelElement::get_bounding_box_center(
  self : HTMLModelElement,
) -> DOMPointReadOnly =
  #| (self) => self.boundingBoxCenter

///|
pub extern "js" fn HTMLModelElement::get_bounding_box_extents(
  self : HTMLModelElement,
) -> DOMPointReadOnly =
  #| (self) => self.boundingBoxExtents

///|
pub extern "js" fn HTMLModelElement::get_entity_transform(
  self : HTMLModelElement,
) -> DOMMatrixReadOnly =
  #| (self) => self.entityTransform

///|
pub extern "js" fn HTMLModelElement::set_entity_transform(
  self : HTMLModelElement,
  value : DOMMatrixReadOnly,
) -> Unit =
  #| (self, value) => { self.entityTransform = value }
