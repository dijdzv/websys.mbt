// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/crash-reporting

///|
/// CrashReportBody dictionary
pub(all) struct CrashReportBody {
  reason : String?
  stack : String?
  is_top_level : Bool?
  visibility_state : DocumentVisibilityState?
}

///|
/// Create a new CrashReportBody with default values
pub fn CrashReportBody::default() -> CrashReportBody {
  CrashReportBody::{
    reason: None,
    stack: None,
    is_top_level: None,
    visibility_state: None,
  }
}

///|
extern "js" fn CrashReportBody::to_js_ffi(self : CrashReportBody) -> JsValue =
  #| (self) => ({
  #|   reason: self.reason,
  #|   stack: self.stack,
  #|   is_top_level: (self.is_top_level === -1 ? undefined : self.is_top_level),
  #|   visibility_state: ((() => { const v = self.visibility_state; if (v === undefined) return undefined; return ['visible', 'hidden'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn CrashReportBody::to_js(self : CrashReportBody) -> JsValue {
  CrashReportBody::to_js_ffi(self)
}

///|
extern "js" fn CrashReportBody::from_js_ffi(value : JsValue) -> CrashReportBody =
  #| (v) => ({
  #|   reason: v.reason,
  #|   stack: v.stack,
  #|   is_top_level: (v.is_top_level === undefined ? -1 : v.is_top_level),
  #|   visibility_state: (v.visibility_state === undefined ? undefined : ['visible', 'hidden'].indexOf(v.visibility_state))
  #| })

///|
/// Convert from JsValue
pub fn CrashReportBody::from_js(value : JsValue) -> CrashReportBody {
  CrashReportBody::from_js_ffi(value)
}
