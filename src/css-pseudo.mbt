// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-pseudo

///|
/// CSSPseudoElement interface
pub type CSSPseudoElement

pub extern "js" fn CSSPseudoElement::to_js_value(self : CSSPseudoElement) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSPseudoElement::get_type(self : CSSPseudoElement) -> CSSOMString =
  #| (self) => self.type

pub extern "js" fn CSSPseudoElement::get_element(self : CSSPseudoElement) -> Element =
  #| (self) => self.element

pub extern "js" fn CSSPseudoElement::get_parent(self : CSSPseudoElement) -> JsValue =
  #| (self) => self.parent

pub extern "js" fn CSSPseudoElement::pseudo(self : CSSPseudoElement, type_ : CSSOMString) -> CSSPseudoElement? =
  #| (self, type_) => self.pseudo(type_)

pub extern "js" fn CSSPseudoElement::get_box_quads(self : CSSPseudoElement) -> Array[DOMQuad] =
  #| (self) => self.getBoxQuads()

pub extern "js" fn CSSPseudoElement::get_box_quads_with_options(self : CSSPseudoElement, options : BoxQuadOptions) -> Array[DOMQuad] =
  #| (self, options) => self.getBoxQuads(options)

pub extern "js" fn CSSPseudoElement::convert_quad_from_node(self : CSSPseudoElement, quad : DOMQuadInit, from : GeometryNode) -> DOMQuad =
  #| (self, quad, from) => self.convertQuadFromNode(quad, from)

pub extern "js" fn CSSPseudoElement::convert_quad_from_node_with_options(self : CSSPseudoElement, quad : DOMQuadInit, from : GeometryNode, options : ConvertCoordinateOptions) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

pub extern "js" fn CSSPseudoElement::convert_rect_from_node(self : CSSPseudoElement, rect : DOMRectReadOnly, from : GeometryNode) -> DOMQuad =
  #| (self, rect, from) => self.convertRectFromNode(rect, from)

pub extern "js" fn CSSPseudoElement::convert_rect_from_node_with_options(self : CSSPseudoElement, rect : DOMRectReadOnly, from : GeometryNode, options : ConvertCoordinateOptions) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

pub extern "js" fn CSSPseudoElement::convert_point_from_node(self : CSSPseudoElement, point : DOMPointInit, from : GeometryNode) -> DOMPoint =
  #| (self, point, from) => self.convertPointFromNode(point, from)

pub extern "js" fn CSSPseudoElement::convert_point_from_node_with_options(self : CSSPseudoElement, point : DOMPointInit, from : GeometryNode, options : ConvertCoordinateOptions) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

