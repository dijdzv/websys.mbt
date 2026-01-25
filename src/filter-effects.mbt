// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/filter-effects

///|
/// SVGFilterElement interface
pub type SVGFilterElement

///|
pub extern "js" fn SVGFilterElement::to_js_value(
  self : SVGFilterElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFilterElement (unchecked)
pub extern "js" fn SVGFilterElement::from_js_value(
  v : JsValue,
) -> SVGFilterElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFilterElement (checked with instanceof)
pub extern "js" fn SVGFilterElement::from_js_value_opt(
  v : JsValue,
) -> SVGFilterElement? =
  #| (v) => (v instanceof SVGFilterElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFilterElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_filter_element(
  self : JsValue,
) -> SVGFilterElement? =
  #| (self) => (self instanceof SVGFilterElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFilterElement (unchecked)
pub extern "js" fn JsValue::to_svg_filter_element(
  self : JsValue,
) -> SVGFilterElement =
  #| (self) => self

///|
pub extern "js" fn SVGFilterElement::to_svg_element(
  self : SVGFilterElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFilterElement::to_element(
  self : SVGFilterElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFilterElement::to_node(self : SVGFilterElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFilterElement::to_event_target(
  self : SVGFilterElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFilterElement::get_filter_units(
  self : SVGFilterElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.filterUnits

///|
pub extern "js" fn SVGFilterElement::get_primitive_units(
  self : SVGFilterElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.primitiveUnits

///|
pub extern "js" fn SVGFilterElement::get_x(
  self : SVGFilterElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFilterElement::get_y(
  self : SVGFilterElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFilterElement::get_width(
  self : SVGFilterElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFilterElement::get_height(
  self : SVGFilterElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFilterElement::get_href(
  self : SVGFilterElement,
) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGFEBlendElement interface
pub type SVGFEBlendElement

///|
pub extern "js" fn SVGFEBlendElement::to_js_value(
  self : SVGFEBlendElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEBlendElement (unchecked)
pub extern "js" fn SVGFEBlendElement::from_js_value(
  v : JsValue,
) -> SVGFEBlendElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEBlendElement (checked with instanceof)
pub extern "js" fn SVGFEBlendElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEBlendElement? =
  #| (v) => (v instanceof SVGFEBlendElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEBlendElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_blend_element(
  self : JsValue,
) -> SVGFEBlendElement? =
  #| (self) => (self instanceof SVGFEBlendElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEBlendElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_blend_element(
  self : JsValue,
) -> SVGFEBlendElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEBlendElement::to_svg_element(
  self : SVGFEBlendElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEBlendElement::to_element(
  self : SVGFEBlendElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEBlendElement::to_node(self : SVGFEBlendElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEBlendElement::to_event_target(
  self : SVGFEBlendElement,
) -> EventTarget =
  #| (self) => self

// SVGFEBlendElement.SVG_FEBLEND_MODE_UNKNOWN

///|
pub let svgfe_blend_element_svg_feblend_mode_unknown : Int = 0

// SVGFEBlendElement.SVG_FEBLEND_MODE_NORMAL

///|
pub let svgfe_blend_element_svg_feblend_mode_normal : Int = 1

// SVGFEBlendElement.SVG_FEBLEND_MODE_MULTIPLY

///|
pub let svgfe_blend_element_svg_feblend_mode_multiply : Int = 2

// SVGFEBlendElement.SVG_FEBLEND_MODE_SCREEN

///|
pub let svgfe_blend_element_svg_feblend_mode_screen : Int = 3

// SVGFEBlendElement.SVG_FEBLEND_MODE_DARKEN

///|
pub let svgfe_blend_element_svg_feblend_mode_darken : Int = 4

// SVGFEBlendElement.SVG_FEBLEND_MODE_LIGHTEN

///|
pub let svgfe_blend_element_svg_feblend_mode_lighten : Int = 5

// SVGFEBlendElement.SVG_FEBLEND_MODE_OVERLAY

///|
pub let svgfe_blend_element_svg_feblend_mode_overlay : Int = 6

// SVGFEBlendElement.SVG_FEBLEND_MODE_COLOR_DODGE

///|
pub let svgfe_blend_element_svg_feblend_mode_color_dodge : Int = 7

// SVGFEBlendElement.SVG_FEBLEND_MODE_COLOR_BURN

///|
pub let svgfe_blend_element_svg_feblend_mode_color_burn : Int = 8

// SVGFEBlendElement.SVG_FEBLEND_MODE_HARD_LIGHT

///|
pub let svgfe_blend_element_svg_feblend_mode_hard_light : Int = 9

// SVGFEBlendElement.SVG_FEBLEND_MODE_SOFT_LIGHT

///|
pub let svgfe_blend_element_svg_feblend_mode_soft_light : Int = 10

// SVGFEBlendElement.SVG_FEBLEND_MODE_DIFFERENCE

///|
pub let svgfe_blend_element_svg_feblend_mode_difference : Int = 11

// SVGFEBlendElement.SVG_FEBLEND_MODE_EXCLUSION

///|
pub let svgfe_blend_element_svg_feblend_mode_exclusion : Int = 12

// SVGFEBlendElement.SVG_FEBLEND_MODE_HUE

///|
pub let svgfe_blend_element_svg_feblend_mode_hue : Int = 13

// SVGFEBlendElement.SVG_FEBLEND_MODE_SATURATION

///|
pub let svgfe_blend_element_svg_feblend_mode_saturation : Int = 14

// SVGFEBlendElement.SVG_FEBLEND_MODE_COLOR

///|
pub let svgfe_blend_element_svg_feblend_mode_color : Int = 15

// SVGFEBlendElement.SVG_FEBLEND_MODE_LUMINOSITY

///|
pub let svgfe_blend_element_svg_feblend_mode_luminosity : Int = 16

///|
pub extern "js" fn SVGFEBlendElement::get_in1(
  self : SVGFEBlendElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFEBlendElement::get_in2(
  self : SVGFEBlendElement,
) -> SVGAnimatedString =
  #| (self) => self.in2

///|
pub extern "js" fn SVGFEBlendElement::get_mode(
  self : SVGFEBlendElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.mode

///|
pub extern "js" fn SVGFEBlendElement::get_x(
  self : SVGFEBlendElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEBlendElement::get_y(
  self : SVGFEBlendElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEBlendElement::get_width(
  self : SVGFEBlendElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEBlendElement::get_height(
  self : SVGFEBlendElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEBlendElement::get_result(
  self : SVGFEBlendElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEColorMatrixElement interface
pub type SVGFEColorMatrixElement

///|
pub extern "js" fn SVGFEColorMatrixElement::to_js_value(
  self : SVGFEColorMatrixElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEColorMatrixElement (unchecked)
pub extern "js" fn SVGFEColorMatrixElement::from_js_value(
  v : JsValue,
) -> SVGFEColorMatrixElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEColorMatrixElement (checked with instanceof)
pub extern "js" fn SVGFEColorMatrixElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEColorMatrixElement? =
  #| (v) => (v instanceof SVGFEColorMatrixElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEColorMatrixElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_color_matrix_element(
  self : JsValue,
) -> SVGFEColorMatrixElement? =
  #| (self) => (self instanceof SVGFEColorMatrixElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEColorMatrixElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_color_matrix_element(
  self : JsValue,
) -> SVGFEColorMatrixElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEColorMatrixElement::to_svg_element(
  self : SVGFEColorMatrixElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEColorMatrixElement::to_element(
  self : SVGFEColorMatrixElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEColorMatrixElement::to_node(
  self : SVGFEColorMatrixElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEColorMatrixElement::to_event_target(
  self : SVGFEColorMatrixElement,
) -> EventTarget =
  #| (self) => self

// SVGFEColorMatrixElement.SVG_FECOLORMATRIX_TYPE_UNKNOWN

///|
pub let svgfe_color_matrix_element_svg_fecolormatrix_type_unknown : Int = 0

// SVGFEColorMatrixElement.SVG_FECOLORMATRIX_TYPE_MATRIX

///|
pub let svgfe_color_matrix_element_svg_fecolormatrix_type_matrix : Int = 1

// SVGFEColorMatrixElement.SVG_FECOLORMATRIX_TYPE_SATURATE

///|
pub let svgfe_color_matrix_element_svg_fecolormatrix_type_saturate : Int = 2

// SVGFEColorMatrixElement.SVG_FECOLORMATRIX_TYPE_HUEROTATE

///|
pub let svgfe_color_matrix_element_svg_fecolormatrix_type_huerotate : Int = 3

// SVGFEColorMatrixElement.SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA

///|
pub let svgfe_color_matrix_element_svg_fecolormatrix_type_luminancetoalpha : Int = 4

///|
pub extern "js" fn SVGFEColorMatrixElement::get_in1(
  self : SVGFEColorMatrixElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFEColorMatrixElement::get_type(
  self : SVGFEColorMatrixElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.type

///|
pub extern "js" fn SVGFEColorMatrixElement::get_values(
  self : SVGFEColorMatrixElement,
) -> SVGAnimatedNumberList =
  #| (self) => self.values

///|
pub extern "js" fn SVGFEColorMatrixElement::get_x(
  self : SVGFEColorMatrixElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEColorMatrixElement::get_y(
  self : SVGFEColorMatrixElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEColorMatrixElement::get_width(
  self : SVGFEColorMatrixElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEColorMatrixElement::get_height(
  self : SVGFEColorMatrixElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEColorMatrixElement::get_result(
  self : SVGFEColorMatrixElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEComponentTransferElement interface
pub type SVGFEComponentTransferElement

///|
pub extern "js" fn SVGFEComponentTransferElement::to_js_value(
  self : SVGFEComponentTransferElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEComponentTransferElement (unchecked)
pub extern "js" fn SVGFEComponentTransferElement::from_js_value(
  v : JsValue,
) -> SVGFEComponentTransferElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEComponentTransferElement (checked with instanceof)
pub extern "js" fn SVGFEComponentTransferElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEComponentTransferElement? =
  #| (v) => (v instanceof SVGFEComponentTransferElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEComponentTransferElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_component_transfer_element(
  self : JsValue,
) -> SVGFEComponentTransferElement? =
  #| (self) => (self instanceof SVGFEComponentTransferElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEComponentTransferElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_component_transfer_element(
  self : JsValue,
) -> SVGFEComponentTransferElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEComponentTransferElement::to_svg_element(
  self : SVGFEComponentTransferElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEComponentTransferElement::to_element(
  self : SVGFEComponentTransferElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEComponentTransferElement::to_node(
  self : SVGFEComponentTransferElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEComponentTransferElement::to_event_target(
  self : SVGFEComponentTransferElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFEComponentTransferElement::get_in1(
  self : SVGFEComponentTransferElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFEComponentTransferElement::get_x(
  self : SVGFEComponentTransferElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEComponentTransferElement::get_y(
  self : SVGFEComponentTransferElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEComponentTransferElement::get_width(
  self : SVGFEComponentTransferElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEComponentTransferElement::get_height(
  self : SVGFEComponentTransferElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEComponentTransferElement::get_result(
  self : SVGFEComponentTransferElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGComponentTransferFunctionElement interface
pub type SVGComponentTransferFunctionElement

///|
pub extern "js" fn SVGComponentTransferFunctionElement::to_js_value(
  self : SVGComponentTransferFunctionElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGComponentTransferFunctionElement (unchecked)
pub extern "js" fn SVGComponentTransferFunctionElement::from_js_value(
  v : JsValue,
) -> SVGComponentTransferFunctionElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGComponentTransferFunctionElement (checked with instanceof)
pub extern "js" fn SVGComponentTransferFunctionElement::from_js_value_opt(
  v : JsValue,
) -> SVGComponentTransferFunctionElement? =
  #| (v) => (v instanceof SVGComponentTransferFunctionElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGComponentTransferFunctionElement (checked with instanceof)
pub extern "js" fn JsValue::as_svg_component_transfer_function_element(
  self : JsValue,
) -> SVGComponentTransferFunctionElement? =
  #| (self) => (self instanceof SVGComponentTransferFunctionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGComponentTransferFunctionElement (unchecked)
pub extern "js" fn JsValue::to_svg_component_transfer_function_element(
  self : JsValue,
) -> SVGComponentTransferFunctionElement =
  #| (self) => self

///|
pub extern "js" fn SVGComponentTransferFunctionElement::to_svg_element(
  self : SVGComponentTransferFunctionElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGComponentTransferFunctionElement::to_element(
  self : SVGComponentTransferFunctionElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGComponentTransferFunctionElement::to_node(
  self : SVGComponentTransferFunctionElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGComponentTransferFunctionElement::to_event_target(
  self : SVGComponentTransferFunctionElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGComponentTransferFunctionElement::as_svgfe_func_r_element(
  self : SVGComponentTransferFunctionElement,
) -> SVGFEFuncRElement? =
  #| (self) => (self instanceof SVGFEFuncRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGComponentTransferFunctionElement::as_svgfe_func_g_element(
  self : SVGComponentTransferFunctionElement,
) -> SVGFEFuncGElement? =
  #| (self) => (self instanceof SVGFEFuncGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGComponentTransferFunctionElement::as_svgfe_func_b_element(
  self : SVGComponentTransferFunctionElement,
) -> SVGFEFuncBElement? =
  #| (self) => (self instanceof SVGFEFuncBElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn SVGComponentTransferFunctionElement::as_svgfe_func_a_element(
  self : SVGComponentTransferFunctionElement,
) -> SVGFEFuncAElement? =
  #| (self) => (self instanceof SVGFEFuncAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN

///|
pub let svg_component_transfer_function_element_svg_fecomponenttransfer_type_unknown : Int = 0

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY

///|
pub let svg_component_transfer_function_element_svg_fecomponenttransfer_type_identity : Int = 1

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_TABLE

///|
pub let svg_component_transfer_function_element_svg_fecomponenttransfer_type_table : Int = 2

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE

///|
pub let svg_component_transfer_function_element_svg_fecomponenttransfer_type_discrete : Int = 3

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_LINEAR

///|
pub let svg_component_transfer_function_element_svg_fecomponenttransfer_type_linear : Int = 4

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_GAMMA

///|
pub let svg_component_transfer_function_element_svg_fecomponenttransfer_type_gamma : Int = 5

///|
pub extern "js" fn SVGComponentTransferFunctionElement::get_type(
  self : SVGComponentTransferFunctionElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.type

///|
pub extern "js" fn SVGComponentTransferFunctionElement::get_table_values(
  self : SVGComponentTransferFunctionElement,
) -> SVGAnimatedNumberList =
  #| (self) => self.tableValues

///|
pub extern "js" fn SVGComponentTransferFunctionElement::get_slope(
  self : SVGComponentTransferFunctionElement,
) -> SVGAnimatedNumber =
  #| (self) => self.slope

///|
pub extern "js" fn SVGComponentTransferFunctionElement::get_intercept(
  self : SVGComponentTransferFunctionElement,
) -> SVGAnimatedNumber =
  #| (self) => self.intercept

///|
pub extern "js" fn SVGComponentTransferFunctionElement::get_amplitude(
  self : SVGComponentTransferFunctionElement,
) -> SVGAnimatedNumber =
  #| (self) => self.amplitude

///|
pub extern "js" fn SVGComponentTransferFunctionElement::get_exponent(
  self : SVGComponentTransferFunctionElement,
) -> SVGAnimatedNumber =
  #| (self) => self.exponent

///|
pub extern "js" fn SVGComponentTransferFunctionElement::get_offset(
  self : SVGComponentTransferFunctionElement,
) -> SVGAnimatedNumber =
  #| (self) => self.offset

///|
/// SVGFEFuncRElement interface
pub type SVGFEFuncRElement

///|
pub extern "js" fn SVGFEFuncRElement::to_js_value(
  self : SVGFEFuncRElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEFuncRElement (unchecked)
pub extern "js" fn SVGFEFuncRElement::from_js_value(
  v : JsValue,
) -> SVGFEFuncRElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEFuncRElement (checked with instanceof)
pub extern "js" fn SVGFEFuncRElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEFuncRElement? =
  #| (v) => (v instanceof SVGFEFuncRElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEFuncRElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_func_r_element(
  self : JsValue,
) -> SVGFEFuncRElement? =
  #| (self) => (self instanceof SVGFEFuncRElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEFuncRElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_func_r_element(
  self : JsValue,
) -> SVGFEFuncRElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncRElement::to_svg_component_transfer_function_element(
  self : SVGFEFuncRElement,
) -> SVGComponentTransferFunctionElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncRElement::to_svg_element(
  self : SVGFEFuncRElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncRElement::to_element(
  self : SVGFEFuncRElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncRElement::to_node(self : SVGFEFuncRElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncRElement::to_event_target(
  self : SVGFEFuncRElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGFEFuncGElement interface
pub type SVGFEFuncGElement

///|
pub extern "js" fn SVGFEFuncGElement::to_js_value(
  self : SVGFEFuncGElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEFuncGElement (unchecked)
pub extern "js" fn SVGFEFuncGElement::from_js_value(
  v : JsValue,
) -> SVGFEFuncGElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEFuncGElement (checked with instanceof)
pub extern "js" fn SVGFEFuncGElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEFuncGElement? =
  #| (v) => (v instanceof SVGFEFuncGElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEFuncGElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_func_g_element(
  self : JsValue,
) -> SVGFEFuncGElement? =
  #| (self) => (self instanceof SVGFEFuncGElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEFuncGElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_func_g_element(
  self : JsValue,
) -> SVGFEFuncGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncGElement::to_svg_component_transfer_function_element(
  self : SVGFEFuncGElement,
) -> SVGComponentTransferFunctionElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncGElement::to_svg_element(
  self : SVGFEFuncGElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncGElement::to_element(
  self : SVGFEFuncGElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncGElement::to_node(self : SVGFEFuncGElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncGElement::to_event_target(
  self : SVGFEFuncGElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGFEFuncBElement interface
pub type SVGFEFuncBElement

///|
pub extern "js" fn SVGFEFuncBElement::to_js_value(
  self : SVGFEFuncBElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEFuncBElement (unchecked)
pub extern "js" fn SVGFEFuncBElement::from_js_value(
  v : JsValue,
) -> SVGFEFuncBElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEFuncBElement (checked with instanceof)
pub extern "js" fn SVGFEFuncBElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEFuncBElement? =
  #| (v) => (v instanceof SVGFEFuncBElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEFuncBElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_func_b_element(
  self : JsValue,
) -> SVGFEFuncBElement? =
  #| (self) => (self instanceof SVGFEFuncBElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEFuncBElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_func_b_element(
  self : JsValue,
) -> SVGFEFuncBElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncBElement::to_svg_component_transfer_function_element(
  self : SVGFEFuncBElement,
) -> SVGComponentTransferFunctionElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncBElement::to_svg_element(
  self : SVGFEFuncBElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncBElement::to_element(
  self : SVGFEFuncBElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncBElement::to_node(self : SVGFEFuncBElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncBElement::to_event_target(
  self : SVGFEFuncBElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGFEFuncAElement interface
pub type SVGFEFuncAElement

///|
pub extern "js" fn SVGFEFuncAElement::to_js_value(
  self : SVGFEFuncAElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEFuncAElement (unchecked)
pub extern "js" fn SVGFEFuncAElement::from_js_value(
  v : JsValue,
) -> SVGFEFuncAElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEFuncAElement (checked with instanceof)
pub extern "js" fn SVGFEFuncAElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEFuncAElement? =
  #| (v) => (v instanceof SVGFEFuncAElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEFuncAElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_func_a_element(
  self : JsValue,
) -> SVGFEFuncAElement? =
  #| (self) => (self instanceof SVGFEFuncAElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEFuncAElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_func_a_element(
  self : JsValue,
) -> SVGFEFuncAElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncAElement::to_svg_component_transfer_function_element(
  self : SVGFEFuncAElement,
) -> SVGComponentTransferFunctionElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncAElement::to_svg_element(
  self : SVGFEFuncAElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncAElement::to_element(
  self : SVGFEFuncAElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncAElement::to_node(self : SVGFEFuncAElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEFuncAElement::to_event_target(
  self : SVGFEFuncAElement,
) -> EventTarget =
  #| (self) => self

///|
/// SVGFECompositeElement interface
pub type SVGFECompositeElement

///|
pub extern "js" fn SVGFECompositeElement::to_js_value(
  self : SVGFECompositeElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFECompositeElement (unchecked)
pub extern "js" fn SVGFECompositeElement::from_js_value(
  v : JsValue,
) -> SVGFECompositeElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFECompositeElement (checked with instanceof)
pub extern "js" fn SVGFECompositeElement::from_js_value_opt(
  v : JsValue,
) -> SVGFECompositeElement? =
  #| (v) => (v instanceof SVGFECompositeElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFECompositeElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_composite_element(
  self : JsValue,
) -> SVGFECompositeElement? =
  #| (self) => (self instanceof SVGFECompositeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFECompositeElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_composite_element(
  self : JsValue,
) -> SVGFECompositeElement =
  #| (self) => self

///|
pub extern "js" fn SVGFECompositeElement::to_svg_element(
  self : SVGFECompositeElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFECompositeElement::to_element(
  self : SVGFECompositeElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFECompositeElement::to_node(
  self : SVGFECompositeElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFECompositeElement::to_event_target(
  self : SVGFECompositeElement,
) -> EventTarget =
  #| (self) => self

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_UNKNOWN

///|
pub let svgfe_composite_element_svg_fecomposite_operator_unknown : Int = 0

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_OVER

///|
pub let svgfe_composite_element_svg_fecomposite_operator_over : Int = 1

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_IN

///|
pub let svgfe_composite_element_svg_fecomposite_operator_in : Int = 2

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_OUT

///|
pub let svgfe_composite_element_svg_fecomposite_operator_out : Int = 3

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_ATOP

///|
pub let svgfe_composite_element_svg_fecomposite_operator_atop : Int = 4

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_XOR

///|
pub let svgfe_composite_element_svg_fecomposite_operator_xor : Int = 5

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_ARITHMETIC

///|
pub let svgfe_composite_element_svg_fecomposite_operator_arithmetic : Int = 6

///|
pub extern "js" fn SVGFECompositeElement::get_in1(
  self : SVGFECompositeElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFECompositeElement::get_in2(
  self : SVGFECompositeElement,
) -> SVGAnimatedString =
  #| (self) => self.in2

///|
pub extern "js" fn SVGFECompositeElement::get_operator(
  self : SVGFECompositeElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.operator

///|
pub extern "js" fn SVGFECompositeElement::get_k1(
  self : SVGFECompositeElement,
) -> SVGAnimatedNumber =
  #| (self) => self.k1

///|
pub extern "js" fn SVGFECompositeElement::get_k2(
  self : SVGFECompositeElement,
) -> SVGAnimatedNumber =
  #| (self) => self.k2

///|
pub extern "js" fn SVGFECompositeElement::get_k3(
  self : SVGFECompositeElement,
) -> SVGAnimatedNumber =
  #| (self) => self.k3

///|
pub extern "js" fn SVGFECompositeElement::get_k4(
  self : SVGFECompositeElement,
) -> SVGAnimatedNumber =
  #| (self) => self.k4

///|
pub extern "js" fn SVGFECompositeElement::get_x(
  self : SVGFECompositeElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFECompositeElement::get_y(
  self : SVGFECompositeElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFECompositeElement::get_width(
  self : SVGFECompositeElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFECompositeElement::get_height(
  self : SVGFECompositeElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFECompositeElement::get_result(
  self : SVGFECompositeElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEConvolveMatrixElement interface
pub type SVGFEConvolveMatrixElement

///|
pub extern "js" fn SVGFEConvolveMatrixElement::to_js_value(
  self : SVGFEConvolveMatrixElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEConvolveMatrixElement (unchecked)
pub extern "js" fn SVGFEConvolveMatrixElement::from_js_value(
  v : JsValue,
) -> SVGFEConvolveMatrixElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEConvolveMatrixElement (checked with instanceof)
pub extern "js" fn SVGFEConvolveMatrixElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEConvolveMatrixElement? =
  #| (v) => (v instanceof SVGFEConvolveMatrixElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEConvolveMatrixElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_convolve_matrix_element(
  self : JsValue,
) -> SVGFEConvolveMatrixElement? =
  #| (self) => (self instanceof SVGFEConvolveMatrixElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEConvolveMatrixElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_convolve_matrix_element(
  self : JsValue,
) -> SVGFEConvolveMatrixElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEConvolveMatrixElement::to_svg_element(
  self : SVGFEConvolveMatrixElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEConvolveMatrixElement::to_element(
  self : SVGFEConvolveMatrixElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEConvolveMatrixElement::to_node(
  self : SVGFEConvolveMatrixElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEConvolveMatrixElement::to_event_target(
  self : SVGFEConvolveMatrixElement,
) -> EventTarget =
  #| (self) => self

// SVGFEConvolveMatrixElement.SVG_EDGEMODE_UNKNOWN

///|
pub let svgfe_convolve_matrix_element_svg_edgemode_unknown : Int = 0

// SVGFEConvolveMatrixElement.SVG_EDGEMODE_DUPLICATE

///|
pub let svgfe_convolve_matrix_element_svg_edgemode_duplicate : Int = 1

// SVGFEConvolveMatrixElement.SVG_EDGEMODE_WRAP

///|
pub let svgfe_convolve_matrix_element_svg_edgemode_wrap : Int = 2

// SVGFEConvolveMatrixElement.SVG_EDGEMODE_NONE

///|
pub let svgfe_convolve_matrix_element_svg_edgemode_none : Int = 3

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_in1(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_order_x(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedInteger =
  #| (self) => self.orderX

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_order_y(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedInteger =
  #| (self) => self.orderY

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_kernel_matrix(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedNumberList =
  #| (self) => self.kernelMatrix

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_divisor(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedNumber =
  #| (self) => self.divisor

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_bias(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedNumber =
  #| (self) => self.bias

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_target_x(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedInteger =
  #| (self) => self.targetX

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_target_y(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedInteger =
  #| (self) => self.targetY

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_edge_mode(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.edgeMode

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_kernel_unit_length_x(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthX

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_kernel_unit_length_y(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthY

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_preserve_alpha(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedBoolean =
  #| (self) => self.preserveAlpha

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_x(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_y(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_width(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_height(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEConvolveMatrixElement::get_result(
  self : SVGFEConvolveMatrixElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEDiffuseLightingElement interface
pub type SVGFEDiffuseLightingElement

///|
pub extern "js" fn SVGFEDiffuseLightingElement::to_js_value(
  self : SVGFEDiffuseLightingElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEDiffuseLightingElement (unchecked)
pub extern "js" fn SVGFEDiffuseLightingElement::from_js_value(
  v : JsValue,
) -> SVGFEDiffuseLightingElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEDiffuseLightingElement (checked with instanceof)
pub extern "js" fn SVGFEDiffuseLightingElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEDiffuseLightingElement? =
  #| (v) => (v instanceof SVGFEDiffuseLightingElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEDiffuseLightingElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_diffuse_lighting_element(
  self : JsValue,
) -> SVGFEDiffuseLightingElement? =
  #| (self) => (self instanceof SVGFEDiffuseLightingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEDiffuseLightingElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_diffuse_lighting_element(
  self : JsValue,
) -> SVGFEDiffuseLightingElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEDiffuseLightingElement::to_svg_element(
  self : SVGFEDiffuseLightingElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEDiffuseLightingElement::to_element(
  self : SVGFEDiffuseLightingElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEDiffuseLightingElement::to_node(
  self : SVGFEDiffuseLightingElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEDiffuseLightingElement::to_event_target(
  self : SVGFEDiffuseLightingElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFEDiffuseLightingElement::get_in1(
  self : SVGFEDiffuseLightingElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFEDiffuseLightingElement::get_surface_scale(
  self : SVGFEDiffuseLightingElement,
) -> SVGAnimatedNumber =
  #| (self) => self.surfaceScale

///|
pub extern "js" fn SVGFEDiffuseLightingElement::get_diffuse_constant(
  self : SVGFEDiffuseLightingElement,
) -> SVGAnimatedNumber =
  #| (self) => self.diffuseConstant

///|
pub extern "js" fn SVGFEDiffuseLightingElement::get_kernel_unit_length_x(
  self : SVGFEDiffuseLightingElement,
) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthX

///|
pub extern "js" fn SVGFEDiffuseLightingElement::get_kernel_unit_length_y(
  self : SVGFEDiffuseLightingElement,
) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthY

///|
pub extern "js" fn SVGFEDiffuseLightingElement::get_x(
  self : SVGFEDiffuseLightingElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEDiffuseLightingElement::get_y(
  self : SVGFEDiffuseLightingElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEDiffuseLightingElement::get_width(
  self : SVGFEDiffuseLightingElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEDiffuseLightingElement::get_height(
  self : SVGFEDiffuseLightingElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEDiffuseLightingElement::get_result(
  self : SVGFEDiffuseLightingElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEDistantLightElement interface
pub type SVGFEDistantLightElement

///|
pub extern "js" fn SVGFEDistantLightElement::to_js_value(
  self : SVGFEDistantLightElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEDistantLightElement (unchecked)
pub extern "js" fn SVGFEDistantLightElement::from_js_value(
  v : JsValue,
) -> SVGFEDistantLightElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEDistantLightElement (checked with instanceof)
pub extern "js" fn SVGFEDistantLightElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEDistantLightElement? =
  #| (v) => (v instanceof SVGFEDistantLightElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEDistantLightElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_distant_light_element(
  self : JsValue,
) -> SVGFEDistantLightElement? =
  #| (self) => (self instanceof SVGFEDistantLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEDistantLightElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_distant_light_element(
  self : JsValue,
) -> SVGFEDistantLightElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEDistantLightElement::to_svg_element(
  self : SVGFEDistantLightElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEDistantLightElement::to_element(
  self : SVGFEDistantLightElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEDistantLightElement::to_node(
  self : SVGFEDistantLightElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEDistantLightElement::to_event_target(
  self : SVGFEDistantLightElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFEDistantLightElement::get_azimuth(
  self : SVGFEDistantLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.azimuth

///|
pub extern "js" fn SVGFEDistantLightElement::get_elevation(
  self : SVGFEDistantLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.elevation

///|
/// SVGFEPointLightElement interface
pub type SVGFEPointLightElement

///|
pub extern "js" fn SVGFEPointLightElement::to_js_value(
  self : SVGFEPointLightElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEPointLightElement (unchecked)
pub extern "js" fn SVGFEPointLightElement::from_js_value(
  v : JsValue,
) -> SVGFEPointLightElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEPointLightElement (checked with instanceof)
pub extern "js" fn SVGFEPointLightElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEPointLightElement? =
  #| (v) => (v instanceof SVGFEPointLightElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEPointLightElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_point_light_element(
  self : JsValue,
) -> SVGFEPointLightElement? =
  #| (self) => (self instanceof SVGFEPointLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEPointLightElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_point_light_element(
  self : JsValue,
) -> SVGFEPointLightElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEPointLightElement::to_svg_element(
  self : SVGFEPointLightElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEPointLightElement::to_element(
  self : SVGFEPointLightElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEPointLightElement::to_node(
  self : SVGFEPointLightElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEPointLightElement::to_event_target(
  self : SVGFEPointLightElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFEPointLightElement::get_x(
  self : SVGFEPointLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEPointLightElement::get_y(
  self : SVGFEPointLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEPointLightElement::get_z(
  self : SVGFEPointLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.z

///|
/// SVGFESpotLightElement interface
pub type SVGFESpotLightElement

///|
pub extern "js" fn SVGFESpotLightElement::to_js_value(
  self : SVGFESpotLightElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFESpotLightElement (unchecked)
pub extern "js" fn SVGFESpotLightElement::from_js_value(
  v : JsValue,
) -> SVGFESpotLightElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFESpotLightElement (checked with instanceof)
pub extern "js" fn SVGFESpotLightElement::from_js_value_opt(
  v : JsValue,
) -> SVGFESpotLightElement? =
  #| (v) => (v instanceof SVGFESpotLightElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFESpotLightElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_spot_light_element(
  self : JsValue,
) -> SVGFESpotLightElement? =
  #| (self) => (self instanceof SVGFESpotLightElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFESpotLightElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_spot_light_element(
  self : JsValue,
) -> SVGFESpotLightElement =
  #| (self) => self

///|
pub extern "js" fn SVGFESpotLightElement::to_svg_element(
  self : SVGFESpotLightElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFESpotLightElement::to_element(
  self : SVGFESpotLightElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFESpotLightElement::to_node(
  self : SVGFESpotLightElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFESpotLightElement::to_event_target(
  self : SVGFESpotLightElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFESpotLightElement::get_x(
  self : SVGFESpotLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.x

///|
pub extern "js" fn SVGFESpotLightElement::get_y(
  self : SVGFESpotLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.y

///|
pub extern "js" fn SVGFESpotLightElement::get_z(
  self : SVGFESpotLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.z

///|
pub extern "js" fn SVGFESpotLightElement::get_points_at_x(
  self : SVGFESpotLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.pointsAtX

///|
pub extern "js" fn SVGFESpotLightElement::get_points_at_y(
  self : SVGFESpotLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.pointsAtY

///|
pub extern "js" fn SVGFESpotLightElement::get_points_at_z(
  self : SVGFESpotLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.pointsAtZ

///|
pub extern "js" fn SVGFESpotLightElement::get_specular_exponent(
  self : SVGFESpotLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.specularExponent

///|
pub extern "js" fn SVGFESpotLightElement::get_limiting_cone_angle(
  self : SVGFESpotLightElement,
) -> SVGAnimatedNumber =
  #| (self) => self.limitingConeAngle

///|
/// SVGFEDisplacementMapElement interface
pub type SVGFEDisplacementMapElement

///|
pub extern "js" fn SVGFEDisplacementMapElement::to_js_value(
  self : SVGFEDisplacementMapElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEDisplacementMapElement (unchecked)
pub extern "js" fn SVGFEDisplacementMapElement::from_js_value(
  v : JsValue,
) -> SVGFEDisplacementMapElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEDisplacementMapElement (checked with instanceof)
pub extern "js" fn SVGFEDisplacementMapElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEDisplacementMapElement? =
  #| (v) => (v instanceof SVGFEDisplacementMapElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEDisplacementMapElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_displacement_map_element(
  self : JsValue,
) -> SVGFEDisplacementMapElement? =
  #| (self) => (self instanceof SVGFEDisplacementMapElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEDisplacementMapElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_displacement_map_element(
  self : JsValue,
) -> SVGFEDisplacementMapElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEDisplacementMapElement::to_svg_element(
  self : SVGFEDisplacementMapElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEDisplacementMapElement::to_element(
  self : SVGFEDisplacementMapElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEDisplacementMapElement::to_node(
  self : SVGFEDisplacementMapElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEDisplacementMapElement::to_event_target(
  self : SVGFEDisplacementMapElement,
) -> EventTarget =
  #| (self) => self

// SVGFEDisplacementMapElement.SVG_CHANNEL_UNKNOWN

///|
pub let svgfe_displacement_map_element_svg_channel_unknown : Int = 0

// SVGFEDisplacementMapElement.SVG_CHANNEL_R

///|
pub let svgfe_displacement_map_element_svg_channel_r : Int = 1

// SVGFEDisplacementMapElement.SVG_CHANNEL_G

///|
pub let svgfe_displacement_map_element_svg_channel_g : Int = 2

// SVGFEDisplacementMapElement.SVG_CHANNEL_B

///|
pub let svgfe_displacement_map_element_svg_channel_b : Int = 3

// SVGFEDisplacementMapElement.SVG_CHANNEL_A

///|
pub let svgfe_displacement_map_element_svg_channel_a : Int = 4

///|
pub extern "js" fn SVGFEDisplacementMapElement::get_in1(
  self : SVGFEDisplacementMapElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFEDisplacementMapElement::get_in2(
  self : SVGFEDisplacementMapElement,
) -> SVGAnimatedString =
  #| (self) => self.in2

///|
pub extern "js" fn SVGFEDisplacementMapElement::get_scale(
  self : SVGFEDisplacementMapElement,
) -> SVGAnimatedNumber =
  #| (self) => self.scale

///|
pub extern "js" fn SVGFEDisplacementMapElement::get_x_channel_selector(
  self : SVGFEDisplacementMapElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.xChannelSelector

///|
pub extern "js" fn SVGFEDisplacementMapElement::get_y_channel_selector(
  self : SVGFEDisplacementMapElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.yChannelSelector

///|
pub extern "js" fn SVGFEDisplacementMapElement::get_x(
  self : SVGFEDisplacementMapElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEDisplacementMapElement::get_y(
  self : SVGFEDisplacementMapElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEDisplacementMapElement::get_width(
  self : SVGFEDisplacementMapElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEDisplacementMapElement::get_height(
  self : SVGFEDisplacementMapElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEDisplacementMapElement::get_result(
  self : SVGFEDisplacementMapElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEDropShadowElement interface
pub type SVGFEDropShadowElement

///|
pub extern "js" fn SVGFEDropShadowElement::to_js_value(
  self : SVGFEDropShadowElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEDropShadowElement (unchecked)
pub extern "js" fn SVGFEDropShadowElement::from_js_value(
  v : JsValue,
) -> SVGFEDropShadowElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEDropShadowElement (checked with instanceof)
pub extern "js" fn SVGFEDropShadowElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEDropShadowElement? =
  #| (v) => (v instanceof SVGFEDropShadowElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEDropShadowElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_drop_shadow_element(
  self : JsValue,
) -> SVGFEDropShadowElement? =
  #| (self) => (self instanceof SVGFEDropShadowElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEDropShadowElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_drop_shadow_element(
  self : JsValue,
) -> SVGFEDropShadowElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEDropShadowElement::to_svg_element(
  self : SVGFEDropShadowElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEDropShadowElement::to_element(
  self : SVGFEDropShadowElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEDropShadowElement::to_node(
  self : SVGFEDropShadowElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEDropShadowElement::to_event_target(
  self : SVGFEDropShadowElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFEDropShadowElement::get_in1(
  self : SVGFEDropShadowElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFEDropShadowElement::get_dx(
  self : SVGFEDropShadowElement,
) -> SVGAnimatedNumber =
  #| (self) => self.dx

///|
pub extern "js" fn SVGFEDropShadowElement::get_dy(
  self : SVGFEDropShadowElement,
) -> SVGAnimatedNumber =
  #| (self) => self.dy

///|
pub extern "js" fn SVGFEDropShadowElement::get_std_deviation_x(
  self : SVGFEDropShadowElement,
) -> SVGAnimatedNumber =
  #| (self) => self.stdDeviationX

///|
pub extern "js" fn SVGFEDropShadowElement::get_std_deviation_y(
  self : SVGFEDropShadowElement,
) -> SVGAnimatedNumber =
  #| (self) => self.stdDeviationY

///|
pub extern "js" fn SVGFEDropShadowElement::set_std_deviation(
  self : SVGFEDropShadowElement,
  std_deviation_x : Double,
  std_deviation_y : Double,
) -> Unit =
  #| (self, std_deviation_x, std_deviation_y) => self.setStdDeviation(std_deviation_x, std_deviation_y)

///|
pub extern "js" fn SVGFEDropShadowElement::get_x(
  self : SVGFEDropShadowElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEDropShadowElement::get_y(
  self : SVGFEDropShadowElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEDropShadowElement::get_width(
  self : SVGFEDropShadowElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEDropShadowElement::get_height(
  self : SVGFEDropShadowElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEDropShadowElement::get_result(
  self : SVGFEDropShadowElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEFloodElement interface
pub type SVGFEFloodElement

///|
pub extern "js" fn SVGFEFloodElement::to_js_value(
  self : SVGFEFloodElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEFloodElement (unchecked)
pub extern "js" fn SVGFEFloodElement::from_js_value(
  v : JsValue,
) -> SVGFEFloodElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEFloodElement (checked with instanceof)
pub extern "js" fn SVGFEFloodElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEFloodElement? =
  #| (v) => (v instanceof SVGFEFloodElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEFloodElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_flood_element(
  self : JsValue,
) -> SVGFEFloodElement? =
  #| (self) => (self instanceof SVGFEFloodElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEFloodElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_flood_element(
  self : JsValue,
) -> SVGFEFloodElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFloodElement::to_svg_element(
  self : SVGFEFloodElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEFloodElement::to_element(
  self : SVGFEFloodElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEFloodElement::to_node(self : SVGFEFloodElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEFloodElement::to_event_target(
  self : SVGFEFloodElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFEFloodElement::get_x(
  self : SVGFEFloodElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEFloodElement::get_y(
  self : SVGFEFloodElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEFloodElement::get_width(
  self : SVGFEFloodElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEFloodElement::get_height(
  self : SVGFEFloodElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEFloodElement::get_result(
  self : SVGFEFloodElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEGaussianBlurElement interface
pub type SVGFEGaussianBlurElement

///|
pub extern "js" fn SVGFEGaussianBlurElement::to_js_value(
  self : SVGFEGaussianBlurElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEGaussianBlurElement (unchecked)
pub extern "js" fn SVGFEGaussianBlurElement::from_js_value(
  v : JsValue,
) -> SVGFEGaussianBlurElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEGaussianBlurElement (checked with instanceof)
pub extern "js" fn SVGFEGaussianBlurElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEGaussianBlurElement? =
  #| (v) => (v instanceof SVGFEGaussianBlurElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEGaussianBlurElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_gaussian_blur_element(
  self : JsValue,
) -> SVGFEGaussianBlurElement? =
  #| (self) => (self instanceof SVGFEGaussianBlurElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEGaussianBlurElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_gaussian_blur_element(
  self : JsValue,
) -> SVGFEGaussianBlurElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEGaussianBlurElement::to_svg_element(
  self : SVGFEGaussianBlurElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEGaussianBlurElement::to_element(
  self : SVGFEGaussianBlurElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEGaussianBlurElement::to_node(
  self : SVGFEGaussianBlurElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEGaussianBlurElement::to_event_target(
  self : SVGFEGaussianBlurElement,
) -> EventTarget =
  #| (self) => self

// SVGFEGaussianBlurElement.SVG_EDGEMODE_UNKNOWN

///|
pub let svgfe_gaussian_blur_element_svg_edgemode_unknown : Int = 0

// SVGFEGaussianBlurElement.SVG_EDGEMODE_DUPLICATE

///|
pub let svgfe_gaussian_blur_element_svg_edgemode_duplicate : Int = 1

// SVGFEGaussianBlurElement.SVG_EDGEMODE_WRAP

///|
pub let svgfe_gaussian_blur_element_svg_edgemode_wrap : Int = 2

// SVGFEGaussianBlurElement.SVG_EDGEMODE_NONE

///|
pub let svgfe_gaussian_blur_element_svg_edgemode_none : Int = 3

///|
pub extern "js" fn SVGFEGaussianBlurElement::get_in1(
  self : SVGFEGaussianBlurElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFEGaussianBlurElement::get_std_deviation_x(
  self : SVGFEGaussianBlurElement,
) -> SVGAnimatedNumber =
  #| (self) => self.stdDeviationX

///|
pub extern "js" fn SVGFEGaussianBlurElement::get_std_deviation_y(
  self : SVGFEGaussianBlurElement,
) -> SVGAnimatedNumber =
  #| (self) => self.stdDeviationY

///|
pub extern "js" fn SVGFEGaussianBlurElement::get_edge_mode(
  self : SVGFEGaussianBlurElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.edgeMode

///|
pub extern "js" fn SVGFEGaussianBlurElement::set_std_deviation(
  self : SVGFEGaussianBlurElement,
  std_deviation_x : Double,
  std_deviation_y : Double,
) -> Unit =
  #| (self, std_deviation_x, std_deviation_y) => self.setStdDeviation(std_deviation_x, std_deviation_y)

///|
pub extern "js" fn SVGFEGaussianBlurElement::get_x(
  self : SVGFEGaussianBlurElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEGaussianBlurElement::get_y(
  self : SVGFEGaussianBlurElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEGaussianBlurElement::get_width(
  self : SVGFEGaussianBlurElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEGaussianBlurElement::get_height(
  self : SVGFEGaussianBlurElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEGaussianBlurElement::get_result(
  self : SVGFEGaussianBlurElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEImageElement interface
pub type SVGFEImageElement

///|
pub extern "js" fn SVGFEImageElement::to_js_value(
  self : SVGFEImageElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEImageElement (unchecked)
pub extern "js" fn SVGFEImageElement::from_js_value(
  v : JsValue,
) -> SVGFEImageElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEImageElement (checked with instanceof)
pub extern "js" fn SVGFEImageElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEImageElement? =
  #| (v) => (v instanceof SVGFEImageElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEImageElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_image_element(
  self : JsValue,
) -> SVGFEImageElement? =
  #| (self) => (self instanceof SVGFEImageElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEImageElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_image_element(
  self : JsValue,
) -> SVGFEImageElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEImageElement::to_svg_element(
  self : SVGFEImageElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEImageElement::to_element(
  self : SVGFEImageElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEImageElement::to_node(self : SVGFEImageElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEImageElement::to_event_target(
  self : SVGFEImageElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFEImageElement::get_preserve_aspect_ratio(
  self : SVGFEImageElement,
) -> SVGAnimatedPreserveAspectRatio =
  #| (self) => self.preserveAspectRatio

///|
pub extern "js" fn SVGFEImageElement::get_cross_origin(
  self : SVGFEImageElement,
) -> SVGAnimatedString =
  #| (self) => self.crossOrigin

///|
pub extern "js" fn SVGFEImageElement::get_x(
  self : SVGFEImageElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEImageElement::get_y(
  self : SVGFEImageElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEImageElement::get_width(
  self : SVGFEImageElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEImageElement::get_height(
  self : SVGFEImageElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEImageElement::get_result(
  self : SVGFEImageElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
pub extern "js" fn SVGFEImageElement::get_href(
  self : SVGFEImageElement,
) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGFEMergeElement interface
pub type SVGFEMergeElement

///|
pub extern "js" fn SVGFEMergeElement::to_js_value(
  self : SVGFEMergeElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEMergeElement (unchecked)
pub extern "js" fn SVGFEMergeElement::from_js_value(
  v : JsValue,
) -> SVGFEMergeElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEMergeElement (checked with instanceof)
pub extern "js" fn SVGFEMergeElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEMergeElement? =
  #| (v) => (v instanceof SVGFEMergeElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEMergeElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_merge_element(
  self : JsValue,
) -> SVGFEMergeElement? =
  #| (self) => (self instanceof SVGFEMergeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEMergeElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_merge_element(
  self : JsValue,
) -> SVGFEMergeElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEMergeElement::to_svg_element(
  self : SVGFEMergeElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEMergeElement::to_element(
  self : SVGFEMergeElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEMergeElement::to_node(self : SVGFEMergeElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEMergeElement::to_event_target(
  self : SVGFEMergeElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFEMergeElement::get_x(
  self : SVGFEMergeElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEMergeElement::get_y(
  self : SVGFEMergeElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEMergeElement::get_width(
  self : SVGFEMergeElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEMergeElement::get_height(
  self : SVGFEMergeElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEMergeElement::get_result(
  self : SVGFEMergeElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEMergeNodeElement interface
pub type SVGFEMergeNodeElement

///|
pub extern "js" fn SVGFEMergeNodeElement::to_js_value(
  self : SVGFEMergeNodeElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEMergeNodeElement (unchecked)
pub extern "js" fn SVGFEMergeNodeElement::from_js_value(
  v : JsValue,
) -> SVGFEMergeNodeElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEMergeNodeElement (checked with instanceof)
pub extern "js" fn SVGFEMergeNodeElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEMergeNodeElement? =
  #| (v) => (v instanceof SVGFEMergeNodeElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEMergeNodeElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_merge_node_element(
  self : JsValue,
) -> SVGFEMergeNodeElement? =
  #| (self) => (self instanceof SVGFEMergeNodeElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEMergeNodeElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_merge_node_element(
  self : JsValue,
) -> SVGFEMergeNodeElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEMergeNodeElement::to_svg_element(
  self : SVGFEMergeNodeElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEMergeNodeElement::to_element(
  self : SVGFEMergeNodeElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEMergeNodeElement::to_node(
  self : SVGFEMergeNodeElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEMergeNodeElement::to_event_target(
  self : SVGFEMergeNodeElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFEMergeNodeElement::get_in1(
  self : SVGFEMergeNodeElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
/// SVGFEMorphologyElement interface
pub type SVGFEMorphologyElement

///|
pub extern "js" fn SVGFEMorphologyElement::to_js_value(
  self : SVGFEMorphologyElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEMorphologyElement (unchecked)
pub extern "js" fn SVGFEMorphologyElement::from_js_value(
  v : JsValue,
) -> SVGFEMorphologyElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEMorphologyElement (checked with instanceof)
pub extern "js" fn SVGFEMorphologyElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEMorphologyElement? =
  #| (v) => (v instanceof SVGFEMorphologyElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEMorphologyElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_morphology_element(
  self : JsValue,
) -> SVGFEMorphologyElement? =
  #| (self) => (self instanceof SVGFEMorphologyElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEMorphologyElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_morphology_element(
  self : JsValue,
) -> SVGFEMorphologyElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEMorphologyElement::to_svg_element(
  self : SVGFEMorphologyElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEMorphologyElement::to_element(
  self : SVGFEMorphologyElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEMorphologyElement::to_node(
  self : SVGFEMorphologyElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEMorphologyElement::to_event_target(
  self : SVGFEMorphologyElement,
) -> EventTarget =
  #| (self) => self

// SVGFEMorphologyElement.SVG_MORPHOLOGY_OPERATOR_UNKNOWN

///|
pub let svgfe_morphology_element_svg_morphology_operator_unknown : Int = 0

// SVGFEMorphologyElement.SVG_MORPHOLOGY_OPERATOR_ERODE

///|
pub let svgfe_morphology_element_svg_morphology_operator_erode : Int = 1

// SVGFEMorphologyElement.SVG_MORPHOLOGY_OPERATOR_DILATE

///|
pub let svgfe_morphology_element_svg_morphology_operator_dilate : Int = 2

///|
pub extern "js" fn SVGFEMorphologyElement::get_in1(
  self : SVGFEMorphologyElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFEMorphologyElement::get_operator(
  self : SVGFEMorphologyElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.operator

///|
pub extern "js" fn SVGFEMorphologyElement::get_radius_x(
  self : SVGFEMorphologyElement,
) -> SVGAnimatedNumber =
  #| (self) => self.radiusX

///|
pub extern "js" fn SVGFEMorphologyElement::get_radius_y(
  self : SVGFEMorphologyElement,
) -> SVGAnimatedNumber =
  #| (self) => self.radiusY

///|
pub extern "js" fn SVGFEMorphologyElement::get_x(
  self : SVGFEMorphologyElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEMorphologyElement::get_y(
  self : SVGFEMorphologyElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEMorphologyElement::get_width(
  self : SVGFEMorphologyElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEMorphologyElement::get_height(
  self : SVGFEMorphologyElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEMorphologyElement::get_result(
  self : SVGFEMorphologyElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEOffsetElement interface
pub type SVGFEOffsetElement

///|
pub extern "js" fn SVGFEOffsetElement::to_js_value(
  self : SVGFEOffsetElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFEOffsetElement (unchecked)
pub extern "js" fn SVGFEOffsetElement::from_js_value(
  v : JsValue,
) -> SVGFEOffsetElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFEOffsetElement (checked with instanceof)
pub extern "js" fn SVGFEOffsetElement::from_js_value_opt(
  v : JsValue,
) -> SVGFEOffsetElement? =
  #| (v) => (v instanceof SVGFEOffsetElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFEOffsetElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_offset_element(
  self : JsValue,
) -> SVGFEOffsetElement? =
  #| (self) => (self instanceof SVGFEOffsetElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFEOffsetElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_offset_element(
  self : JsValue,
) -> SVGFEOffsetElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEOffsetElement::to_svg_element(
  self : SVGFEOffsetElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFEOffsetElement::to_element(
  self : SVGFEOffsetElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFEOffsetElement::to_node(
  self : SVGFEOffsetElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFEOffsetElement::to_event_target(
  self : SVGFEOffsetElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFEOffsetElement::get_in1(
  self : SVGFEOffsetElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFEOffsetElement::get_dx(
  self : SVGFEOffsetElement,
) -> SVGAnimatedNumber =
  #| (self) => self.dx

///|
pub extern "js" fn SVGFEOffsetElement::get_dy(
  self : SVGFEOffsetElement,
) -> SVGAnimatedNumber =
  #| (self) => self.dy

///|
pub extern "js" fn SVGFEOffsetElement::get_x(
  self : SVGFEOffsetElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFEOffsetElement::get_y(
  self : SVGFEOffsetElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFEOffsetElement::get_width(
  self : SVGFEOffsetElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFEOffsetElement::get_height(
  self : SVGFEOffsetElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFEOffsetElement::get_result(
  self : SVGFEOffsetElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFESpecularLightingElement interface
pub type SVGFESpecularLightingElement

///|
pub extern "js" fn SVGFESpecularLightingElement::to_js_value(
  self : SVGFESpecularLightingElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFESpecularLightingElement (unchecked)
pub extern "js" fn SVGFESpecularLightingElement::from_js_value(
  v : JsValue,
) -> SVGFESpecularLightingElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFESpecularLightingElement (checked with instanceof)
pub extern "js" fn SVGFESpecularLightingElement::from_js_value_opt(
  v : JsValue,
) -> SVGFESpecularLightingElement? =
  #| (v) => (v instanceof SVGFESpecularLightingElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFESpecularLightingElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_specular_lighting_element(
  self : JsValue,
) -> SVGFESpecularLightingElement? =
  #| (self) => (self instanceof SVGFESpecularLightingElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFESpecularLightingElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_specular_lighting_element(
  self : JsValue,
) -> SVGFESpecularLightingElement =
  #| (self) => self

///|
pub extern "js" fn SVGFESpecularLightingElement::to_svg_element(
  self : SVGFESpecularLightingElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFESpecularLightingElement::to_element(
  self : SVGFESpecularLightingElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFESpecularLightingElement::to_node(
  self : SVGFESpecularLightingElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFESpecularLightingElement::to_event_target(
  self : SVGFESpecularLightingElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFESpecularLightingElement::get_in1(
  self : SVGFESpecularLightingElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFESpecularLightingElement::get_surface_scale(
  self : SVGFESpecularLightingElement,
) -> SVGAnimatedNumber =
  #| (self) => self.surfaceScale

///|
pub extern "js" fn SVGFESpecularLightingElement::get_specular_constant(
  self : SVGFESpecularLightingElement,
) -> SVGAnimatedNumber =
  #| (self) => self.specularConstant

///|
pub extern "js" fn SVGFESpecularLightingElement::get_specular_exponent(
  self : SVGFESpecularLightingElement,
) -> SVGAnimatedNumber =
  #| (self) => self.specularExponent

///|
pub extern "js" fn SVGFESpecularLightingElement::get_kernel_unit_length_x(
  self : SVGFESpecularLightingElement,
) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthX

///|
pub extern "js" fn SVGFESpecularLightingElement::get_kernel_unit_length_y(
  self : SVGFESpecularLightingElement,
) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthY

///|
pub extern "js" fn SVGFESpecularLightingElement::get_x(
  self : SVGFESpecularLightingElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFESpecularLightingElement::get_y(
  self : SVGFESpecularLightingElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFESpecularLightingElement::get_width(
  self : SVGFESpecularLightingElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFESpecularLightingElement::get_height(
  self : SVGFESpecularLightingElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFESpecularLightingElement::get_result(
  self : SVGFESpecularLightingElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFETileElement interface
pub type SVGFETileElement

///|
pub extern "js" fn SVGFETileElement::to_js_value(
  self : SVGFETileElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFETileElement (unchecked)
pub extern "js" fn SVGFETileElement::from_js_value(
  v : JsValue,
) -> SVGFETileElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFETileElement (checked with instanceof)
pub extern "js" fn SVGFETileElement::from_js_value_opt(
  v : JsValue,
) -> SVGFETileElement? =
  #| (v) => (v instanceof SVGFETileElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFETileElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_tile_element(
  self : JsValue,
) -> SVGFETileElement? =
  #| (self) => (self instanceof SVGFETileElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFETileElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_tile_element(
  self : JsValue,
) -> SVGFETileElement =
  #| (self) => self

///|
pub extern "js" fn SVGFETileElement::to_svg_element(
  self : SVGFETileElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFETileElement::to_element(
  self : SVGFETileElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFETileElement::to_node(self : SVGFETileElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFETileElement::to_event_target(
  self : SVGFETileElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SVGFETileElement::get_in1(
  self : SVGFETileElement,
) -> SVGAnimatedString =
  #| (self) => self.in1

///|
pub extern "js" fn SVGFETileElement::get_x(
  self : SVGFETileElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFETileElement::get_y(
  self : SVGFETileElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFETileElement::get_width(
  self : SVGFETileElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFETileElement::get_height(
  self : SVGFETileElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFETileElement::get_result(
  self : SVGFETileElement,
) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFETurbulenceElement interface
pub type SVGFETurbulenceElement

///|
pub extern "js" fn SVGFETurbulenceElement::to_js_value(
  self : SVGFETurbulenceElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SVGFETurbulenceElement (unchecked)
pub extern "js" fn SVGFETurbulenceElement::from_js_value(
  v : JsValue,
) -> SVGFETurbulenceElement =
  #| (v) => v

///|
/// Safely cast JsValue to SVGFETurbulenceElement (checked with instanceof)
pub extern "js" fn SVGFETurbulenceElement::from_js_value_opt(
  v : JsValue,
) -> SVGFETurbulenceElement? =
  #| (v) => (v instanceof SVGFETurbulenceElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SVGFETurbulenceElement (checked with instanceof)
pub extern "js" fn JsValue::as_svgfe_turbulence_element(
  self : JsValue,
) -> SVGFETurbulenceElement? =
  #| (self) => (self instanceof SVGFETurbulenceElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SVGFETurbulenceElement (unchecked)
pub extern "js" fn JsValue::to_svgfe_turbulence_element(
  self : JsValue,
) -> SVGFETurbulenceElement =
  #| (self) => self

///|
pub extern "js" fn SVGFETurbulenceElement::to_svg_element(
  self : SVGFETurbulenceElement,
) -> SVGElement =
  #| (self) => self

///|
pub extern "js" fn SVGFETurbulenceElement::to_element(
  self : SVGFETurbulenceElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn SVGFETurbulenceElement::to_node(
  self : SVGFETurbulenceElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn SVGFETurbulenceElement::to_event_target(
  self : SVGFETurbulenceElement,
) -> EventTarget =
  #| (self) => self

// SVGFETurbulenceElement.SVG_TURBULENCE_TYPE_UNKNOWN

///|
pub let svgfe_turbulence_element_svg_turbulence_type_unknown : Int = 0

// SVGFETurbulenceElement.SVG_TURBULENCE_TYPE_FRACTALNOISE

///|
pub let svgfe_turbulence_element_svg_turbulence_type_fractalnoise : Int = 1

// SVGFETurbulenceElement.SVG_TURBULENCE_TYPE_TURBULENCE

///|
pub let svgfe_turbulence_element_svg_turbulence_type_turbulence : Int = 2

// SVGFETurbulenceElement.SVG_STITCHTYPE_UNKNOWN

///|
pub let svgfe_turbulence_element_svg_stitchtype_unknown : Int = 0

// SVGFETurbulenceElement.SVG_STITCHTYPE_STITCH

///|
pub let svgfe_turbulence_element_svg_stitchtype_stitch : Int = 1

// SVGFETurbulenceElement.SVG_STITCHTYPE_NOSTITCH

///|
pub let svgfe_turbulence_element_svg_stitchtype_nostitch : Int = 2

///|
pub extern "js" fn SVGFETurbulenceElement::get_base_frequency_x(
  self : SVGFETurbulenceElement,
) -> SVGAnimatedNumber =
  #| (self) => self.baseFrequencyX

///|
pub extern "js" fn SVGFETurbulenceElement::get_base_frequency_y(
  self : SVGFETurbulenceElement,
) -> SVGAnimatedNumber =
  #| (self) => self.baseFrequencyY

///|
pub extern "js" fn SVGFETurbulenceElement::get_num_octaves(
  self : SVGFETurbulenceElement,
) -> SVGAnimatedInteger =
  #| (self) => self.numOctaves

///|
pub extern "js" fn SVGFETurbulenceElement::get_seed(
  self : SVGFETurbulenceElement,
) -> SVGAnimatedNumber =
  #| (self) => self.seed

///|
pub extern "js" fn SVGFETurbulenceElement::get_stitch_tiles(
  self : SVGFETurbulenceElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.stitchTiles

///|
pub extern "js" fn SVGFETurbulenceElement::get_type(
  self : SVGFETurbulenceElement,
) -> SVGAnimatedEnumeration =
  #| (self) => self.type

///|
pub extern "js" fn SVGFETurbulenceElement::get_x(
  self : SVGFETurbulenceElement,
) -> SVGAnimatedLength =
  #| (self) => self.x

///|
pub extern "js" fn SVGFETurbulenceElement::get_y(
  self : SVGFETurbulenceElement,
) -> SVGAnimatedLength =
  #| (self) => self.y

///|
pub extern "js" fn SVGFETurbulenceElement::get_width(
  self : SVGFETurbulenceElement,
) -> SVGAnimatedLength =
  #| (self) => self.width

///|
pub extern "js" fn SVGFETurbulenceElement::get_height(
  self : SVGFETurbulenceElement,
) -> SVGAnimatedLength =
  #| (self) => self.height

///|
pub extern "js" fn SVGFETurbulenceElement::get_result(
  self : SVGFETurbulenceElement,
) -> SVGAnimatedString =
  #| (self) => self.result
