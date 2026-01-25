// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_compressed_texture_s3tc

///|
/// WEBGL_compressed_texture_s3tc interface
pub type WEBGL_compressed_texture_s3tc

///|
pub extern "js" fn WEBGL_compressed_texture_s3tc::to_js_value(
  self : WEBGL_compressed_texture_s3tc,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_compressed_texture_s3tc (unchecked)
pub extern "js" fn WEBGL_compressed_texture_s3tc::from_js_value(
  v : JsValue,
) -> WEBGL_compressed_texture_s3tc =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_compressed_texture_s3tc (checked with instanceof)
pub extern "js" fn WEBGL_compressed_texture_s3tc::from_js_value_opt(
  v : JsValue,
) -> WEBGL_compressed_texture_s3tc? =
  #| (v) => (v instanceof WEBGL_compressed_texture_s3tc) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_compressed_texture_s3tc (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_compressed_texture_s3tc(
  self : JsValue,
) -> WEBGL_compressed_texture_s3tc? =
  #| (self) => (self instanceof WEBGL_compressed_texture_s3tc) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_compressed_texture_s3tc (unchecked)
pub extern "js" fn JsValue::to_webgl_compressed_texture_s3tc(
  self : JsValue,
) -> WEBGL_compressed_texture_s3tc =
  #| (self) => self

// WEBGL_compressed_texture_s3tc.COMPRESSED_RGB_S3TC_DXT1_EXT

///|
pub let webgl_compressed_texture_s3tc_compressed_rgb_s3tc_dxt1_ext : Int = 0x83F0

// WEBGL_compressed_texture_s3tc.COMPRESSED_RGBA_S3TC_DXT1_EXT

///|
pub let webgl_compressed_texture_s3tc_compressed_rgba_s3tc_dxt1_ext : Int = 0x83F1

// WEBGL_compressed_texture_s3tc.COMPRESSED_RGBA_S3TC_DXT3_EXT

///|
pub let webgl_compressed_texture_s3tc_compressed_rgba_s3tc_dxt3_ext : Int = 0x83F2

// WEBGL_compressed_texture_s3tc.COMPRESSED_RGBA_S3TC_DXT5_EXT

///|
pub let webgl_compressed_texture_s3tc_compressed_rgba_s3tc_dxt5_ext : Int = 0x83F3
