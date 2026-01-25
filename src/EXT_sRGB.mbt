// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_sRGB

///|
/// EXT_sRGB interface
pub type EXT_sRGB

///|
pub extern "js" fn EXT_sRGB::to_js_value(self : EXT_sRGB) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_sRGB (unchecked)
pub extern "js" fn EXT_sRGB::from_js_value(v : JsValue) -> EXT_sRGB =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_sRGB (checked with instanceof)
pub extern "js" fn EXT_sRGB::from_js_value_opt(v : JsValue) -> EXT_sRGB? =
  #| (v) => (v instanceof EXT_sRGB) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_sRGB (checked with instanceof)
pub extern "js" fn JsValue::as_ext_s_rgb(self : JsValue) -> EXT_sRGB? =
  #| (self) => (self instanceof EXT_sRGB) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_sRGB (unchecked)
pub extern "js" fn JsValue::to_ext_s_rgb(self : JsValue) -> EXT_sRGB =
  #| (self) => self

// EXT_sRGB.SRGB_EXT

///|
pub let ext_s_rgb_srgb_ext : Int = 0x8C40

// EXT_sRGB.SRGB_ALPHA_EXT

///|
pub let ext_s_rgb_srgb_alpha_ext : Int = 0x8C42

// EXT_sRGB.SRGB8_ALPHA8_EXT

///|
pub let ext_s_rgb_srgb8_alpha8_ext : Int = 0x8C43

// EXT_sRGB.FRAMEBUFFER_ATTACHMENT_COLOR_ENCODING_EXT

///|
pub let ext_s_rgb_framebuffer_attachment_color_encoding_ext : Int = 0x8210
