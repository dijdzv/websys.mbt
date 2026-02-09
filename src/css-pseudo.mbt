// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-pseudo

///|
/// CSSPseudoElement interface
pub type CSSPseudoElement

///|
pub extern "js" fn CSSPseudoElement::to_js_value(
  self : CSSPseudoElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSPseudoElement (unchecked)
pub extern "js" fn CSSPseudoElement::from_js_value(
  v : JsValue,
) -> CSSPseudoElement =
  #| (v) => v

///|
/// Safely cast JsValue to CSSPseudoElement (checked with instanceof)
pub extern "js" fn CSSPseudoElement::from_js_value_opt(
  v : JsValue,
) -> CSSPseudoElement? =
  #| (v) => (v instanceof CSSPseudoElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSPseudoElement (checked with instanceof)
pub extern "js" fn JsValue::as_css_pseudo_element(
  self : JsValue,
) -> CSSPseudoElement? =
  #| (self) => (self instanceof CSSPseudoElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSPseudoElement (unchecked)
pub extern "js" fn JsValue::to_css_pseudo_element(
  self : JsValue,
) -> CSSPseudoElement =
  #| (self) => self

///|
pub extern "js" fn CSSPseudoElement::to_event_target(
  self : CSSPseudoElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn CSSPseudoElement::get_type(
  self : CSSPseudoElement,
) -> CSSOMString =
  #| (self) => self.type

///|
pub extern "js" fn CSSPseudoElement::get_element(
  self : CSSPseudoElement,
) -> Element =
  #| (self) => self.element

///|
pub extern "js" fn CSSPseudoElement::get_parent(
  self : CSSPseudoElement,
) -> ElementOrCSSPseudoElement =
  #| (self) => self.parent

///|
pub extern "js" fn CSSPseudoElement::pseudo(
  self : CSSPseudoElement,
  type_ : CSSOMString,
) -> CSSPseudoElement? =
  #| (self, type_) => (() => { const v = self.pseudo(type_); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn CSSPseudoElement::get_box_quads(
  self : CSSPseudoElement,
) -> Array[DOMQuad] =
  #| (self) => self.getBoxQuads()

///|
extern "js" fn CSSPseudoElement::get_box_quads_with_options_ffi(
  self : CSSPseudoElement,
  options : JsValue,
) -> Array[DOMQuad] =
  #| (self, options) => self.getBoxQuads(options)

///|
pub fn CSSPseudoElement::get_box_quads_with_options(
  self : CSSPseudoElement,
  options : BoxQuadOptions,
) -> Array[DOMQuad] {
  CSSPseudoElement::get_box_quads_with_options_ffi(self, options.to_js())
}

///|
extern "js" fn CSSPseudoElement::convert_quad_from_node_ffi(
  self : CSSPseudoElement,
  quad : JsValue,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, quad, from) => self.convertQuadFromNode(quad, from)

///|
pub fn CSSPseudoElement::convert_quad_from_node(
  self : CSSPseudoElement,
  quad : DOMQuadInit,
  from : GeometryNode,
) -> DOMQuad {
  CSSPseudoElement::convert_quad_from_node_ffi(self, quad.to_js(), from)
}

///|
extern "js" fn CSSPseudoElement::convert_quad_from_node_with_options_ffi(
  self : CSSPseudoElement,
  quad : JsValue,
  from : GeometryNode,
  options : JsValue,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub fn CSSPseudoElement::convert_quad_from_node_with_options(
  self : CSSPseudoElement,
  quad : DOMQuadInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad {
  CSSPseudoElement::convert_quad_from_node_with_options_ffi(
    self,
    quad.to_js(),
    from,
    options.to_js(),
  )
}

///|
pub extern "js" fn CSSPseudoElement::convert_rect_from_node(
  self : CSSPseudoElement,
  rect : DOMRectReadOnly,
  from : GeometryNode,
) -> DOMQuad =
  #| (self, rect, from) => self.convertRectFromNode(rect, from)

///|
extern "js" fn CSSPseudoElement::convert_rect_from_node_with_options_ffi(
  self : CSSPseudoElement,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : JsValue,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub fn CSSPseudoElement::convert_rect_from_node_with_options(
  self : CSSPseudoElement,
  rect : DOMRectReadOnly,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMQuad {
  CSSPseudoElement::convert_rect_from_node_with_options_ffi(
    self,
    rect,
    from,
    options.to_js(),
  )
}

///|
extern "js" fn CSSPseudoElement::convert_point_from_node_ffi(
  self : CSSPseudoElement,
  point : JsValue,
  from : GeometryNode,
) -> DOMPoint =
  #| (self, point, from) => self.convertPointFromNode(point, from)

///|
pub fn CSSPseudoElement::convert_point_from_node(
  self : CSSPseudoElement,
  point : DOMPointInit,
  from : GeometryNode,
) -> DOMPoint {
  CSSPseudoElement::convert_point_from_node_ffi(self, point.to_js(), from)
}

///|
extern "js" fn CSSPseudoElement::convert_point_from_node_with_options_ffi(
  self : CSSPseudoElement,
  point : JsValue,
  from : GeometryNode,
  options : JsValue,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub fn CSSPseudoElement::convert_point_from_node_with_options(
  self : CSSPseudoElement,
  point : DOMPointInit,
  from : GeometryNode,
  options : ConvertCoordinateOptions,
) -> DOMPoint {
  CSSPseudoElement::convert_point_from_node_with_options_ffi(
    self,
    point.to_js(),
    from,
    options.to_js(),
  )
}

///|
pub extern "js" fn CSSPseudoElement::convert_quad_from_node_with_text(
  self : CSSPseudoElement,
  quad : DOMQuadInit,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn CSSPseudoElement::convert_quad_from_node_with_element(
  self : CSSPseudoElement,
  quad : DOMQuadInit,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn CSSPseudoElement::convert_quad_from_node_with_c_s_s_pseudo_element(
  self : CSSPseudoElement,
  quad : DOMQuadInit,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn CSSPseudoElement::convert_quad_from_node_with_document(
  self : CSSPseudoElement,
  quad : DOMQuadInit,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, quad, from, options) => self.convertQuadFromNode(quad, from, options)

///|
pub extern "js" fn CSSPseudoElement::convert_rect_from_node_with_text(
  self : CSSPseudoElement,
  rect : DOMRectReadOnly,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn CSSPseudoElement::convert_rect_from_node_with_element(
  self : CSSPseudoElement,
  rect : DOMRectReadOnly,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn CSSPseudoElement::convert_rect_from_node_with_c_s_s_pseudo_element(
  self : CSSPseudoElement,
  rect : DOMRectReadOnly,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn CSSPseudoElement::convert_rect_from_node_with_document(
  self : CSSPseudoElement,
  rect : DOMRectReadOnly,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMQuad =
  #| (self, rect, from, options) => self.convertRectFromNode(rect, from, options)

///|
pub extern "js" fn CSSPseudoElement::convert_point_from_node_with_text(
  self : CSSPseudoElement,
  point : DOMPointInit,
  from : Text,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn CSSPseudoElement::convert_point_from_node_with_element(
  self : CSSPseudoElement,
  point : DOMPointInit,
  from : Element,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn CSSPseudoElement::convert_point_from_node_with_c_s_s_pseudo_element(
  self : CSSPseudoElement,
  point : DOMPointInit,
  from : CSSPseudoElement,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)

///|
pub extern "js" fn CSSPseudoElement::convert_point_from_node_with_document(
  self : CSSPseudoElement,
  point : DOMPointInit,
  from : Document,
  options : ConvertCoordinateOptions,
) -> DOMPoint =
  #| (self, point, from, options) => self.convertPointFromNode(point, from, options)
