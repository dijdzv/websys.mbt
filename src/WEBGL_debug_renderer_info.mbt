// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/WEBGL_debug_renderer_info

///|
/// WEBGL_debug_renderer_info interface
pub type WEBGL_debug_renderer_info

///|
pub extern "js" fn WEBGL_debug_renderer_info::to_js_value(
  self : WEBGL_debug_renderer_info,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WEBGL_debug_renderer_info (unchecked)
pub extern "js" fn WEBGL_debug_renderer_info::from_js_value(
  v : JsValue,
) -> WEBGL_debug_renderer_info =
  #| (v) => v

///|
/// Safely cast JsValue to WEBGL_debug_renderer_info (checked with instanceof)
pub extern "js" fn WEBGL_debug_renderer_info::from_js_value_opt(
  v : JsValue,
) -> WEBGL_debug_renderer_info? =
  #| (v) => (v instanceof WEBGL_debug_renderer_info) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WEBGL_debug_renderer_info (checked with instanceof)
pub extern "js" fn JsValue::as_webgl_debug_renderer_info(
  self : JsValue,
) -> WEBGL_debug_renderer_info? =
  #| (self) => (self instanceof WEBGL_debug_renderer_info) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WEBGL_debug_renderer_info (unchecked)
pub extern "js" fn JsValue::to_webgl_debug_renderer_info(
  self : JsValue,
) -> WEBGL_debug_renderer_info =
  #| (self) => self

// WEBGL_debug_renderer_info.UNMASKED_VENDOR_WEBGL

///|
pub let webgl_debug_renderer_info_unmasked_vendor_webgl : Int = 0x9245

// WEBGL_debug_renderer_info.UNMASKED_RENDERER_WEBGL

///|
pub let webgl_debug_renderer_info_unmasked_renderer_webgl : Int = 0x9246
