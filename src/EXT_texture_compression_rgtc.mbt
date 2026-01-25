// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_texture_compression_rgtc

///|
/// EXT_texture_compression_rgtc interface
pub type EXT_texture_compression_rgtc

///|
pub extern "js" fn EXT_texture_compression_rgtc::to_js_value(
  self : EXT_texture_compression_rgtc,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_texture_compression_rgtc (unchecked)
pub extern "js" fn EXT_texture_compression_rgtc::from_js_value(
  v : JsValue,
) -> EXT_texture_compression_rgtc =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_texture_compression_rgtc (checked with instanceof)
pub extern "js" fn EXT_texture_compression_rgtc::from_js_value_opt(
  v : JsValue,
) -> EXT_texture_compression_rgtc? =
  #| (v) => (v instanceof EXT_texture_compression_rgtc) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_texture_compression_rgtc (checked with instanceof)
pub extern "js" fn JsValue::as_ext_texture_compression_rgtc(
  self : JsValue,
) -> EXT_texture_compression_rgtc? =
  #| (self) => (self instanceof EXT_texture_compression_rgtc) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_texture_compression_rgtc (unchecked)
pub extern "js" fn JsValue::to_ext_texture_compression_rgtc(
  self : JsValue,
) -> EXT_texture_compression_rgtc =
  #| (self) => self

// EXT_texture_compression_rgtc.COMPRESSED_RED_RGTC1_EXT

///|
pub let ext_texture_compression_rgtc_compressed_red_rgtc1_ext : Int = 0x8DBB

// EXT_texture_compression_rgtc.COMPRESSED_SIGNED_RED_RGTC1_EXT

///|
pub let ext_texture_compression_rgtc_compressed_signed_red_rgtc1_ext : Int = 0x8DBC

// EXT_texture_compression_rgtc.COMPRESSED_RED_GREEN_RGTC2_EXT

///|
pub let ext_texture_compression_rgtc_compressed_red_green_rgtc2_ext : Int = 0x8DBD

// EXT_texture_compression_rgtc.COMPRESSED_SIGNED_RED_GREEN_RGTC2_EXT

///|
pub let ext_texture_compression_rgtc_compressed_signed_red_green_rgtc2_ext : Int = 0x8DBE
