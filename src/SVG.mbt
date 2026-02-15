// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/SVG

///|
/// SVGBoundingBoxOptions dictionary
pub(all) struct SVGBoundingBoxOptions {
  fill : Bool?
  stroke : Bool?
  markers : Bool?
  clipped : Bool?
}

///|
/// Create a new SVGBoundingBoxOptions with default values
pub fn SVGBoundingBoxOptions::default() -> SVGBoundingBoxOptions {
  SVGBoundingBoxOptions::{
    fill: None,
    stroke: None,
    markers: None,
    clipped: None,
  }
}

///|
extern "js" fn SVGBoundingBoxOptions::to_js_ffi(
  self : SVGBoundingBoxOptions,
) -> JsValue =
  #| (self) => ({
  #|   fill: (self.fill === -1 ? undefined : self.fill),
  #|   stroke: (self.stroke === -1 ? undefined : self.stroke),
  #|   markers: (self.markers === -1 ? undefined : self.markers),
  #|   clipped: (self.clipped === -1 ? undefined : self.clipped)
  #| })

///|
/// Convert to JsValue
pub fn SVGBoundingBoxOptions::to_js(self : SVGBoundingBoxOptions) -> JsValue {
  SVGBoundingBoxOptions::to_js_ffi(self)
}

///|
extern "js" fn SVGBoundingBoxOptions::from_js_ffi(
  value : JsValue,
) -> SVGBoundingBoxOptions =
  #| (v) => ({
  #|   fill: (v.fill === undefined ? -1 : v.fill),
  #|   stroke: (v.stroke === undefined ? -1 : v.stroke),
  #|   markers: (v.markers === undefined ? -1 : v.markers),
  #|   clipped: (v.clipped === undefined ? -1 : v.clipped)
  #| })

///|
/// Convert from JsValue
pub fn SVGBoundingBoxOptions::from_js(value : JsValue) -> SVGBoundingBoxOptions {
  SVGBoundingBoxOptions::from_js_ffi(value)
}

///|
/// SVGElement interface
pub type SVGElement

///|
pub extern "js" fn SVGElement::to_js_value(self : SVGElement) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGElement (unchecked)
pub extern "js" fn SVGElement::from_js_value(v : JsValue) -> SVGElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGElement (checked with instanceof)
pub extern "js" fn SVGElement::from_js_value_opt(v : JsValue) -> SVGElement? =
  #| (v) => (v instanceof SVGElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_element(self : JsValue) -> SVGElement? =
  #| (self) => (self instanceof SVGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGElement (unchecked)
pub extern "js" fn JsValue::to_svg_element(self : JsValue) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGElement::to_element(self : SVGElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGElement::to_node(self : SVGElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGElement::to_event_target(
  self : SVGElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGElement::as_svg_animation_element(
  self : SVGElement,
) -> SVGAnimationElement? =
  #| (self) => (self instanceof SVGAnimationElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_animate_element(
  self : SVGElement,
) -> SVGAnimateElement? =
  #| (self) => (self instanceof SVGAnimateElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_set_element(
  self : SVGElement,
) -> SVGSetElement? =
  #| (self) => (self instanceof SVGSetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_animate_motion_element(
  self : SVGElement,
) -> SVGAnimateMotionElement? =
  #| (self) => (self instanceof SVGAnimateMotionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgm_path_element(
  self : SVGElement,
) -> SVGMPathElement? =
  #| (self) => (self instanceof SVGMPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_animate_transform_element(
  self : SVGElement,
) -> SVGAnimateTransformElement? =
  #| (self) => (self instanceof SVGAnimateTransformElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_clip_path_element(
  self : SVGElement,
) -> SVGClipPathElement? =
  #| (self) => (self instanceof SVGClipPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_mask_element(
  self : SVGElement,
) -> SVGMaskElement? =
  #| (self) => (self instanceof SVGMaskElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_filter_element(
  self : SVGElement,
) -> SVGFilterElement? =
  #| (self) => (self instanceof SVGFilterElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_blend_element(
  self : SVGElement,
) -> SVGFEBlendElement? =
  #| (self) => (self instanceof SVGFEBlendElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_color_matrix_element(
  self : SVGElement,
) -> SVGFEColorMatrixElement? =
  #| (self) => (self instanceof SVGFEColorMatrixElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_component_transfer_element(
  self : SVGElement,
) -> SVGFEComponentTransferElement? =
  #| (self) => (self instanceof SVGFEComponentTransferElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_component_transfer_function_element(
  self : SVGElement,
) -> SVGComponentTransferFunctionElement? =
  #| (self) => (self instanceof SVGComponentTransferFunctionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_func_r_element(
  self : SVGElement,
) -> SVGFEFuncRElement? =
  #| (self) => (self instanceof SVGFEFuncRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_func_g_element(
  self : SVGElement,
) -> SVGFEFuncGElement? =
  #| (self) => (self instanceof SVGFEFuncGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_func_b_element(
  self : SVGElement,
) -> SVGFEFuncBElement? =
  #| (self) => (self instanceof SVGFEFuncBElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_func_a_element(
  self : SVGElement,
) -> SVGFEFuncAElement? =
  #| (self) => (self instanceof SVGFEFuncAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_composite_element(
  self : SVGElement,
) -> SVGFECompositeElement? =
  #| (self) => (self instanceof SVGFECompositeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_convolve_matrix_element(
  self : SVGElement,
) -> SVGFEConvolveMatrixElement? =
  #| (self) => (self instanceof SVGFEConvolveMatrixElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_diffuse_lighting_element(
  self : SVGElement,
) -> SVGFEDiffuseLightingElement? =
  #| (self) => (self instanceof SVGFEDiffuseLightingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_distant_light_element(
  self : SVGElement,
) -> SVGFEDistantLightElement? =
  #| (self) => (self instanceof SVGFEDistantLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_point_light_element(
  self : SVGElement,
) -> SVGFEPointLightElement? =
  #| (self) => (self instanceof SVGFEPointLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_spot_light_element(
  self : SVGElement,
) -> SVGFESpotLightElement? =
  #| (self) => (self instanceof SVGFESpotLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_displacement_map_element(
  self : SVGElement,
) -> SVGFEDisplacementMapElement? =
  #| (self) => (self instanceof SVGFEDisplacementMapElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_drop_shadow_element(
  self : SVGElement,
) -> SVGFEDropShadowElement? =
  #| (self) => (self instanceof SVGFEDropShadowElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_flood_element(
  self : SVGElement,
) -> SVGFEFloodElement? =
  #| (self) => (self instanceof SVGFEFloodElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_gaussian_blur_element(
  self : SVGElement,
) -> SVGFEGaussianBlurElement? =
  #| (self) => (self instanceof SVGFEGaussianBlurElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_image_element(
  self : SVGElement,
) -> SVGFEImageElement? =
  #| (self) => (self instanceof SVGFEImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_merge_element(
  self : SVGElement,
) -> SVGFEMergeElement? =
  #| (self) => (self instanceof SVGFEMergeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_merge_node_element(
  self : SVGElement,
) -> SVGFEMergeNodeElement? =
  #| (self) => (self instanceof SVGFEMergeNodeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_morphology_element(
  self : SVGElement,
) -> SVGFEMorphologyElement? =
  #| (self) => (self instanceof SVGFEMorphologyElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_offset_element(
  self : SVGElement,
) -> SVGFEOffsetElement? =
  #| (self) => (self instanceof SVGFEOffsetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_specular_lighting_element(
  self : SVGElement,
) -> SVGFESpecularLightingElement? =
  #| (self) => (self instanceof SVGFESpecularLightingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_tile_element(
  self : SVGElement,
) -> SVGFETileElement? =
  #| (self) => (self instanceof SVGFETileElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgfe_turbulence_element(
  self : SVGElement,
) -> SVGFETurbulenceElement? =
  #| (self) => (self instanceof SVGFETurbulenceElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_graphics_element(
  self : SVGElement,
) -> SVGGraphicsElement? =
  #| (self) => (self instanceof SVGGraphicsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_geometry_element(
  self : SVGElement,
) -> SVGGeometryElement? =
  #| (self) => (self instanceof SVGGeometryElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgsvg_element(
  self : SVGElement,
) -> SVGSVGElement? =
  #| (self) => (self instanceof SVGSVGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgg_element(
  self : SVGElement,
) -> SVGGElement? =
  #| (self) => (self instanceof SVGGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_defs_element(
  self : SVGElement,
) -> SVGDefsElement? =
  #| (self) => (self instanceof SVGDefsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_desc_element(
  self : SVGElement,
) -> SVGDescElement? =
  #| (self) => (self instanceof SVGDescElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_metadata_element(
  self : SVGElement,
) -> SVGMetadataElement? =
  #| (self) => (self instanceof SVGMetadataElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_title_element(
  self : SVGElement,
) -> SVGTitleElement? =
  #| (self) => (self instanceof SVGTitleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_symbol_element(
  self : SVGElement,
) -> SVGSymbolElement? =
  #| (self) => (self instanceof SVGSymbolElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_use_element(
  self : SVGElement,
) -> SVGUseElement? =
  #| (self) => (self instanceof SVGUseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_switch_element(
  self : SVGElement,
) -> SVGSwitchElement? =
  #| (self) => (self instanceof SVGSwitchElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_style_element(
  self : SVGElement,
) -> SVGStyleElement? =
  #| (self) => (self instanceof SVGStyleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_rect_element(
  self : SVGElement,
) -> SVGRectElement? =
  #| (self) => (self instanceof SVGRectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_circle_element(
  self : SVGElement,
) -> SVGCircleElement? =
  #| (self) => (self instanceof SVGCircleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_ellipse_element(
  self : SVGElement,
) -> SVGEllipseElement? =
  #| (self) => (self instanceof SVGEllipseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_line_element(
  self : SVGElement,
) -> SVGLineElement? =
  #| (self) => (self instanceof SVGLineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_polyline_element(
  self : SVGElement,
) -> SVGPolylineElement? =
  #| (self) => (self instanceof SVGPolylineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_polygon_element(
  self : SVGElement,
) -> SVGPolygonElement? =
  #| (self) => (self instanceof SVGPolygonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_text_content_element(
  self : SVGElement,
) -> SVGTextContentElement? =
  #| (self) => (self instanceof SVGTextContentElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_text_positioning_element(
  self : SVGElement,
) -> SVGTextPositioningElement? =
  #| (self) => (self instanceof SVGTextPositioningElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_text_element(
  self : SVGElement,
) -> SVGTextElement? =
  #| (self) => (self instanceof SVGTextElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svgt_span_element(
  self : SVGElement,
) -> SVGTSpanElement? =
  #| (self) => (self instanceof SVGTSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_text_path_element(
  self : SVGElement,
) -> SVGTextPathElement? =
  #| (self) => (self instanceof SVGTextPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_image_element(
  self : SVGElement,
) -> SVGImageElement? =
  #| (self) => (self instanceof SVGImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_foreign_object_element(
  self : SVGElement,
) -> SVGForeignObjectElement? =
  #| (self) => (self instanceof SVGForeignObjectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_marker_element(
  self : SVGElement,
) -> SVGMarkerElement? =
  #| (self) => (self instanceof SVGMarkerElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_gradient_element(
  self : SVGElement,
) -> SVGGradientElement? =
  #| (self) => (self instanceof SVGGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_linear_gradient_element(
  self : SVGElement,
) -> SVGLinearGradientElement? =
  #| (self) => (self instanceof SVGLinearGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_radial_gradient_element(
  self : SVGElement,
) -> SVGRadialGradientElement? =
  #| (self) => (self instanceof SVGRadialGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_stop_element(
  self : SVGElement,
) -> SVGStopElement? =
  #| (self) => (self instanceof SVGStopElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_pattern_element(
  self : SVGElement,
) -> SVGPatternElement? =
  #| (self) => (self instanceof SVGPatternElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_script_element(
  self : SVGElement,
) -> SVGScriptElement? =
  #| (self) => (self instanceof SVGScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svga_element(
  self : SVGElement,
) -> SVGAElement? =
  #| (self) => (self instanceof SVGAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_view_element(
  self : SVGElement,
) -> SVGViewElement? =
  #| (self) => (self instanceof SVGViewElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::as_svg_path_element(
  self : SVGElement,
) -> SVGPathElement? =
  #| (self) => (self instanceof SVGPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGElement::get_class_name(
  self : SVGElement,
) -> SVGAnimatedString =
  #| (self) => self.className

///|
pub extern "js" fn SVGElement::get_owner_svg_element(
  self : SVGElement,
) -> SVGSVGElement? =
  #| (self) => (() => { const v = self.ownerSVGElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SVGElement::get_viewport_element(
  self : SVGElement,
) -> SVGElement? =
  #| (self) => (() => { const v = self.viewportElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SVGElement::set_onabort(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onabort = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onabort(self : SVGElement) -> Unit =
  #| (self) => { self.onabort = null }

