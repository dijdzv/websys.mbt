// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_compressed_texture_etc1

///|
/// WEBGL_compressed_texture_etc1 interface
pub type WEBGL_compressed_texture_etc1

///|
pub extern "js" fn WEBGL_compressed_texture_etc1::to_js_value(
  self : WEBGL_compressed_texture_etc1,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_compressed_texture_etc1 (unchecked)
pub extern "js" fn WEBGL_compressed_texture_etc1::from_js_value(
  v : JsValue,
) -> WEBGL_compressed_texture_etc1 =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_compressed_texture_etc1 (checked with instanceof)
pub extern "js" fn WEBGL_compressed_texture_etc1::from_js_value_opt(
  v : JsValue,
) -> WEBGL_compressed_texture_etc1? =
  #| (v) => (v instanceof WEBGL_compressed_texture_etc1) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_compressed_texture_etc1 (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_compressed_texture_etc1(
  self : JsValue,
) -> WEBGL_compressed_texture_etc1? =
  #| (self) => (self instanceof WEBGL_compressed_texture_etc1) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_compressed_texture_etc1 (unchecked)
pub extern "js" fn JsValue::to_webgl_compressed_texture_etc1(
  self : JsValue,
) -> WEBGL_compressed_texture_etc1 =
  #| (self) => self

// WEBGL_compressed_texture_etc1.COMPRESSED_RGB_ETC1_WEBGL

///|
pub let webgl_compressed_texture_etc1_compressed_rgb_etc1_webgl : Int = 0x8D64
