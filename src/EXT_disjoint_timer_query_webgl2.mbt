// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_disjoint_timer_query_webgl2

///|
/// EXT_disjoint_timer_query_webgl2 interface
pub type EXT_disjoint_timer_query_webgl2

pub extern "js" fn EXT_disjoint_timer_query_webgl2::to_js_value(self : EXT_disjoint_timer_query_webgl2) -> JsValue =
  #| (self) => self

pub extern "js" fn EXT_disjoint_timer_query_webgl2::query_counter_e_x_t(self : EXT_disjoint_timer_query_webgl2, query : WebGLQuery, target : GLenum) -> Unit =
  #| (self, query, target) => self.queryCounterEXT(query, target)

