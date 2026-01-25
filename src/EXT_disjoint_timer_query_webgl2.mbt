// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_disjoint_timer_query_webgl2

///|
/// EXT_disjoint_timer_query_webgl2 interface
pub type EXT_disjoint_timer_query_webgl2

///|
pub extern "js" fn EXT_disjoint_timer_query_webgl2::to_js_value(
  self : EXT_disjoint_timer_query_webgl2,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_disjoint_timer_query_webgl2 (unchecked)
pub extern "js" fn EXT_disjoint_timer_query_webgl2::from_js_value(
  v : JsValue,
) -> EXT_disjoint_timer_query_webgl2 =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_disjoint_timer_query_webgl2 (checked with instanceof)
pub extern "js" fn EXT_disjoint_timer_query_webgl2::from_js_value_opt(
  v : JsValue,
) -> EXT_disjoint_timer_query_webgl2? =
  #| (v) => (v instanceof EXT_disjoint_timer_query_webgl2) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_disjoint_timer_query_webgl2 (checked with instanceof)
pub extern "js" fn JsValue::as_ext_disjoint_timer_query_webgl2(
  self : JsValue,
) -> EXT_disjoint_timer_query_webgl2? =
  #| (self) => (self instanceof EXT_disjoint_timer_query_webgl2) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_disjoint_timer_query_webgl2 (unchecked)
pub extern "js" fn JsValue::to_ext_disjoint_timer_query_webgl2(
  self : JsValue,
) -> EXT_disjoint_timer_query_webgl2 =
  #| (self) => self

// EXT_disjoint_timer_query_webgl2.QUERY_COUNTER_BITS_EXT

///|
pub let ext_disjoint_timer_query_webgl2_query_counter_bits_ext : Int = 0x8864

// EXT_disjoint_timer_query_webgl2.TIME_ELAPSED_EXT

///|
pub let ext_disjoint_timer_query_webgl2_time_elapsed_ext : Int = 0x88BF

// EXT_disjoint_timer_query_webgl2.TIMESTAMP_EXT

///|
pub let ext_disjoint_timer_query_webgl2_timestamp_ext : Int = 0x8E28

// EXT_disjoint_timer_query_webgl2.GPU_DISJOINT_EXT

///|
pub let ext_disjoint_timer_query_webgl2_gpu_disjoint_ext : Int = 0x8FBB

///|
pub extern "js" fn EXT_disjoint_timer_query_webgl2::query_counter_ext(
  self : EXT_disjoint_timer_query_webgl2,
  query : WebGLQuery,
  target : GLenum,
) -> Unit =
  #| (self, query, target) => self.queryCounterEXT(query, target)
