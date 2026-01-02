// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/OES_draw_buffers_indexed

///|
/// OES_draw_buffers_indexed interface
pub type OES_draw_buffers_indexed

pub extern "js" fn OES_draw_buffers_indexed::to_js_value(self : OES_draw_buffers_indexed) -> JsValue =
  #| (self) => self

pub extern "js" fn OES_draw_buffers_indexed::enablei_o_e_s(self : OES_draw_buffers_indexed, target : GLenum, index : GLuint) -> Unit =
  #| (self, target, index) => self.enableiOES(target, index)

pub extern "js" fn OES_draw_buffers_indexed::disablei_o_e_s(self : OES_draw_buffers_indexed, target : GLenum, index : GLuint) -> Unit =
  #| (self, target, index) => self.disableiOES(target, index)

pub extern "js" fn OES_draw_buffers_indexed::blend_equationi_o_e_s(self : OES_draw_buffers_indexed, buf : GLuint, mode : GLenum) -> Unit =
  #| (self, buf, mode) => self.blendEquationiOES(buf, mode)

pub extern "js" fn OES_draw_buffers_indexed::blend_equation_separatei_o_e_s(self : OES_draw_buffers_indexed, buf : GLuint, mode_r_g_b : GLenum, mode_alpha : GLenum) -> Unit =
  #| (self, buf, mode_r_g_b, mode_alpha) => self.blendEquationSeparateiOES(buf, mode_r_g_b, mode_alpha)

pub extern "js" fn OES_draw_buffers_indexed::blend_funci_o_e_s(self : OES_draw_buffers_indexed, buf : GLuint, src : GLenum, dst : GLenum) -> Unit =
  #| (self, buf, src, dst) => self.blendFunciOES(buf, src, dst)

pub extern "js" fn OES_draw_buffers_indexed::blend_func_separatei_o_e_s(self : OES_draw_buffers_indexed, buf : GLuint, src_r_g_b : GLenum, dst_r_g_b : GLenum, src_alpha : GLenum, dst_alpha : GLenum) -> Unit =
  #| (self, buf, src_r_g_b, dst_r_g_b, src_alpha, dst_alpha) => self.blendFuncSeparateiOES(buf, src_r_g_b, dst_r_g_b, src_alpha, dst_alpha)

pub extern "js" fn OES_draw_buffers_indexed::color_maski_o_e_s(self : OES_draw_buffers_indexed, buf : GLuint, r : GLboolean, g : GLboolean, b : GLboolean, a : GLboolean) -> Unit =
  #| (self, buf, r, g, b, a) => self.colorMaskiOES(buf, r, g, b, a)

