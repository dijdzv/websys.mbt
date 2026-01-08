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
