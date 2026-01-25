// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_texture_filter_anisotropic

///|
/// EXT_texture_filter_anisotropic interface
pub type EXT_texture_filter_anisotropic

///|
pub extern "js" fn EXT_texture_filter_anisotropic::to_js_value(
  self : EXT_texture_filter_anisotropic,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_texture_filter_anisotropic (unchecked)
pub extern "js" fn EXT_texture_filter_anisotropic::from_js_value(
  v : JsValue,
) -> EXT_texture_filter_anisotropic =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_texture_filter_anisotropic (checked with instanceof)
pub extern "js" fn EXT_texture_filter_anisotropic::from_js_value_opt(
  v : JsValue,
) -> EXT_texture_filter_anisotropic? =
  #| (v) => (v instanceof EXT_texture_filter_anisotropic) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_texture_filter_anisotropic (checked with instanceof)
pub extern "js" fn JsValue::as_ext_texture_filter_anisotropic(
  self : JsValue,
) -> EXT_texture_filter_anisotropic? =
  #| (self) => (self instanceof EXT_texture_filter_anisotropic) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_texture_filter_anisotropic (unchecked)
pub extern "js" fn JsValue::to_ext_texture_filter_anisotropic(
  self : JsValue,
) -> EXT_texture_filter_anisotropic =
  #| (self) => self

// EXT_texture_filter_anisotropic.TEXTURE_MAX_ANISOTROPY_EXT

///|
pub let ext_texture_filter_anisotropic_texture_max_anisotropy_ext : Int = 0x84FE

// EXT_texture_filter_anisotropic.MAX_TEXTURE_MAX_ANISOTROPY_EXT

///|
pub let ext_texture_filter_anisotropic_max_texture_max_anisotropy_ext : Int = 0x84FF
