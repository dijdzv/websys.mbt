// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/crash-reporting

///|
/// CrashReportBody dictionary
pub(all) struct CrashReportBody {
  reason : String?
  stack : String?
  is_top_level : Bool?
  visibility_state : DocumentVisibilityState?
  crash_report_api : JsValue?
}

///|
/// Create a new CrashReportBody with default values
pub fn CrashReportBody::default() -> CrashReportBody {
  CrashReportBody::{
    reason: None,
    stack: None,
    is_top_level: None,
    visibility_state: None,
    crash_report_api: None,
  }
}

///|
extern "js" fn CrashReportBody::to_js_ffi(self : CrashReportBody) -> JsValue =
  #| (self) => ({
  #|   reason: self.reason,
  #|   stack: self.stack,
  #|   is_top_level: (self.is_top_level === -1 ? undefined : self.is_top_level),
  #|   visibility_state: ((() => { const v = self.visibility_state; if (v === undefined) return undefined; return ['visible', 'hidden'][v]; })()),
  #|   crash_report_api: ((() => { const v = self.crash_report_api; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
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
  #|   visibility_state: (v.visibility_state === undefined ? undefined : ['visible', 'hidden'].indexOf(v.visibility_state)),
  #|   crash_report_api: (v.crash_report_api === undefined ? { $tag: 0 } : { $tag: 1, _0: v.crash_report_api })
  #| })

///|
/// Convert from JsValue
pub fn CrashReportBody::from_js(value : JsValue) -> CrashReportBody {
  CrashReportBody::from_js_ffi(value)
}

///|
/// CrashReportContext interface
pub type CrashReportContext

///|
pub extern "js" fn CrashReportContext::to_js_value(
  self : CrashReportContext,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CrashReportContext (unchecked)
pub extern "js" fn CrashReportContext::from_js_value(
  v : JsValue,
) -> CrashReportContext =
  #| (v) => v

///|
/// Safely cast JsValue to CrashReportContext (checked with instanceof)
pub extern "js" fn CrashReportContext::from_js_value_opt(
  v : JsValue,
) -> CrashReportContext? =
  #| (v) => (v instanceof CrashReportContext) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CrashReportContext (checked with instanceof)
pub extern "js" fn JsValue::as_crash_report_context(
  self : JsValue,
) -> CrashReportContext? =
  #| (self) => (self instanceof CrashReportContext) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CrashReportContext (unchecked)
pub extern "js" fn JsValue::to_crash_report_context(
  self : JsValue,
) -> CrashReportContext =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum CrashReportContextInitializeError {
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
/// Error type for throwing methods
pub(all) enum CrashReportContextSetError {
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
/// Error type for throwing methods
pub(all) enum CrashReportContextDeleteError {
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
pub extern "js" fn CrashReportContext::initialize(
  self : CrashReportContext,
  length : Int64,
) -> Promise[Result[Unit, CrashReportContextInitializeError]] =
  #| (self, length) => self.initialize(Number(length)).then(r => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotAllowedError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub extern "js" fn CrashReportContext::set(
  self : CrashReportContext,
  key : String,
  value : String,
) -> Result[Unit, CrashReportContextSetError] =
  #| (self, key, value) => (() => { try { self.set(key, value); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotAllowedError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub extern "js" fn CrashReportContext::delete(
  self : CrashReportContext,
  key : String,
) -> Result[Unit, CrashReportContextDeleteError] =
  #| (self, key) => (() => { try { self.delete(key); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()
