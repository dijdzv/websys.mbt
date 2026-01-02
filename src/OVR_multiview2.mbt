// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/OVR_multiview2

///|
/// OVR_multiview2 interface
pub type OVR_multiview2

pub extern "js" fn OVR_multiview2::to_js_value(self : OVR_multiview2) -> JsValue =
  #| (self) => self

pub extern "js" fn OVR_multiview2::framebuffer_texture_multiview_o_v_r(self : OVR_multiview2, target : GLenum, attachment : GLenum, texture : WebGLTexture?, level : GLint, base_view_index : GLint, num_views : GLsizei) -> Unit =
  #| (self, target, attachment, texture, level, base_view_index, num_views) => self.framebufferTextureMultiviewOVR(target, attachment, texture, level, base_view_index, num_views)

