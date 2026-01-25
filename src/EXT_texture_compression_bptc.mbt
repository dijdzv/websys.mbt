// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_texture_compression_bptc

///|
/// EXT_texture_compression_bptc interface
pub type EXT_texture_compression_bptc

///|
pub extern "js" fn EXT_texture_compression_bptc::to_js_value(
  self : EXT_texture_compression_bptc,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_texture_compression_bptc (unchecked)
pub extern "js" fn EXT_texture_compression_bptc::from_js_value(
  v : JsValue,
) -> EXT_texture_compression_bptc =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_texture_compression_bptc (checked with instanceof)
pub extern "js" fn EXT_texture_compression_bptc::from_js_value_opt(
  v : JsValue,
) -> EXT_texture_compression_bptc? =
  #| (v) => (v instanceof EXT_texture_compression_bptc) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_texture_compression_bptc (checked with instanceof)
pub extern "js" fn JsValue::as_ext_texture_compression_bptc(
  self : JsValue,
) -> EXT_texture_compression_bptc? =
  #| (self) => (self instanceof EXT_texture_compression_bptc) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_texture_compression_bptc (unchecked)
pub extern "js" fn JsValue::to_ext_texture_compression_bptc(
  self : JsValue,
) -> EXT_texture_compression_bptc =
  #| (self) => self

// EXT_texture_compression_bptc.COMPRESSED_RGBA_BPTC_UNORM_EXT

///|
pub let ext_texture_compression_bptc_compressed_rgba_bptc_unorm_ext : Int = 0x8E8C

// EXT_texture_compression_bptc.COMPRESSED_SRGB_ALPHA_BPTC_UNORM_EXT

///|
pub let ext_texture_compression_bptc_compressed_srgb_alpha_bptc_unorm_ext : Int = 0x8E8D

// EXT_texture_compression_bptc.COMPRESSED_RGB_BPTC_SIGNED_FLOAT_EXT

///|
pub let ext_texture_compression_bptc_compressed_rgb_bptc_signed_float_ext : Int = 0x8E8E

// EXT_texture_compression_bptc.COMPRESSED_RGB_BPTC_UNSIGNED_FLOAT_EXT

///|
pub let ext_texture_compression_bptc_compressed_rgb_bptc_unsigned_float_ext : Int = 0x8E8F
