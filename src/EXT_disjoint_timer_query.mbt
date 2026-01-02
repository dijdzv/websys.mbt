// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/EXT_disjoint_timer_query

///|
/// GLuint64EXT typedef
pub type GLuint64EXT = Int64

///|
/// WebGLTimerQueryEXT interface
pub type WebGLTimerQueryEXT

pub extern "js" fn WebGLTimerQueryEXT::to_js_value(self : WebGLTimerQueryEXT) -> JsValue =
  #| (self) => self

///|
/// EXT_disjoint_timer_query interface
pub type EXT_disjoint_timer_query

pub extern "js" fn EXT_disjoint_timer_query::to_js_value(self : EXT_disjoint_timer_query) -> JsValue =
  #| (self) => self

pub extern "js" fn EXT_disjoint_timer_query::create_query_e_x_t(self : EXT_disjoint_timer_query) -> WebGLTimerQueryEXT =
  #| (self) => self.createQueryEXT()

pub extern "js" fn EXT_disjoint_timer_query::delete_query_e_x_t(self : EXT_disjoint_timer_query, query : WebGLTimerQueryEXT?) -> Unit =
  #| (self, query) => self.deleteQueryEXT(query)

pub extern "js" fn EXT_disjoint_timer_query::is_query_e_x_t(self : EXT_disjoint_timer_query, query : WebGLTimerQueryEXT?) -> Bool =
  #| (self, query) => self.isQueryEXT(query)

pub extern "js" fn EXT_disjoint_timer_query::begin_query_e_x_t(self : EXT_disjoint_timer_query, target : GLenum, query : WebGLTimerQueryEXT) -> Unit =
  #| (self, target, query) => self.beginQueryEXT(target, query)

pub extern "js" fn EXT_disjoint_timer_query::end_query_e_x_t(self : EXT_disjoint_timer_query, target : GLenum) -> Unit =
  #| (self, target) => self.endQueryEXT(target)

pub extern "js" fn EXT_disjoint_timer_query::query_counter_e_x_t(self : EXT_disjoint_timer_query, query : WebGLTimerQueryEXT, target : GLenum) -> Unit =
  #| (self, query, target) => self.queryCounterEXT(query, target)

pub extern "js" fn EXT_disjoint_timer_query::get_query_e_x_t(self : EXT_disjoint_timer_query, target : GLenum, pname : GLenum) -> JsValue =
  #| (self, target, pname) => self.getQueryEXT(target, pname)

pub extern "js" fn EXT_disjoint_timer_query::get_query_object_e_x_t(self : EXT_disjoint_timer_query, query : WebGLTimerQueryEXT, pname : GLenum) -> JsValue =
  #| (self, query, pname) => self.getQueryObjectEXT(query, pname)

