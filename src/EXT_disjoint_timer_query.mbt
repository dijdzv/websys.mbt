// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_disjoint_timer_query

///|
/// GLuint64EXT typedef
pub type GLuint64EXT = Int64

///|
/// WebGLTimerQueryEXT interface
pub type WebGLTimerQueryEXT

///|
pub extern "js" fn WebGLTimerQueryEXT::to_js_value(
  self : WebGLTimerQueryEXT,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WebGLTimerQueryEXT (unchecked)
pub extern "js" fn WebGLTimerQueryEXT::from_js_value(
  v : JsValue,
) -> WebGLTimerQueryEXT =
  #| (v) => v

///|
/// Safely cast JsValue to WebGLTimerQueryEXT (checked with instanceof)
pub extern "js" fn WebGLTimerQueryEXT::from_js_value_opt(
  v : JsValue,
) -> WebGLTimerQueryEXT? =
  #| (v) => (v instanceof WebGLTimerQueryEXT) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WebGLTimerQueryEXT (checked with instanceof)
pub extern "js" fn JsValue::as_web_gl_timer_query_ext(
  self : JsValue,
) -> WebGLTimerQueryEXT? =
  #| (self) => (self instanceof WebGLTimerQueryEXT) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WebGLTimerQueryEXT (unchecked)
pub extern "js" fn JsValue::to_web_gl_timer_query_ext(
  self : JsValue,
) -> WebGLTimerQueryEXT =
  #| (self) => self

///|
pub extern "js" fn WebGLTimerQueryEXT::to_web_gl_object(
  self : WebGLTimerQueryEXT,
) -> WebGLObject =
  #| (self) => self

///|
/// EXT_disjoint_timer_query interface
pub type EXT_disjoint_timer_query

///|
pub extern "js" fn EXT_disjoint_timer_query::to_js_value(
  self : EXT_disjoint_timer_query,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to EXT_disjoint_timer_query (unchecked)
pub extern "js" fn EXT_disjoint_timer_query::from_js_value(
  v : JsValue,
) -> EXT_disjoint_timer_query =
  #| (v) => v

///|
/// Safely cast JsValue to EXT_disjoint_timer_query (checked with instanceof)
pub extern "js" fn EXT_disjoint_timer_query::from_js_value_opt(
  v : JsValue,
) -> EXT_disjoint_timer_query? =
  #| (v) => (v instanceof EXT_disjoint_timer_query) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EXT_disjoint_timer_query (checked with instanceof)
pub extern "js" fn JsValue::as_ext_disjoint_timer_query(
  self : JsValue,
) -> EXT_disjoint_timer_query? =
  #| (self) => (self instanceof EXT_disjoint_timer_query) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EXT_disjoint_timer_query (unchecked)
pub extern "js" fn JsValue::to_ext_disjoint_timer_query(
  self : JsValue,
) -> EXT_disjoint_timer_query =
  #| (self) => self

// EXT_disjoint_timer_query.QUERY_COUNTER_BITS_EXT

///|
pub let ext_disjoint_timer_query_query_counter_bits_ext : Int = 0x8864

// EXT_disjoint_timer_query.CURRENT_QUERY_EXT

///|
pub let ext_disjoint_timer_query_current_query_ext : Int = 0x8865

// EXT_disjoint_timer_query.QUERY_RESULT_EXT

///|
pub let ext_disjoint_timer_query_query_result_ext : Int = 0x8866

// EXT_disjoint_timer_query.QUERY_RESULT_AVAILABLE_EXT

///|
pub let ext_disjoint_timer_query_query_result_available_ext : Int = 0x8867

// EXT_disjoint_timer_query.TIME_ELAPSED_EXT

///|
pub let ext_disjoint_timer_query_time_elapsed_ext : Int = 0x88BF

// EXT_disjoint_timer_query.TIMESTAMP_EXT

///|
pub let ext_disjoint_timer_query_timestamp_ext : Int = 0x8E28

// EXT_disjoint_timer_query.GPU_DISJOINT_EXT

///|
pub let ext_disjoint_timer_query_gpu_disjoint_ext : Int = 0x8FBB

///|
pub extern "js" fn EXT_disjoint_timer_query::create_query_ext(
  self : EXT_disjoint_timer_query,
) -> WebGLTimerQueryEXT =
  #| (self) => self.createQueryEXT()

///|
pub extern "js" fn EXT_disjoint_timer_query::delete_query_ext(
  self : EXT_disjoint_timer_query,
  query : WebGLTimerQueryEXT?,
) -> Unit =
  #| (self, query) => self.deleteQueryEXT((query.$tag === 1 ? query._0 : null))

///|
pub extern "js" fn EXT_disjoint_timer_query::is_query_ext(
  self : EXT_disjoint_timer_query,
  query : WebGLTimerQueryEXT?,
) -> Bool =
  #| (self, query) => self.isQueryEXT((query.$tag === 1 ? query._0 : null))

///|
pub extern "js" fn EXT_disjoint_timer_query::begin_query_ext(
  self : EXT_disjoint_timer_query,
  target : GLenum,
  query : WebGLTimerQueryEXT,
) -> Unit =
  #| (self, target, query) => self.beginQueryEXT(target, query)

///|
pub extern "js" fn EXT_disjoint_timer_query::end_query_ext(
  self : EXT_disjoint_timer_query,
  target : GLenum,
) -> Unit =
  #| (self, target) => self.endQueryEXT(target)

///|
pub extern "js" fn EXT_disjoint_timer_query::query_counter_ext(
  self : EXT_disjoint_timer_query,
  query : WebGLTimerQueryEXT,
  target : GLenum,
) -> Unit =
  #| (self, query, target) => self.queryCounterEXT(query, target)

///|
pub extern "js" fn EXT_disjoint_timer_query::get_query_ext(
  self : EXT_disjoint_timer_query,
  target : GLenum,
  pname : GLenum,
) -> JsValue =
  #| (self, target, pname) => self.getQueryEXT(target, pname)

///|
pub extern "js" fn EXT_disjoint_timer_query::get_query_object_ext(
  self : EXT_disjoint_timer_query,
  query : WebGLTimerQueryEXT,
  pname : GLenum,
) -> JsValue =
  #| (self, query, pname) => self.getQueryObjectEXT(query, pname)
