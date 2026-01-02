// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/filter-effects

///|
/// SVGFilterElement interface
pub type SVGFilterElement

pub extern "js" fn SVGFilterElement::to_js_value(self : SVGFilterElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFilterElement::get_filter_units(self : SVGFilterElement) -> SVGAnimatedEnumeration =
  #| (self) => self.filterUnits

pub extern "js" fn SVGFilterElement::get_primitive_units(self : SVGFilterElement) -> SVGAnimatedEnumeration =
  #| (self) => self.primitiveUnits

pub extern "js" fn SVGFilterElement::get_x(self : SVGFilterElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFilterElement::get_y(self : SVGFilterElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFilterElement::get_width(self : SVGFilterElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFilterElement::get_height(self : SVGFilterElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFilterElement::get_href(self : SVGFilterElement) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGFEBlendElement interface
pub type SVGFEBlendElement

pub extern "js" fn SVGFEBlendElement::to_js_value(self : SVGFEBlendElement) -> JsValue =
  #| (self) => self

// SVGFEBlendElement.SVG_FEBLEND_MODE_UNKNOWN
pub let s_v_g_f_e_blend_element_svg_feblend_mode_unknown : Int = 0

// SVGFEBlendElement.SVG_FEBLEND_MODE_NORMAL
pub let s_v_g_f_e_blend_element_svg_feblend_mode_normal : Int = 1

// SVGFEBlendElement.SVG_FEBLEND_MODE_MULTIPLY
pub let s_v_g_f_e_blend_element_svg_feblend_mode_multiply : Int = 2

// SVGFEBlendElement.SVG_FEBLEND_MODE_SCREEN
pub let s_v_g_f_e_blend_element_svg_feblend_mode_screen : Int = 3

// SVGFEBlendElement.SVG_FEBLEND_MODE_DARKEN
pub let s_v_g_f_e_blend_element_svg_feblend_mode_darken : Int = 4

// SVGFEBlendElement.SVG_FEBLEND_MODE_LIGHTEN
pub let s_v_g_f_e_blend_element_svg_feblend_mode_lighten : Int = 5

// SVGFEBlendElement.SVG_FEBLEND_MODE_OVERLAY
pub let s_v_g_f_e_blend_element_svg_feblend_mode_overlay : Int = 6

// SVGFEBlendElement.SVG_FEBLEND_MODE_COLOR_DODGE
pub let s_v_g_f_e_blend_element_svg_feblend_mode_color_dodge : Int = 7

// SVGFEBlendElement.SVG_FEBLEND_MODE_COLOR_BURN
pub let s_v_g_f_e_blend_element_svg_feblend_mode_color_burn : Int = 8

// SVGFEBlendElement.SVG_FEBLEND_MODE_HARD_LIGHT
pub let s_v_g_f_e_blend_element_svg_feblend_mode_hard_light : Int = 9

// SVGFEBlendElement.SVG_FEBLEND_MODE_SOFT_LIGHT
pub let s_v_g_f_e_blend_element_svg_feblend_mode_soft_light : Int = 10

// SVGFEBlendElement.SVG_FEBLEND_MODE_DIFFERENCE
pub let s_v_g_f_e_blend_element_svg_feblend_mode_difference : Int = 11

// SVGFEBlendElement.SVG_FEBLEND_MODE_EXCLUSION
pub let s_v_g_f_e_blend_element_svg_feblend_mode_exclusion : Int = 12

// SVGFEBlendElement.SVG_FEBLEND_MODE_HUE
pub let s_v_g_f_e_blend_element_svg_feblend_mode_hue : Int = 13

// SVGFEBlendElement.SVG_FEBLEND_MODE_SATURATION
pub let s_v_g_f_e_blend_element_svg_feblend_mode_saturation : Int = 14

// SVGFEBlendElement.SVG_FEBLEND_MODE_COLOR
pub let s_v_g_f_e_blend_element_svg_feblend_mode_color : Int = 15

// SVGFEBlendElement.SVG_FEBLEND_MODE_LUMINOSITY
pub let s_v_g_f_e_blend_element_svg_feblend_mode_luminosity : Int = 16

pub extern "js" fn SVGFEBlendElement::get_in1(self : SVGFEBlendElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFEBlendElement::get_in2(self : SVGFEBlendElement) -> SVGAnimatedString =
  #| (self) => self.in2

pub extern "js" fn SVGFEBlendElement::get_mode(self : SVGFEBlendElement) -> SVGAnimatedEnumeration =
  #| (self) => self.mode

pub extern "js" fn SVGFEBlendElement::get_x(self : SVGFEBlendElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEBlendElement::get_y(self : SVGFEBlendElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEBlendElement::get_width(self : SVGFEBlendElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEBlendElement::get_height(self : SVGFEBlendElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEBlendElement::get_result(self : SVGFEBlendElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEColorMatrixElement interface
pub type SVGFEColorMatrixElement

pub extern "js" fn SVGFEColorMatrixElement::to_js_value(self : SVGFEColorMatrixElement) -> JsValue =
  #| (self) => self

// SVGFEColorMatrixElement.SVG_FECOLORMATRIX_TYPE_UNKNOWN
pub let s_v_g_f_e_color_matrix_element_svg_fecolormatrix_type_unknown : Int = 0

// SVGFEColorMatrixElement.SVG_FECOLORMATRIX_TYPE_MATRIX
pub let s_v_g_f_e_color_matrix_element_svg_fecolormatrix_type_matrix : Int = 1

// SVGFEColorMatrixElement.SVG_FECOLORMATRIX_TYPE_SATURATE
pub let s_v_g_f_e_color_matrix_element_svg_fecolormatrix_type_saturate : Int = 2

// SVGFEColorMatrixElement.SVG_FECOLORMATRIX_TYPE_HUEROTATE
pub let s_v_g_f_e_color_matrix_element_svg_fecolormatrix_type_huerotate : Int = 3

// SVGFEColorMatrixElement.SVG_FECOLORMATRIX_TYPE_LUMINANCETOALPHA
pub let s_v_g_f_e_color_matrix_element_svg_fecolormatrix_type_luminancetoalpha : Int = 4

pub extern "js" fn SVGFEColorMatrixElement::get_in1(self : SVGFEColorMatrixElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFEColorMatrixElement::get_type(self : SVGFEColorMatrixElement) -> SVGAnimatedEnumeration =
  #| (self) => self.type

pub extern "js" fn SVGFEColorMatrixElement::get_values(self : SVGFEColorMatrixElement) -> SVGAnimatedNumberList =
  #| (self) => self.values

pub extern "js" fn SVGFEColorMatrixElement::get_x(self : SVGFEColorMatrixElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEColorMatrixElement::get_y(self : SVGFEColorMatrixElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEColorMatrixElement::get_width(self : SVGFEColorMatrixElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEColorMatrixElement::get_height(self : SVGFEColorMatrixElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEColorMatrixElement::get_result(self : SVGFEColorMatrixElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEComponentTransferElement interface
pub type SVGFEComponentTransferElement

pub extern "js" fn SVGFEComponentTransferElement::to_js_value(self : SVGFEComponentTransferElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFEComponentTransferElement::get_in1(self : SVGFEComponentTransferElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFEComponentTransferElement::get_x(self : SVGFEComponentTransferElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEComponentTransferElement::get_y(self : SVGFEComponentTransferElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEComponentTransferElement::get_width(self : SVGFEComponentTransferElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEComponentTransferElement::get_height(self : SVGFEComponentTransferElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEComponentTransferElement::get_result(self : SVGFEComponentTransferElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGComponentTransferFunctionElement interface
pub type SVGComponentTransferFunctionElement

pub extern "js" fn SVGComponentTransferFunctionElement::to_js_value(self : SVGComponentTransferFunctionElement) -> JsValue =
  #| (self) => self

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN
pub let s_v_g_component_transfer_function_element_svg_fecomponenttransfer_type_unknown : Int = 0

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY
pub let s_v_g_component_transfer_function_element_svg_fecomponenttransfer_type_identity : Int = 1

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_TABLE
pub let s_v_g_component_transfer_function_element_svg_fecomponenttransfer_type_table : Int = 2

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE
pub let s_v_g_component_transfer_function_element_svg_fecomponenttransfer_type_discrete : Int = 3

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_LINEAR
pub let s_v_g_component_transfer_function_element_svg_fecomponenttransfer_type_linear : Int = 4

// SVGComponentTransferFunctionElement.SVG_FECOMPONENTTRANSFER_TYPE_GAMMA
pub let s_v_g_component_transfer_function_element_svg_fecomponenttransfer_type_gamma : Int = 5

pub extern "js" fn SVGComponentTransferFunctionElement::get_type(self : SVGComponentTransferFunctionElement) -> SVGAnimatedEnumeration =
  #| (self) => self.type

pub extern "js" fn SVGComponentTransferFunctionElement::get_table_values(self : SVGComponentTransferFunctionElement) -> SVGAnimatedNumberList =
  #| (self) => self.tableValues

pub extern "js" fn SVGComponentTransferFunctionElement::get_slope(self : SVGComponentTransferFunctionElement) -> SVGAnimatedNumber =
  #| (self) => self.slope

pub extern "js" fn SVGComponentTransferFunctionElement::get_intercept(self : SVGComponentTransferFunctionElement) -> SVGAnimatedNumber =
  #| (self) => self.intercept

pub extern "js" fn SVGComponentTransferFunctionElement::get_amplitude(self : SVGComponentTransferFunctionElement) -> SVGAnimatedNumber =
  #| (self) => self.amplitude

pub extern "js" fn SVGComponentTransferFunctionElement::get_exponent(self : SVGComponentTransferFunctionElement) -> SVGAnimatedNumber =
  #| (self) => self.exponent

pub extern "js" fn SVGComponentTransferFunctionElement::get_offset(self : SVGComponentTransferFunctionElement) -> SVGAnimatedNumber =
  #| (self) => self.offset

///|
/// SVGFEFuncRElement interface
pub type SVGFEFuncRElement

pub extern "js" fn SVGFEFuncRElement::to_js_value(self : SVGFEFuncRElement) -> JsValue =
  #| (self) => self

// SVGFEFuncRElement.SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN
pub let s_v_g_f_e_func_r_element_svg_fecomponenttransfer_type_unknown : Int = 0

// SVGFEFuncRElement.SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY
pub let s_v_g_f_e_func_r_element_svg_fecomponenttransfer_type_identity : Int = 1

// SVGFEFuncRElement.SVG_FECOMPONENTTRANSFER_TYPE_TABLE
pub let s_v_g_f_e_func_r_element_svg_fecomponenttransfer_type_table : Int = 2

// SVGFEFuncRElement.SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE
pub let s_v_g_f_e_func_r_element_svg_fecomponenttransfer_type_discrete : Int = 3

// SVGFEFuncRElement.SVG_FECOMPONENTTRANSFER_TYPE_LINEAR
pub let s_v_g_f_e_func_r_element_svg_fecomponenttransfer_type_linear : Int = 4

// SVGFEFuncRElement.SVG_FECOMPONENTTRANSFER_TYPE_GAMMA
pub let s_v_g_f_e_func_r_element_svg_fecomponenttransfer_type_gamma : Int = 5

pub extern "js" fn SVGFEFuncRElement::get_type(self : SVGFEFuncRElement) -> SVGAnimatedEnumeration =
  #| (self) => self.type

pub extern "js" fn SVGFEFuncRElement::get_table_values(self : SVGFEFuncRElement) -> SVGAnimatedNumberList =
  #| (self) => self.tableValues

pub extern "js" fn SVGFEFuncRElement::get_slope(self : SVGFEFuncRElement) -> SVGAnimatedNumber =
  #| (self) => self.slope

pub extern "js" fn SVGFEFuncRElement::get_intercept(self : SVGFEFuncRElement) -> SVGAnimatedNumber =
  #| (self) => self.intercept

pub extern "js" fn SVGFEFuncRElement::get_amplitude(self : SVGFEFuncRElement) -> SVGAnimatedNumber =
  #| (self) => self.amplitude

pub extern "js" fn SVGFEFuncRElement::get_exponent(self : SVGFEFuncRElement) -> SVGAnimatedNumber =
  #| (self) => self.exponent

pub extern "js" fn SVGFEFuncRElement::get_offset(self : SVGFEFuncRElement) -> SVGAnimatedNumber =
  #| (self) => self.offset

///|
/// SVGFEFuncGElement interface
pub type SVGFEFuncGElement

pub extern "js" fn SVGFEFuncGElement::to_js_value(self : SVGFEFuncGElement) -> JsValue =
  #| (self) => self

// SVGFEFuncGElement.SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN
pub let s_v_g_f_e_func_g_element_svg_fecomponenttransfer_type_unknown : Int = 0

// SVGFEFuncGElement.SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY
pub let s_v_g_f_e_func_g_element_svg_fecomponenttransfer_type_identity : Int = 1

// SVGFEFuncGElement.SVG_FECOMPONENTTRANSFER_TYPE_TABLE
pub let s_v_g_f_e_func_g_element_svg_fecomponenttransfer_type_table : Int = 2

// SVGFEFuncGElement.SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE
pub let s_v_g_f_e_func_g_element_svg_fecomponenttransfer_type_discrete : Int = 3

// SVGFEFuncGElement.SVG_FECOMPONENTTRANSFER_TYPE_LINEAR
pub let s_v_g_f_e_func_g_element_svg_fecomponenttransfer_type_linear : Int = 4

// SVGFEFuncGElement.SVG_FECOMPONENTTRANSFER_TYPE_GAMMA
pub let s_v_g_f_e_func_g_element_svg_fecomponenttransfer_type_gamma : Int = 5

pub extern "js" fn SVGFEFuncGElement::get_type(self : SVGFEFuncGElement) -> SVGAnimatedEnumeration =
  #| (self) => self.type

pub extern "js" fn SVGFEFuncGElement::get_table_values(self : SVGFEFuncGElement) -> SVGAnimatedNumberList =
  #| (self) => self.tableValues

pub extern "js" fn SVGFEFuncGElement::get_slope(self : SVGFEFuncGElement) -> SVGAnimatedNumber =
  #| (self) => self.slope

pub extern "js" fn SVGFEFuncGElement::get_intercept(self : SVGFEFuncGElement) -> SVGAnimatedNumber =
  #| (self) => self.intercept

pub extern "js" fn SVGFEFuncGElement::get_amplitude(self : SVGFEFuncGElement) -> SVGAnimatedNumber =
  #| (self) => self.amplitude

pub extern "js" fn SVGFEFuncGElement::get_exponent(self : SVGFEFuncGElement) -> SVGAnimatedNumber =
  #| (self) => self.exponent

pub extern "js" fn SVGFEFuncGElement::get_offset(self : SVGFEFuncGElement) -> SVGAnimatedNumber =
  #| (self) => self.offset

///|
/// SVGFEFuncBElement interface
pub type SVGFEFuncBElement

pub extern "js" fn SVGFEFuncBElement::to_js_value(self : SVGFEFuncBElement) -> JsValue =
  #| (self) => self

// SVGFEFuncBElement.SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN
pub let s_v_g_f_e_func_b_element_svg_fecomponenttransfer_type_unknown : Int = 0

// SVGFEFuncBElement.SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY
pub let s_v_g_f_e_func_b_element_svg_fecomponenttransfer_type_identity : Int = 1

// SVGFEFuncBElement.SVG_FECOMPONENTTRANSFER_TYPE_TABLE
pub let s_v_g_f_e_func_b_element_svg_fecomponenttransfer_type_table : Int = 2

// SVGFEFuncBElement.SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE
pub let s_v_g_f_e_func_b_element_svg_fecomponenttransfer_type_discrete : Int = 3

// SVGFEFuncBElement.SVG_FECOMPONENTTRANSFER_TYPE_LINEAR
pub let s_v_g_f_e_func_b_element_svg_fecomponenttransfer_type_linear : Int = 4

// SVGFEFuncBElement.SVG_FECOMPONENTTRANSFER_TYPE_GAMMA
pub let s_v_g_f_e_func_b_element_svg_fecomponenttransfer_type_gamma : Int = 5

pub extern "js" fn SVGFEFuncBElement::get_type(self : SVGFEFuncBElement) -> SVGAnimatedEnumeration =
  #| (self) => self.type

pub extern "js" fn SVGFEFuncBElement::get_table_values(self : SVGFEFuncBElement) -> SVGAnimatedNumberList =
  #| (self) => self.tableValues

pub extern "js" fn SVGFEFuncBElement::get_slope(self : SVGFEFuncBElement) -> SVGAnimatedNumber =
  #| (self) => self.slope

pub extern "js" fn SVGFEFuncBElement::get_intercept(self : SVGFEFuncBElement) -> SVGAnimatedNumber =
  #| (self) => self.intercept

pub extern "js" fn SVGFEFuncBElement::get_amplitude(self : SVGFEFuncBElement) -> SVGAnimatedNumber =
  #| (self) => self.amplitude

pub extern "js" fn SVGFEFuncBElement::get_exponent(self : SVGFEFuncBElement) -> SVGAnimatedNumber =
  #| (self) => self.exponent

pub extern "js" fn SVGFEFuncBElement::get_offset(self : SVGFEFuncBElement) -> SVGAnimatedNumber =
  #| (self) => self.offset

///|
/// SVGFEFuncAElement interface
pub type SVGFEFuncAElement

pub extern "js" fn SVGFEFuncAElement::to_js_value(self : SVGFEFuncAElement) -> JsValue =
  #| (self) => self

// SVGFEFuncAElement.SVG_FECOMPONENTTRANSFER_TYPE_UNKNOWN
pub let s_v_g_f_e_func_a_element_svg_fecomponenttransfer_type_unknown : Int = 0

// SVGFEFuncAElement.SVG_FECOMPONENTTRANSFER_TYPE_IDENTITY
pub let s_v_g_f_e_func_a_element_svg_fecomponenttransfer_type_identity : Int = 1

// SVGFEFuncAElement.SVG_FECOMPONENTTRANSFER_TYPE_TABLE
pub let s_v_g_f_e_func_a_element_svg_fecomponenttransfer_type_table : Int = 2

// SVGFEFuncAElement.SVG_FECOMPONENTTRANSFER_TYPE_DISCRETE
pub let s_v_g_f_e_func_a_element_svg_fecomponenttransfer_type_discrete : Int = 3

// SVGFEFuncAElement.SVG_FECOMPONENTTRANSFER_TYPE_LINEAR
pub let s_v_g_f_e_func_a_element_svg_fecomponenttransfer_type_linear : Int = 4

// SVGFEFuncAElement.SVG_FECOMPONENTTRANSFER_TYPE_GAMMA
pub let s_v_g_f_e_func_a_element_svg_fecomponenttransfer_type_gamma : Int = 5

pub extern "js" fn SVGFEFuncAElement::get_type(self : SVGFEFuncAElement) -> SVGAnimatedEnumeration =
  #| (self) => self.type

pub extern "js" fn SVGFEFuncAElement::get_table_values(self : SVGFEFuncAElement) -> SVGAnimatedNumberList =
  #| (self) => self.tableValues

pub extern "js" fn SVGFEFuncAElement::get_slope(self : SVGFEFuncAElement) -> SVGAnimatedNumber =
  #| (self) => self.slope

pub extern "js" fn SVGFEFuncAElement::get_intercept(self : SVGFEFuncAElement) -> SVGAnimatedNumber =
  #| (self) => self.intercept

pub extern "js" fn SVGFEFuncAElement::get_amplitude(self : SVGFEFuncAElement) -> SVGAnimatedNumber =
  #| (self) => self.amplitude

pub extern "js" fn SVGFEFuncAElement::get_exponent(self : SVGFEFuncAElement) -> SVGAnimatedNumber =
  #| (self) => self.exponent

pub extern "js" fn SVGFEFuncAElement::get_offset(self : SVGFEFuncAElement) -> SVGAnimatedNumber =
  #| (self) => self.offset

///|
/// SVGFECompositeElement interface
pub type SVGFECompositeElement

pub extern "js" fn SVGFECompositeElement::to_js_value(self : SVGFECompositeElement) -> JsValue =
  #| (self) => self

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_UNKNOWN
pub let s_v_g_f_e_composite_element_svg_fecomposite_operator_unknown : Int = 0

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_OVER
pub let s_v_g_f_e_composite_element_svg_fecomposite_operator_over : Int = 1

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_IN
pub let s_v_g_f_e_composite_element_svg_fecomposite_operator_in : Int = 2

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_OUT
pub let s_v_g_f_e_composite_element_svg_fecomposite_operator_out : Int = 3

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_ATOP
pub let s_v_g_f_e_composite_element_svg_fecomposite_operator_atop : Int = 4

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_XOR
pub let s_v_g_f_e_composite_element_svg_fecomposite_operator_xor : Int = 5

// SVGFECompositeElement.SVG_FECOMPOSITE_OPERATOR_ARITHMETIC
pub let s_v_g_f_e_composite_element_svg_fecomposite_operator_arithmetic : Int = 6

pub extern "js" fn SVGFECompositeElement::get_in1(self : SVGFECompositeElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFECompositeElement::get_in2(self : SVGFECompositeElement) -> SVGAnimatedString =
  #| (self) => self.in2

pub extern "js" fn SVGFECompositeElement::get_operator(self : SVGFECompositeElement) -> SVGAnimatedEnumeration =
  #| (self) => self.operator

pub extern "js" fn SVGFECompositeElement::get_k1(self : SVGFECompositeElement) -> SVGAnimatedNumber =
  #| (self) => self.k1

pub extern "js" fn SVGFECompositeElement::get_k2(self : SVGFECompositeElement) -> SVGAnimatedNumber =
  #| (self) => self.k2

pub extern "js" fn SVGFECompositeElement::get_k3(self : SVGFECompositeElement) -> SVGAnimatedNumber =
  #| (self) => self.k3

pub extern "js" fn SVGFECompositeElement::get_k4(self : SVGFECompositeElement) -> SVGAnimatedNumber =
  #| (self) => self.k4

pub extern "js" fn SVGFECompositeElement::get_x(self : SVGFECompositeElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFECompositeElement::get_y(self : SVGFECompositeElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFECompositeElement::get_width(self : SVGFECompositeElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFECompositeElement::get_height(self : SVGFECompositeElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFECompositeElement::get_result(self : SVGFECompositeElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEConvolveMatrixElement interface
pub type SVGFEConvolveMatrixElement

pub extern "js" fn SVGFEConvolveMatrixElement::to_js_value(self : SVGFEConvolveMatrixElement) -> JsValue =
  #| (self) => self

// SVGFEConvolveMatrixElement.SVG_EDGEMODE_UNKNOWN
pub let s_v_g_f_e_convolve_matrix_element_svg_edgemode_unknown : Int = 0

// SVGFEConvolveMatrixElement.SVG_EDGEMODE_DUPLICATE
pub let s_v_g_f_e_convolve_matrix_element_svg_edgemode_duplicate : Int = 1

// SVGFEConvolveMatrixElement.SVG_EDGEMODE_WRAP
pub let s_v_g_f_e_convolve_matrix_element_svg_edgemode_wrap : Int = 2

// SVGFEConvolveMatrixElement.SVG_EDGEMODE_NONE
pub let s_v_g_f_e_convolve_matrix_element_svg_edgemode_none : Int = 3

pub extern "js" fn SVGFEConvolveMatrixElement::get_in1(self : SVGFEConvolveMatrixElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFEConvolveMatrixElement::get_order_x(self : SVGFEConvolveMatrixElement) -> SVGAnimatedInteger =
  #| (self) => self.orderX

pub extern "js" fn SVGFEConvolveMatrixElement::get_order_y(self : SVGFEConvolveMatrixElement) -> SVGAnimatedInteger =
  #| (self) => self.orderY

pub extern "js" fn SVGFEConvolveMatrixElement::get_kernel_matrix(self : SVGFEConvolveMatrixElement) -> SVGAnimatedNumberList =
  #| (self) => self.kernelMatrix

pub extern "js" fn SVGFEConvolveMatrixElement::get_divisor(self : SVGFEConvolveMatrixElement) -> SVGAnimatedNumber =
  #| (self) => self.divisor

pub extern "js" fn SVGFEConvolveMatrixElement::get_bias(self : SVGFEConvolveMatrixElement) -> SVGAnimatedNumber =
  #| (self) => self.bias

pub extern "js" fn SVGFEConvolveMatrixElement::get_target_x(self : SVGFEConvolveMatrixElement) -> SVGAnimatedInteger =
  #| (self) => self.targetX

pub extern "js" fn SVGFEConvolveMatrixElement::get_target_y(self : SVGFEConvolveMatrixElement) -> SVGAnimatedInteger =
  #| (self) => self.targetY

pub extern "js" fn SVGFEConvolveMatrixElement::get_edge_mode(self : SVGFEConvolveMatrixElement) -> SVGAnimatedEnumeration =
  #| (self) => self.edgeMode

pub extern "js" fn SVGFEConvolveMatrixElement::get_kernel_unit_length_x(self : SVGFEConvolveMatrixElement) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthX

pub extern "js" fn SVGFEConvolveMatrixElement::get_kernel_unit_length_y(self : SVGFEConvolveMatrixElement) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthY

pub extern "js" fn SVGFEConvolveMatrixElement::get_preserve_alpha(self : SVGFEConvolveMatrixElement) -> SVGAnimatedBoolean =
  #| (self) => self.preserveAlpha

pub extern "js" fn SVGFEConvolveMatrixElement::get_x(self : SVGFEConvolveMatrixElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEConvolveMatrixElement::get_y(self : SVGFEConvolveMatrixElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEConvolveMatrixElement::get_width(self : SVGFEConvolveMatrixElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEConvolveMatrixElement::get_height(self : SVGFEConvolveMatrixElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEConvolveMatrixElement::get_result(self : SVGFEConvolveMatrixElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEDiffuseLightingElement interface
pub type SVGFEDiffuseLightingElement

pub extern "js" fn SVGFEDiffuseLightingElement::to_js_value(self : SVGFEDiffuseLightingElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFEDiffuseLightingElement::get_in1(self : SVGFEDiffuseLightingElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFEDiffuseLightingElement::get_surface_scale(self : SVGFEDiffuseLightingElement) -> SVGAnimatedNumber =
  #| (self) => self.surfaceScale

pub extern "js" fn SVGFEDiffuseLightingElement::get_diffuse_constant(self : SVGFEDiffuseLightingElement) -> SVGAnimatedNumber =
  #| (self) => self.diffuseConstant

pub extern "js" fn SVGFEDiffuseLightingElement::get_kernel_unit_length_x(self : SVGFEDiffuseLightingElement) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthX

pub extern "js" fn SVGFEDiffuseLightingElement::get_kernel_unit_length_y(self : SVGFEDiffuseLightingElement) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthY

pub extern "js" fn SVGFEDiffuseLightingElement::get_x(self : SVGFEDiffuseLightingElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEDiffuseLightingElement::get_y(self : SVGFEDiffuseLightingElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEDiffuseLightingElement::get_width(self : SVGFEDiffuseLightingElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEDiffuseLightingElement::get_height(self : SVGFEDiffuseLightingElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEDiffuseLightingElement::get_result(self : SVGFEDiffuseLightingElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEDistantLightElement interface
pub type SVGFEDistantLightElement

pub extern "js" fn SVGFEDistantLightElement::to_js_value(self : SVGFEDistantLightElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFEDistantLightElement::get_azimuth(self : SVGFEDistantLightElement) -> SVGAnimatedNumber =
  #| (self) => self.azimuth

pub extern "js" fn SVGFEDistantLightElement::get_elevation(self : SVGFEDistantLightElement) -> SVGAnimatedNumber =
  #| (self) => self.elevation

///|
/// SVGFEPointLightElement interface
pub type SVGFEPointLightElement

pub extern "js" fn SVGFEPointLightElement::to_js_value(self : SVGFEPointLightElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFEPointLightElement::get_x(self : SVGFEPointLightElement) -> SVGAnimatedNumber =
  #| (self) => self.x

pub extern "js" fn SVGFEPointLightElement::get_y(self : SVGFEPointLightElement) -> SVGAnimatedNumber =
  #| (self) => self.y

pub extern "js" fn SVGFEPointLightElement::get_z(self : SVGFEPointLightElement) -> SVGAnimatedNumber =
  #| (self) => self.z

///|
/// SVGFESpotLightElement interface
pub type SVGFESpotLightElement

pub extern "js" fn SVGFESpotLightElement::to_js_value(self : SVGFESpotLightElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFESpotLightElement::get_x(self : SVGFESpotLightElement) -> SVGAnimatedNumber =
  #| (self) => self.x

pub extern "js" fn SVGFESpotLightElement::get_y(self : SVGFESpotLightElement) -> SVGAnimatedNumber =
  #| (self) => self.y

pub extern "js" fn SVGFESpotLightElement::get_z(self : SVGFESpotLightElement) -> SVGAnimatedNumber =
  #| (self) => self.z

pub extern "js" fn SVGFESpotLightElement::get_points_at_x(self : SVGFESpotLightElement) -> SVGAnimatedNumber =
  #| (self) => self.pointsAtX

pub extern "js" fn SVGFESpotLightElement::get_points_at_y(self : SVGFESpotLightElement) -> SVGAnimatedNumber =
  #| (self) => self.pointsAtY

pub extern "js" fn SVGFESpotLightElement::get_points_at_z(self : SVGFESpotLightElement) -> SVGAnimatedNumber =
  #| (self) => self.pointsAtZ

pub extern "js" fn SVGFESpotLightElement::get_specular_exponent(self : SVGFESpotLightElement) -> SVGAnimatedNumber =
  #| (self) => self.specularExponent

pub extern "js" fn SVGFESpotLightElement::get_limiting_cone_angle(self : SVGFESpotLightElement) -> SVGAnimatedNumber =
  #| (self) => self.limitingConeAngle

///|
/// SVGFEDisplacementMapElement interface
pub type SVGFEDisplacementMapElement

pub extern "js" fn SVGFEDisplacementMapElement::to_js_value(self : SVGFEDisplacementMapElement) -> JsValue =
  #| (self) => self

// SVGFEDisplacementMapElement.SVG_CHANNEL_UNKNOWN
pub let s_v_g_f_e_displacement_map_element_svg_channel_unknown : Int = 0

// SVGFEDisplacementMapElement.SVG_CHANNEL_R
pub let s_v_g_f_e_displacement_map_element_svg_channel_r : Int = 1

// SVGFEDisplacementMapElement.SVG_CHANNEL_G
pub let s_v_g_f_e_displacement_map_element_svg_channel_g : Int = 2

// SVGFEDisplacementMapElement.SVG_CHANNEL_B
pub let s_v_g_f_e_displacement_map_element_svg_channel_b : Int = 3

// SVGFEDisplacementMapElement.SVG_CHANNEL_A
pub let s_v_g_f_e_displacement_map_element_svg_channel_a : Int = 4

pub extern "js" fn SVGFEDisplacementMapElement::get_in1(self : SVGFEDisplacementMapElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFEDisplacementMapElement::get_in2(self : SVGFEDisplacementMapElement) -> SVGAnimatedString =
  #| (self) => self.in2

pub extern "js" fn SVGFEDisplacementMapElement::get_scale(self : SVGFEDisplacementMapElement) -> SVGAnimatedNumber =
  #| (self) => self.scale

pub extern "js" fn SVGFEDisplacementMapElement::get_x_channel_selector(self : SVGFEDisplacementMapElement) -> SVGAnimatedEnumeration =
  #| (self) => self.xChannelSelector

pub extern "js" fn SVGFEDisplacementMapElement::get_y_channel_selector(self : SVGFEDisplacementMapElement) -> SVGAnimatedEnumeration =
  #| (self) => self.yChannelSelector

pub extern "js" fn SVGFEDisplacementMapElement::get_x(self : SVGFEDisplacementMapElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEDisplacementMapElement::get_y(self : SVGFEDisplacementMapElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEDisplacementMapElement::get_width(self : SVGFEDisplacementMapElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEDisplacementMapElement::get_height(self : SVGFEDisplacementMapElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEDisplacementMapElement::get_result(self : SVGFEDisplacementMapElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEDropShadowElement interface
pub type SVGFEDropShadowElement

pub extern "js" fn SVGFEDropShadowElement::to_js_value(self : SVGFEDropShadowElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFEDropShadowElement::get_in1(self : SVGFEDropShadowElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFEDropShadowElement::get_dx(self : SVGFEDropShadowElement) -> SVGAnimatedNumber =
  #| (self) => self.dx

pub extern "js" fn SVGFEDropShadowElement::get_dy(self : SVGFEDropShadowElement) -> SVGAnimatedNumber =
  #| (self) => self.dy

pub extern "js" fn SVGFEDropShadowElement::get_std_deviation_x(self : SVGFEDropShadowElement) -> SVGAnimatedNumber =
  #| (self) => self.stdDeviationX

pub extern "js" fn SVGFEDropShadowElement::get_std_deviation_y(self : SVGFEDropShadowElement) -> SVGAnimatedNumber =
  #| (self) => self.stdDeviationY

pub extern "js" fn SVGFEDropShadowElement::set_std_deviation(self : SVGFEDropShadowElement, std_deviation_x : Double, std_deviation_y : Double) -> Unit =
  #| (self, std_deviation_x, std_deviation_y) => self.setStdDeviation(std_deviation_x, std_deviation_y)

pub extern "js" fn SVGFEDropShadowElement::get_x(self : SVGFEDropShadowElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEDropShadowElement::get_y(self : SVGFEDropShadowElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEDropShadowElement::get_width(self : SVGFEDropShadowElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEDropShadowElement::get_height(self : SVGFEDropShadowElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEDropShadowElement::get_result(self : SVGFEDropShadowElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEFloodElement interface
pub type SVGFEFloodElement

pub extern "js" fn SVGFEFloodElement::to_js_value(self : SVGFEFloodElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFEFloodElement::get_x(self : SVGFEFloodElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEFloodElement::get_y(self : SVGFEFloodElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEFloodElement::get_width(self : SVGFEFloodElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEFloodElement::get_height(self : SVGFEFloodElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEFloodElement::get_result(self : SVGFEFloodElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEGaussianBlurElement interface
pub type SVGFEGaussianBlurElement

pub extern "js" fn SVGFEGaussianBlurElement::to_js_value(self : SVGFEGaussianBlurElement) -> JsValue =
  #| (self) => self

// SVGFEGaussianBlurElement.SVG_EDGEMODE_UNKNOWN
pub let s_v_g_f_e_gaussian_blur_element_svg_edgemode_unknown : Int = 0

// SVGFEGaussianBlurElement.SVG_EDGEMODE_DUPLICATE
pub let s_v_g_f_e_gaussian_blur_element_svg_edgemode_duplicate : Int = 1

// SVGFEGaussianBlurElement.SVG_EDGEMODE_WRAP
pub let s_v_g_f_e_gaussian_blur_element_svg_edgemode_wrap : Int = 2

// SVGFEGaussianBlurElement.SVG_EDGEMODE_NONE
pub let s_v_g_f_e_gaussian_blur_element_svg_edgemode_none : Int = 3

pub extern "js" fn SVGFEGaussianBlurElement::get_in1(self : SVGFEGaussianBlurElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFEGaussianBlurElement::get_std_deviation_x(self : SVGFEGaussianBlurElement) -> SVGAnimatedNumber =
  #| (self) => self.stdDeviationX

pub extern "js" fn SVGFEGaussianBlurElement::get_std_deviation_y(self : SVGFEGaussianBlurElement) -> SVGAnimatedNumber =
  #| (self) => self.stdDeviationY

pub extern "js" fn SVGFEGaussianBlurElement::get_edge_mode(self : SVGFEGaussianBlurElement) -> SVGAnimatedEnumeration =
  #| (self) => self.edgeMode

pub extern "js" fn SVGFEGaussianBlurElement::set_std_deviation(self : SVGFEGaussianBlurElement, std_deviation_x : Double, std_deviation_y : Double) -> Unit =
  #| (self, std_deviation_x, std_deviation_y) => self.setStdDeviation(std_deviation_x, std_deviation_y)

pub extern "js" fn SVGFEGaussianBlurElement::get_x(self : SVGFEGaussianBlurElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEGaussianBlurElement::get_y(self : SVGFEGaussianBlurElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEGaussianBlurElement::get_width(self : SVGFEGaussianBlurElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEGaussianBlurElement::get_height(self : SVGFEGaussianBlurElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEGaussianBlurElement::get_result(self : SVGFEGaussianBlurElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEImageElement interface
pub type SVGFEImageElement

pub extern "js" fn SVGFEImageElement::to_js_value(self : SVGFEImageElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFEImageElement::get_preserve_aspect_ratio(self : SVGFEImageElement) -> SVGAnimatedPreserveAspectRatio =
  #| (self) => self.preserveAspectRatio

pub extern "js" fn SVGFEImageElement::get_cross_origin(self : SVGFEImageElement) -> SVGAnimatedString =
  #| (self) => self.crossOrigin

pub extern "js" fn SVGFEImageElement::get_x(self : SVGFEImageElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEImageElement::get_y(self : SVGFEImageElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEImageElement::get_width(self : SVGFEImageElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEImageElement::get_height(self : SVGFEImageElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEImageElement::get_result(self : SVGFEImageElement) -> SVGAnimatedString =
  #| (self) => self.result

pub extern "js" fn SVGFEImageElement::get_href(self : SVGFEImageElement) -> SVGAnimatedString =
  #| (self) => self.href

///|
/// SVGFEMergeElement interface
pub type SVGFEMergeElement

pub extern "js" fn SVGFEMergeElement::to_js_value(self : SVGFEMergeElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFEMergeElement::get_x(self : SVGFEMergeElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEMergeElement::get_y(self : SVGFEMergeElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEMergeElement::get_width(self : SVGFEMergeElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEMergeElement::get_height(self : SVGFEMergeElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEMergeElement::get_result(self : SVGFEMergeElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEMergeNodeElement interface
pub type SVGFEMergeNodeElement

pub extern "js" fn SVGFEMergeNodeElement::to_js_value(self : SVGFEMergeNodeElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFEMergeNodeElement::get_in1(self : SVGFEMergeNodeElement) -> SVGAnimatedString =
  #| (self) => self.in1

///|
/// SVGFEMorphologyElement interface
pub type SVGFEMorphologyElement

pub extern "js" fn SVGFEMorphologyElement::to_js_value(self : SVGFEMorphologyElement) -> JsValue =
  #| (self) => self

// SVGFEMorphologyElement.SVG_MORPHOLOGY_OPERATOR_UNKNOWN
pub let s_v_g_f_e_morphology_element_svg_morphology_operator_unknown : Int = 0

// SVGFEMorphologyElement.SVG_MORPHOLOGY_OPERATOR_ERODE
pub let s_v_g_f_e_morphology_element_svg_morphology_operator_erode : Int = 1

// SVGFEMorphologyElement.SVG_MORPHOLOGY_OPERATOR_DILATE
pub let s_v_g_f_e_morphology_element_svg_morphology_operator_dilate : Int = 2

pub extern "js" fn SVGFEMorphologyElement::get_in1(self : SVGFEMorphologyElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFEMorphologyElement::get_operator(self : SVGFEMorphologyElement) -> SVGAnimatedEnumeration =
  #| (self) => self.operator

pub extern "js" fn SVGFEMorphologyElement::get_radius_x(self : SVGFEMorphologyElement) -> SVGAnimatedNumber =
  #| (self) => self.radiusX

pub extern "js" fn SVGFEMorphologyElement::get_radius_y(self : SVGFEMorphologyElement) -> SVGAnimatedNumber =
  #| (self) => self.radiusY

pub extern "js" fn SVGFEMorphologyElement::get_x(self : SVGFEMorphologyElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEMorphologyElement::get_y(self : SVGFEMorphologyElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEMorphologyElement::get_width(self : SVGFEMorphologyElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEMorphologyElement::get_height(self : SVGFEMorphologyElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEMorphologyElement::get_result(self : SVGFEMorphologyElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFEOffsetElement interface
pub type SVGFEOffsetElement

pub extern "js" fn SVGFEOffsetElement::to_js_value(self : SVGFEOffsetElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFEOffsetElement::get_in1(self : SVGFEOffsetElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFEOffsetElement::get_dx(self : SVGFEOffsetElement) -> SVGAnimatedNumber =
  #| (self) => self.dx

pub extern "js" fn SVGFEOffsetElement::get_dy(self : SVGFEOffsetElement) -> SVGAnimatedNumber =
  #| (self) => self.dy

pub extern "js" fn SVGFEOffsetElement::get_x(self : SVGFEOffsetElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFEOffsetElement::get_y(self : SVGFEOffsetElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFEOffsetElement::get_width(self : SVGFEOffsetElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFEOffsetElement::get_height(self : SVGFEOffsetElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFEOffsetElement::get_result(self : SVGFEOffsetElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFESpecularLightingElement interface
pub type SVGFESpecularLightingElement

pub extern "js" fn SVGFESpecularLightingElement::to_js_value(self : SVGFESpecularLightingElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFESpecularLightingElement::get_in1(self : SVGFESpecularLightingElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFESpecularLightingElement::get_surface_scale(self : SVGFESpecularLightingElement) -> SVGAnimatedNumber =
  #| (self) => self.surfaceScale

pub extern "js" fn SVGFESpecularLightingElement::get_specular_constant(self : SVGFESpecularLightingElement) -> SVGAnimatedNumber =
  #| (self) => self.specularConstant

pub extern "js" fn SVGFESpecularLightingElement::get_specular_exponent(self : SVGFESpecularLightingElement) -> SVGAnimatedNumber =
  #| (self) => self.specularExponent

pub extern "js" fn SVGFESpecularLightingElement::get_kernel_unit_length_x(self : SVGFESpecularLightingElement) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthX

pub extern "js" fn SVGFESpecularLightingElement::get_kernel_unit_length_y(self : SVGFESpecularLightingElement) -> SVGAnimatedNumber =
  #| (self) => self.kernelUnitLengthY

pub extern "js" fn SVGFESpecularLightingElement::get_x(self : SVGFESpecularLightingElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFESpecularLightingElement::get_y(self : SVGFESpecularLightingElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFESpecularLightingElement::get_width(self : SVGFESpecularLightingElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFESpecularLightingElement::get_height(self : SVGFESpecularLightingElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFESpecularLightingElement::get_result(self : SVGFESpecularLightingElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFETileElement interface
pub type SVGFETileElement

pub extern "js" fn SVGFETileElement::to_js_value(self : SVGFETileElement) -> JsValue =
  #| (self) => self

pub extern "js" fn SVGFETileElement::get_in1(self : SVGFETileElement) -> SVGAnimatedString =
  #| (self) => self.in1

pub extern "js" fn SVGFETileElement::get_x(self : SVGFETileElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFETileElement::get_y(self : SVGFETileElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFETileElement::get_width(self : SVGFETileElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFETileElement::get_height(self : SVGFETileElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFETileElement::get_result(self : SVGFETileElement) -> SVGAnimatedString =
  #| (self) => self.result

///|
/// SVGFETurbulenceElement interface
pub type SVGFETurbulenceElement

pub extern "js" fn SVGFETurbulenceElement::to_js_value(self : SVGFETurbulenceElement) -> JsValue =
  #| (self) => self

// SVGFETurbulenceElement.SVG_TURBULENCE_TYPE_UNKNOWN
pub let s_v_g_f_e_turbulence_element_svg_turbulence_type_unknown : Int = 0

// SVGFETurbulenceElement.SVG_TURBULENCE_TYPE_FRACTALNOISE
pub let s_v_g_f_e_turbulence_element_svg_turbulence_type_fractalnoise : Int = 1

// SVGFETurbulenceElement.SVG_TURBULENCE_TYPE_TURBULENCE
pub let s_v_g_f_e_turbulence_element_svg_turbulence_type_turbulence : Int = 2

// SVGFETurbulenceElement.SVG_STITCHTYPE_UNKNOWN
pub let s_v_g_f_e_turbulence_element_svg_stitchtype_unknown : Int = 0

// SVGFETurbulenceElement.SVG_STITCHTYPE_STITCH
pub let s_v_g_f_e_turbulence_element_svg_stitchtype_stitch : Int = 1

// SVGFETurbulenceElement.SVG_STITCHTYPE_NOSTITCH
pub let s_v_g_f_e_turbulence_element_svg_stitchtype_nostitch : Int = 2

pub extern "js" fn SVGFETurbulenceElement::get_base_frequency_x(self : SVGFETurbulenceElement) -> SVGAnimatedNumber =
  #| (self) => self.baseFrequencyX

pub extern "js" fn SVGFETurbulenceElement::get_base_frequency_y(self : SVGFETurbulenceElement) -> SVGAnimatedNumber =
  #| (self) => self.baseFrequencyY

pub extern "js" fn SVGFETurbulenceElement::get_num_octaves(self : SVGFETurbulenceElement) -> SVGAnimatedInteger =
  #| (self) => self.numOctaves

pub extern "js" fn SVGFETurbulenceElement::get_seed(self : SVGFETurbulenceElement) -> SVGAnimatedNumber =
  #| (self) => self.seed

pub extern "js" fn SVGFETurbulenceElement::get_stitch_tiles(self : SVGFETurbulenceElement) -> SVGAnimatedEnumeration =
  #| (self) => self.stitchTiles

pub extern "js" fn SVGFETurbulenceElement::get_type(self : SVGFETurbulenceElement) -> SVGAnimatedEnumeration =
  #| (self) => self.type

pub extern "js" fn SVGFETurbulenceElement::get_x(self : SVGFETurbulenceElement) -> SVGAnimatedLength =
  #| (self) => self.x

pub extern "js" fn SVGFETurbulenceElement::get_y(self : SVGFETurbulenceElement) -> SVGAnimatedLength =
  #| (self) => self.y

pub extern "js" fn SVGFETurbulenceElement::get_width(self : SVGFETurbulenceElement) -> SVGAnimatedLength =
  #| (self) => self.width

pub extern "js" fn SVGFETurbulenceElement::get_height(self : SVGFETurbulenceElement) -> SVGAnimatedLength =
  #| (self) => self.height

pub extern "js" fn SVGFETurbulenceElement::get_result(self : SVGFETurbulenceElement) -> SVGAnimatedString =
  #| (self) => self.result

