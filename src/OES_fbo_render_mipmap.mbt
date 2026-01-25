// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/OES_fbo_render_mipmap

///|
/// OES_fbo_render_mipmap interface
pub type OES_fbo_render_mipmap

///|
pub extern "js" fn OES_fbo_render_mipmap::to_js_value(
  self : OES_fbo_render_mipmap,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OES_fbo_render_mipmap (unchecked)
pub extern "js" fn OES_fbo_render_mipmap::from_js_value(
  v : JsValue,
) -> OES_fbo_render_mipmap =
  #| (v) => v

///|
/// Safely cast JsValue to OES_fbo_render_mipmap (checked with instanceof)
pub extern "js" fn OES_fbo_render_mipmap::from_js_value_opt(
  v : JsValue,
) -> OES_fbo_render_mipmap? =
  #| (v) => (v instanceof OES_fbo_render_mipmap) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OES_fbo_render_mipmap (checked with instanceof)
pub extern "js" fn JsValue::as_oes_fbo_render_mipmap(
  self : JsValue,
) -> OES_fbo_render_mipmap? =
  #| (self) => (self instanceof OES_fbo_render_mipmap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OES_fbo_render_mipmap (unchecked)
pub extern "js" fn JsValue::to_oes_fbo_render_mipmap(
  self : JsValue,
) -> OES_fbo_render_mipmap =
  #| (self) => self