///|
pub extern "js" fn SVGElement::set_onauxclick(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onauxclick = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onauxclick(self : SVGElement) -> Unit =
  #| (self) => { self.onauxclick = null }

///|
pub extern "js" fn SVGElement::set_onbeforeinput(
  self : SVGElement,
  handler : (InputEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbeforeinput = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onbeforeinput(self : SVGElement) -> Unit =
  #| (self) => { self.onbeforeinput = null }

///|
pub extern "js" fn SVGElement::set_onbeforematch(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbeforematch = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onbeforematch(self : SVGElement) -> Unit =
  #| (self) => { self.onbeforematch = null }

///|
pub extern "js" fn SVGElement::set_onbeforetoggle(
  self : SVGElement,
  handler : (ToggleEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbeforetoggle = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onbeforetoggle(self : SVGElement) -> Unit =
  #| (self) => { self.onbeforetoggle = null }

///|
pub extern "js" fn SVGElement::set_onblur(
  self : SVGElement,
  handler : (FocusEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onblur = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onblur(self : SVGElement) -> Unit =
  #| (self) => { self.onblur = null }

///|
pub extern "js" fn SVGElement::set_oncancel(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncancel = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oncancel(self : SVGElement) -> Unit =
  #| (self) => { self.oncancel = null }

///|
pub extern "js" fn SVGElement::set_oncanplay(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncanplay = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oncanplay(self : SVGElement) -> Unit =
  #| (self) => { self.oncanplay = null }

///|
pub extern "js" fn SVGElement::set_oncanplaythrough(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncanplaythrough = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oncanplaythrough(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.oncanplaythrough = null }

///|
pub extern "js" fn SVGElement::set_onchange(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onchange = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onchange(self : SVGElement) -> Unit =
  #| (self) => { self.onchange = null }

///|
pub extern "js" fn SVGElement::set_onclick(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onclick = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onclick(self : SVGElement) -> Unit =
  #| (self) => { self.onclick = null }

///|
pub extern "js" fn SVGElement::set_onclose(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onclose = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onclose(self : SVGElement) -> Unit =
  #| (self) => { self.onclose = null }

///|
pub extern "js" fn SVGElement::set_oncommand(
  self : SVGElement,
  handler : (CommandEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncommand = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oncommand(self : SVGElement) -> Unit =
  #| (self) => { self.oncommand = null }

///|
pub extern "js" fn SVGElement::set_oncontextlost(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncontextlost = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oncontextlost(self : SVGElement) -> Unit =
  #| (self) => { self.oncontextlost = null }

///|
pub extern "js" fn SVGElement::set_oncontextmenu(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncontextmenu = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oncontextmenu(self : SVGElement) -> Unit =
  #| (self) => { self.oncontextmenu = null }

///|
pub extern "js" fn SVGElement::set_oncontextrestored(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncontextrestored = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oncontextrestored(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.oncontextrestored = null }

///|
pub extern "js" fn SVGElement::set_oncopy(
  self : SVGElement,
  handler : (ClipboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncopy = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oncopy(self : SVGElement) -> Unit =
  #| (self) => { self.oncopy = null }

///|
pub extern "js" fn SVGElement::set_oncuechange(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncuechange = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oncuechange(self : SVGElement) -> Unit =
  #| (self) => { self.oncuechange = null }

///|
pub extern "js" fn SVGElement::set_oncut(
  self : SVGElement,
  handler : (ClipboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncut = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oncut(self : SVGElement) -> Unit =
  #| (self) => { self.oncut = null }

///|
pub extern "js" fn SVGElement::set_ondblclick(
  self : SVGElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondblclick = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ondblclick(self : SVGElement) -> Unit =
  #| (self) => { self.ondblclick = null }

///|
pub extern "js" fn SVGElement::set_ondrag(
  self : SVGElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondrag = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ondrag(self : SVGElement) -> Unit =
  #| (self) => { self.ondrag = null }

///|
pub extern "js" fn SVGElement::set_ondragend(
  self : SVGElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondragend = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ondragend(self : SVGElement) -> Unit =
  #| (self) => { self.ondragend = null }

///|
pub extern "js" fn SVGElement::set_ondragenter(
  self : SVGElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondragenter = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ondragenter(self : SVGElement) -> Unit =
  #| (self) => { self.ondragenter = null }

///|
pub extern "js" fn SVGElement::set_ondragleave(
  self : SVGElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondragleave = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ondragleave(self : SVGElement) -> Unit =
  #| (self) => { self.ondragleave = null }

///|
pub extern "js" fn SVGElement::set_ondragover(
  self : SVGElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondragover = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ondragover(self : SVGElement) -> Unit =
  #| (self) => { self.ondragover = null }

///|
pub extern "js" fn SVGElement::set_ondragstart(
  self : SVGElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondragstart = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ondragstart(self : SVGElement) -> Unit =
  #| (self) => { self.ondragstart = null }

///|
pub extern "js" fn SVGElement::set_ondrop(
  self : SVGElement,
  handler : (DragEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondrop = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ondrop(self : SVGElement) -> Unit =
  #| (self) => { self.ondrop = null }

///|
pub extern "js" fn SVGElement::set_ondurationchange(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondurationchange = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ondurationchange(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.ondurationchange = null }

///|
pub extern "js" fn SVGElement::set_onemptied(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onemptied = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onemptied(self : SVGElement) -> Unit =
  #| (self) => { self.onemptied = null }

///|
pub extern "js" fn SVGElement::set_onended(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onended = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onended(self : SVGElement) -> Unit =
  #| (self) => { self.onended = null }

///|
pub extern "js" fn SVGElement::set_onerror(
  self : SVGElement,
  value : OnErrorEventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn SVGElement::clear_onerror(self : SVGElement) -> Unit =
  #| (self) => { self.onerror = null }

///|
pub extern "js" fn SVGElement::set_onfocus(
  self : SVGElement,
  handler : (FocusEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onfocus = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onfocus(self : SVGElement) -> Unit =
  #| (self) => { self.onfocus = null }

///|
pub extern "js" fn SVGElement::set_onformdata(
  self : SVGElement,
  handler : (FormDataEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onformdata = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onformdata(self : SVGElement) -> Unit =
  #| (self) => { self.onformdata = null }

///|
pub extern "js" fn SVGElement::set_oninput(
  self : SVGElement,
  handler : (InputEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oninput = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oninput(self : SVGElement) -> Unit =
  #| (self) => { self.oninput = null }

///|
pub extern "js" fn SVGElement::set_oninvalid(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oninvalid = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_oninvalid(self : SVGElement) -> Unit =
  #| (self) => { self.oninvalid = null }

///|
pub extern "js" fn SVGElement::set_onkeydown(
  self : SVGElement,
  handler : (KeyboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onkeydown = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onkeydown(self : SVGElement) -> Unit =
  #| (self) => { self.onkeydown = null }

///|
pub extern "js" fn SVGElement::set_onkeypress(
  self : SVGElement,
  handler : (KeyboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onkeypress = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onkeypress(self : SVGElement) -> Unit =
  #| (self) => { self.onkeypress = null }

///|
pub extern "js" fn SVGElement::set_onkeyup(
  self : SVGElement,
  handler : (KeyboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onkeyup = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onkeyup(self : SVGElement) -> Unit =
  #| (self) => { self.onkeyup = null }

///|
pub extern "js" fn SVGElement::set_onload(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onload = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onload(self : SVGElement) -> Unit =
  #| (self) => { self.onload = null }

///|
pub extern "js" fn SVGElement::set_onloadeddata(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onloadeddata = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onloadeddata(self : SVGElement) -> Unit =
  #| (self) => { self.onloadeddata = null }

///|
pub extern "js" fn SVGElement::set_onloadedmetadata(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onloadedmetadata = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onloadedmetadata(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onloadedmetadata = null }

///|
pub extern "js" fn SVGElement::set_onloadstart(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onloadstart = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onloadstart(self : SVGElement) -> Unit =
  #| (self) => { self.onloadstart = null }

///|
pub extern "js" fn SVGElement::set_onmousedown(
  self : SVGElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmousedown = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onmousedown(self : SVGElement) -> Unit =
  #| (self) => { self.onmousedown = null }

///|
pub extern "js" fn SVGElement::set_onmouseenter(
  self : SVGElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmouseenter = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onmouseenter(self : SVGElement) -> Unit =
  #| (self) => { self.onmouseenter = null }

///|
pub extern "js" fn SVGElement::set_onmouseleave(
  self : SVGElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmouseleave = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onmouseleave(self : SVGElement) -> Unit =
  #| (self) => { self.onmouseleave = null }

///|
pub extern "js" fn SVGElement::set_onmousemove(
  self : SVGElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmousemove = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onmousemove(self : SVGElement) -> Unit =
  #| (self) => { self.onmousemove = null }

///|
pub extern "js" fn SVGElement::set_onmouseout(
  self : SVGElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmouseout = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onmouseout(self : SVGElement) -> Unit =
  #| (self) => { self.onmouseout = null }

///|
pub extern "js" fn SVGElement::set_onmouseover(
  self : SVGElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmouseover = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onmouseover(self : SVGElement) -> Unit =
  #| (self) => { self.onmouseover = null }

///|
pub extern "js" fn SVGElement::set_onmouseup(
  self : SVGElement,
  handler : (MouseEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmouseup = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onmouseup(self : SVGElement) -> Unit =
  #| (self) => { self.onmouseup = null }

///|
pub extern "js" fn SVGElement::set_onpaste(
  self : SVGElement,
  handler : (ClipboardEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpaste = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onpaste(self : SVGElement) -> Unit =
  #| (self) => { self.onpaste = null }

///|
pub extern "js" fn SVGElement::set_onpause(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpause = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onpause(self : SVGElement) -> Unit =
  #| (self) => { self.onpause = null }

///|
pub extern "js" fn SVGElement::set_onplay(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onplay = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onplay(self : SVGElement) -> Unit =
  #| (self) => { self.onplay = null }

///|
pub extern "js" fn SVGElement::set_onplaying(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onplaying = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onplaying(self : SVGElement) -> Unit =
  #| (self) => { self.onplaying = null }

///|
pub extern "js" fn SVGElement::set_onprogress(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onprogress = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onprogress(self : SVGElement) -> Unit =
  #| (self) => { self.onprogress = null }

///|
pub extern "js" fn SVGElement::set_onratechange(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onratechange = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onratechange(self : SVGElement) -> Unit =
  #| (self) => { self.onratechange = null }

///|
pub extern "js" fn SVGElement::set_onreset(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onreset = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onreset(self : SVGElement) -> Unit =
  #| (self) => { self.onreset = null }

///|
pub extern "js" fn SVGElement::set_onresize(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onresize = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onresize(self : SVGElement) -> Unit =
  #| (self) => { self.onresize = null }

///|
pub extern "js" fn SVGElement::set_onscroll(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onscroll = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onscroll(self : SVGElement) -> Unit =
  #| (self) => { self.onscroll = null }

///|
pub extern "js" fn SVGElement::set_onscrollend(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onscrollend = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onscrollend(self : SVGElement) -> Unit =
  #| (self) => { self.onscrollend = null }

///|
pub extern "js" fn SVGElement::set_onsecuritypolicyviolation(
  self : SVGElement,
  handler : (SecurityPolicyViolationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsecuritypolicyviolation = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onsecuritypolicyviolation(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onsecuritypolicyviolation = null }

///|
pub extern "js" fn SVGElement::set_onseeked(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onseeked = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onseeked(self : SVGElement) -> Unit =
  #| (self) => { self.onseeked = null }

///|
pub extern "js" fn SVGElement::set_onseeking(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onseeking = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onseeking(self : SVGElement) -> Unit =
  #| (self) => { self.onseeking = null }

///|
pub extern "js" fn SVGElement::set_onselect(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onselect = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onselect(self : SVGElement) -> Unit =
  #| (self) => { self.onselect = null }

///|
pub extern "js" fn SVGElement::set_onslotchange(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onslotchange = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onslotchange(self : SVGElement) -> Unit =
  #| (self) => { self.onslotchange = null }

///|
pub extern "js" fn SVGElement::set_onstalled(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onstalled = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onstalled(self : SVGElement) -> Unit =
  #| (self) => { self.onstalled = null }

///|
pub extern "js" fn SVGElement::set_onsubmit(
  self : SVGElement,
  handler : (SubmitEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsubmit = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onsubmit(self : SVGElement) -> Unit =
  #| (self) => { self.onsubmit = null }

///|
pub extern "js" fn SVGElement::set_onsuspend(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsuspend = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onsuspend(self : SVGElement) -> Unit =
  #| (self) => { self.onsuspend = null }

///|
pub extern "js" fn SVGElement::set_ontimeupdate(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontimeupdate = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ontimeupdate(self : SVGElement) -> Unit =
  #| (self) => { self.ontimeupdate = null }

///|
pub extern "js" fn SVGElement::set_ontoggle(
  self : SVGElement,
  handler : (ToggleEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontoggle = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ontoggle(self : SVGElement) -> Unit =
  #| (self) => { self.ontoggle = null }

///|
pub extern "js" fn SVGElement::set_onvolumechange(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onvolumechange = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onvolumechange(self : SVGElement) -> Unit =
  #| (self) => { self.onvolumechange = null }

///|
pub extern "js" fn SVGElement::set_onwaiting(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwaiting = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onwaiting(self : SVGElement) -> Unit =
  #| (self) => { self.onwaiting = null }

///|
pub extern "js" fn SVGElement::set_onwebkitanimationend(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwebkitanimationend = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onwebkitanimationend(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onwebkitanimationend = null }

///|
pub extern "js" fn SVGElement::set_onwebkitanimationiteration(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwebkitanimationiteration = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onwebkitanimationiteration(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onwebkitanimationiteration = null }

///|
pub extern "js" fn SVGElement::set_onwebkitanimationstart(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwebkitanimationstart = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onwebkitanimationstart(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onwebkitanimationstart = null }

///|
pub extern "js" fn SVGElement::set_onwebkittransitionend(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwebkittransitionend = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onwebkittransitionend(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onwebkittransitionend = null }

///|
pub extern "js" fn SVGElement::set_onwheel(
  self : SVGElement,
  handler : (WheelEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onwheel = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onwheel(self : SVGElement) -> Unit =
  #| (self) => { self.onwheel = null }

///|
pub extern "js" fn SVGElement::set_ontouchstart(
  self : SVGElement,
  handler : (TouchEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontouchstart = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ontouchstart(self : SVGElement) -> Unit =
  #| (self) => { self.ontouchstart = null }

///|
pub extern "js" fn SVGElement::set_ontouchend(
  self : SVGElement,
  handler : (TouchEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontouchend = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ontouchend(self : SVGElement) -> Unit =
  #| (self) => { self.ontouchend = null }

///|
pub extern "js" fn SVGElement::set_ontouchmove(
  self : SVGElement,
  handler : (TouchEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontouchmove = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ontouchmove(self : SVGElement) -> Unit =
  #| (self) => { self.ontouchmove = null }

///|
pub extern "js" fn SVGElement::set_ontouchcancel(
  self : SVGElement,
  handler : (TouchEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontouchcancel = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ontouchcancel(self : SVGElement) -> Unit =
  #| (self) => { self.ontouchcancel = null }

///|
pub extern "js" fn SVGElement::set_ontransitionrun(
  self : SVGElement,
  handler : (TransitionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontransitionrun = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ontransitionrun(self : SVGElement) -> Unit =
  #| (self) => { self.ontransitionrun = null }

///|
pub extern "js" fn SVGElement::set_ontransitionstart(
  self : SVGElement,
  handler : (TransitionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontransitionstart = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ontransitionstart(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.ontransitionstart = null }

///|
pub extern "js" fn SVGElement::set_ontransitionend(
  self : SVGElement,
  handler : (TransitionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontransitionend = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ontransitionend(self : SVGElement) -> Unit =
  #| (self) => { self.ontransitionend = null }

///|
pub extern "js" fn SVGElement::set_ontransitioncancel(
  self : SVGElement,
  handler : (TransitionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ontransitioncancel = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ontransitioncancel(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.ontransitioncancel = null }

///|
pub extern "js" fn SVGElement::set_onsnapchanged(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsnapchanged = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onsnapchanged(self : SVGElement) -> Unit =
  #| (self) => { self.onsnapchanged = null }

///|
pub extern "js" fn SVGElement::set_onsnapchanging(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsnapchanging = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onsnapchanging(self : SVGElement) -> Unit =
  #| (self) => { self.onsnapchanging = null }

///|
pub extern "js" fn SVGElement::set_onanimationstart(
  self : SVGElement,
  handler : (AnimationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onanimationstart = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onanimationstart(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onanimationstart = null }

///|
pub extern "js" fn SVGElement::set_onanimationiteration(
  self : SVGElement,
  handler : (AnimationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onanimationiteration = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onanimationiteration(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onanimationiteration = null }

///|
pub extern "js" fn SVGElement::set_onanimationend(
  self : SVGElement,
  handler : (AnimationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onanimationend = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onanimationend(self : SVGElement) -> Unit =
  #| (self) => { self.onanimationend = null }

///|
pub extern "js" fn SVGElement::set_onanimationcancel(
  self : SVGElement,
  handler : (AnimationEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onanimationcancel = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onanimationcancel(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onanimationcancel = null }

///|
pub extern "js" fn SVGElement::set_onfencedtreeclick(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onfencedtreeclick = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onfencedtreeclick(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onfencedtreeclick = null }

///|
pub extern "js" fn SVGElement::set_onpointerover(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerover = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onpointerover(self : SVGElement) -> Unit =
  #| (self) => { self.onpointerover = null }

///|
pub extern "js" fn SVGElement::set_onpointerenter(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerenter = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onpointerenter(self : SVGElement) -> Unit =
  #| (self) => { self.onpointerenter = null }

///|
pub extern "js" fn SVGElement::set_onpointerdown(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerdown = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onpointerdown(self : SVGElement) -> Unit =
  #| (self) => { self.onpointerdown = null }

///|
pub extern "js" fn SVGElement::set_onpointermove(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointermove = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onpointermove(self : SVGElement) -> Unit =
  #| (self) => { self.onpointermove = null }

///|
pub extern "js" fn SVGElement::set_onpointerrawupdate(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerrawupdate = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onpointerrawupdate(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onpointerrawupdate = null }

///|
pub extern "js" fn SVGElement::set_onpointerup(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerup = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onpointerup(self : SVGElement) -> Unit =
  #| (self) => { self.onpointerup = null }

///|
pub extern "js" fn SVGElement::set_onpointercancel(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointercancel = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onpointercancel(self : SVGElement) -> Unit =
  #| (self) => { self.onpointercancel = null }

///|
pub extern "js" fn SVGElement::set_onpointerout(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerout = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onpointerout(self : SVGElement) -> Unit =
  #| (self) => { self.onpointerout = null }

///|
pub extern "js" fn SVGElement::set_onpointerleave(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpointerleave = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onpointerleave(self : SVGElement) -> Unit =
  #| (self) => { self.onpointerleave = null }

///|
pub extern "js" fn SVGElement::set_ongotpointercapture(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ongotpointercapture = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_ongotpointercapture(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.ongotpointercapture = null }

///|
pub extern "js" fn SVGElement::set_onlostpointercapture(
  self : SVGElement,
  handler : (PointerEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onlostpointercapture = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onlostpointercapture(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onlostpointercapture = null }

///|
pub extern "js" fn SVGElement::set_onbeforexrselect(
  self : SVGElement,
  handler : (XRSessionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbeforexrselect = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onbeforexrselect(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onbeforexrselect = null }

///|
pub extern "js" fn SVGElement::set_onselectstart(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onselectstart = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onselectstart(self : SVGElement) -> Unit =
  #| (self) => { self.onselectstart = null }

///|
pub extern "js" fn SVGElement::set_onselectionchange(
  self : SVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onselectionchange = (e) => handler(e) }

///|
pub extern "js" fn SVGElement::clear_onselectionchange(
  self : SVGElement,
) -> Unit =
  #| (self) => { self.onselectionchange = null }

///|
pub extern "js" fn SVGElement::get_corresponding_element(
  self : SVGElement,
) -> SVGElement? =
  #| (self) => (() => { const v = self.correspondingElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SVGElement::get_corresponding_use_element(
  self : SVGElement,
) -> SVGUseElement? =
  #| (self) => (() => { const v = self.correspondingUseElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SVGElement::get_dataset(self : SVGElement) -> DOMStringMap =
  #| (self) => self.dataset

///|
pub extern "js" fn SVGElement::get_nonce(self : SVGElement) -> String =
  #| (self) => self.nonce

///|
pub extern "js" fn SVGElement::set_nonce(
  self : SVGElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.nonce = value }

///|
pub extern "js" fn SVGElement::get_autofocus(self : SVGElement) -> Bool =
  #| (self) => self.autofocus

///|
pub extern "js" fn SVGElement::set_autofocus(
  self : SVGElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.autofocus = value }

///|
pub extern "js" fn SVGElement::get_tab_index(self : SVGElement) -> Int =
  #| (self) => self.tabIndex

///|
pub extern "js" fn SVGElement::set_tab_index(
  self : SVGElement,
  value : Int,
) -> Unit =
  #| (self, value) => { self.tabIndex = value }

///|
pub extern "js" fn SVGElement::focus(self : SVGElement) -> Unit =
  #| (self) => self.focus()

///|
extern "js" fn SVGElement::focus_with_options_ffi(
  self : SVGElement,
  options : JsValue,
) -> Unit =
  #| (self, options) => self.focus(options)

///|
pub fn SVGElement::focus_with_options(
  self : SVGElement,
  options : FocusOptions,
) -> Unit {
  SVGElement::focus_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn SVGElement::blur(self : SVGElement) -> Unit =
  #| (self) => self.blur()

///|
pub extern "js" fn SVGElement::get_style(
  self : SVGElement,
) -> CSSStyleProperties =
  #| (self) => self.style

///|
pub extern "js" fn SVGElement::get_attribute_style_map(
  self : SVGElement,
) -> StylePropertyMap =
  #| (self) => self.attributeStyleMap

///|
/// SVGGraphicsElement interface
pub type SVGGraphicsElement

///|
pub extern "js" fn SVGGraphicsElement::to_js_value(
  self : SVGGraphicsElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGGraphicsElement (unchecked)
pub extern "js" fn SVGGraphicsElement::from_js_value(
  v : JsValue,
) -> SVGGraphicsElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGGraphicsElement (checked with instanceof)
pub extern "js" fn SVGGraphicsElement::from_js_value_opt(
  v : JsValue,
) -> SVGGraphicsElement? =
  #| (v) => (v instanceof SVGGraphicsElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGGraphicsElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_graphics_element(
  self : JsValue,
) -> SVGGraphicsElement? =
  #| (self) => (self instanceof SVGGraphicsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGGraphicsElement (unchecked)
pub extern "js" fn JsValue::to_svg_graphics_element(
  self : JsValue,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGGraphicsElement::to_svg_element(
  self : SVGGraphicsElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGGraphicsElement::to_element(
  self : SVGGraphicsElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGGraphicsElement::to_node(
  self : SVGGraphicsElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGGraphicsElement::to_event_target(
  self : SVGGraphicsElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGGraphicsElement::as_svg_geometry_element(
  self : SVGGraphicsElement,
) -> SVGGeometryElement? =
  #| (self) => (self instanceof SVGGeometryElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svgsvg_element(
  self : SVGGraphicsElement,
) -> SVGSVGElement? =
  #| (self) => (self instanceof SVGSVGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svgg_element(
  self : SVGGraphicsElement,
) -> SVGGElement? =
  #| (self) => (self instanceof SVGGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_defs_element(
  self : SVGGraphicsElement,
) -> SVGDefsElement? =
  #| (self) => (self instanceof SVGDefsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_symbol_element(
  self : SVGGraphicsElement,
) -> SVGSymbolElement? =
  #| (self) => (self instanceof SVGSymbolElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_use_element(
  self : SVGGraphicsElement,
) -> SVGUseElement? =
  #| (self) => (self instanceof SVGUseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_switch_element(
  self : SVGGraphicsElement,
) -> SVGSwitchElement? =
  #| (self) => (self instanceof SVGSwitchElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_rect_element(
  self : SVGGraphicsElement,
) -> SVGRectElement? =
  #| (self) => (self instanceof SVGRectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_circle_element(
  self : SVGGraphicsElement,
) -> SVGCircleElement? =
  #| (self) => (self instanceof SVGCircleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_ellipse_element(
  self : SVGGraphicsElement,
) -> SVGEllipseElement? =
  #| (self) => (self instanceof SVGEllipseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_line_element(
  self : SVGGraphicsElement,
) -> SVGLineElement? =
  #| (self) => (self instanceof SVGLineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_polyline_element(
  self : SVGGraphicsElement,
) -> SVGPolylineElement? =
  #| (self) => (self instanceof SVGPolylineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_polygon_element(
  self : SVGGraphicsElement,
) -> SVGPolygonElement? =
  #| (self) => (self instanceof SVGPolygonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_text_content_element(
  self : SVGGraphicsElement,
) -> SVGTextContentElement? =
  #| (self) => (self instanceof SVGTextContentElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_text_positioning_element(
  self : SVGGraphicsElement,
) -> SVGTextPositioningElement? =
  #| (self) => (self instanceof SVGTextPositioningElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_text_element(
  self : SVGGraphicsElement,
) -> SVGTextElement? =
  #| (self) => (self instanceof SVGTextElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svgt_span_element(
  self : SVGGraphicsElement,
) -> SVGTSpanElement? =
  #| (self) => (self instanceof SVGTSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_text_path_element(
  self : SVGGraphicsElement,
) -> SVGTextPathElement? =
  #| (self) => (self instanceof SVGTextPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_image_element(
  self : SVGGraphicsElement,
) -> SVGImageElement? =
  #| (self) => (self instanceof SVGImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_foreign_object_element(
  self : SVGGraphicsElement,
) -> SVGForeignObjectElement? =
  #| (self) => (self instanceof SVGForeignObjectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svga_element(
  self : SVGGraphicsElement,
) -> SVGAElement? =
  #| (self) => (self instanceof SVGAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::as_svg_path_element(
  self : SVGGraphicsElement,
) -> SVGPathElement? =
  #| (self) => (self instanceof SVGPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGraphicsElement::get_transform(
  self : SVGGraphicsElement,
) -> SVGAnimatedTransformList =
  #| (self) => self.transform

///|
pub extern "js" fn SVGGraphicsElement::get_b_box(
  self : SVGGraphicsElement,
) -> DOMRect =
  #| (self) => self.getBBox()

///|
extern "js" fn SVGGraphicsElement::get_b_box_with_options_ffi(
  self : SVGGraphicsElement,
  options : JsValue,
) -> DOMRect =
  #| (self, options) => self.getBBox(options)

///|
pub fn SVGGraphicsElement::get_b_box_with_options(
  self : SVGGraphicsElement,
  options : SVGBoundingBoxOptions,
) -> DOMRect {
  SVGGraphicsElement::get_b_box_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn SVGGraphicsElement::get_ctm(
  self : SVGGraphicsElement,
) -> DOMMatrix? =
  #| (self) => (() => { const v = self.getCTM(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SVGGraphicsElement::get_screen_ctm(
  self : SVGGraphicsElement,
) -> DOMMatrix? =
  #| (self) => (() => { const v = self.getScreenCTM(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SVGGraphicsElement::get_required_extensions(
  self : SVGGraphicsElement,
) -> SVGStringList =
  #| (self) => self.requiredExtensions

///|
pub extern "js" fn SVGGraphicsElement::get_system_language(
  self : SVGGraphicsElement,
) -> SVGStringList =
  #| (self) => self.systemLanguage

///|
/// SVGGeometryElement interface
pub type SVGGeometryElement

///|
pub extern "js" fn SVGGeometryElement::to_js_value(
  self : SVGGeometryElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGGeometryElement (unchecked)
pub extern "js" fn SVGGeometryElement::from_js_value(
  v : JsValue,
) -> SVGGeometryElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGGeometryElement (checked with instanceof)
pub extern "js" fn SVGGeometryElement::from_js_value_opt(
  v : JsValue,
) -> SVGGeometryElement? =
  #| (v) => (v instanceof SVGGeometryElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGGeometryElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_geometry_element(
  self : JsValue,
) -> SVGGeometryElement? =
  #| (self) => (self instanceof SVGGeometryElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGGeometryElement (unchecked)
pub extern "js" fn JsValue::to_svg_geometry_element(
  self : JsValue,
) -> SVGGeometryElement =
  #| (self) => self

///|
pub extern "js" fn SVGGeometryElement::to_svg_graphics_element(
  self : SVGGeometryElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGGeometryElement::to_svg_element(
  self : SVGGeometryElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGGeometryElement::to_element(
  self : SVGGeometryElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGGeometryElement::to_node(
  self : SVGGeometryElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGGeometryElement::to_event_target(
  self : SVGGeometryElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGGeometryElement::as_svg_rect_element(
  self : SVGGeometryElement,
) -> SVGRectElement? =
  #| (self) => (self instanceof SVGRectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGeometryElement::as_svg_circle_element(
  self : SVGGeometryElement,
) -> SVGCircleElement? =
  #| (self) => (self instanceof SVGCircleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGeometryElement::as_svg_ellipse_element(
  self : SVGGeometryElement,
) -> SVGEllipseElement? =
  #| (self) => (self instanceof SVGEllipseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGeometryElement::as_svg_line_element(
  self : SVGGeometryElement,
) -> SVGLineElement? =
  #| (self) => (self instanceof SVGLineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGeometryElement::as_svg_polyline_element(
  self : SVGGeometryElement,
) -> SVGPolylineElement? =
  #| (self) => (self instanceof SVGPolylineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGeometryElement::as_svg_polygon_element(
  self : SVGGeometryElement,
) -> SVGPolygonElement? =
  #| (self) => (self instanceof SVGPolygonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGeometryElement::as_svg_path_element(
  self : SVGGeometryElement,
) -> SVGPathElement? =
  #| (self) => (self instanceof SVGPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGeometryElement::get_path_length(
  self : SVGGeometryElement,
) -> SVGAnimatedNumber =
  #| (self) => self.pathLength

///|
pub extern "js" fn SVGGeometryElement::is_point_in_fill(
  self : SVGGeometryElement,
) -> Bool =
  #| (self) => self.isPointInFill()

///|
extern "js" fn SVGGeometryElement::is_point_in_fill_with_point_ffi(
  self : SVGGeometryElement,
  point : JsValue,
) -> Bool =
  #| (self, point) => self.isPointInFill(point)

///|
pub fn SVGGeometryElement::is_point_in_fill_with_point(
  self : SVGGeometryElement,
  point : DOMPointInit,
) -> Bool {
  SVGGeometryElement::is_point_in_fill_with_point_ffi(self, point.to_js())
}

///|
pub extern "js" fn SVGGeometryElement::is_point_in_stroke(
  self : SVGGeometryElement,
) -> Bool =
  #| (self) => self.isPointInStroke()

///|
extern "js" fn SVGGeometryElement::is_point_in_stroke_with_point_ffi(
  self : SVGGeometryElement,
  point : JsValue,
) -> Bool =
  #| (self, point) => self.isPointInStroke(point)

///|
pub fn SVGGeometryElement::is_point_in_stroke_with_point(
  self : SVGGeometryElement,
  point : DOMPointInit,
) -> Bool {
  SVGGeometryElement::is_point_in_stroke_with_point_ffi(self, point.to_js())
}

///|
pub extern "js" fn SVGGeometryElement::get_total_length(
  self : SVGGeometryElement,
) -> Double =
  #| (self) => self.getTotalLength()

///|
pub extern "js" fn SVGGeometryElement::get_point_at_length(
  self : SVGGeometryElement,
  distance : Double,
) -> DOMPoint =
  #| (self, distance) => self.getPointAtLength(distance)

///|
/// SVGNumber interface
pub type SVGNumber

///|
pub extern "js" fn SVGNumber::to_js_value(self : SVGNumber) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGNumber (unchecked)
pub extern "js" fn SVGNumber::from_js_value(v : JsValue) -> SVGNumber =
  #| (v) => v

///|
/// Safely cast JsValue to SVGNumber (checked with instanceof)
pub extern "js" fn SVGNumber::from_js_value_opt(v : JsValue) -> SVGNumber? =
  #| (v) => (v instanceof SVGNumber) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGNumber (checked with instanceof)
pub extern "js" fn JsValue::as_svg_number(self : JsValue) -> SVGNumber? =
  #| (self) => (self instanceof SVGNumber) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGNumber (unchecked)
pub extern "js" fn JsValue::to_svg_number(self : JsValue) -> SVGNumber =
  #| (self) => self

///|
pub extern "js" fn SVGNumber::get_value(self : SVGNumber) -> Double =
  #| (self) => self.value

///|
pub extern "js" fn SVGNumber::set_value(
  self : SVGNumber,
  value : Double,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
/// SVGLength interface
pub type SVGLength

///|
pub extern "js" fn SVGLength::to_js_value(self : SVGLength) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGLength (unchecked)
pub extern "js" fn SVGLength::from_js_value(v : JsValue) -> SVGLength =
  #| (v) => v

///|
/// Safely cast JsValue to SVGLength (checked with instanceof)
pub extern "js" fn SVGLength::from_js_value_opt(v : JsValue) -> SVGLength? =
  #| (v) => (v instanceof SVGLength) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGLength (checked with instanceof)
pub extern "js" fn JsValue::as_svg_length(self : JsValue) -> SVGLength? =
  #| (self) => (self instanceof SVGLength) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGLength (unchecked)
pub extern "js" fn JsValue::to_svg_length(self : JsValue) -> SVGLength =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum SVGLengthNewValueSpecifiedUnitsError {
  NotSupportedError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

// SVGLength.SVG_LENGTHTYPE_UNKNOWN

///|
pub let svg_length_svg_lengthtype_unknown : Int = 0

// SVGLength.SVG_LENGTHTYPE_NUMBER

///|
pub let svg_length_svg_lengthtype_number : Int = 1

// SVGLength.SVG_LENGTHTYPE_PERCENTAGE

///|
pub let svg_length_svg_lengthtype_percentage : Int = 2

// SVGLength.SVG_LENGTHTYPE_EMS

///|
pub let svg_length_svg_lengthtype_ems : Int = 3

// SVGLength.SVG_LENGTHTYPE_EXS

///|
pub let svg_length_svg_lengthtype_exs : Int = 4

// SVGLength.SVG_LENGTHTYPE_PX

///|
pub let svg_length_svg_lengthtype_px : Int = 5

// SVGLength.SVG_LENGTHTYPE_CM

///|
pub let svg_length_svg_lengthtype_cm : Int = 6

// SVGLength.SVG_LENGTHTYPE_MM

///|
pub let svg_length_svg_lengthtype_mm : Int = 7

// SVGLength.SVG_LENGTHTYPE_IN

///|
pub let svg_length_svg_lengthtype_in : Int = 8

// SVGLength.SVG_LENGTHTYPE_PT

///|
pub let svg_length_svg_lengthtype_pt : Int = 9

// SVGLength.SVG_LENGTHTYPE_PC

///|
pub let svg_length_svg_lengthtype_pc : Int = 10

///|
pub extern "js" fn SVGLength::get_unit_type(self : SVGLength) -> Int =
  #| (self) => self.unitType

///|
pub extern "js" fn SVGLength::get_value(self : SVGLength) -> Double =
  #| (self) => self.value

///|
pub extern "js" fn SVGLength::set_value(
  self : SVGLength,
  value : Double,
) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn SVGLength::get_value_in_specified_units(
  self : SVGLength,
) -> Double =
  #| (self) => self.valueInSpecifiedUnits

///|
pub extern "js" fn SVGLength::set_value_in_specified_units(
  self : SVGLength,
  value : Double,
) -> Unit =
  #| (self, value) => { self.valueInSpecifiedUnits = value }

///|
pub extern "js" fn SVGLength::get_value_as_string(self : SVGLength) -> String =
  #| (self) => self.valueAsString

///|
pub extern "js" fn SVGLength::set_value_as_string(
  self : SVGLength,
  value : String,
) -> Unit =
  #| (self, value) => { self.valueAsString = value }

///|
pub extern "js" fn SVGLength::new_value_specified_units(
  self : SVGLength,
  unit_type : Int,
  value_in_specified_units : Double,
) -> Result[Unit, SVGLengthNewValueSpecifiedUnitsError] =
  #| (self, unit_type, value_in_specified_units) => (() => { try { self.newValueSpecifiedUnits(unit_type, value_in_specified_units); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotSupportedError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGLength::convert_to_specified_units(
  self : SVGLength,
  unit_type : Int,
) -> Unit =
  #| (self, unit_type) => self.convertToSpecifiedUnits(unit_type)

///|
/// SVGAngle interface
pub type SVGAngle

///|
pub extern "js" fn SVGAngle::to_js_value(self : SVGAngle) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAngle (unchecked)
pub extern "js" fn SVGAngle::from_js_value(v : JsValue) -> SVGAngle =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAngle (checked with instanceof)
pub extern "js" fn SVGAngle::from_js_value_opt(v : JsValue) -> SVGAngle? =
  #| (v) => (v instanceof SVGAngle) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAngle (checked with instanceof)
pub extern "js" fn JsValue::as_svg_angle(self : JsValue) -> SVGAngle? =
  #| (self) => (self instanceof SVGAngle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAngle (unchecked)
pub extern "js" fn JsValue::to_svg_angle(self : JsValue) -> SVGAngle =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum SVGAngleNewValueSpecifiedUnitsError {
  NotSupportedError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

// SVGAngle.SVG_ANGLETYPE_UNKNOWN

///|
pub let svg_angle_svg_angletype_unknown : Int = 0

// SVGAngle.SVG_ANGLETYPE_UNSPECIFIED

///|
pub let svg_angle_svg_angletype_unspecified : Int = 1

// SVGAngle.SVG_ANGLETYPE_DEG

///|
pub let svg_angle_svg_angletype_deg : Int = 2

// SVGAngle.SVG_ANGLETYPE_RAD

///|
pub let svg_angle_svg_angletype_rad : Int = 3

// SVGAngle.SVG_ANGLETYPE_GRAD

///|
pub let svg_angle_svg_angletype_grad : Int = 4

///|
pub extern "js" fn SVGAngle::get_unit_type(self : SVGAngle) -> Int =
  #| (self) => self.unitType

///|
pub extern "js" fn SVGAngle::get_value(self : SVGAngle) -> Double =
  #| (self) => self.value

///|
pub extern "js" fn SVGAngle::set_value(self : SVGAngle, value : Double) -> Unit =
  #| (self, value) => { self.value = value }

///|
pub extern "js" fn SVGAngle::get_value_in_specified_units(
  self : SVGAngle,
) -> Double =
  #| (self) => self.valueInSpecifiedUnits

///|
pub extern "js" fn SVGAngle::set_value_in_specified_units(
  self : SVGAngle,
  value : Double,
) -> Unit =
  #| (self, value) => { self.valueInSpecifiedUnits = value }

///|
pub extern "js" fn SVGAngle::get_value_as_string(self : SVGAngle) -> String =
  #| (self) => self.valueAsString

///|
pub extern "js" fn SVGAngle::set_value_as_string(
  self : SVGAngle,
  value : String,
) -> Unit =
  #| (self, value) => { self.valueAsString = value }

///|
pub extern "js" fn SVGAngle::new_value_specified_units(
  self : SVGAngle,
  unit_type : Int,
  value_in_specified_units : Double,
) -> Result[Unit, SVGAngleNewValueSpecifiedUnitsError] =
  #| (self, unit_type, value_in_specified_units) => (() => { try { self.newValueSpecifiedUnits(unit_type, value_in_specified_units); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotSupportedError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGAngle::convert_to_specified_units(
  self : SVGAngle,
  unit_type : Int,
) -> Unit =
  #| (self, unit_type) => self.convertToSpecifiedUnits(unit_type)

///|
/// SVGNumberList interface
pub type SVGNumberList

///|
pub extern "js" fn SVGNumberList::to_js_value(self : SVGNumberList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGNumberList (unchecked)
pub extern "js" fn SVGNumberList::from_js_value(v : JsValue) -> SVGNumberList =
  #| (v) => v

///|
/// Safely cast JsValue to SVGNumberList (checked with instanceof)
pub extern "js" fn SVGNumberList::from_js_value_opt(
  v : JsValue,
) -> SVGNumberList? =
  #| (v) => (v instanceof SVGNumberList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGNumberList (checked with instanceof)
pub extern "js" fn JsValue::as_svg_number_list(
  self : JsValue,
) -> SVGNumberList? =
  #| (self) => (self instanceof SVGNumberList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGNumberList (unchecked)
pub extern "js" fn JsValue::to_svg_number_list(self : JsValue) -> SVGNumberList =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum SVGNumberListClearError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGNumberListInitializeError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGNumberListGetItemError {
  IndexSizeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGNumberListInsertItemBeforeError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGNumberListReplaceItemError {
  IndexSizeError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGNumberListRemoveItemError {
  IndexSizeError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGNumberListAppendItemError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn SVGNumberList::get_length(self : SVGNumberList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn SVGNumberList::get_number_of_items(
  self : SVGNumberList,
) -> Int =
  #| (self) => self.numberOfItems

///|
pub extern "js" fn SVGNumberList::clear(
  self : SVGNumberList,
) -> Result[Unit, SVGNumberListClearError] =
  #| (self) => (() => { try { self.clear(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGNumberList::initialize(
  self : SVGNumberList,
  new_item : SVGNumber,
) -> Result[SVGNumber, SVGNumberListInitializeError] =
  #| (self, new_item) => (() => { try { return { $tag: 1, _0: self.initialize(new_item) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGNumberList::get_item(
  self : SVGNumberList,
  index : Int,
) -> Result[SVGNumber, SVGNumberListGetItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self.getItem(index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
#alias("_[_]")
pub extern "js" fn SVGNumberList::get(
  self : SVGNumberList,
  index : Int,
) -> Result[SVGNumber, SVGNumberListGetItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self[index] }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGNumberList::insert_item_before(
  self : SVGNumberList,
  new_item : SVGNumber,
  index : Int,
) -> Result[SVGNumber, SVGNumberListInsertItemBeforeError] =
  #| (self, new_item, index) => (() => { try { return { $tag: 1, _0: self.insertItemBefore(new_item, index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGNumberList::replace_item(
  self : SVGNumberList,
  new_item : SVGNumber,
  index : Int,
) -> Result[SVGNumber, SVGNumberListReplaceItemError] =
  #| (self, new_item, index) => (() => { try { return { $tag: 1, _0: self.replaceItem(new_item, index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGNumberList::remove_item(
  self : SVGNumberList,
  index : Int,
) -> Result[SVGNumber, SVGNumberListRemoveItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self.removeItem(index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGNumberList::append_item(
  self : SVGNumberList,
  new_item : SVGNumber,
) -> Result[SVGNumber, SVGNumberListAppendItemError] =
  #| (self, new_item) => (() => { try { return { $tag: 1, _0: self.appendItem(new_item) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
#alias("_[_]=_")
pub extern "js" fn SVGNumberList::set(
  self : SVGNumberList,
  index : Int,
  new_item : SVGNumber,
) -> Unit =
  #| (self, index, new_item) => { self[index] = new_item }

///|
/// SVGLengthList interface
pub type SVGLengthList

///|
pub extern "js" fn SVGLengthList::to_js_value(self : SVGLengthList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGLengthList (unchecked)
pub extern "js" fn SVGLengthList::from_js_value(v : JsValue) -> SVGLengthList =
  #| (v) => v

///|
/// Safely cast JsValue to SVGLengthList (checked with instanceof)
pub extern "js" fn SVGLengthList::from_js_value_opt(
  v : JsValue,
) -> SVGLengthList? =
  #| (v) => (v instanceof SVGLengthList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGLengthList (checked with instanceof)
pub extern "js" fn JsValue::as_svg_length_list(
  self : JsValue,
) -> SVGLengthList? =
  #| (self) => (self instanceof SVGLengthList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGLengthList (unchecked)
pub extern "js" fn JsValue::to_svg_length_list(self : JsValue) -> SVGLengthList =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum SVGLengthListClearError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGLengthListInitializeError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGLengthListGetItemError {
  IndexSizeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGLengthListInsertItemBeforeError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGLengthListReplaceItemError {
  IndexSizeError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGLengthListRemoveItemError {
  IndexSizeError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGLengthListAppendItemError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn SVGLengthList::get_length(self : SVGLengthList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn SVGLengthList::get_number_of_items(
  self : SVGLengthList,
) -> Int =
  #| (self) => self.numberOfItems

///|
pub extern "js" fn SVGLengthList::clear(
  self : SVGLengthList,
) -> Result[Unit, SVGLengthListClearError] =
  #| (self) => (() => { try { self.clear(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGLengthList::initialize(
  self : SVGLengthList,
  new_item : SVGLength,
) -> Result[SVGLength, SVGLengthListInitializeError] =
  #| (self, new_item) => (() => { try { return { $tag: 1, _0: self.initialize(new_item) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGLengthList::get_item(
  self : SVGLengthList,
  index : Int,
) -> Result[SVGLength, SVGLengthListGetItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self.getItem(index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
#alias("_[_]")
pub extern "js" fn SVGLengthList::get(
  self : SVGLengthList,
  index : Int,
) -> Result[SVGLength, SVGLengthListGetItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self[index] }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGLengthList::insert_item_before(
  self : SVGLengthList,
  new_item : SVGLength,
  index : Int,
) -> Result[SVGLength, SVGLengthListInsertItemBeforeError] =
  #| (self, new_item, index) => (() => { try { return { $tag: 1, _0: self.insertItemBefore(new_item, index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGLengthList::replace_item(
  self : SVGLengthList,
  new_item : SVGLength,
  index : Int,
) -> Result[SVGLength, SVGLengthListReplaceItemError] =
  #| (self, new_item, index) => (() => { try { return { $tag: 1, _0: self.replaceItem(new_item, index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGLengthList::remove_item(
  self : SVGLengthList,
  index : Int,
) -> Result[SVGLength, SVGLengthListRemoveItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self.removeItem(index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGLengthList::append_item(
  self : SVGLengthList,
  new_item : SVGLength,
) -> Result[SVGLength, SVGLengthListAppendItemError] =
  #| (self, new_item) => (() => { try { return { $tag: 1, _0: self.appendItem(new_item) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
#alias("_[_]=_")
pub extern "js" fn SVGLengthList::set(
  self : SVGLengthList,
  index : Int,
  new_item : SVGLength,
) -> Unit =
  #| (self, index, new_item) => { self[index] = new_item }

///|
/// SVGStringList interface
pub type SVGStringList

///|
pub extern "js" fn SVGStringList::to_js_value(self : SVGStringList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGStringList (unchecked)
pub extern "js" fn SVGStringList::from_js_value(v : JsValue) -> SVGStringList =
  #| (v) => v

///|
/// Safely cast JsValue to SVGStringList (checked with instanceof)
pub extern "js" fn SVGStringList::from_js_value_opt(
  v : JsValue,
) -> SVGStringList? =
  #| (v) => (v instanceof SVGStringList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGStringList (checked with instanceof)
pub extern "js" fn JsValue::as_svg_string_list(
  self : JsValue,
) -> SVGStringList? =
  #| (self) => (self instanceof SVGStringList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGStringList (unchecked)
pub extern "js" fn JsValue::to_svg_string_list(self : JsValue) -> SVGStringList =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum SVGStringListClearError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGStringListInitializeError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGStringListGetItemError {
  IndexSizeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGStringListInsertItemBeforeError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGStringListReplaceItemError {
  IndexSizeError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGStringListRemoveItemError {
  IndexSizeError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGStringListAppendItemError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn SVGStringList::get_length(self : SVGStringList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn SVGStringList::get_number_of_items(
  self : SVGStringList,
) -> Int =
  #| (self) => self.numberOfItems

///|
pub extern "js" fn SVGStringList::clear(
  self : SVGStringList,
) -> Result[Unit, SVGStringListClearError] =
  #| (self) => (() => { try { self.clear(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGStringList::initialize(
  self : SVGStringList,
  new_item : String,
) -> Result[String, SVGStringListInitializeError] =
  #| (self, new_item) => (() => { try { return { $tag: 1, _0: self.initialize(new_item) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGStringList::get_item(
  self : SVGStringList,
  index : Int,
) -> Result[String, SVGStringListGetItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self.getItem(index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
#alias("_[_]")
pub extern "js" fn SVGStringList::get(
  self : SVGStringList,
  index : Int,
) -> Result[String, SVGStringListGetItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self[index] }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGStringList::insert_item_before(
  self : SVGStringList,
  new_item : String,
  index : Int,
) -> Result[String, SVGStringListInsertItemBeforeError] =
  #| (self, new_item, index) => (() => { try { return { $tag: 1, _0: self.insertItemBefore(new_item, index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGStringList::replace_item(
  self : SVGStringList,
  new_item : String,
  index : Int,
) -> Result[String, SVGStringListReplaceItemError] =
  #| (self, new_item, index) => (() => { try { return { $tag: 1, _0: self.replaceItem(new_item, index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGStringList::remove_item(
  self : SVGStringList,
  index : Int,
) -> Result[String, SVGStringListRemoveItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self.removeItem(index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGStringList::append_item(
  self : SVGStringList,
  new_item : String,
) -> Result[String, SVGStringListAppendItemError] =
  #| (self, new_item) => (() => { try { return { $tag: 1, _0: self.appendItem(new_item) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
#alias("_[_]=_")
pub extern "js" fn SVGStringList::set(
  self : SVGStringList,
  index : Int,
  new_item : String,
) -> Unit =
  #| (self, index, new_item) => { self[index] = new_item }

///|
/// SVGAnimatedBoolean interface
pub type SVGAnimatedBoolean

///|
pub extern "js" fn SVGAnimatedBoolean::to_js_value(
  self : SVGAnimatedBoolean,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedBoolean (unchecked)
pub extern "js" fn SVGAnimatedBoolean::from_js_value(
  v : JsValue,
) -> SVGAnimatedBoolean =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedBoolean (checked with instanceof)
pub extern "js" fn SVGAnimatedBoolean::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedBoolean? =
  #| (v) => (v instanceof SVGAnimatedBoolean) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedBoolean (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_boolean(
  self : JsValue,
) -> SVGAnimatedBoolean? =
  #| (self) => (self instanceof SVGAnimatedBoolean) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedBoolean (unchecked)
pub extern "js" fn JsValue::to_svg_animated_boolean(
  self : JsValue,
) -> SVGAnimatedBoolean =
  #| (self) => self

///|
pub extern "js" fn SVGAnimatedBoolean::get_base_val(
  self : SVGAnimatedBoolean,
) -> Bool =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedBoolean::set_base_val(
  self : SVGAnimatedBoolean,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.baseVal = value }

///|
pub extern "js" fn SVGAnimatedBoolean::get_anim_val(
  self : SVGAnimatedBoolean,
) -> Bool =
  #| (self) => self.animVal

///|
/// SVGAnimatedEnumeration interface
pub type SVGAnimatedEnumeration

///|
pub extern "js" fn SVGAnimatedEnumeration::to_js_value(
  self : SVGAnimatedEnumeration,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedEnumeration (unchecked)
pub extern "js" fn SVGAnimatedEnumeration::from_js_value(
  v : JsValue,
) -> SVGAnimatedEnumeration =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedEnumeration (checked with instanceof)
pub extern "js" fn SVGAnimatedEnumeration::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedEnumeration? =
  #| (v) => (v instanceof SVGAnimatedEnumeration) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedEnumeration (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_enumeration(
  self : JsValue,
) -> SVGAnimatedEnumeration? =
  #| (self) => (self instanceof SVGAnimatedEnumeration) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedEnumeration (unchecked)
pub extern "js" fn JsValue::to_svg_animated_enumeration(
  self : JsValue,
) -> SVGAnimatedEnumeration =
  #| (self) => self

///|
pub extern "js" fn SVGAnimatedEnumeration::get_base_val(
  self : SVGAnimatedEnumeration,
) -> Int =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedEnumeration::set_base_val(
  self : SVGAnimatedEnumeration,
  value : Int,
) -> Unit =
  #| (self, value) => { self.baseVal = value }

///|
pub extern "js" fn SVGAnimatedEnumeration::get_anim_val(
  self : SVGAnimatedEnumeration,
) -> Int =
  #| (self) => self.animVal

///|
/// SVGAnimatedInteger interface
pub type SVGAnimatedInteger

///|
pub extern "js" fn SVGAnimatedInteger::to_js_value(
  self : SVGAnimatedInteger,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedInteger (unchecked)
pub extern "js" fn SVGAnimatedInteger::from_js_value(
  v : JsValue,
) -> SVGAnimatedInteger =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedInteger (checked with instanceof)
pub extern "js" fn SVGAnimatedInteger::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedInteger? =
  #| (v) => (v instanceof SVGAnimatedInteger) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedInteger (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_integer(
  self : JsValue,
) -> SVGAnimatedInteger? =
  #| (self) => (self instanceof SVGAnimatedInteger) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedInteger (unchecked)
pub extern "js" fn JsValue::to_svg_animated_integer(
  self : JsValue,
) -> SVGAnimatedInteger =
  #| (self) => self

///|
pub extern "js" fn SVGAnimatedInteger::get_base_val(
  self : SVGAnimatedInteger,
) -> Int =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedInteger::set_base_val(
  self : SVGAnimatedInteger,
  value : Int,
) -> Unit =
  #| (self, value) => { self.baseVal = value }

///|
pub extern "js" fn SVGAnimatedInteger::get_anim_val(
  self : SVGAnimatedInteger,
) -> Int =
  #| (self) => self.animVal

///|
/// SVGAnimatedNumber interface
pub type SVGAnimatedNumber

///|
pub extern "js" fn SVGAnimatedNumber::to_js_value(
  self : SVGAnimatedNumber,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedNumber (unchecked)
pub extern "js" fn SVGAnimatedNumber::from_js_value(
  v : JsValue,
) -> SVGAnimatedNumber =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedNumber (checked with instanceof)
pub extern "js" fn SVGAnimatedNumber::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedNumber? =
  #| (v) => (v instanceof SVGAnimatedNumber) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedNumber (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_number(
  self : JsValue,
) -> SVGAnimatedNumber? =
  #| (self) => (self instanceof SVGAnimatedNumber) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedNumber (unchecked)
pub extern "js" fn JsValue::to_svg_animated_number(
  self : JsValue,
) -> SVGAnimatedNumber =
  #| (self) => self

///|
pub extern "js" fn SVGAnimatedNumber::get_base_val(
  self : SVGAnimatedNumber,
) -> Double =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedNumber::set_base_val(
  self : SVGAnimatedNumber,
  value : Double,
) -> Unit =
  #| (self, value) => { self.baseVal = value }

///|
pub extern "js" fn SVGAnimatedNumber::get_anim_val(
  self : SVGAnimatedNumber,
) -> Double =
  #| (self) => self.animVal

///|
/// SVGAnimatedLength interface
pub type SVGAnimatedLength

///|
pub extern "js" fn SVGAnimatedLength::to_js_value(
  self : SVGAnimatedLength,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedLength (unchecked)
pub extern "js" fn SVGAnimatedLength::from_js_value(
  v : JsValue,
) -> SVGAnimatedLength =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedLength (checked with instanceof)
pub extern "js" fn SVGAnimatedLength::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedLength? =
  #| (v) => (v instanceof SVGAnimatedLength) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedLength (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_length(
  self : JsValue,
) -> SVGAnimatedLength? =
  #| (self) => (self instanceof SVGAnimatedLength) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedLength (unchecked)
pub extern "js" fn JsValue::to_svg_animated_length(
  self : JsValue,
) -> SVGAnimatedLength =
  #| (self) => self

///|
pub extern "js" fn SVGAnimatedLength::get_base_val(
  self : SVGAnimatedLength,
) -> SVGLength =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedLength::get_anim_val(
  self : SVGAnimatedLength,
) -> SVGLength =
  #| (self) => self.animVal

///|
/// SVGAnimatedAngle interface
pub type SVGAnimatedAngle

///|
pub extern "js" fn SVGAnimatedAngle::to_js_value(
  self : SVGAnimatedAngle,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedAngle (unchecked)
pub extern "js" fn SVGAnimatedAngle::from_js_value(
  v : JsValue,
) -> SVGAnimatedAngle =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedAngle (checked with instanceof)
pub extern "js" fn SVGAnimatedAngle::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedAngle? =
  #| (v) => (v instanceof SVGAnimatedAngle) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedAngle (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_angle(
  self : JsValue,
) -> SVGAnimatedAngle? =
  #| (self) => (self instanceof SVGAnimatedAngle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedAngle (unchecked)
pub extern "js" fn JsValue::to_svg_animated_angle(
  self : JsValue,
) -> SVGAnimatedAngle =
  #| (self) => self

///|
pub extern "js" fn SVGAnimatedAngle::get_base_val(
  self : SVGAnimatedAngle,
) -> SVGAngle =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedAngle::get_anim_val(
  self : SVGAnimatedAngle,
) -> SVGAngle =
  #| (self) => self.animVal

///|
/// SVGAnimatedString interface
pub type SVGAnimatedString

///|
pub extern "js" fn SVGAnimatedString::to_js_value(
  self : SVGAnimatedString,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedString (unchecked)
pub extern "js" fn SVGAnimatedString::from_js_value(
  v : JsValue,
) -> SVGAnimatedString =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedString (checked with instanceof)
pub extern "js" fn SVGAnimatedString::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedString? =
  #| (v) => (v instanceof SVGAnimatedString) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedString (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_string(
  self : JsValue,
) -> SVGAnimatedString? =
  #| (self) => (self instanceof SVGAnimatedString) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedString (unchecked)
pub extern "js" fn JsValue::to_svg_animated_string(
  self : JsValue,
) -> SVGAnimatedString =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum SVGAnimatedStringSetBaseValError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn SVGAnimatedString::get_base_val(
  self : SVGAnimatedString,
) -> StringOrTrustedScriptURL =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedString::set_base_val(
  self : SVGAnimatedString,
  value : StringOrTrustedScriptURL,
) -> Result[Unit, SVGAnimatedStringSetBaseValError] =
  #| (self, value) => (() => { try { self.baseVal = value; return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGAnimatedString::get_anim_val(
  self : SVGAnimatedString,
) -> String =
  #| (self) => self.animVal

///|
/// SVGAnimatedRect interface
pub type SVGAnimatedRect

///|
pub extern "js" fn SVGAnimatedRect::to_js_value(
  self : SVGAnimatedRect,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedRect (unchecked)
pub extern "js" fn SVGAnimatedRect::from_js_value(
  v : JsValue,
) -> SVGAnimatedRect =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedRect (checked with instanceof)
pub extern "js" fn SVGAnimatedRect::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedRect? =
  #| (v) => (v instanceof SVGAnimatedRect) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedRect (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_rect(
  self : JsValue,
) -> SVGAnimatedRect? =
  #| (self) => (self instanceof SVGAnimatedRect) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedRect (unchecked)
pub extern "js" fn JsValue::to_svg_animated_rect(
  self : JsValue,
) -> SVGAnimatedRect =
  #| (self) => self

///|
pub extern "js" fn SVGAnimatedRect::get_base_val(
  self : SVGAnimatedRect,
) -> DOMRect =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedRect::get_anim_val(
  self : SVGAnimatedRect,
) -> DOMRectReadOnly =
  #| (self) => self.animVal

///|
/// SVGAnimatedNumberList interface
pub type SVGAnimatedNumberList

///|
pub extern "js" fn SVGAnimatedNumberList::to_js_value(
  self : SVGAnimatedNumberList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedNumberList (unchecked)
pub extern "js" fn SVGAnimatedNumberList::from_js_value(
  v : JsValue,
) -> SVGAnimatedNumberList =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedNumberList (checked with instanceof)
pub extern "js" fn SVGAnimatedNumberList::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedNumberList? =
  #| (v) => (v instanceof SVGAnimatedNumberList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedNumberList (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_number_list(
  self : JsValue,
) -> SVGAnimatedNumberList? =
  #| (self) => (self instanceof SVGAnimatedNumberList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedNumberList (unchecked)
pub extern "js" fn JsValue::to_svg_animated_number_list(
  self : JsValue,
) -> SVGAnimatedNumberList =
  #| (self) => self

///|
pub extern "js" fn SVGAnimatedNumberList::get_base_val(
  self : SVGAnimatedNumberList,
) -> SVGNumberList =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedNumberList::get_anim_val(
  self : SVGAnimatedNumberList,
) -> SVGNumberList =
  #| (self) => self.animVal

///|
/// SVGAnimatedLengthList interface
pub type SVGAnimatedLengthList

///|
pub extern "js" fn SVGAnimatedLengthList::to_js_value(
  self : SVGAnimatedLengthList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedLengthList (unchecked)
pub extern "js" fn SVGAnimatedLengthList::from_js_value(
  v : JsValue,
) -> SVGAnimatedLengthList =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedLengthList (checked with instanceof)
pub extern "js" fn SVGAnimatedLengthList::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedLengthList? =
  #| (v) => (v instanceof SVGAnimatedLengthList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedLengthList (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_length_list(
  self : JsValue,
) -> SVGAnimatedLengthList? =
  #| (self) => (self instanceof SVGAnimatedLengthList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedLengthList (unchecked)
pub extern "js" fn JsValue::to_svg_animated_length_list(
  self : JsValue,
) -> SVGAnimatedLengthList =
  #| (self) => self

///|
pub extern "js" fn SVGAnimatedLengthList::get_base_val(
  self : SVGAnimatedLengthList,
) -> SVGLengthList =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedLengthList::get_anim_val(
  self : SVGAnimatedLengthList,
) -> SVGLengthList =
  #| (self) => self.animVal

///|
/// SVGUnitTypes interface
pub type SVGUnitTypes

///|
pub extern "js" fn SVGUnitTypes::to_js_value(self : SVGUnitTypes) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGUnitTypes (unchecked)
pub extern "js" fn SVGUnitTypes::from_js_value(v : JsValue) -> SVGUnitTypes =
  #| (v) => v

///|
/// Safely cast JsValue to SVGUnitTypes (checked with instanceof)
pub extern "js" fn SVGUnitTypes::from_js_value_opt(
  v : JsValue,
) -> SVGUnitTypes? =
  #| (v) => (v instanceof SVGUnitTypes) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGUnitTypes (checked with instanceof)
pub extern "js" fn JsValue::as_svg_unit_types(self : JsValue) -> SVGUnitTypes? =
  #| (self) => (self instanceof SVGUnitTypes) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGUnitTypes (unchecked)
pub extern "js" fn JsValue::to_svg_unit_types(self : JsValue) -> SVGUnitTypes =
  #| (self) => self

// SVGUnitTypes.SVG_UNIT_TYPE_UNKNOWN

///|
pub let svg_unit_types_svg_unit_type_unknown : Int = 0

// SVGUnitTypes.SVG_UNIT_TYPE_USERSPACEONUSE

///|
pub let svg_unit_types_svg_unit_type_userspaceonuse : Int = 1

// SVGUnitTypes.SVG_UNIT_TYPE_OBJECTBOUNDINGBOX

///|
pub let svg_unit_types_svg_unit_type_objectboundingbox : Int = 2

///|
/// SVGSVGElement interface
pub type SVGSVGElement

///|
pub extern "js" fn SVGSVGElement::to_js_value(self : SVGSVGElement) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGSVGElement (unchecked)
pub extern "js" fn SVGSVGElement::from_js_value(v : JsValue) -> SVGSVGElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGSVGElement (checked with instanceof)
pub extern "js" fn SVGSVGElement::from_js_value_opt(
  v : JsValue,
) -> SVGSVGElement? =
  #| (v) => (v instanceof SVGSVGElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGSVGElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgsvg_element(self : JsValue) -> SVGSVGElement? =
  #| (self) => (self instanceof SVGSVGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGSVGElement (unchecked)
pub extern "js" fn JsValue::to_svgsvg_element(self : JsValue) -> SVGSVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGSVGElement::to_svg_graphics_element(
  self : SVGSVGElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGSVGElement::to_svg_element(
  self : SVGSVGElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGSVGElement::to_element(self : SVGSVGElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGSVGElement::to_node(self : SVGSVGElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGSVGElement::to_event_target(
  self : SVGSVGElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGSVGElement::get_x(
  self : SVGSVGElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGSVGElement::get_y(
  self : SVGSVGElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGSVGElement::get_width(
  self : SVGSVGElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGSVGElement::get_height(
  self : SVGSVGElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGSVGElement::get_current_scale(
  self : SVGSVGElement,
) -> Double =
  #| (self) => self.currentScale

///|
pub extern "js" fn SVGSVGElement::set_current_scale(
  self : SVGSVGElement,
  value : Double,
) -> Unit =
  #| (self, value) => { self.currentScale = value }

///|
pub extern "js" fn SVGSVGElement::get_current_translate(
  self : SVGSVGElement,
) -> DOMPointReadOnly =
  #| (self) => self.currentTranslate

///|
pub extern "js" fn SVGSVGElement::get_intersection_list(
  self : SVGSVGElement,
  rect : DOMRectReadOnly,
  reference_element : SVGElement?,
) -> NodeList =
  #| (self, rect, reference_element) => self.getIntersectionList(rect, (reference_element.$tag === 1 ? reference_element._0 : null))

///|
pub extern "js" fn SVGSVGElement::get_enclosure_list(
  self : SVGSVGElement,
  rect : DOMRectReadOnly,
  reference_element : SVGElement?,
) -> NodeList =
  #| (self, rect, reference_element) => self.getEnclosureList(rect, (reference_element.$tag === 1 ? reference_element._0 : null))

///|
pub extern "js" fn SVGSVGElement::check_intersection(
  self : SVGSVGElement,
  element : SVGElement,
  rect : DOMRectReadOnly,
) -> Bool =
  #| (self, element, rect) => self.checkIntersection(element, rect)

///|
pub extern "js" fn SVGSVGElement::check_enclosure(
  self : SVGSVGElement,
  element : SVGElement,
  rect : DOMRectReadOnly,
) -> Bool =
  #| (self, element, rect) => self.checkEnclosure(element, rect)

///|
pub extern "js" fn SVGSVGElement::deselect_all(self : SVGSVGElement) -> Unit =
  #| (self) => self.deselectAll()

///|
pub extern "js" fn SVGSVGElement::create_svg_number(
  self : SVGSVGElement,
) -> SVGNumber =
  #| (self) => self.createSVGNumber()

///|
pub extern "js" fn SVGSVGElement::create_svg_length(
  self : SVGSVGElement,
) -> SVGLength =
  #| (self) => self.createSVGLength()

///|
pub extern "js" fn SVGSVGElement::create_svg_angle(
  self : SVGSVGElement,
) -> SVGAngle =
  #| (self) => self.createSVGAngle()

///|
pub extern "js" fn SVGSVGElement::create_svg_point(
  self : SVGSVGElement,
) -> DOMPoint =
  #| (self) => self.createSVGPoint()

///|
pub extern "js" fn SVGSVGElement::create_svg_matrix(
  self : SVGSVGElement,
) -> DOMMatrix =
  #| (self) => self.createSVGMatrix()

///|
pub extern "js" fn SVGSVGElement::create_svg_rect(
  self : SVGSVGElement,
) -> DOMRect =
  #| (self) => self.createSVGRect()

///|
pub extern "js" fn SVGSVGElement::create_svg_transform(
  self : SVGSVGElement,
) -> SVGTransform =
  #| (self) => self.createSVGTransform()

///|
pub extern "js" fn SVGSVGElement::create_svg_transform_from_matrix(
  self : SVGSVGElement,
) -> SVGTransform =
  #| (self) => self.createSVGTransformFromMatrix()

///|
extern "js" fn SVGSVGElement::create_svg_transform_from_matrix_with_matrix_ffi(
  self : SVGSVGElement,
  matrix : JsValue,
) -> SVGTransform =
  #| (self, matrix) => self.createSVGTransformFromMatrix(matrix)

///|
pub fn SVGSVGElement::create_svg_transform_from_matrix_with_matrix(
  self : SVGSVGElement,
  matrix : DOMMatrix2DInit,
) -> SVGTransform {
  SVGSVGElement::create_svg_transform_from_matrix_with_matrix_ffi(
    self,
    matrix.to_js(),
  )
}

///|
pub extern "js" fn SVGSVGElement::get_element_by_id(
  self : SVGSVGElement,
  element_id : String,
) -> Element? =
  #| (self, element_id) => (() => { const v = self.getElementById(element_id); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SVGSVGElement::suspend_redraw(
  self : SVGSVGElement,
  max_wait_milliseconds : Int,
) -> Int =
  #| (self, max_wait_milliseconds) => self.suspendRedraw(max_wait_milliseconds)

///|
pub extern "js" fn SVGSVGElement::unsuspend_redraw(
  self : SVGSVGElement,
  suspend_handle_id : Int,
) -> Unit =
  #| (self, suspend_handle_id) => self.unsuspendRedraw(suspend_handle_id)

///|
pub extern "js" fn SVGSVGElement::unsuspend_redraw_all(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => self.unsuspendRedrawAll()

///|
pub extern "js" fn SVGSVGElement::force_redraw(self : SVGSVGElement) -> Unit =
  #| (self) => self.forceRedraw()

///|
pub extern "js" fn SVGSVGElement::pause_animations(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => self.pauseAnimations()

///|
pub extern "js" fn SVGSVGElement::unpause_animations(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => self.unpauseAnimations()

///|
pub extern "js" fn SVGSVGElement::animations_paused(
  self : SVGSVGElement,
) -> Bool =
  #| (self) => self.animationsPaused()

///|
pub extern "js" fn SVGSVGElement::get_current_time(
  self : SVGSVGElement,
) -> Double =
  #| (self) => self.getCurrentTime()

///|
pub extern "js" fn SVGSVGElement::set_current_time(
  self : SVGSVGElement,
  seconds : Double,
) -> Unit =
  #| (self, seconds) => self.setCurrentTime(seconds)

///|
pub extern "js" fn SVGSVGElement::get_view_box(
  self : SVGSVGElement,
) -> SVGAnimatedRect =
  #| (self) => self.viewBox

///|
pub extern "js" fn SVGSVGElement::get_preserve_aspect_ratio(
  self : SVGSVGElement,
) -> SVGAnimatedPreserveAspectRatio =
  #| (self) => self.preserveAspectRatio

///|
pub extern "js" fn SVGSVGElement::set_onafterprint(
  self : SVGSVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onafterprint = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onafterprint(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onafterprint = null }

///|
pub extern "js" fn SVGSVGElement::set_onbeforeprint(
  self : SVGSVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbeforeprint = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onbeforeprint(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onbeforeprint = null }

///|
pub extern "js" fn SVGSVGElement::set_onbeforeunload(
  self : SVGSVGElement,
  value : OnBeforeUnloadEventHandler,
) -> Unit =
  #| (self, value) => { self.onbeforeunload = value }

///|
pub extern "js" fn SVGSVGElement::clear_onbeforeunload(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onbeforeunload = null }

///|
pub extern "js" fn SVGSVGElement::set_onhashchange(
  self : SVGSVGElement,
  handler : (HashChangeEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onhashchange = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onhashchange(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onhashchange = null }

///|
pub extern "js" fn SVGSVGElement::set_onlanguagechange(
  self : SVGSVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onlanguagechange = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onlanguagechange(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onlanguagechange = null }

///|
pub extern "js" fn SVGSVGElement::set_onmessage(
  self : SVGSVGElement,
  handler : (MessageEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmessage = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onmessage(self : SVGSVGElement) -> Unit =
  #| (self) => { self.onmessage = null }

///|
pub extern "js" fn SVGSVGElement::set_onmessageerror(
  self : SVGSVGElement,
  handler : (MessageEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmessageerror = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onmessageerror(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onmessageerror = null }

///|
pub extern "js" fn SVGSVGElement::set_onoffline(
  self : SVGSVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onoffline = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onoffline(self : SVGSVGElement) -> Unit =
  #| (self) => { self.onoffline = null }

///|
pub extern "js" fn SVGSVGElement::set_ononline(
  self : SVGSVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ononline = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_ononline(self : SVGSVGElement) -> Unit =
  #| (self) => { self.ononline = null }

///|
pub extern "js" fn SVGSVGElement::set_onpagehide(
  self : SVGSVGElement,
  handler : (PageTransitionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpagehide = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onpagehide(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onpagehide = null }

///|
pub extern "js" fn SVGSVGElement::set_onpagereveal(
  self : SVGSVGElement,
  handler : (PageRevealEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpagereveal = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onpagereveal(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onpagereveal = null }

///|
pub extern "js" fn SVGSVGElement::set_onpageshow(
  self : SVGSVGElement,
  handler : (PageTransitionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpageshow = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onpageshow(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onpageshow = null }

///|
pub extern "js" fn SVGSVGElement::set_onpageswap(
  self : SVGSVGElement,
  handler : (PageSwapEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpageswap = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onpageswap(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onpageswap = null }

///|
pub extern "js" fn SVGSVGElement::set_onpopstate(
  self : SVGSVGElement,
  handler : (PopStateEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpopstate = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onpopstate(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onpopstate = null }

///|
pub extern "js" fn SVGSVGElement::set_onrejectionhandled(
  self : SVGSVGElement,
  handler : (PromiseRejectionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onrejectionhandled = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onrejectionhandled(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onrejectionhandled = null }

///|
pub extern "js" fn SVGSVGElement::set_onstorage(
  self : SVGSVGElement,
  handler : (StorageEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onstorage = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onstorage(self : SVGSVGElement) -> Unit =
  #| (self) => { self.onstorage = null }

///|
pub extern "js" fn SVGSVGElement::set_onunhandledrejection(
  self : SVGSVGElement,
  handler : (PromiseRejectionEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onunhandledrejection = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onunhandledrejection(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onunhandledrejection = null }

///|
pub extern "js" fn SVGSVGElement::set_onunload(
  self : SVGSVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onunload = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onunload(self : SVGSVGElement) -> Unit =
  #| (self) => { self.onunload = null }

///|
pub extern "js" fn SVGSVGElement::set_onportalactivate(
  self : SVGSVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onportalactivate = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_onportalactivate(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.onportalactivate = null }

///|
pub extern "js" fn SVGSVGElement::set_ongamepadconnected(
  self : SVGSVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ongamepadconnected = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_ongamepadconnected(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.ongamepadconnected = null }

///|
pub extern "js" fn SVGSVGElement::set_ongamepaddisconnected(
  self : SVGSVGElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ongamepaddisconnected = (e) => handler(e) }

///|
pub extern "js" fn SVGSVGElement::clear_ongamepaddisconnected(
  self : SVGSVGElement,
) -> Unit =
  #| (self) => { self.ongamepaddisconnected = null }

///|
/// SVGGElement interface
pub type SVGGElement

///|
pub extern "js" fn SVGGElement::to_js_value(self : SVGGElement) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGGElement (unchecked)
pub extern "js" fn SVGGElement::from_js_value(v : JsValue) -> SVGGElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGGElement (checked with instanceof)
pub extern "js" fn SVGGElement::from_js_value_opt(v : JsValue) -> SVGGElement? =
  #| (v) => (v instanceof SVGGElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGGElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgg_element(self : JsValue) -> SVGGElement? =
  #| (self) => (self instanceof SVGGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGGElement (unchecked)
pub extern "js" fn JsValue::to_svgg_element(self : JsValue) -> SVGGElement =
  #| (self) => self

///|
pub extern "js" fn SVGGElement::to_svg_graphics_element(
  self : SVGGElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGGElement::to_svg_element(
  self : SVGGElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGGElement::to_element(self : SVGGElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGGElement::to_node(self : SVGGElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGGElement::to_event_target(
  self : SVGGElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGDefsElement interface
pub type SVGDefsElement

///|
pub extern "js" fn SVGDefsElement::to_js_value(
  self : SVGDefsElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGDefsElement (unchecked)
pub extern "js" fn SVGDefsElement::from_js_value(v : JsValue) -> SVGDefsElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGDefsElement (checked with instanceof)
pub extern "js" fn SVGDefsElement::from_js_value_opt(
  v : JsValue,
) -> SVGDefsElement? =
  #| (v) => (v instanceof SVGDefsElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGDefsElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_defs_element(
  self : JsValue,
) -> SVGDefsElement? =
  #| (self) => (self instanceof SVGDefsElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGDefsElement (unchecked)
pub extern "js" fn JsValue::to_svg_defs_element(
  self : JsValue,
) -> SVGDefsElement =
  #| (self) => self

///|
pub extern "js" fn SVGDefsElement::to_svg_graphics_element(
  self : SVGDefsElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGDefsElement::to_svg_element(
  self : SVGDefsElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGDefsElement::to_element(self : SVGDefsElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGDefsElement::to_node(self : SVGDefsElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGDefsElement::to_event_target(
  self : SVGDefsElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGDescElement interface
pub type SVGDescElement

///|
pub extern "js" fn SVGDescElement::to_js_value(
  self : SVGDescElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGDescElement (unchecked)
pub extern "js" fn SVGDescElement::from_js_value(v : JsValue) -> SVGDescElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGDescElement (checked with instanceof)
pub extern "js" fn SVGDescElement::from_js_value_opt(
  v : JsValue,
) -> SVGDescElement? =
  #| (v) => (v instanceof SVGDescElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGDescElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_desc_element(
  self : JsValue,
) -> SVGDescElement? =
  #| (self) => (self instanceof SVGDescElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGDescElement (unchecked)
pub extern "js" fn JsValue::to_svg_desc_element(
  self : JsValue,
) -> SVGDescElement =
  #| (self) => self

///|
pub extern "js" fn SVGDescElement::to_svg_element(
  self : SVGDescElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGDescElement::to_element(self : SVGDescElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGDescElement::to_node(self : SVGDescElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGDescElement::to_event_target(
  self : SVGDescElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGMetadataElement interface
pub type SVGMetadataElement

///|
pub extern "js" fn SVGMetadataElement::to_js_value(
  self : SVGMetadataElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGMetadataElement (unchecked)
pub extern "js" fn SVGMetadataElement::from_js_value(
  v : JsValue,
) -> SVGMetadataElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGMetadataElement (checked with instanceof)
pub extern "js" fn SVGMetadataElement::from_js_value_opt(
  v : JsValue,
) -> SVGMetadataElement? =
  #| (v) => (v instanceof SVGMetadataElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGMetadataElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_metadata_element(
  self : JsValue,
) -> SVGMetadataElement? =
  #| (self) => (self instanceof SVGMetadataElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGMetadataElement (unchecked)
pub extern "js" fn JsValue::to_svg_metadata_element(
  self : JsValue,
) -> SVGMetadataElement =
  #| (self) => self

///|
pub extern "js" fn SVGMetadataElement::to_svg_element(
  self : SVGMetadataElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGMetadataElement::to_element(
  self : SVGMetadataElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGMetadataElement::to_node(
  self : SVGMetadataElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGMetadataElement::to_event_target(
  self : SVGMetadataElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGTitleElement interface
pub type SVGTitleElement

///|
pub extern "js" fn SVGTitleElement::to_js_value(
  self : SVGTitleElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGTitleElement (unchecked)
pub extern "js" fn SVGTitleElement::from_js_value(
  v : JsValue,
) -> SVGTitleElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGTitleElement (checked with instanceof)
pub extern "js" fn SVGTitleElement::from_js_value_opt(
  v : JsValue,
) -> SVGTitleElement? =
  #| (v) => (v instanceof SVGTitleElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGTitleElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_title_element(
  self : JsValue,
) -> SVGTitleElement? =
  #| (self) => (self instanceof SVGTitleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGTitleElement (unchecked)
pub extern "js" fn JsValue::to_svg_title_element(
  self : JsValue,
) -> SVGTitleElement =
  #| (self) => self

///|
pub extern "js" fn SVGTitleElement::to_svg_element(
  self : SVGTitleElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGTitleElement::to_element(
  self : SVGTitleElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGTitleElement::to_node(self : SVGTitleElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGTitleElement::to_event_target(
  self : SVGTitleElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGSymbolElement interface
pub type SVGSymbolElement

///|
pub extern "js" fn SVGSymbolElement::to_js_value(
  self : SVGSymbolElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGSymbolElement (unchecked)
pub extern "js" fn SVGSymbolElement::from_js_value(
  v : JsValue,
) -> SVGSymbolElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGSymbolElement (checked with instanceof)
pub extern "js" fn SVGSymbolElement::from_js_value_opt(
  v : JsValue,
) -> SVGSymbolElement? =
  #| (v) => (v instanceof SVGSymbolElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGSymbolElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_symbol_element(
  self : JsValue,
) -> SVGSymbolElement? =
  #| (self) => (self instanceof SVGSymbolElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGSymbolElement (unchecked)
pub extern "js" fn JsValue::to_svg_symbol_element(
  self : JsValue,
) -> SVGSymbolElement =
  #| (self) => self

///|
pub extern "js" fn SVGSymbolElement::to_svg_graphics_element(
  self : SVGSymbolElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGSymbolElement::to_svg_element(
  self : SVGSymbolElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGSymbolElement::to_element(
  self : SVGSymbolElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGSymbolElement::to_node(self : SVGSymbolElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGSymbolElement::to_event_target(
  self : SVGSymbolElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGSymbolElement::get_view_box(
  self : SVGSymbolElement,
) -> SVGAnimatedRect =
  #| (self) => self.viewBox

///|
pub extern "js" fn SVGSymbolElement::get_preserve_aspect_ratio(
  self : SVGSymbolElement,
) -> SVGAnimatedPreserveAspectRatio =
  #| (self) => self.preserveAspectRatio

///|
/// SVGUseElement interface
pub type SVGUseElement

///|
pub extern "js" fn SVGUseElement::to_js_value(self : SVGUseElement) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGUseElement (unchecked)
pub extern "js" fn SVGUseElement::from_js_value(v : JsValue) -> SVGUseElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGUseElement (checked with instanceof)
pub extern "js" fn SVGUseElement::from_js_value_opt(
  v : JsValue,
) -> SVGUseElement? =
  #| (v) => (v instanceof SVGUseElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGUseElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_use_element(
  self : JsValue,
) -> SVGUseElement? =
  #| (self) => (self instanceof SVGUseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGUseElement (unchecked)
pub extern "js" fn JsValue::to_svg_use_element(self : JsValue) -> SVGUseElement =
  #| (self) => self

///|
pub extern "js" fn SVGUseElement::to_svg_graphics_element(
  self : SVGUseElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGUseElement::to_svg_element(
  self : SVGUseElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGUseElement::to_element(self : SVGUseElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGUseElement::to_node(self : SVGUseElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGUseElement::to_event_target(
  self : SVGUseElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGUseElement::get_x(
  self : SVGUseElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGUseElement::get_y(
  self : SVGUseElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGUseElement::get_width(
  self : SVGUseElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGUseElement::get_height(
  self : SVGUseElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGUseElement::get_instance_root(
  self : SVGUseElement,
) -> SVGElement? =
  #| (self) => (() => { const v = self.instanceRoot; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SVGUseElement::get_animated_instance_root(
  self : SVGUseElement,
) -> SVGElement? =
  #| (self) => (() => { const v = self.animatedInstanceRoot; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn SVGUseElement::get_href(
  self : SVGUseElement,
) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGUseElementShadowRoot interface
pub type SVGUseElementShadowRoot

///|
pub extern "js" fn SVGUseElementShadowRoot::to_js_value(
  self : SVGUseElementShadowRoot,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGUseElementShadowRoot (unchecked)
pub extern "js" fn SVGUseElementShadowRoot::from_js_value(
  v : JsValue,
) -> SVGUseElementShadowRoot =
  #| (v) => v

///|
/// Safely cast JsValue to SVGUseElementShadowRoot (checked with instanceof)
pub extern "js" fn SVGUseElementShadowRoot::from_js_value_opt(
  v : JsValue,
) -> SVGUseElementShadowRoot? =
  #| (v) => (v instanceof SVGUseElementShadowRoot) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGUseElementShadowRoot (checked with instanceof)
pub extern "js" fn JsValue::as_svg_use_element_shadow_root(
  self : JsValue,
) -> SVGUseElementShadowRoot? =
  #| (self) => (self instanceof SVGUseElementShadowRoot) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGUseElementShadowRoot (unchecked)
pub extern "js" fn JsValue::to_svg_use_element_shadow_root(
  self : JsValue,
) -> SVGUseElementShadowRoot =
  #| (self) => self

///|
pub extern "js" fn SVGUseElementShadowRoot::to_shadow_root(
  self : SVGUseElementShadowRoot,
) -> ShadowRoot =
  #| (self) => self

///|
pub extern "js" fn SVGUseElementShadowRoot::to_document_fragment(
  self : SVGUseElementShadowRoot,
) -> DocumentFragment =
  #| (self) => self

///|
pub extern "js" fn SVGUseElementShadowRoot::to_node(
  self : SVGUseElementShadowRoot,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGUseElementShadowRoot::to_event_target(
  self : SVGUseElementShadowRoot,
) -> EventTarget =
  #| (self) => self

///|
/// ShadowAnimation interface
pub type ShadowAnimation

///|
pub extern "js" fn ShadowAnimation::to_js_value(
  self : ShadowAnimation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ShadowAnimation (unchecked)
pub extern "js" fn ShadowAnimation::from_js_value(
  v : JsValue,
) -> ShadowAnimation =
  #| (v) => v

///|
/// Safely cast JsValue to ShadowAnimation (checked with instanceof)
pub extern "js" fn ShadowAnimation::from_js_value_opt(
  v : JsValue,
) -> ShadowAnimation? =
  #| (v) => (v instanceof ShadowAnimation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ShadowAnimation (checked with instanceof)
pub extern "js" fn JsValue::as_shadow_animation(
  self : JsValue,
) -> ShadowAnimation? =
  #| (self) => (self instanceof ShadowAnimation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ShadowAnimation (unchecked)
pub extern "js" fn JsValue::to_shadow_animation(
  self : JsValue,
) -> ShadowAnimation =
  #| (self) => self

///|
pub extern "js" fn ShadowAnimation::to_animation(
  self : ShadowAnimation,
) -> Animation =
  #| (self) => self

///|
pub extern "js" fn ShadowAnimation::to_event_target(
  self : ShadowAnimation,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ShadowAnimation::new(
  source : Animation,
  new_target : ElementOrCSSPseudoElement,
) -> ShadowAnimation =
  #| (source, new_target) => new ShadowAnimation(source, new_target)

///|
pub extern "js" fn ShadowAnimation::get_source_animation(
  self : ShadowAnimation,
) -> Animation =
  #| (self) => self.sourceAnimation

///|
/// SVGSwitchElement interface
pub type SVGSwitchElement

///|
pub extern "js" fn SVGSwitchElement::to_js_value(
  self : SVGSwitchElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGSwitchElement (unchecked)
pub extern "js" fn SVGSwitchElement::from_js_value(
  v : JsValue,
) -> SVGSwitchElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGSwitchElement (checked with instanceof)
pub extern "js" fn SVGSwitchElement::from_js_value_opt(
  v : JsValue,
) -> SVGSwitchElement? =
  #| (v) => (v instanceof SVGSwitchElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGSwitchElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_switch_element(
  self : JsValue,
) -> SVGSwitchElement? =
  #| (self) => (self instanceof SVGSwitchElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGSwitchElement (unchecked)
pub extern "js" fn JsValue::to_svg_switch_element(
  self : JsValue,
) -> SVGSwitchElement =
  #| (self) => self

///|
pub extern "js" fn SVGSwitchElement::to_svg_graphics_element(
  self : SVGSwitchElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGSwitchElement::to_svg_element(
  self : SVGSwitchElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGSwitchElement::to_element(
  self : SVGSwitchElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGSwitchElement::to_node(self : SVGSwitchElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGSwitchElement::to_event_target(
  self : SVGSwitchElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGStyleElement interface
pub type SVGStyleElement

///|
pub extern "js" fn SVGStyleElement::to_js_value(
  self : SVGStyleElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGStyleElement (unchecked)
pub extern "js" fn SVGStyleElement::from_js_value(
  v : JsValue,
) -> SVGStyleElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGStyleElement (checked with instanceof)
pub extern "js" fn SVGStyleElement::from_js_value_opt(
  v : JsValue,
) -> SVGStyleElement? =
  #| (v) => (v instanceof SVGStyleElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGStyleElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_style_element(
  self : JsValue,
) -> SVGStyleElement? =
  #| (self) => (self instanceof SVGStyleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGStyleElement (unchecked)
pub extern "js" fn JsValue::to_svg_style_element(
  self : JsValue,
) -> SVGStyleElement =
  #| (self) => self

///|
pub extern "js" fn SVGStyleElement::to_svg_element(
  self : SVGStyleElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGStyleElement::to_element(
  self : SVGStyleElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGStyleElement::to_node(self : SVGStyleElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGStyleElement::to_event_target(
  self : SVGStyleElement,
) -> EventTarget =
  #| (self) => self

///|
/// @alert deprecated "type is deprecated"
pub extern "js" fn SVGStyleElement::get_type(self : SVGStyleElement) -> String =
  #| (self) => self.type

///|
/// @alert deprecated "type is deprecated"
pub extern "js" fn SVGStyleElement::set_type(
  self : SVGStyleElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn SVGStyleElement::get_media(self : SVGStyleElement) -> String =
  #| (self) => self.media

///|
pub extern "js" fn SVGStyleElement::set_media(
  self : SVGStyleElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.media = value }

///|
pub extern "js" fn SVGStyleElement::get_title(self : SVGStyleElement) -> String =
  #| (self) => self.title

///|
pub extern "js" fn SVGStyleElement::set_title(
  self : SVGStyleElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.title = value }

///|
pub extern "js" fn SVGStyleElement::get_disabled(
  self : SVGStyleElement,
) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn SVGStyleElement::set_disabled(
  self : SVGStyleElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
pub extern "js" fn SVGStyleElement::get_sheet(
  self : SVGStyleElement,
) -> CSSStyleSheet? =
  #| (self) => (() => { const v = self.sheet; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// SVGTransform interface
pub type SVGTransform

///|
pub extern "js" fn SVGTransform::to_js_value(self : SVGTransform) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGTransform (unchecked)
pub extern "js" fn SVGTransform::from_js_value(v : JsValue) -> SVGTransform =
  #| (v) => v

///|
/// Safely cast JsValue to SVGTransform (checked with instanceof)
pub extern "js" fn SVGTransform::from_js_value_opt(
  v : JsValue,
) -> SVGTransform? =
  #| (v) => (v instanceof SVGTransform) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGTransform (checked with instanceof)
pub extern "js" fn JsValue::as_svg_transform(self : JsValue) -> SVGTransform? =
  #| (self) => (self instanceof SVGTransform) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGTransform (unchecked)
pub extern "js" fn JsValue::to_svg_transform(self : JsValue) -> SVGTransform =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum SVGTransformSetMatrixError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformSetTranslateError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformSetScaleError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformSetRotateError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformSetSkewXError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformSetSkewYError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

// SVGTransform.SVG_TRANSFORM_UNKNOWN

///|
pub let svg_transform_svg_transform_unknown : Int = 0

// SVGTransform.SVG_TRANSFORM_MATRIX

///|
pub let svg_transform_svg_transform_matrix : Int = 1

// SVGTransform.SVG_TRANSFORM_TRANSLATE

///|
pub let svg_transform_svg_transform_translate : Int = 2

// SVGTransform.SVG_TRANSFORM_SCALE

///|
pub let svg_transform_svg_transform_scale : Int = 3

// SVGTransform.SVG_TRANSFORM_ROTATE

///|
pub let svg_transform_svg_transform_rotate : Int = 4

// SVGTransform.SVG_TRANSFORM_SKEWX

///|
pub let svg_transform_svg_transform_skewx : Int = 5

// SVGTransform.SVG_TRANSFORM_SKEWY

///|
pub let svg_transform_svg_transform_skewy : Int = 6

///|
pub extern "js" fn SVGTransform::get_type(self : SVGTransform) -> Int =
  #| (self) => self.type

///|
pub extern "js" fn SVGTransform::get_matrix(self : SVGTransform) -> DOMMatrix =
  #| (self) => self.matrix

///|
pub extern "js" fn SVGTransform::get_angle(self : SVGTransform) -> Double =
  #| (self) => self.angle

///|
pub extern "js" fn SVGTransform::set_matrix(
  self : SVGTransform,
) -> Result[Unit, SVGTransformSetMatrixError] =
  #| (self) => (() => { try { self.setMatrix(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
extern "js" fn SVGTransform::set_matrix_with_matrix_ffi(
  self : SVGTransform,
  matrix : JsValue,
) -> Result[Unit, SVGTransformSetMatrixError] =
  #| (self, matrix) => (() => { try { self.setMatrix(matrix); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub fn SVGTransform::set_matrix_with_matrix(
  self : SVGTransform,
  matrix : DOMMatrix2DInit,
) -> Result[Unit, SVGTransformSetMatrixError] {
  SVGTransform::set_matrix_with_matrix_ffi(self, matrix.to_js())
}

///|
pub extern "js" fn SVGTransform::set_translate(
  self : SVGTransform,
  tx : Double,
  ty : Double,
) -> Result[Unit, SVGTransformSetTranslateError] =
  #| (self, tx, ty) => (() => { try { self.setTranslate(tx, ty); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTransform::set_scale(
  self : SVGTransform,
  sx : Double,
  sy : Double,
) -> Result[Unit, SVGTransformSetScaleError] =
  #| (self, sx, sy) => (() => { try { self.setScale(sx, sy); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTransform::set_rotate(
  self : SVGTransform,
  angle : Double,
  cx : Double,
  cy : Double,
) -> Result[Unit, SVGTransformSetRotateError] =
  #| (self, angle, cx, cy) => (() => { try { self.setRotate(angle, cx, cy); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTransform::set_skew_x(
  self : SVGTransform,
  angle : Double,
) -> Result[Unit, SVGTransformSetSkewXError] =
  #| (self, angle) => (() => { try { self.setSkewX(angle); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTransform::set_skew_y(
  self : SVGTransform,
  angle : Double,
) -> Result[Unit, SVGTransformSetSkewYError] =
  #| (self, angle) => (() => { try { self.setSkewY(angle); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
/// SVGTransformList interface
pub type SVGTransformList

///|
pub extern "js" fn SVGTransformList::to_js_value(
  self : SVGTransformList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGTransformList (unchecked)
pub extern "js" fn SVGTransformList::from_js_value(
  v : JsValue,
) -> SVGTransformList =
  #| (v) => v

///|
/// Safely cast JsValue to SVGTransformList (checked with instanceof)
pub extern "js" fn SVGTransformList::from_js_value_opt(
  v : JsValue,
) -> SVGTransformList? =
  #| (v) => (v instanceof SVGTransformList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGTransformList (checked with instanceof)
pub extern "js" fn JsValue::as_svg_transform_list(
  self : JsValue,
) -> SVGTransformList? =
  #| (self) => (self instanceof SVGTransformList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGTransformList (unchecked)
pub extern "js" fn JsValue::to_svg_transform_list(
  self : JsValue,
) -> SVGTransformList =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum SVGTransformListClearError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformListInitializeError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformListGetItemError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformListInsertItemBeforeError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformListReplaceItemError {
  IndexSizeError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformListRemoveItemError {
  IndexSizeError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformListAppendItemError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTransformListConsolidateError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn SVGTransformList::get_length(self : SVGTransformList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn SVGTransformList::get_number_of_items(
  self : SVGTransformList,
) -> Int =
  #| (self) => self.numberOfItems

///|
pub extern "js" fn SVGTransformList::clear(
  self : SVGTransformList,
) -> Result[Unit, SVGTransformListClearError] =
  #| (self) => (() => { try { self.clear(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTransformList::initialize(
  self : SVGTransformList,
  new_item : SVGTransform,
) -> Result[SVGTransform, SVGTransformListInitializeError] =
  #| (self, new_item) => (() => { try { return { $tag: 1, _0: self.initialize(new_item) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTransformList::get_item(
  self : SVGTransformList,
  index : Int,
) -> Result[SVGTransform, SVGTransformListGetItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self.getItem(index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
#alias("_[_]")
pub extern "js" fn SVGTransformList::get(
  self : SVGTransformList,
  index : Int,
) -> Result[SVGTransform, SVGTransformListGetItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self[index] }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTransformList::insert_item_before(
  self : SVGTransformList,
  new_item : SVGTransform,
  index : Int,
) -> Result[SVGTransform, SVGTransformListInsertItemBeforeError] =
  #| (self, new_item, index) => (() => { try { return { $tag: 1, _0: self.insertItemBefore(new_item, index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTransformList::replace_item(
  self : SVGTransformList,
  new_item : SVGTransform,
  index : Int,
) -> Result[SVGTransform, SVGTransformListReplaceItemError] =
  #| (self, new_item, index) => (() => { try { return { $tag: 1, _0: self.replaceItem(new_item, index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTransformList::remove_item(
  self : SVGTransformList,
  index : Int,
) -> Result[SVGTransform, SVGTransformListRemoveItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self.removeItem(index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTransformList::append_item(
  self : SVGTransformList,
  new_item : SVGTransform,
) -> Result[SVGTransform, SVGTransformListAppendItemError] =
  #| (self, new_item) => (() => { try { return { $tag: 1, _0: self.appendItem(new_item) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
#alias("_[_]=_")
pub extern "js" fn SVGTransformList::set(
  self : SVGTransformList,
  index : Int,
  new_item : SVGTransform,
) -> Unit =
  #| (self, index, new_item) => { self[index] = new_item }

///|
pub extern "js" fn SVGTransformList::create_svg_transform_from_matrix(
  self : SVGTransformList,
) -> SVGTransform =
  #| (self) => self.createSVGTransformFromMatrix()

///|
extern "js" fn SVGTransformList::create_svg_transform_from_matrix_with_matrix_ffi(
  self : SVGTransformList,
  matrix : JsValue,
) -> SVGTransform =
  #| (self, matrix) => self.createSVGTransformFromMatrix(matrix)

///|
pub fn SVGTransformList::create_svg_transform_from_matrix_with_matrix(
  self : SVGTransformList,
  matrix : DOMMatrix2DInit,
) -> SVGTransform {
  SVGTransformList::create_svg_transform_from_matrix_with_matrix_ffi(
    self,
    matrix.to_js(),
  )
}

///|
pub extern "js" fn SVGTransformList::consolidate(
  self : SVGTransformList,
) -> Result[SVGTransform?, SVGTransformListConsolidateError] =
  #| (self) => (() => { try { return { $tag: 1, _0: (() => { const v = self.consolidate(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
/// SVGAnimatedTransformList interface
pub type SVGAnimatedTransformList

///|
pub extern "js" fn SVGAnimatedTransformList::to_js_value(
  self : SVGAnimatedTransformList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedTransformList (unchecked)
pub extern "js" fn SVGAnimatedTransformList::from_js_value(
  v : JsValue,
) -> SVGAnimatedTransformList =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedTransformList (checked with instanceof)
pub extern "js" fn SVGAnimatedTransformList::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedTransformList? =
  #| (v) => (v instanceof SVGAnimatedTransformList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedTransformList (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_transform_list(
  self : JsValue,
) -> SVGAnimatedTransformList? =
  #| (self) => (self instanceof SVGAnimatedTransformList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedTransformList (unchecked)
pub extern "js" fn JsValue::to_svg_animated_transform_list(
  self : JsValue,
) -> SVGAnimatedTransformList =
  #| (self) => self

///|
pub extern "js" fn SVGAnimatedTransformList::get_base_val(
  self : SVGAnimatedTransformList,
) -> SVGTransformList =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedTransformList::get_anim_val(
  self : SVGAnimatedTransformList,
) -> SVGTransformList =
  #| (self) => self.animVal

///|
/// SVGPreserveAspectRatio interface
pub type SVGPreserveAspectRatio

///|
pub extern "js" fn SVGPreserveAspectRatio::to_js_value(
  self : SVGPreserveAspectRatio,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGPreserveAspectRatio (unchecked)
pub extern "js" fn SVGPreserveAspectRatio::from_js_value(
  v : JsValue,
) -> SVGPreserveAspectRatio =
  #| (v) => v

///|
/// Safely cast JsValue to SVGPreserveAspectRatio (checked with instanceof)
pub extern "js" fn SVGPreserveAspectRatio::from_js_value_opt(
  v : JsValue,
) -> SVGPreserveAspectRatio? =
  #| (v) => (v instanceof SVGPreserveAspectRatio) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGPreserveAspectRatio (checked with instanceof)
pub extern "js" fn JsValue::as_svg_preserve_aspect_ratio(
  self : JsValue,
) -> SVGPreserveAspectRatio? =
  #| (self) => (self instanceof SVGPreserveAspectRatio) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGPreserveAspectRatio (unchecked)
pub extern "js" fn JsValue::to_svg_preserve_aspect_ratio(
  self : JsValue,
) -> SVGPreserveAspectRatio =
  #| (self) => self

// SVGPreserveAspectRatio.SVG_PRESERVEASPECTRATIO_UNKNOWN

///|
pub let svg_preserve_aspect_ratio_svg_preserveaspectratio_unknown : Int = 0

// SVGPreserveAspectRatio.SVG_PRESERVEASPECTRATIO_NONE

///|
pub let svg_preserve_aspect_ratio_svg_preserveaspectratio_none : Int = 1

// SVGPreserveAspectRatio.SVG_PRESERVEASPECTRATIO_XMINYMIN

///|
pub let svg_preserve_aspect_ratio_svg_preserveaspectratio_xminymin : Int = 2

// SVGPreserveAspectRatio.SVG_PRESERVEASPECTRATIO_XMIDYMIN

///|
pub let svg_preserve_aspect_ratio_svg_preserveaspectratio_xmidymin : Int = 3

// SVGPreserveAspectRatio.SVG_PRESERVEASPECTRATIO_XMAXYMIN

///|
pub let svg_preserve_aspect_ratio_svg_preserveaspectratio_xmaxymin : Int = 4

// SVGPreserveAspectRatio.SVG_PRESERVEASPECTRATIO_XMINYMID

///|
pub let svg_preserve_aspect_ratio_svg_preserveaspectratio_xminymid : Int = 5

// SVGPreserveAspectRatio.SVG_PRESERVEASPECTRATIO_XMIDYMID

///|
pub let svg_preserve_aspect_ratio_svg_preserveaspectratio_xmidymid : Int = 6

// SVGPreserveAspectRatio.SVG_PRESERVEASPECTRATIO_XMAXYMID

///|
pub let svg_preserve_aspect_ratio_svg_preserveaspectratio_xmaxymid : Int = 7

// SVGPreserveAspectRatio.SVG_PRESERVEASPECTRATIO_XMINYMAX

///|
pub let svg_preserve_aspect_ratio_svg_preserveaspectratio_xminymax : Int = 8

// SVGPreserveAspectRatio.SVG_PRESERVEASPECTRATIO_XMIDYMAX

///|
pub let svg_preserve_aspect_ratio_svg_preserveaspectratio_xmidymax : Int = 9

// SVGPreserveAspectRatio.SVG_PRESERVEASPECTRATIO_XMAXYMAX

///|
pub let svg_preserve_aspect_ratio_svg_preserveaspectratio_xmaxymax : Int = 10

// SVGPreserveAspectRatio.SVG_MEETORSLICE_UNKNOWN

///|
pub let svg_preserve_aspect_ratio_svg_meetorslice_unknown : Int = 0

// SVGPreserveAspectRatio.SVG_MEETORSLICE_MEET

///|
pub let svg_preserve_aspect_ratio_svg_meetorslice_meet : Int = 1

// SVGPreserveAspectRatio.SVG_MEETORSLICE_SLICE

///|
pub let svg_preserve_aspect_ratio_svg_meetorslice_slice : Int = 2

///|
pub extern "js" fn SVGPreserveAspectRatio::get_align(
  self : SVGPreserveAspectRatio,
) -> Int =
  #| (self) => self.align

///|
pub extern "js" fn SVGPreserveAspectRatio::set_align(
  self : SVGPreserveAspectRatio,
  value : Int,
) -> Unit =
  #| (self, value) => { self.align = value }

///|
pub extern "js" fn SVGPreserveAspectRatio::get_meet_or_slice(
  self : SVGPreserveAspectRatio,
) -> Int =
  #| (self) => self.meetOrSlice

///|
pub extern "js" fn SVGPreserveAspectRatio::set_meet_or_slice(
  self : SVGPreserveAspectRatio,
  value : Int,
) -> Unit =
  #| (self, value) => { self.meetOrSlice = value }

///|
/// SVGAnimatedPreserveAspectRatio interface
pub type SVGAnimatedPreserveAspectRatio

///|
pub extern "js" fn SVGAnimatedPreserveAspectRatio::to_js_value(
  self : SVGAnimatedPreserveAspectRatio,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAnimatedPreserveAspectRatio (unchecked)
pub extern "js" fn SVGAnimatedPreserveAspectRatio::from_js_value(
  v : JsValue,
) -> SVGAnimatedPreserveAspectRatio =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAnimatedPreserveAspectRatio (checked with instanceof)
pub extern "js" fn SVGAnimatedPreserveAspectRatio::from_js_value_opt(
  v : JsValue,
) -> SVGAnimatedPreserveAspectRatio? =
  #| (v) => (v instanceof SVGAnimatedPreserveAspectRatio) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAnimatedPreserveAspectRatio (checked with instanceof)
pub extern "js" fn JsValue::as_svg_animated_preserve_aspect_ratio(
  self : JsValue,
) -> SVGAnimatedPreserveAspectRatio? =
  #| (self) => (self instanceof SVGAnimatedPreserveAspectRatio) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAnimatedPreserveAspectRatio (unchecked)
pub extern "js" fn JsValue::to_svg_animated_preserve_aspect_ratio(
  self : JsValue,
) -> SVGAnimatedPreserveAspectRatio =
  #| (self) => self

///|
pub extern "js" fn SVGAnimatedPreserveAspectRatio::get_base_val(
  self : SVGAnimatedPreserveAspectRatio,
) -> SVGPreserveAspectRatio =
  #| (self) => self.baseVal

///|
pub extern "js" fn SVGAnimatedPreserveAspectRatio::get_anim_val(
  self : SVGAnimatedPreserveAspectRatio,
) -> SVGPreserveAspectRatio =
  #| (self) => self.animVal

///|
/// SVGRectElement interface
pub type SVGRectElement

///|
pub extern "js" fn SVGRectElement::to_js_value(
  self : SVGRectElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGRectElement (unchecked)
pub extern "js" fn SVGRectElement::from_js_value(v : JsValue) -> SVGRectElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGRectElement (checked with instanceof)
pub extern "js" fn SVGRectElement::from_js_value_opt(
  v : JsValue,
) -> SVGRectElement? =
  #| (v) => (v instanceof SVGRectElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGRectElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_rect_element(
  self : JsValue,
) -> SVGRectElement? =
  #| (self) => (self instanceof SVGRectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGRectElement (unchecked)
pub extern "js" fn JsValue::to_svg_rect_element(
  self : JsValue,
) -> SVGRectElement =
  #| (self) => self

///|
pub extern "js" fn SVGRectElement::to_svg_geometry_element(
  self : SVGRectElement,
) -> SVGGeometryElement =
  #| (self) => self

///|
pub extern "js" fn SVGRectElement::to_svg_graphics_element(
  self : SVGRectElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGRectElement::to_svg_element(
  self : SVGRectElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGRectElement::to_element(self : SVGRectElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGRectElement::to_node(self : SVGRectElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGRectElement::to_event_target(
  self : SVGRectElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGRectElement::get_x(
  self : SVGRectElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGRectElement::get_y(
  self : SVGRectElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGRectElement::get_width(
  self : SVGRectElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGRectElement::get_height(
  self : SVGRectElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGRectElement::get_rx(
  self : SVGRectElement,
) -> SVGAnimatedLength =
  #| (self) => self.rx

///|
pub extern "js" fn SVGRectElement::get_ry(
  self : SVGRectElement,
) -> SVGAnimatedLength =
  #| (self) => self.ry

///|
/// SVGCircleElement interface
pub type SVGCircleElement

///|
pub extern "js" fn SVGCircleElement::to_js_value(
  self : SVGCircleElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGCircleElement (unchecked)
pub extern "js" fn SVGCircleElement::from_js_value(
  v : JsValue,
) -> SVGCircleElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGCircleElement (checked with instanceof)
pub extern "js" fn SVGCircleElement::from_js_value_opt(
  v : JsValue,
) -> SVGCircleElement? =
  #| (v) => (v instanceof SVGCircleElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGCircleElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_circle_element(
  self : JsValue,
) -> SVGCircleElement? =
  #| (self) => (self instanceof SVGCircleElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGCircleElement (unchecked)
pub extern "js" fn JsValue::to_svg_circle_element(
  self : JsValue,
) -> SVGCircleElement =
  #| (self) => self

///|
pub extern "js" fn SVGCircleElement::to_svg_geometry_element(
  self : SVGCircleElement,
) -> SVGGeometryElement =
  #| (self) => self

///|
pub extern "js" fn SVGCircleElement::to_svg_graphics_element(
  self : SVGCircleElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGCircleElement::to_svg_element(
  self : SVGCircleElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGCircleElement::to_element(
  self : SVGCircleElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGCircleElement::to_node(self : SVGCircleElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGCircleElement::to_event_target(
  self : SVGCircleElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGCircleElement::get_cx(
  self : SVGCircleElement,
) -> SVGAnimatedLength =
  #| (self) => self.cx

///|
pub extern "js" fn SVGCircleElement::get_cy(
  self : SVGCircleElement,
) -> SVGAnimatedLength =
  #| (self) => self.cy

///|
pub extern "js" fn SVGCircleElement::get_r(
  self : SVGCircleElement,
) -> SVGAnimatedLength =
  #| (self) => self.r

///|
/// SVGEllipseElement interface
pub type SVGEllipseElement

///|
pub extern "js" fn SVGEllipseElement::to_js_value(
  self : SVGEllipseElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGEllipseElement (unchecked)
pub extern "js" fn SVGEllipseElement::from_js_value(
  v : JsValue,
) -> SVGEllipseElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGEllipseElement (checked with instanceof)
pub extern "js" fn SVGEllipseElement::from_js_value_opt(
  v : JsValue,
) -> SVGEllipseElement? =
  #| (v) => (v instanceof SVGEllipseElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGEllipseElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_ellipse_element(
  self : JsValue,
) -> SVGEllipseElement? =
  #| (self) => (self instanceof SVGEllipseElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGEllipseElement (unchecked)
pub extern "js" fn JsValue::to_svg_ellipse_element(
  self : JsValue,
) -> SVGEllipseElement =
  #| (self) => self

///|
pub extern "js" fn SVGEllipseElement::to_svg_geometry_element(
  self : SVGEllipseElement,
) -> SVGGeometryElement =
  #| (self) => self

///|
pub extern "js" fn SVGEllipseElement::to_svg_graphics_element(
  self : SVGEllipseElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGEllipseElement::to_svg_element(
  self : SVGEllipseElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGEllipseElement::to_element(
  self : SVGEllipseElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGEllipseElement::to_node(self : SVGEllipseElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGEllipseElement::to_event_target(
  self : SVGEllipseElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGEllipseElement::get_cx(
  self : SVGEllipseElement,
) -> SVGAnimatedLength =
  #| (self) => self.cx

///|
pub extern "js" fn SVGEllipseElement::get_cy(
  self : SVGEllipseElement,
) -> SVGAnimatedLength =
  #| (self) => self.cy

///|
pub extern "js" fn SVGEllipseElement::get_rx(
  self : SVGEllipseElement,
) -> SVGAnimatedLength =
  #| (self) => self.rx

///|
pub extern "js" fn SVGEllipseElement::get_ry(
  self : SVGEllipseElement,
) -> SVGAnimatedLength =
  #| (self) => self.ry

///|
/// SVGLineElement interface
pub type SVGLineElement

///|
pub extern "js" fn SVGLineElement::to_js_value(
  self : SVGLineElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGLineElement (unchecked)
pub extern "js" fn SVGLineElement::from_js_value(v : JsValue) -> SVGLineElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGLineElement (checked with instanceof)
pub extern "js" fn SVGLineElement::from_js_value_opt(
  v : JsValue,
) -> SVGLineElement? =
  #| (v) => (v instanceof SVGLineElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGLineElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_line_element(
  self : JsValue,
) -> SVGLineElement? =
  #| (self) => (self instanceof SVGLineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGLineElement (unchecked)
pub extern "js" fn JsValue::to_svg_line_element(
  self : JsValue,
) -> SVGLineElement =
  #| (self) => self

///|
pub extern "js" fn SVGLineElement::to_svg_geometry_element(
  self : SVGLineElement,
) -> SVGGeometryElement =
  #| (self) => self

///|
pub extern "js" fn SVGLineElement::to_svg_graphics_element(
  self : SVGLineElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGLineElement::to_svg_element(
  self : SVGLineElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGLineElement::to_element(self : SVGLineElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGLineElement::to_node(self : SVGLineElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGLineElement::to_event_target(
  self : SVGLineElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGLineElement::get_x1(
  self : SVGLineElement,
) -> SVGAnimatedLength =
  #| (self) => self.x1

///|
pub extern "js" fn SVGLineElement::get_y1(
  self : SVGLineElement,
) -> SVGAnimatedLength =
  #| (self) => self.y1

///|
pub extern "js" fn SVGLineElement::get_x2(
  self : SVGLineElement,
) -> SVGAnimatedLength =
  #| (self) => self.x2

///|
pub extern "js" fn SVGLineElement::get_y2(
  self : SVGLineElement,
) -> SVGAnimatedLength =
  #| (self) => self.y2

///|
/// SVGPointList interface
pub type SVGPointList

///|
pub extern "js" fn SVGPointList::to_js_value(self : SVGPointList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGPointList (unchecked)
pub extern "js" fn SVGPointList::from_js_value(v : JsValue) -> SVGPointList =
  #| (v) => v

///|
/// Safely cast JsValue to SVGPointList (checked with instanceof)
pub extern "js" fn SVGPointList::from_js_value_opt(
  v : JsValue,
) -> SVGPointList? =
  #| (v) => (v instanceof SVGPointList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGPointList (checked with instanceof)
pub extern "js" fn JsValue::as_svg_point_list(self : JsValue) -> SVGPointList? =
  #| (self) => (self instanceof SVGPointList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGPointList (unchecked)
pub extern "js" fn JsValue::to_svg_point_list(self : JsValue) -> SVGPointList =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum SVGPointListClearError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGPointListInitializeError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGPointListGetItemError {
  IndexSizeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGPointListInsertItemBeforeError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGPointListReplaceItemError {
  IndexSizeError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGPointListRemoveItemError {
  IndexSizeError(JsError)
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGPointListAppendItemError {
  NoModificationAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn SVGPointList::get_length(self : SVGPointList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn SVGPointList::get_number_of_items(
  self : SVGPointList,
) -> Int =
  #| (self) => self.numberOfItems

///|
pub extern "js" fn SVGPointList::clear(
  self : SVGPointList,
) -> Result[Unit, SVGPointListClearError] =
  #| (self) => (() => { try { self.clear(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGPointList::initialize(
  self : SVGPointList,
  new_item : DOMPoint,
) -> Result[DOMPoint, SVGPointListInitializeError] =
  #| (self, new_item) => (() => { try { return { $tag: 1, _0: self.initialize(new_item) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGPointList::get_item(
  self : SVGPointList,
  index : Int,
) -> Result[DOMPoint, SVGPointListGetItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self.getItem(index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
#alias("_[_]")
pub extern "js" fn SVGPointList::get(
  self : SVGPointList,
  index : Int,
) -> Result[DOMPoint, SVGPointListGetItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self[index] }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGPointList::insert_item_before(
  self : SVGPointList,
  new_item : DOMPoint,
  index : Int,
) -> Result[DOMPoint, SVGPointListInsertItemBeforeError] =
  #| (self, new_item, index) => (() => { try { return { $tag: 1, _0: self.insertItemBefore(new_item, index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGPointList::replace_item(
  self : SVGPointList,
  new_item : DOMPoint,
  index : Int,
) -> Result[DOMPoint, SVGPointListReplaceItemError] =
  #| (self, new_item, index) => (() => { try { return { $tag: 1, _0: self.replaceItem(new_item, index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGPointList::remove_item(
  self : SVGPointList,
  index : Int,
) -> Result[DOMPoint, SVGPointListRemoveItemError] =
  #| (self, index) => (() => { try { return { $tag: 1, _0: self.removeItem(index) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; if (n === 'NoModificationAllowedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGPointList::append_item(
  self : SVGPointList,
  new_item : DOMPoint,
) -> Result[DOMPoint, SVGPointListAppendItemError] =
  #| (self, new_item) => (() => { try { return { $tag: 1, _0: self.appendItem(new_item) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NoModificationAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
#alias("_[_]=_")
pub extern "js" fn SVGPointList::set(
  self : SVGPointList,
  index : Int,
  new_item : DOMPoint,
) -> Unit =
  #| (self, index, new_item) => { self[index] = new_item }

///|
/// SVGPolylineElement interface
pub type SVGPolylineElement

///|
pub extern "js" fn SVGPolylineElement::to_js_value(
  self : SVGPolylineElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGPolylineElement (unchecked)
pub extern "js" fn SVGPolylineElement::from_js_value(
  v : JsValue,
) -> SVGPolylineElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGPolylineElement (checked with instanceof)
pub extern "js" fn SVGPolylineElement::from_js_value_opt(
  v : JsValue,
) -> SVGPolylineElement? =
  #| (v) => (v instanceof SVGPolylineElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGPolylineElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_polyline_element(
  self : JsValue,
) -> SVGPolylineElement? =
  #| (self) => (self instanceof SVGPolylineElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGPolylineElement (unchecked)
pub extern "js" fn JsValue::to_svg_polyline_element(
  self : JsValue,
) -> SVGPolylineElement =
  #| (self) => self

///|
pub extern "js" fn SVGPolylineElement::to_svg_geometry_element(
  self : SVGPolylineElement,
) -> SVGGeometryElement =
  #| (self) => self

///|
pub extern "js" fn SVGPolylineElement::to_svg_graphics_element(
  self : SVGPolylineElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGPolylineElement::to_svg_element(
  self : SVGPolylineElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGPolylineElement::to_element(
  self : SVGPolylineElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGPolylineElement::to_node(
  self : SVGPolylineElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGPolylineElement::to_event_target(
  self : SVGPolylineElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGPolylineElement::get_points(
  self : SVGPolylineElement,
) -> SVGPointList =
  #| (self) => self.points

///|
pub extern "js" fn SVGPolylineElement::get_animated_points(
  self : SVGPolylineElement,
) -> SVGPointList =
  #| (self) => self.animatedPoints

///|
/// SVGPolygonElement interface
pub type SVGPolygonElement

///|
pub extern "js" fn SVGPolygonElement::to_js_value(
  self : SVGPolygonElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGPolygonElement (unchecked)
pub extern "js" fn SVGPolygonElement::from_js_value(
  v : JsValue,
) -> SVGPolygonElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGPolygonElement (checked with instanceof)
pub extern "js" fn SVGPolygonElement::from_js_value_opt(
  v : JsValue,
) -> SVGPolygonElement? =
  #| (v) => (v instanceof SVGPolygonElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGPolygonElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_polygon_element(
  self : JsValue,
) -> SVGPolygonElement? =
  #| (self) => (self instanceof SVGPolygonElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGPolygonElement (unchecked)
pub extern "js" fn JsValue::to_svg_polygon_element(
  self : JsValue,
) -> SVGPolygonElement =
  #| (self) => self

///|
pub extern "js" fn SVGPolygonElement::to_svg_geometry_element(
  self : SVGPolygonElement,
) -> SVGGeometryElement =
  #| (self) => self

///|
pub extern "js" fn SVGPolygonElement::to_svg_graphics_element(
  self : SVGPolygonElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGPolygonElement::to_svg_element(
  self : SVGPolygonElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGPolygonElement::to_element(
  self : SVGPolygonElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGPolygonElement::to_node(self : SVGPolygonElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGPolygonElement::to_event_target(
  self : SVGPolygonElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGPolygonElement::get_points(
  self : SVGPolygonElement,
) -> SVGPointList =
  #| (self) => self.points

///|
pub extern "js" fn SVGPolygonElement::get_animated_points(
  self : SVGPolygonElement,
) -> SVGPointList =
  #| (self) => self.animatedPoints

///|
/// SVGTextContentElement interface
pub type SVGTextContentElement

///|
pub extern "js" fn SVGTextContentElement::to_js_value(
  self : SVGTextContentElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGTextContentElement (unchecked)
pub extern "js" fn SVGTextContentElement::from_js_value(
  v : JsValue,
) -> SVGTextContentElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGTextContentElement (checked with instanceof)
pub extern "js" fn SVGTextContentElement::from_js_value_opt(
  v : JsValue,
) -> SVGTextContentElement? =
  #| (v) => (v instanceof SVGTextContentElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGTextContentElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_text_content_element(
  self : JsValue,
) -> SVGTextContentElement? =
  #| (self) => (self instanceof SVGTextContentElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGTextContentElement (unchecked)
pub extern "js" fn JsValue::to_svg_text_content_element(
  self : JsValue,
) -> SVGTextContentElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextContentElement::to_svg_graphics_element(
  self : SVGTextContentElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextContentElement::to_svg_element(
  self : SVGTextContentElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextContentElement::to_element(
  self : SVGTextContentElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGTextContentElement::to_node(
  self : SVGTextContentElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGTextContentElement::to_event_target(
  self : SVGTextContentElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGTextContentElement::as_svg_text_positioning_element(
  self : SVGTextContentElement,
) -> SVGTextPositioningElement? =
  #| (self) => (self instanceof SVGTextPositioningElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGTextContentElement::as_svg_text_element(
  self : SVGTextContentElement,
) -> SVGTextElement? =
  #| (self) => (self instanceof SVGTextElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGTextContentElement::as_svgt_span_element(
  self : SVGTextContentElement,
) -> SVGTSpanElement? =
  #| (self) => (self instanceof SVGTSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGTextContentElement::as_svg_text_path_element(
  self : SVGTextContentElement,
) -> SVGTextPathElement? =
  #| (self) => (self instanceof SVGTextPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Error type for throwing methods
pub(all) enum SVGTextContentElementGetSubStringLengthError {
  IndexSizeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTextContentElementGetStartPositionOfCharError {
  IndexSizeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTextContentElementGetEndPositionOfCharError {
  IndexSizeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTextContentElementGetExtentOfCharError {
  IndexSizeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum SVGTextContentElementGetRotationOfCharError {
  IndexSizeError(JsError)
  OtherError(JsError)
} derive(Show)

// SVGTextContentElement.LENGTHADJUST_UNKNOWN

///|
pub let svg_text_content_element_lengthadjust_unknown : Int = 0

// SVGTextContentElement.LENGTHADJUST_SPACING

///|
pub let svg_text_content_element_lengthadjust_spacing : Int = 1

// SVGTextContentElement.LENGTHADJUST_SPACINGANDGLYPHS

///|
pub let svg_text_content_element_lengthadjust_spacingandglyphs : Int = 2

///|
pub extern "js" fn SVGTextContentElement::get_text_length(
  self : SVGTextContentElement,
) -> SVGAnimatedLength =
  #| (self) => self.textLength

///|
pub extern "js" fn SVGTextContentElement::get_length_adjust(
  self : SVGTextContentElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.lengthAdjust

///|
pub extern "js" fn SVGTextContentElement::get_number_of_chars(
  self : SVGTextContentElement,
) -> Int =
  #| (self) => self.getNumberOfChars()

///|
pub extern "js" fn SVGTextContentElement::get_computed_text_length(
  self : SVGTextContentElement,
) -> Double =
  #| (self) => self.getComputedTextLength()

///|
pub extern "js" fn SVGTextContentElement::get_sub_string_length(
  self : SVGTextContentElement,
  charnum : Int,
  nchars : Int,
) -> Result[Double, SVGTextContentElementGetSubStringLengthError] =
  #| (self, charnum, nchars) => (() => { try { return { $tag: 1, _0: self.getSubStringLength(charnum, nchars) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTextContentElement::get_start_position_of_char(
  self : SVGTextContentElement,
  charnum : Int,
) -> Result[DOMPoint, SVGTextContentElementGetStartPositionOfCharError] =
  #| (self, charnum) => (() => { try { return { $tag: 1, _0: self.getStartPositionOfChar(charnum) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTextContentElement::get_end_position_of_char(
  self : SVGTextContentElement,
  charnum : Int,
) -> Result[DOMPoint, SVGTextContentElementGetEndPositionOfCharError] =
  #| (self, charnum) => (() => { try { return { $tag: 1, _0: self.getEndPositionOfChar(charnum) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTextContentElement::get_extent_of_char(
  self : SVGTextContentElement,
  charnum : Int,
) -> Result[DOMRect, SVGTextContentElementGetExtentOfCharError] =
  #| (self, charnum) => (() => { try { return { $tag: 1, _0: self.getExtentOfChar(charnum) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTextContentElement::get_rotation_of_char(
  self : SVGTextContentElement,
  charnum : Int,
) -> Result[Double, SVGTextContentElementGetRotationOfCharError] =
  #| (self, charnum) => (() => { try { return { $tag: 1, _0: self.getRotationOfChar(charnum) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'IndexSizeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn SVGTextContentElement::get_char_num_at_position(
  self : SVGTextContentElement,
) -> Int =
  #| (self) => self.getCharNumAtPosition()

///|
extern "js" fn SVGTextContentElement::get_char_num_at_position_with_point_ffi(
  self : SVGTextContentElement,
  point : JsValue,
) -> Int =
  #| (self, point) => self.getCharNumAtPosition(point)

///|
pub fn SVGTextContentElement::get_char_num_at_position_with_point(
  self : SVGTextContentElement,
  point : DOMPointInit,
) -> Int {
  SVGTextContentElement::get_char_num_at_position_with_point_ffi(
    self,
    point.to_js(),
  )
}

///|
pub extern "js" fn SVGTextContentElement::select_sub_string(
  self : SVGTextContentElement,
  charnum : Int,
  nchars : Int,
) -> Unit =
  #| (self, charnum, nchars) => self.selectSubString(charnum, nchars)

///|
/// SVGTextPositioningElement interface
pub type SVGTextPositioningElement

///|
pub extern "js" fn SVGTextPositioningElement::to_js_value(
  self : SVGTextPositioningElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGTextPositioningElement (unchecked)
pub extern "js" fn SVGTextPositioningElement::from_js_value(
  v : JsValue,
) -> SVGTextPositioningElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGTextPositioningElement (checked with instanceof)
pub extern "js" fn SVGTextPositioningElement::from_js_value_opt(
  v : JsValue,
) -> SVGTextPositioningElement? =
  #| (v) => (v instanceof SVGTextPositioningElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGTextPositioningElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_text_positioning_element(
  self : JsValue,
) -> SVGTextPositioningElement? =
  #| (self) => (self instanceof SVGTextPositioningElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGTextPositioningElement (unchecked)
pub extern "js" fn JsValue::to_svg_text_positioning_element(
  self : JsValue,
) -> SVGTextPositioningElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextPositioningElement::to_svg_text_content_element(
  self : SVGTextPositioningElement,
) -> SVGTextContentElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextPositioningElement::to_svg_graphics_element(
  self : SVGTextPositioningElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextPositioningElement::to_svg_element(
  self : SVGTextPositioningElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextPositioningElement::to_element(
  self : SVGTextPositioningElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGTextPositioningElement::to_node(
  self : SVGTextPositioningElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGTextPositioningElement::to_event_target(
  self : SVGTextPositioningElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGTextPositioningElement::as_svg_text_element(
  self : SVGTextPositioningElement,
) -> SVGTextElement? =
  #| (self) => (self instanceof SVGTextElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGTextPositioningElement::as_svgt_span_element(
  self : SVGTextPositioningElement,
) -> SVGTSpanElement? =
  #| (self) => (self instanceof SVGTSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGTextPositioningElement::get_x(
  self : SVGTextPositioningElement,
) -> SVGAnimatedLengthList =
  #| (self) => self.x

///|
pub extern "js" fn SVGTextPositioningElement::get_y(
  self : SVGTextPositioningElement,
) -> SVGAnimatedLengthList =
  #| (self) => self.y

///|
pub extern "js" fn SVGTextPositioningElement::get_dx(
  self : SVGTextPositioningElement,
) -> SVGAnimatedLengthList =
  #| (self) => self.dx

///|
pub extern "js" fn SVGTextPositioningElement::get_dy(
  self : SVGTextPositioningElement,
) -> SVGAnimatedLengthList =
  #| (self) => self.dy

///|
pub extern "js" fn SVGTextPositioningElement::get_rotate(
  self : SVGTextPositioningElement,
) -> SVGAnimatedNumberList =
  #| (self) => self.rotate

///|
/// SVGTextElement interface
pub type SVGTextElement

///|
pub extern "js" fn SVGTextElement::to_js_value(
  self : SVGTextElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGTextElement (unchecked)
pub extern "js" fn SVGTextElement::from_js_value(v : JsValue) -> SVGTextElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGTextElement (checked with instanceof)
pub extern "js" fn SVGTextElement::from_js_value_opt(
  v : JsValue,
) -> SVGTextElement? =
  #| (v) => (v instanceof SVGTextElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGTextElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_text_element(
  self : JsValue,
) -> SVGTextElement? =
  #| (self) => (self instanceof SVGTextElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGTextElement (unchecked)
pub extern "js" fn JsValue::to_svg_text_element(
  self : JsValue,
) -> SVGTextElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextElement::to_svg_text_positioning_element(
  self : SVGTextElement,
) -> SVGTextPositioningElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextElement::to_svg_text_content_element(
  self : SVGTextElement,
) -> SVGTextContentElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextElement::to_svg_graphics_element(
  self : SVGTextElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextElement::to_svg_element(
  self : SVGTextElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextElement::to_element(self : SVGTextElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGTextElement::to_node(self : SVGTextElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGTextElement::to_event_target(
  self : SVGTextElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGTSpanElement interface
pub type SVGTSpanElement

///|
pub extern "js" fn SVGTSpanElement::to_js_value(
  self : SVGTSpanElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGTSpanElement (unchecked)
pub extern "js" fn SVGTSpanElement::from_js_value(
  v : JsValue,
) -> SVGTSpanElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGTSpanElement (checked with instanceof)
pub extern "js" fn SVGTSpanElement::from_js_value_opt(
  v : JsValue,
) -> SVGTSpanElement? =
  #| (v) => (v instanceof SVGTSpanElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGTSpanElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgt_span_element(
  self : JsValue,
) -> SVGTSpanElement? =
  #| (self) => (self instanceof SVGTSpanElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGTSpanElement (unchecked)
pub extern "js" fn JsValue::to_svgt_span_element(
  self : JsValue,
) -> SVGTSpanElement =
  #| (self) => self

///|
pub extern "js" fn SVGTSpanElement::to_svg_text_positioning_element(
  self : SVGTSpanElement,
) -> SVGTextPositioningElement =
  #| (self) => self

///|
pub extern "js" fn SVGTSpanElement::to_svg_text_content_element(
  self : SVGTSpanElement,
) -> SVGTextContentElement =
  #| (self) => self

///|
pub extern "js" fn SVGTSpanElement::to_svg_graphics_element(
  self : SVGTSpanElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGTSpanElement::to_svg_element(
  self : SVGTSpanElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGTSpanElement::to_element(
  self : SVGTSpanElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGTSpanElement::to_node(self : SVGTSpanElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGTSpanElement::to_event_target(
  self : SVGTSpanElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGTextPathElement interface
pub type SVGTextPathElement

///|
pub extern "js" fn SVGTextPathElement::to_js_value(
  self : SVGTextPathElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGTextPathElement (unchecked)
pub extern "js" fn SVGTextPathElement::from_js_value(
  v : JsValue,
) -> SVGTextPathElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGTextPathElement (checked with instanceof)
pub extern "js" fn SVGTextPathElement::from_js_value_opt(
  v : JsValue,
) -> SVGTextPathElement? =
  #| (v) => (v instanceof SVGTextPathElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGTextPathElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_text_path_element(
  self : JsValue,
) -> SVGTextPathElement? =
  #| (self) => (self instanceof SVGTextPathElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGTextPathElement (unchecked)
pub extern "js" fn JsValue::to_svg_text_path_element(
  self : JsValue,
) -> SVGTextPathElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextPathElement::to_svg_text_content_element(
  self : SVGTextPathElement,
) -> SVGTextContentElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextPathElement::to_svg_graphics_element(
  self : SVGTextPathElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextPathElement::to_svg_element(
  self : SVGTextPathElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGTextPathElement::to_element(
  self : SVGTextPathElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGTextPathElement::to_node(
  self : SVGTextPathElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGTextPathElement::to_event_target(
  self : SVGTextPathElement,
) -> EventTarget =
  #| (self) => self

// SVGTextPathElement.TEXTPATH_METHODTYPE_UNKNOWN

///|
pub let svg_text_path_element_textpath_methodtype_unknown : Int = 0

// SVGTextPathElement.TEXTPATH_METHODTYPE_ALIGN

///|
pub let svg_text_path_element_textpath_methodtype_align : Int = 1

// SVGTextPathElement.TEXTPATH_METHODTYPE_STRETCH

///|
pub let svg_text_path_element_textpath_methodtype_stretch : Int = 2

// SVGTextPathElement.TEXTPATH_SPACINGTYPE_UNKNOWN

///|
pub let svg_text_path_element_textpath_spacingtype_unknown : Int = 0

// SVGTextPathElement.TEXTPATH_SPACINGTYPE_AUTO

///|
pub let svg_text_path_element_textpath_spacingtype_auto : Int = 1

// SVGTextPathElement.TEXTPATH_SPACINGTYPE_EXACT

///|
pub let svg_text_path_element_textpath_spacingtype_exact : Int = 2

///|
pub extern "js" fn SVGTextPathElement::get_start_offset(
  self : SVGTextPathElement,
) -> SVGAnimatedLength =
  #| (self) => self.startOffset

///|
pub extern "js" fn SVGTextPathElement::get_method(
  self : SVGTextPathElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.method

///|
pub extern "js" fn SVGTextPathElement::get_spacing(
  self : SVGTextPathElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.spacing

///|
pub extern "js" fn SVGTextPathElement::get_href(
  self : SVGTextPathElement,
) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGImageElement interface
pub type SVGImageElement

///|
pub extern "js" fn SVGImageElement::to_js_value(
  self : SVGImageElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGImageElement (unchecked)
pub extern "js" fn SVGImageElement::from_js_value(
  v : JsValue,
) -> SVGImageElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGImageElement (checked with instanceof)
pub extern "js" fn SVGImageElement::from_js_value_opt(
  v : JsValue,
) -> SVGImageElement? =
  #| (v) => (v instanceof SVGImageElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGImageElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_image_element(
  self : JsValue,
) -> SVGImageElement? =
  #| (self) => (self instanceof SVGImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGImageElement (unchecked)
pub extern "js" fn JsValue::to_svg_image_element(
  self : JsValue,
) -> SVGImageElement =
  #| (self) => self

///|
pub extern "js" fn SVGImageElement::to_svg_graphics_element(
  self : SVGImageElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGImageElement::to_svg_element(
  self : SVGImageElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGImageElement::to_element(
  self : SVGImageElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGImageElement::to_node(self : SVGImageElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGImageElement::to_event_target(
  self : SVGImageElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGImageElement::get_x(
  self : SVGImageElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGImageElement::get_y(
  self : SVGImageElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGImageElement::get_width(
  self : SVGImageElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGImageElement::get_height(
  self : SVGImageElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGImageElement::get_preserve_aspect_ratio(
  self : SVGImageElement,
) -> SVGAnimatedPreserveAspectRatio =
  #| (self) => self.preserveAspectRatio

///|
pub extern "js" fn SVGImageElement::get_cross_origin(
  self : SVGImageElement,
) -> String? =
  #| (self) => (self.crossOrigin) ?? undefined

///|
pub extern "js" fn SVGImageElement::set_cross_origin(
  self : SVGImageElement,
  value : String?,
) -> Unit =
  #| (self, value) => { self.crossOrigin = value }

///|
pub extern "js" fn SVGImageElement::get_href(
  self : SVGImageElement,
) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGForeignObjectElement interface
pub type SVGForeignObjectElement

///|
pub extern "js" fn SVGForeignObjectElement::to_js_value(
  self : SVGForeignObjectElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGForeignObjectElement (unchecked)
pub extern "js" fn SVGForeignObjectElement::from_js_value(
  v : JsValue,
) -> SVGForeignObjectElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGForeignObjectElement (checked with instanceof)
pub extern "js" fn SVGForeignObjectElement::from_js_value_opt(
  v : JsValue,
) -> SVGForeignObjectElement? =
  #| (v) => (v instanceof SVGForeignObjectElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGForeignObjectElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_foreign_object_element(
  self : JsValue,
) -> SVGForeignObjectElement? =
  #| (self) => (self instanceof SVGForeignObjectElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGForeignObjectElement (unchecked)
pub extern "js" fn JsValue::to_svg_foreign_object_element(
  self : JsValue,
) -> SVGForeignObjectElement =
  #| (self) => self

///|
pub extern "js" fn SVGForeignObjectElement::to_svg_graphics_element(
  self : SVGForeignObjectElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGForeignObjectElement::to_svg_element(
  self : SVGForeignObjectElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGForeignObjectElement::to_element(
  self : SVGForeignObjectElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGForeignObjectElement::to_node(
  self : SVGForeignObjectElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGForeignObjectElement::to_event_target(
  self : SVGForeignObjectElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGForeignObjectElement::get_x(
  self : SVGForeignObjectElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGForeignObjectElement::get_y(
  self : SVGForeignObjectElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGForeignObjectElement::get_width(
  self : SVGForeignObjectElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGForeignObjectElement::get_height(
  self : SVGForeignObjectElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
/// SVGMarkerElement interface
pub type SVGMarkerElement

///|
pub extern "js" fn SVGMarkerElement::to_js_value(
  self : SVGMarkerElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGMarkerElement (unchecked)
pub extern "js" fn SVGMarkerElement::from_js_value(
  v : JsValue,
) -> SVGMarkerElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGMarkerElement (checked with instanceof)
pub extern "js" fn SVGMarkerElement::from_js_value_opt(
  v : JsValue,
) -> SVGMarkerElement? =
  #| (v) => (v instanceof SVGMarkerElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGMarkerElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_marker_element(
  self : JsValue,
) -> SVGMarkerElement? =
  #| (self) => (self instanceof SVGMarkerElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGMarkerElement (unchecked)
pub extern "js" fn JsValue::to_svg_marker_element(
  self : JsValue,
) -> SVGMarkerElement =
  #| (self) => self

///|
pub extern "js" fn SVGMarkerElement::to_svg_element(
  self : SVGMarkerElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGMarkerElement::to_element(
  self : SVGMarkerElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGMarkerElement::to_node(self : SVGMarkerElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGMarkerElement::to_event_target(
  self : SVGMarkerElement,
) -> EventTarget =
  #| (self) => self

// SVGMarkerElement.SVG_MARKERUNITS_UNKNOWN

///|
pub let svg_marker_element_svg_markerunits_unknown : Int = 0

// SVGMarkerElement.SVG_MARKERUNITS_USERSPACEONUSE

///|
pub let svg_marker_element_svg_markerunits_userspaceonuse : Int = 1

// SVGMarkerElement.SVG_MARKERUNITS_STROKEWIDTH

///|
pub let svg_marker_element_svg_markerunits_strokewidth : Int = 2

// SVGMarkerElement.SVG_MARKER_ORIENT_UNKNOWN

///|
pub let svg_marker_element_svg_marker_orient_unknown : Int = 0

// SVGMarkerElement.SVG_MARKER_ORIENT_AUTO

///|
pub let svg_marker_element_svg_marker_orient_auto : Int = 1

// SVGMarkerElement.SVG_MARKER_ORIENT_ANGLE

///|
pub let svg_marker_element_svg_marker_orient_angle : Int = 2

// SVGMarkerElement.SVG_MARKER_ORIENT_AUTO_START_REVERSE

///|
pub let svg_marker_element_svg_marker_orient_auto_start_reverse : Int = 3

///|
pub extern "js" fn SVGMarkerElement::get_ref_x(
  self : SVGMarkerElement,
) -> SVGAnimatedLength =
  #| (self) => self.refX

///|
pub extern "js" fn SVGMarkerElement::get_ref_y(
  self : SVGMarkerElement,
) -> SVGAnimatedLength =
  #| (self) => self.refY

///|
pub extern "js" fn SVGMarkerElement::get_marker_units(
  self : SVGMarkerElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.markerUnits

///|
pub extern "js" fn SVGMarkerElement::get_marker_width(
  self : SVGMarkerElement,
) -> SVGAnimatedLength =
  #| (self) => self.markerWidth

///|
pub extern "js" fn SVGMarkerElement::get_marker_height(
  self : SVGMarkerElement,
) -> SVGAnimatedLength =
  #| (self) => self.markerHeight

///|
pub extern "js" fn SVGMarkerElement::get_orient_type(
  self : SVGMarkerElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.orientType

///|
pub extern "js" fn SVGMarkerElement::get_orient_angle(
  self : SVGMarkerElement,
) -> SVGAnimatedAngle =
  #| (self) => self.orientAngle

///|
pub extern "js" fn SVGMarkerElement::get_orient(
  self : SVGMarkerElement,
) -> String =
  #| (self) => self.orient

///|
pub extern "js" fn SVGMarkerElement::set_orient(
  self : SVGMarkerElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.orient = value }

///|
pub extern "js" fn SVGMarkerElement::set_orient_to_auto(
  self : SVGMarkerElement,
) -> Unit =
  #| (self) => self.setOrientToAuto()

///|
pub extern "js" fn SVGMarkerElement::set_orient_to_angle(
  self : SVGMarkerElement,
  angle : SVGAngle,
) -> Unit =
  #| (self, angle) => self.setOrientToAngle(angle)

///|
pub extern "js" fn SVGMarkerElement::get_view_box(
  self : SVGMarkerElement,
) -> SVGAnimatedRect =
  #| (self) => self.viewBox

///|
pub extern "js" fn SVGMarkerElement::get_preserve_aspect_ratio(
  self : SVGMarkerElement,
) -> SVGAnimatedPreserveAspectRatio =
  #| (self) => self.preserveAspectRatio

///|
/// SVGGradientElement interface
pub type SVGGradientElement

///|
pub extern "js" fn SVGGradientElement::to_js_value(
  self : SVGGradientElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGGradientElement (unchecked)
pub extern "js" fn SVGGradientElement::from_js_value(
  v : JsValue,
) -> SVGGradientElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGGradientElement (checked with instanceof)
pub extern "js" fn SVGGradientElement::from_js_value_opt(
  v : JsValue,
) -> SVGGradientElement? =
  #| (v) => (v instanceof SVGGradientElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGGradientElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_gradient_element(
  self : JsValue,
) -> SVGGradientElement? =
  #| (self) => (self instanceof SVGGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGGradientElement (unchecked)
pub extern "js" fn JsValue::to_svg_gradient_element(
  self : JsValue,
) -> SVGGradientElement =
  #| (self) => self

///|
pub extern "js" fn SVGGradientElement::to_svg_element(
  self : SVGGradientElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGGradientElement::to_element(
  self : SVGGradientElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGGradientElement::to_node(
  self : SVGGradientElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGGradientElement::to_event_target(
  self : SVGGradientElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGGradientElement::as_svg_linear_gradient_element(
  self : SVGGradientElement,
) -> SVGLinearGradientElement? =
  #| (self) => (self instanceof SVGLinearGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGGradientElement::as_svg_radial_gradient_element(
  self : SVGGradientElement,
) -> SVGRadialGradientElement? =
  #| (self) => (self instanceof SVGRadialGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

// SVGGradientElement.SVG_SPREADMETHOD_UNKNOWN

///|
pub let svg_gradient_element_svg_spreadmethod_unknown : Int = 0

// SVGGradientElement.SVG_SPREADMETHOD_PAD

///|
pub let svg_gradient_element_svg_spreadmethod_pad : Int = 1

// SVGGradientElement.SVG_SPREADMETHOD_REFLECT

///|
pub let svg_gradient_element_svg_spreadmethod_reflect : Int = 2

// SVGGradientElement.SVG_SPREADMETHOD_REPEAT

///|
pub let svg_gradient_element_svg_spreadmethod_repeat : Int = 3

///|
pub extern "js" fn SVGGradientElement::get_gradient_units(
  self : SVGGradientElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.gradientUnits

///|
pub extern "js" fn SVGGradientElement::get_gradient_transform(
  self : SVGGradientElement,
) -> SVGAnimatedTransformList =
  #| (self) => self.gradientTransform

///|
pub extern "js" fn SVGGradientElement::get_spread_method(
  self : SVGGradientElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.spreadMethod

///|
pub extern "js" fn SVGGradientElement::get_href(
  self : SVGGradientElement,
) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGLinearGradientElement interface
pub type SVGLinearGradientElement

///|
pub extern "js" fn SVGLinearGradientElement::to_js_value(
  self : SVGLinearGradientElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGLinearGradientElement (unchecked)
pub extern "js" fn SVGLinearGradientElement::from_js_value(
  v : JsValue,
) -> SVGLinearGradientElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGLinearGradientElement (checked with instanceof)
pub extern "js" fn SVGLinearGradientElement::from_js_value_opt(
  v : JsValue,
) -> SVGLinearGradientElement? =
  #| (v) => (v instanceof SVGLinearGradientElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGLinearGradientElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_linear_gradient_element(
  self : JsValue,
) -> SVGLinearGradientElement? =
  #| (self) => (self instanceof SVGLinearGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGLinearGradientElement (unchecked)
pub extern "js" fn JsValue::to_svg_linear_gradient_element(
  self : JsValue,
) -> SVGLinearGradientElement =
  #| (self) => self

///|
pub extern "js" fn SVGLinearGradientElement::to_svg_gradient_element(
  self : SVGLinearGradientElement,
) -> SVGGradientElement =
  #| (self) => self

///|
pub extern "js" fn SVGLinearGradientElement::to_svg_element(
  self : SVGLinearGradientElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGLinearGradientElement::to_element(
  self : SVGLinearGradientElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGLinearGradientElement::to_node(
  self : SVGLinearGradientElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGLinearGradientElement::to_event_target(
  self : SVGLinearGradientElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGLinearGradientElement::get_x1(
  self : SVGLinearGradientElement,
) -> SVGAnimatedLength =
  #| (self) => self.x1

///|
pub extern "js" fn SVGLinearGradientElement::get_y1(
  self : SVGLinearGradientElement,
) -> SVGAnimatedLength =
  #| (self) => self.y1

///|
pub extern "js" fn SVGLinearGradientElement::get_x2(
  self : SVGLinearGradientElement,
) -> SVGAnimatedLength =
  #| (self) => self.x2

///|
pub extern "js" fn SVGLinearGradientElement::get_y2(
  self : SVGLinearGradientElement,
) -> SVGAnimatedLength =
  #| (self) => self.y2

///|
/// SVGRadialGradientElement interface
pub type SVGRadialGradientElement

///|
pub extern "js" fn SVGRadialGradientElement::to_js_value(
  self : SVGRadialGradientElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGRadialGradientElement (unchecked)
pub extern "js" fn SVGRadialGradientElement::from_js_value(
  v : JsValue,
) -> SVGRadialGradientElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGRadialGradientElement (checked with instanceof)
pub extern "js" fn SVGRadialGradientElement::from_js_value_opt(
  v : JsValue,
) -> SVGRadialGradientElement? =
  #| (v) => (v instanceof SVGRadialGradientElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGRadialGradientElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_radial_gradient_element(
  self : JsValue,
) -> SVGRadialGradientElement? =
  #| (self) => (self instanceof SVGRadialGradientElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGRadialGradientElement (unchecked)
pub extern "js" fn JsValue::to_svg_radial_gradient_element(
  self : JsValue,
) -> SVGRadialGradientElement =
  #| (self) => self

///|
pub extern "js" fn SVGRadialGradientElement::to_svg_gradient_element(
  self : SVGRadialGradientElement,
) -> SVGGradientElement =
  #| (self) => self

///|
pub extern "js" fn SVGRadialGradientElement::to_svg_element(
  self : SVGRadialGradientElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGRadialGradientElement::to_element(
  self : SVGRadialGradientElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGRadialGradientElement::to_node(
  self : SVGRadialGradientElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGRadialGradientElement::to_event_target(
  self : SVGRadialGradientElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGRadialGradientElement::get_cx(
  self : SVGRadialGradientElement,
) -> SVGAnimatedLength =
  #| (self) => self.cx

///|
pub extern "js" fn SVGRadialGradientElement::get_cy(
  self : SVGRadialGradientElement,
) -> SVGAnimatedLength =
  #| (self) => self.cy

///|
pub extern "js" fn SVGRadialGradientElement::get_r(
  self : SVGRadialGradientElement,
) -> SVGAnimatedLength =
  #| (self) => self.r

///|
pub extern "js" fn SVGRadialGradientElement::get_fx(
  self : SVGRadialGradientElement,
) -> SVGAnimatedLength =
  #| (self) => self.fx

///|
pub extern "js" fn SVGRadialGradientElement::get_fy(
  self : SVGRadialGradientElement,
) -> SVGAnimatedLength =
  #| (self) => self.fy

///|
pub extern "js" fn SVGRadialGradientElement::get_fr(
  self : SVGRadialGradientElement,
) -> SVGAnimatedLength =
  #| (self) => self.fr

///|
/// SVGStopElement interface
pub type SVGStopElement

///|
pub extern "js" fn SVGStopElement::to_js_value(
  self : SVGStopElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGStopElement (unchecked)
pub extern "js" fn SVGStopElement::from_js_value(v : JsValue) -> SVGStopElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGStopElement (checked with instanceof)
pub extern "js" fn SVGStopElement::from_js_value_opt(
  v : JsValue,
) -> SVGStopElement? =
  #| (v) => (v instanceof SVGStopElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGStopElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_stop_element(
  self : JsValue,
) -> SVGStopElement? =
  #| (self) => (self instanceof SVGStopElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGStopElement (unchecked)
pub extern "js" fn JsValue::to_svg_stop_element(
  self : JsValue,
) -> SVGStopElement =
  #| (self) => self

///|
pub extern "js" fn SVGStopElement::to_svg_element(
  self : SVGStopElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGStopElement::to_element(self : SVGStopElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGStopElement::to_node(self : SVGStopElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGStopElement::to_event_target(
  self : SVGStopElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGStopElement::get_offset(
  self : SVGStopElement,
) -> SVGAnimatedNumber =
  #| (self) => self.offset

///|
/// SVGPatternElement interface
pub type SVGPatternElement

///|
pub extern "js" fn SVGPatternElement::to_js_value(
  self : SVGPatternElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGPatternElement (unchecked)
pub extern "js" fn SVGPatternElement::from_js_value(
  v : JsValue,
) -> SVGPatternElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGPatternElement (checked with instanceof)
pub extern "js" fn SVGPatternElement::from_js_value_opt(
  v : JsValue,
) -> SVGPatternElement? =
  #| (v) => (v instanceof SVGPatternElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGPatternElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_pattern_element(
  self : JsValue,
) -> SVGPatternElement? =
  #| (self) => (self instanceof SVGPatternElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGPatternElement (unchecked)
pub extern "js" fn JsValue::to_svg_pattern_element(
  self : JsValue,
) -> SVGPatternElement =
  #| (self) => self

///|
pub extern "js" fn SVGPatternElement::to_svg_element(
  self : SVGPatternElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGPatternElement::to_element(
  self : SVGPatternElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGPatternElement::to_node(self : SVGPatternElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGPatternElement::to_event_target(
  self : SVGPatternElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGPatternElement::get_pattern_units(
  self : SVGPatternElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.patternUnits

///|
pub extern "js" fn SVGPatternElement::get_pattern_content_units(
  self : SVGPatternElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.patternContentUnits

///|
pub extern "js" fn SVGPatternElement::get_pattern_transform(
  self : SVGPatternElement,
) -> SVGAnimatedTransformList =
  #| (self) => self.patternTransform

///|
pub extern "js" fn SVGPatternElement::get_x(
  self : SVGPatternElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGPatternElement::get_y(
  self : SVGPatternElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGPatternElement::get_width(
  self : SVGPatternElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGPatternElement::get_height(
  self : SVGPatternElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGPatternElement::get_view_box(
  self : SVGPatternElement,
) -> SVGAnimatedRect =
  #| (self) => self.viewBox

///|
pub extern "js" fn SVGPatternElement::get_preserve_aspect_ratio(
  self : SVGPatternElement,
) -> SVGAnimatedPreserveAspectRatio =
  #| (self) => self.preserveAspectRatio

///|
pub extern "js" fn SVGPatternElement::get_href(
  self : SVGPatternElement,
) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGScriptElement interface
pub type SVGScriptElement

///|
pub extern "js" fn SVGScriptElement::to_js_value(
  self : SVGScriptElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGScriptElement (unchecked)
pub extern "js" fn SVGScriptElement::from_js_value(
  v : JsValue,
) -> SVGScriptElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGScriptElement (checked with instanceof)
pub extern "js" fn SVGScriptElement::from_js_value_opt(
  v : JsValue,
) -> SVGScriptElement? =
  #| (v) => (v instanceof SVGScriptElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGScriptElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_script_element(
  self : JsValue,
) -> SVGScriptElement? =
  #| (self) => (self instanceof SVGScriptElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGScriptElement (unchecked)
pub extern "js" fn JsValue::to_svg_script_element(
  self : JsValue,
) -> SVGScriptElement =
  #| (self) => self

///|
pub extern "js" fn SVGScriptElement::to_svg_element(
  self : SVGScriptElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGScriptElement::to_element(
  self : SVGScriptElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGScriptElement::to_node(self : SVGScriptElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGScriptElement::to_event_target(
  self : SVGScriptElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGScriptElement::get_type(
  self : SVGScriptElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn SVGScriptElement::set_type(
  self : SVGScriptElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn SVGScriptElement::get_cross_origin(
  self : SVGScriptElement,
) -> String? =
  #| (self) => (self.crossOrigin) ?? undefined

///|
pub extern "js" fn SVGScriptElement::set_cross_origin(
  self : SVGScriptElement,
  value : String?,
) -> Unit =
  #| (self, value) => { self.crossOrigin = value }

///|
pub extern "js" fn SVGScriptElement::get_href(
  self : SVGScriptElement,
) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGAElement interface
pub type SVGAElement

///|
pub extern "js" fn SVGAElement::to_js_value(self : SVGAElement) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGAElement (unchecked)
pub extern "js" fn SVGAElement::from_js_value(v : JsValue) -> SVGAElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGAElement (checked with instanceof)
pub extern "js" fn SVGAElement::from_js_value_opt(v : JsValue) -> SVGAElement? =
  #| (v) => (v instanceof SVGAElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGAElement (checked with instanceof)
pub extern "js" fn JsValue::as_svga_element(self : JsValue) -> SVGAElement? =
  #| (self) => (self instanceof SVGAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGAElement (unchecked)
pub extern "js" fn JsValue::to_svga_element(self : JsValue) -> SVGAElement =
  #| (self) => self

///|
pub extern "js" fn SVGAElement::to_svg_graphics_element(
  self : SVGAElement,
) -> SVGGraphicsElement =
  #| (self) => self

///|
pub extern "js" fn SVGAElement::to_svg_element(
  self : SVGAElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGAElement::to_element(self : SVGAElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGAElement::to_node(self : SVGAElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGAElement::to_event_target(
  self : SVGAElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGAElement::get_target(
  self : SVGAElement,
) -> SVGAnimatedString =
  #| (self) => self.target

///|
pub extern "js" fn SVGAElement::get_download(self : SVGAElement) -> String =
  #| (self) => self.download

///|
pub extern "js" fn SVGAElement::set_download(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.download = value }

///|
pub extern "js" fn SVGAElement::get_ping(self : SVGAElement) -> String =
  #| (self) => self.ping

///|
pub extern "js" fn SVGAElement::set_ping(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.ping = value }

///|
pub extern "js" fn SVGAElement::get_rel(self : SVGAElement) -> String =
  #| (self) => self.rel

///|
pub extern "js" fn SVGAElement::set_rel(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.rel = value }

///|
pub extern "js" fn SVGAElement::get_rel_list(
  self : SVGAElement,
) -> DOMTokenList =
  #| (self) => self.relList

///|
pub extern "js" fn SVGAElement::get_hreflang(self : SVGAElement) -> String =
  #| (self) => self.hreflang

///|
pub extern "js" fn SVGAElement::set_hreflang(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.hreflang = value }

///|
pub extern "js" fn SVGAElement::get_type(self : SVGAElement) -> String =
  #| (self) => self.type

///|
pub extern "js" fn SVGAElement::set_type(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn SVGAElement::get_referrer_policy(
  self : SVGAElement,
) -> String =
  #| (self) => self.referrerPolicy

///|
pub extern "js" fn SVGAElement::set_referrer_policy(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.referrerPolicy = value }

///|
pub extern "js" fn SVGAElement::get_origin(self : SVGAElement) -> String =
  #| (self) => self.origin

///|
pub extern "js" fn SVGAElement::get_protocol(self : SVGAElement) -> String =
  #| (self) => self.protocol

///|
pub extern "js" fn SVGAElement::set_protocol(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.protocol = value }

///|
pub extern "js" fn SVGAElement::get_username(self : SVGAElement) -> String =
  #| (self) => self.username

///|
pub extern "js" fn SVGAElement::set_username(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.username = value }

///|
pub extern "js" fn SVGAElement::get_password(self : SVGAElement) -> String =
  #| (self) => self.password

///|
pub extern "js" fn SVGAElement::set_password(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.password = value }

///|
pub extern "js" fn SVGAElement::get_host(self : SVGAElement) -> String =
  #| (self) => self.host

///|
pub extern "js" fn SVGAElement::set_host(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.host = value }

///|
pub extern "js" fn SVGAElement::get_hostname(self : SVGAElement) -> String =
  #| (self) => self.hostname

///|
pub extern "js" fn SVGAElement::set_hostname(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.hostname = value }

///|
pub extern "js" fn SVGAElement::get_port(self : SVGAElement) -> String =
  #| (self) => self.port

///|
pub extern "js" fn SVGAElement::set_port(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.port = value }

///|
pub extern "js" fn SVGAElement::get_pathname(self : SVGAElement) -> String =
  #| (self) => self.pathname

///|
pub extern "js" fn SVGAElement::set_pathname(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.pathname = value }

///|
pub extern "js" fn SVGAElement::get_search(self : SVGAElement) -> String =
  #| (self) => self.search

///|
pub extern "js" fn SVGAElement::set_search(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.search = value }

///|
pub extern "js" fn SVGAElement::get_hash(self : SVGAElement) -> String =
  #| (self) => self.hash

///|
pub extern "js" fn SVGAElement::set_hash(
  self : SVGAElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.hash = value }

///|
pub extern "js" fn SVGAElement::get_href(
  self : SVGAElement,
) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGViewElement interface
pub type SVGViewElement

///|
pub extern "js" fn SVGViewElement::to_js_value(
  self : SVGViewElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGViewElement (unchecked)
pub extern "js" fn SVGViewElement::from_js_value(v : JsValue) -> SVGViewElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGViewElement (checked with instanceof)
pub extern "js" fn SVGViewElement::from_js_value_opt(
  v : JsValue,
) -> SVGViewElement? =
  #| (v) => (v instanceof SVGViewElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGViewElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_view_element(
  self : JsValue,
) -> SVGViewElement? =
  #| (self) => (self instanceof SVGViewElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGViewElement (unchecked)
pub extern "js" fn JsValue::to_svg_view_element(
  self : JsValue,
) -> SVGViewElement =
  #| (self) => self

///|
pub extern "js" fn SVGViewElement::to_svg_element(
  self : SVGViewElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGViewElement::to_element(self : SVGViewElement) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGViewElement::to_node(self : SVGViewElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGViewElement::to_event_target(
  self : SVGViewElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGViewElement::get_view_box(
  self : SVGViewElement,
) -> SVGAnimatedRect =
  #| (self) => self.viewBox

///|
pub extern "js" fn SVGViewElement::get_preserve_aspect_ratio(
  self : SVGViewElement,
) -> SVGAnimatedPreserveAspectRatio =
  #| (self) => self.preserveAspectRatio
