// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc-diagnostic-logging

///|
/// RTCDiagnosticLoggingOptions dictionary
pub(all) struct RTCDiagnosticLoggingOptions {
  metadata : JsValue?
}

/// Create a new RTCDiagnosticLoggingOptions with default values
pub fn RTCDiagnosticLoggingOptions::default() -> RTCDiagnosticLoggingOptions {
  RTCDiagnosticLoggingOptions::{
    metadata: None,
  }
}

extern "js" fn RTCDiagnosticLoggingOptions::to_js_ffi(self : RTCDiagnosticLoggingOptions) -> JsValue =
  #| (self) => ({
  #|   metadata: ((() => { const v = self.metadata; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn RTCDiagnosticLoggingOptions::to_js(self : RTCDiagnosticLoggingOptions) -> JsValue {
  RTCDiagnosticLoggingOptions::to_js_ffi(self)
}

extern "js" fn RTCDiagnosticLoggingOptions::from_js_ffi(value : JsValue) -> RTCDiagnosticLoggingOptions =
  #| (v) => ({
  #|   metadata: (v.metadata === undefined ? { $tag: 0 } : { $tag: 1, _0: v.metadata })
  #| })

/// Convert from JsValue
pub fn RTCDiagnosticLoggingOptions::from_js(value : JsValue) -> RTCDiagnosticLoggingOptions {
  RTCDiagnosticLoggingOptions::from_js_ffi(value)
}
