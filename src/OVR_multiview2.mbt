// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/OVR_multiview2

///|
/// OVR_multiview2 interface
pub type OVR_multiview2

///|
pub extern "js" fn OVR_multiview2::to_js_value(
  self : OVR_multiview2,
) -> JsValue =
  #| (self) => self

// OVR_multiview2.FRAMEBUFFER_ATTACHMENT_TEXTURE_NUM_VIEWS_OVR

///|
pub let o_v_r_multiview2_framebuffer_attachment_texture_num_views_ovr : Int = 0x9630

// OVR_multiview2.FRAMEBUFFER_ATTACHMENT_TEXTURE_BASE_VIEW_INDEX_OVR

///|
pub let o_v_r_multiview2_framebuffer_attachment_texture_base_view_index_ovr : Int = 0x9632

// OVR_multiview2.MAX_VIEWS_OVR

///|
pub let o_v_r_multiview2_max_views_ovr : Int = 0x9631

// OVR_multiview2.FRAMEBUFFER_INCOMPLETE_VIEW_TARGETS_OVR

///|
pub let o_v_r_multiview2_framebuffer_incomplete_view_targets_ovr : Int = 0x9633

///|
pub extern "js" fn OVR_multiview2::framebuffer_texture_multiview_o_v_r(
  self : OVR_multiview2,
  target : GLenum,
  attachment : GLenum,
  texture : WebGLTexture?,
  level : GLint,
  base_view_index : GLint,
  num_views : GLsizei,
) -> Unit =
  #| (self, target, attachment, texture, level, base_view_index, num_views) => self.framebufferTextureMultiviewOVR(target, attachment, texture, level, base_view_index, num_views)
