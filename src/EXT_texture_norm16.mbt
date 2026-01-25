// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_texture_norm16

///|
/// EXT_texture_norm16 interface
pub type EXT_texture_norm16

///|
pub extern "js" fn EXT_texture_norm16::to_js_value(
  self : EXT_texture_norm16,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_texture_norm16 (unchecked)
pub extern "js" fn EXT_texture_norm16::from_js_value(
  v : JsValue,
) -> EXT_texture_norm16 =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_texture_norm16 (checked with instanceof)
pub extern "js" fn EXT_texture_norm16::from_js_value_opt(
  v : JsValue,
) -> EXT_texture_norm16? =
  #| (v) => (v instanceof EXT_texture_norm16) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_texture_norm16 (checked with instanceof)
pub extern "js" fn JsValue::as_ext_texture_norm16(
  self : JsValue,
) -> EXT_texture_norm16? =
  #| (self) => (self instanceof EXT_texture_norm16) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_texture_norm16 (unchecked)
pub extern "js" fn JsValue::to_ext_texture_norm16(
  self : JsValue,
) -> EXT_texture_norm16 =
  #| (self) => self

// EXT_texture_norm16.R16_EXT

///|
pub let ext_texture_norm16_r16_ext : Int = 0x822A

// EXT_texture_norm16.RG16_EXT

///|
pub let ext_texture_norm16_rg16_ext : Int = 0x822C

// EXT_texture_norm16.RGB16_EXT

///|
pub let ext_texture_norm16_rgb16_ext : Int = 0x8054

// EXT_texture_norm16.RGBA16_EXT

///|
pub let ext_texture_norm16_rgba16_ext : Int = 0x805B

// EXT_texture_norm16.R16_SNORM_EXT

///|
pub let ext_texture_norm16_r16_snorm_ext : Int = 0x8F98

// EXT_texture_norm16.RG16_SNORM_EXT

///|
pub let ext_texture_norm16_rg16_snorm_ext : Int = 0x8F99

// EXT_texture_norm16.RGB16_SNORM_EXT

///|
pub let ext_texture_norm16_rgb16_snorm_ext : Int = 0x8F9A

// EXT_texture_norm16.RGBA16_SNORM_EXT

///|
pub let ext_texture_norm16_rgba16_snorm_ext : Int = 0x8F9B
