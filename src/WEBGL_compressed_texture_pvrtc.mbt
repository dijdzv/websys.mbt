// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_compressed_texture_pvrtc

///|
/// WEBGL_compressed_texture_pvrtc interface
pub type WEBGL_compressed_texture_pvrtc

///|
pub extern "js" fn WEBGL_compressed_texture_pvrtc::to_js_value(
  self : WEBGL_compressed_texture_pvrtc,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_compressed_texture_pvrtc (unchecked)
pub extern "js" fn WEBGL_compressed_texture_pvrtc::from_js_value(
  v : JsValue,
) -> WEBGL_compressed_texture_pvrtc =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_compressed_texture_pvrtc (checked with instanceof)
pub extern "js" fn WEBGL_compressed_texture_pvrtc::from_js_value_opt(
  v : JsValue,
) -> WEBGL_compressed_texture_pvrtc? =
  #| (v) => (v instanceof WEBGL_compressed_texture_pvrtc) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_compressed_texture_pvrtc (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_compressed_texture_pvrtc(
  self : JsValue,
) -> WEBGL_compressed_texture_pvrtc? =
  #| (self) => (self instanceof WEBGL_compressed_texture_pvrtc) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_compressed_texture_pvrtc (unchecked)
pub extern "js" fn JsValue::to_webgl_compressed_texture_pvrtc(
  self : JsValue,
) -> WEBGL_compressed_texture_pvrtc =
  #| (self) => self

// WEBGL_compressed_texture_pvrtc.COMPRESSED_RGB_PVRTC_4BPPV1_IMG

///|
pub let webgl_compressed_texture_pvrtc_compressed_rgb_pvrtc_4bppv1_img : Int = 0x8C00

// WEBGL_compressed_texture_pvrtc.COMPRESSED_RGB_PVRTC_2BPPV1_IMG

///|
pub let webgl_compressed_texture_pvrtc_compressed_rgb_pvrtc_2bppv1_img : Int = 0x8C01

// WEBGL_compressed_texture_pvrtc.COMPRESSED_RGBA_PVRTC_4BPPV1_IMG

///|
pub let webgl_compressed_texture_pvrtc_compressed_rgba_pvrtc_4bppv1_img : Int = 0x8C02

// WEBGL_compressed_texture_pvrtc.COMPRESSED_RGBA_PVRTC_2BPPV1_IMG

///|
pub let webgl_compressed_texture_pvrtc_compressed_rgba_pvrtc_2bppv1_img : Int = 0x8C03
