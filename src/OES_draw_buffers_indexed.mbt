// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/OES_draw_buffers_indexed

///|
/// OES_draw_buffers_indexed interface
pub type OES_draw_buffers_indexed

///|
pub extern "js" fn OES_draw_buffers_indexed::to_js_value(
  self : OES_draw_buffers_indexed,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OES_draw_buffers_indexed (unchecked)
pub extern "js" fn OES_draw_buffers_indexed::from_js_value(
  v : JsValue,
) -> OES_draw_buffers_indexed =
  #| (v) => v

///|
/// Safely cast JsValue to OES_draw_buffers_indexed (checked with instanceof)
pub extern "js" fn OES_draw_buffers_indexed::from_js_value_opt(
  v : JsValue,
) -> OES_draw_buffers_indexed? =
  #| (v) => (v instanceof OES_draw_buffers_indexed) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OES_draw_buffers_indexed (checked with instanceof)
pub extern "js" fn JsValue::as_oes_draw_buffers_indexed(
  self : JsValue,
) -> OES_draw_buffers_indexed? =
  #| (self) => (self instanceof OES_draw_buffers_indexed) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OES_draw_buffers_indexed (unchecked)
pub extern "js" fn JsValue::to_oes_draw_buffers_indexed(
  self : JsValue,
) -> OES_draw_buffers_indexed =
  #| (self) => self

///|
pub extern "js" fn OES_draw_buffers_indexed::enablei_oes(
  self : OES_draw_buffers_indexed,
  target : GLenum,
  index : GLuint,
) -> Unit =
  #| (self, target, index) => self.enableiOES(target, index)

///|
pub extern "js" fn OES_draw_buffers_indexed::disablei_oes(
  self : OES_draw_buffers_indexed,
  target : GLenum,
  index : GLuint,
) -> Unit =
  #| (self, target, index) => self.disableiOES(target, index)

///|
pub extern "js" fn OES_draw_buffers_indexed::blend_equationi_oes(
  self : OES_draw_buffers_indexed,
  buf : GLuint,
  mode : GLenum,
) -> Unit =
  #| (self, buf, mode) => self.blendEquationiOES(buf, mode)

///|
pub extern "js" fn OES_draw_buffers_indexed::blend_equation_separatei_oes(
  self : OES_draw_buffers_indexed,
  buf : GLuint,
  mode_rgb : GLenum,
  mode_alpha : GLenum,
) -> Unit =
  #| (self, buf, mode_rgb, mode_alpha) => self.blendEquationSeparateiOES(buf, mode_rgb, mode_alpha)

///|
pub extern "js" fn OES_draw_buffers_indexed::blend_funci_oes(
  self : OES_draw_buffers_indexed,
  buf : GLuint,
  src : GLenum,
  dst : GLenum,
) -> Unit =
  #| (self, buf, src, dst) => self.blendFunciOES(buf, src, dst)

///|
pub extern "js" fn OES_draw_buffers_indexed::blend_func_separatei_oes(
  self : OES_draw_buffers_indexed,
  buf : GLuint,
  src_rgb : GLenum,
  dst_rgb : GLenum,
  src_alpha : GLenum,
  dst_alpha : GLenum,
) -> Unit =
  #| (self, buf, src_rgb, dst_rgb, src_alpha, dst_alpha) => self.blendFuncSeparateiOES(buf, src_rgb, dst_rgb, src_alpha, dst_alpha)

///|
pub extern "js" fn OES_draw_buffers_indexed::color_maski_oes(
  self : OES_draw_buffers_indexed,
  buf : GLuint,
  r : GLboolean,
  g : GLboolean,
  b : GLboolean,
  a : GLboolean,
) -> Unit =
  #| (self, buf, r, g, b, a) => self.colorMaskiOES(buf, r, g, b, a)
