// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/crash-reporting

///|
/// CrashReportBody dictionary
pub struct CrashReportBody {
  reason : String?
  stack : String?
  is_top_level : Bool?
  visibility_state : DocumentVisibilityState?
}

/// Create a new CrashReportBody with default values
pub fn CrashReportBody::default() -> CrashReportBody {
  CrashReportBody::{
    reason: None,
    stack: None,
    is_top_level: None,
    visibility_state: None,
  }
}

/// Convert to JsValue
pub extern "js" fn CrashReportBody::to_js(self : CrashReportBody) -> JsValue =
  #| (self) => ({
  #|   reason: self.reason,
  #|   stack: self.stack,
  #|   is_top_level: self.is_top_level,
  #|   visibility_state: self.visibility_state
  #| })

