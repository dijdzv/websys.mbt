// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_disjoint_timer_query_webgl2

///|
/// EXT_disjoint_timer_query_webgl2 interface
pub type EXT_disjoint_timer_query_webgl2

pub extern "js" fn EXT_disjoint_timer_query_webgl2::to_js_value(self : EXT_disjoint_timer_query_webgl2) -> JsValue =
  #| (self) => self

// EXT_disjoint_timer_query_webgl2.QUERY_COUNTER_BITS_EXT
pub let e_x_t_disjoint_timer_query_webgl2_query_counter_bits_ext : Int = 0x8864

// EXT_disjoint_timer_query_webgl2.TIME_ELAPSED_EXT
pub let e_x_t_disjoint_timer_query_webgl2_time_elapsed_ext : Int = 0x88BF

// EXT_disjoint_timer_query_webgl2.TIMESTAMP_EXT
pub let e_x_t_disjoint_timer_query_webgl2_timestamp_ext : Int = 0x8E28

// EXT_disjoint_timer_query_webgl2.GPU_DISJOINT_EXT
pub let e_x_t_disjoint_timer_query_webgl2_gpu_disjoint_ext : Int = 0x8FBB

pub extern "js" fn EXT_disjoint_timer_query_webgl2::query_counter_e_x_t(self : EXT_disjoint_timer_query_webgl2, query : WebGLQuery, target : GLenum) -> Unit =
  #| (self, query, target) => self.queryCounterEXT(query, target)

