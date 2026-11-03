// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-masking

///|
/// SVGClipPathElement interface
pub type SVGClipPathElement

///|
pub extern "js" fn SVGClipPathElement::to_js_value(
  self : SVGClipPathElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGClipPathElement (unchecked)
pub extern "js" fn SVGClipPathElement::from_js_value(
  v : JsValue,
) -> SVGClipPathElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGClipPathElement (checked with instanceof)
pub extern "js" fn SVGClipPathElement::from_js_value_opt(
  v : JsValue,
) -> SVGClipPathElement? =
  #| (v) => (v instanceof SVGClipPathElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGClipPathElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_clip_path_element(
  self : JsValue,
) -> SVGClipPathElement? =
  #| (self) => (self instanceof SVGClipPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGClipPathElement (unchecked)
pub extern "js" fn JsValue::to_svg_clip_path_element(
  self : JsValue,
) -> SVGClipPathElement =
  #| (self) => self

///|
pub extern "js" fn SVGClipPathElement::to_svg_element(
  self : SVGClipPathElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGClipPathElement::to_element(
  self : SVGClipPathElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGClipPathElement::to_node(
  self : SVGClipPathElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGClipPathElement::to_event_target(
  self : SVGClipPathElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGClipPathElement::get_clip_path_units(
  self : SVGClipPathElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.clipPathUnits

///|
pub extern "js" fn SVGClipPathElement::get_transform(
  self : SVGClipPathElement,
) -> SVGAnimatedTransformList =
  #| (self) => self.transform

///|
/// SVGMaskElement interface
pub type SVGMaskElement

///|
pub extern "js" fn SVGMaskElement::to_js_value(
  self : SVGMaskElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGMaskElement (unchecked)
pub extern "js" fn SVGMaskElement::from_js_value(v : JsValue) -> SVGMaskElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGMaskElement (checked with instanceof)
pub extern "js" fn SVGMaskElement::from_js_value_opt(
  v : JsValue,
) -> SVGMaskElement? =
  #| (v) => (v instanceof SVGMaskElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGMaskElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_mask_element(
  self : JsValue,
) -> SVGMaskElement? =
  #| (self) => (self instanceof SVGMaskElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGMaskElement (unchecked)
pub extern "js" fn JsValue::to_svg_mask_element(
  self : JsValue,
) -> SVGMaskElement =
  #| (self) => self

///|
pub extern "js" fn SVGMaskElement::to_svg_element(
  self : SVGMaskElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGMaskElement::to_element(self : SVGMaskElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGMaskElement::to_node(self : SVGMaskElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGMaskElement::to_event_target(
  self : SVGMaskElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGMaskElement::get_mask_units(
  self : SVGMaskElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.maskUnits

///|
pub extern "js" fn SVGMaskElement::get_mask_content_units(
  self : SVGMaskElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.maskContentUnits

///|
pub extern "js" fn SVGMaskElement::get_x(
  self : SVGMaskElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGMaskElement::get_y(
  self : SVGMaskElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGMaskElement::get_width(
  self : SVGMaskElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGMaskElement::get_height(
  self : SVGMaskElement,
) -> SVGAnimatedLength =
  #| (self) => self.height
