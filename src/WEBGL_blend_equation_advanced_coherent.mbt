// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_blend_equation_advanced_coherent

///|
/// WEBGL_blend_equation_advanced_coherent interface
pub type WEBGL_blend_equation_advanced_coherent

///|
pub extern "js" fn WEBGL_blend_equation_advanced_coherent::to_js_value(
  self : WEBGL_blend_equation_advanced_coherent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_blend_equation_advanced_coherent (unchecked)
pub extern "js" fn WEBGL_blend_equation_advanced_coherent::from_js_value(
  v : JsValue,
) -> WEBGL_blend_equation_advanced_coherent =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_blend_equation_advanced_coherent (checked with instanceof)
pub extern "js" fn WEBGL_blend_equation_advanced_coherent::from_js_value_opt(
  v : JsValue,
) -> WEBGL_blend_equation_advanced_coherent? =
  #| (v) => (v instanceof WEBGL_blend_equation_advanced_coherent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_blend_equation_advanced_coherent (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_blend_equation_advanced_coherent(
  self : JsValue,
) -> WEBGL_blend_equation_advanced_coherent? =
  #| (self) => (self instanceof WEBGL_blend_equation_advanced_coherent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_blend_equation_advanced_coherent (unchecked)
pub extern "js" fn JsValue::to_webgl_blend_equation_advanced_coherent(
  self : JsValue,
) -> WEBGL_blend_equation_advanced_coherent =
  #| (self) => self

// WEBGL_blend_equation_advanced_coherent.MULTIPLY

///|
pub let webgl_blend_equation_advanced_coherent_multiply : Int = 0x9294

// WEBGL_blend_equation_advanced_coherent.SCREEN

///|
pub let webgl_blend_equation_advanced_coherent_screen : Int = 0x9295

// WEBGL_blend_equation_advanced_coherent.OVERLAY

///|
pub let webgl_blend_equation_advanced_coherent_overlay : Int = 0x9296

// WEBGL_blend_equation_advanced_coherent.DARKEN

///|
pub let webgl_blend_equation_advanced_coherent_darken : Int = 0x9297

// WEBGL_blend_equation_advanced_coherent.LIGHTEN

///|
pub let webgl_blend_equation_advanced_coherent_lighten : Int = 0x9298

// WEBGL_blend_equation_advanced_coherent.COLORDODGE

///|
pub let webgl_blend_equation_advanced_coherent_colordodge : Int = 0x9299

// WEBGL_blend_equation_advanced_coherent.COLORBURN

///|
pub let webgl_blend_equation_advanced_coherent_colorburn : Int = 0x929A

// WEBGL_blend_equation_advanced_coherent.HARDLIGHT

///|
pub let webgl_blend_equation_advanced_coherent_hardlight : Int = 0x929B

// WEBGL_blend_equation_advanced_coherent.SOFTLIGHT

///|
pub let webgl_blend_equation_advanced_coherent_softlight : Int = 0x929C

// WEBGL_blend_equation_advanced_coherent.DIFFERENCE

///|
pub let webgl_blend_equation_advanced_coherent_difference : Int = 0x929E

// WEBGL_blend_equation_advanced_coherent.EXCLUSION

///|
pub let webgl_blend_equation_advanced_coherent_exclusion : Int = 0x92A0

// WEBGL_blend_equation_advanced_coherent.HSL_HUE

///|
pub let webgl_blend_equation_advanced_coherent_hsl_hue : Int = 0x92AD

// WEBGL_blend_equation_advanced_coherent.HSL_SATURATION

///|
pub let webgl_blend_equation_advanced_coherent_hsl_saturation : Int = 0x92AE

// WEBGL_blend_equation_advanced_coherent.HSL_COLOR

///|
pub let webgl_blend_equation_advanced_coherent_hsl_color : Int = 0x92AF

// WEBGL_blend_equation_advanced_coherent.HSL_LUMINOSITY

///|
pub let webgl_blend_equation_advanced_coherent_hsl_luminosity : Int = 0x92B0
