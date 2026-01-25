// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_compressed_texture_astc

///|
/// WEBGL_compressed_texture_astc interface
pub type WEBGL_compressed_texture_astc

///|
pub extern "js" fn WEBGL_compressed_texture_astc::to_js_value(
  self : WEBGL_compressed_texture_astc,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_compressed_texture_astc (unchecked)
pub extern "js" fn WEBGL_compressed_texture_astc::from_js_value(
  v : JsValue,
) -> WEBGL_compressed_texture_astc =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_compressed_texture_astc (checked with instanceof)
pub extern "js" fn WEBGL_compressed_texture_astc::from_js_value_opt(
  v : JsValue,
) -> WEBGL_compressed_texture_astc? =
  #| (v) => (v instanceof WEBGL_compressed_texture_astc) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_compressed_texture_astc (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_compressed_texture_astc(
  self : JsValue,
) -> WEBGL_compressed_texture_astc? =
  #| (self) => (self instanceof WEBGL_compressed_texture_astc) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_compressed_texture_astc (unchecked)
pub extern "js" fn JsValue::to_webgl_compressed_texture_astc(
  self : JsValue,
) -> WEBGL_compressed_texture_astc =
  #| (self) => self

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_4x4_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_4x4_khr : Int = 0x93B0

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_5x4_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_5x4_khr : Int = 0x93B1

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_5x5_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_5x5_khr : Int = 0x93B2

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_6x5_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_6x5_khr : Int = 0x93B3

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_6x6_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_6x6_khr : Int = 0x93B4

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_8x5_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_8x5_khr : Int = 0x93B5

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_8x6_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_8x6_khr : Int = 0x93B6

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_8x8_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_8x8_khr : Int = 0x93B7

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_10x5_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_10x5_khr : Int = 0x93B8

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_10x6_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_10x6_khr : Int = 0x93B9

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_10x8_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_10x8_khr : Int = 0x93BA

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_10x10_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_10x10_khr : Int = 0x93BB

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_12x10_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_12x10_khr : Int = 0x93BC

// WEBGL_compressed_texture_astc.COMPRESSED_RGBA_ASTC_12x12_KHR

///|
pub let webgl_compressed_texture_astc_compressed_rgba_astc_12x12_khr : Int = 0x93BD

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_4x4_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_4x4_khr : Int = 0x93D0

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_5x4_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_5x4_khr : Int = 0x93D1

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_5x5_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_5x5_khr : Int = 0x93D2

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_6x5_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_6x5_khr : Int = 0x93D3

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_6x6_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_6x6_khr : Int = 0x93D4

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_8x5_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_8x5_khr : Int = 0x93D5

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_8x6_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_8x6_khr : Int = 0x93D6

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_8x8_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_8x8_khr : Int = 0x93D7

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_10x5_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_10x5_khr : Int = 0x93D8

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_10x6_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_10x6_khr : Int = 0x93D9

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_10x8_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_10x8_khr : Int = 0x93DA

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_10x10_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_10x10_khr : Int = 0x93DB

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_12x10_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_12x10_khr : Int = 0x93DC

// WEBGL_compressed_texture_astc.COMPRESSED_SRGB8_ALPHA8_ASTC_12x12_KHR

///|
pub let webgl_compressed_texture_astc_compressed_srgb8_alpha8_astc_12x12_khr : Int = 0x93DD

///|
pub extern "js" fn WEBGL_compressed_texture_astc::get_supported_profiles(
  self : WEBGL_compressed_texture_astc,
) -> Array[String] =
  #| (self) => self.getSupportedProfiles()
