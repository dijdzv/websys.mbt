// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_compressed_texture_etc

///|
/// WEBGL_compressed_texture_etc interface
pub type WEBGL_compressed_texture_etc

///|
pub extern "js" fn WEBGL_compressed_texture_etc::to_js_value(
  self : WEBGL_compressed_texture_etc,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_compressed_texture_etc (unchecked)
pub extern "js" fn WEBGL_compressed_texture_etc::from_js_value(
  v : JsValue,
) -> WEBGL_compressed_texture_etc =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_compressed_texture_etc (checked with instanceof)
pub extern "js" fn WEBGL_compressed_texture_etc::from_js_value_opt(
  v : JsValue,
) -> WEBGL_compressed_texture_etc? =
  #| (v) => (v instanceof WEBGL_compressed_texture_etc) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_compressed_texture_etc (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_compressed_texture_etc(
  self : JsValue,
) -> WEBGL_compressed_texture_etc? =
  #| (self) => (self instanceof WEBGL_compressed_texture_etc) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_compressed_texture_etc (unchecked)
pub extern "js" fn JsValue::to_webgl_compressed_texture_etc(
  self : JsValue,
) -> WEBGL_compressed_texture_etc =
  #| (self) => self

// WEBGL_compressed_texture_etc.COMPRESSED_R11_EAC

///|
pub let webgl_compressed_texture_etc_compressed_r11_eac : Int = 0x9270

// WEBGL_compressed_texture_etc.COMPRESSED_SIGNED_R11_EAC

///|
pub let webgl_compressed_texture_etc_compressed_signed_r11_eac : Int = 0x9271

// WEBGL_compressed_texture_etc.COMPRESSED_RG11_EAC

///|
pub let webgl_compressed_texture_etc_compressed_rg11_eac : Int = 0x9272

// WEBGL_compressed_texture_etc.COMPRESSED_SIGNED_RG11_EAC

///|
pub let webgl_compressed_texture_etc_compressed_signed_rg11_eac : Int = 0x9273

// WEBGL_compressed_texture_etc.COMPRESSED_RGB8_ETC2

///|
pub let webgl_compressed_texture_etc_compressed_rgb8_etc2 : Int = 0x9274

// WEBGL_compressed_texture_etc.COMPRESSED_SRGB8_ETC2

///|
pub let webgl_compressed_texture_etc_compressed_srgb8_etc2 : Int = 0x9275

// WEBGL_compressed_texture_etc.COMPRESSED_RGB8_PUNCHTHROUGH_ALPHA1_ETC2

///|
pub let webgl_compressed_texture_etc_compressed_rgb8_punchthrough_alpha1_etc2 : Int = 0x9276

// WEBGL_compressed_texture_etc.COMPRESSED_SRGB8_PUNCHTHROUGH_ALPHA1_ETC2

///|
pub let webgl_compressed_texture_etc_compressed_srgb8_punchthrough_alpha1_etc2 : Int = 0x9277

// WEBGL_compressed_texture_etc.COMPRESSED_RGBA8_ETC2_EAC

///|
pub let webgl_compressed_texture_etc_compressed_rgba8_etc2_eac : Int = 0x9278

// WEBGL_compressed_texture_etc.COMPRESSED_SRGB8_ALPHA8_ETC2_EAC

///|
pub let webgl_compressed_texture_etc_compressed_srgb8_alpha8_etc2_eac : Int = 0x9279
