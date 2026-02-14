// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/csp-next

///|
/// ScriptingPolicyViolationType enum
pub(all) enum ScriptingPolicyViolationType {
  ExternalScript
  InlineScript
  InlineEventHandler
  Eval
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ScriptingPolicyViolationType::to_string(
  self : ScriptingPolicyViolationType,
) -> String {
  match self {
    ScriptingPolicyViolationType::ExternalScript => "externalScript"
    ScriptingPolicyViolationType::InlineScript => "inlineScript"
    ScriptingPolicyViolationType::InlineEventHandler => "inlineEventHandler"
    ScriptingPolicyViolationType::Eval => "eval"
  }
}

///|
/// Parse from string value
pub fn ScriptingPolicyViolationType::from_string(
  s : String,
) -> ScriptingPolicyViolationType? {
  match s {
    "externalScript" => Some(ScriptingPolicyViolationType::ExternalScript)
    "inlineScript" => Some(ScriptingPolicyViolationType::InlineScript)
    "inlineEventHandler" =>
      Some(ScriptingPolicyViolationType::InlineEventHandler)
    "eval" => Some(ScriptingPolicyViolationType::Eval)
    _ => None
  }
}

///|
/// ScriptingPolicyReportBody dictionary
pub(all) struct ScriptingPolicyReportBody {
  violationType : String?
  violationURL : Nullable[String]
  violationSample : Nullable[String]
  lineno : Int?
  colno : Int?
}

///|
/// Create a new ScriptingPolicyReportBody with default values
pub fn ScriptingPolicyReportBody::default() -> ScriptingPolicyReportBody {
  ScriptingPolicyReportBody::{
    violationType: None,
    violationURL: Nullable::Undefined,
    violationSample: Nullable::Undefined,
    lineno: None,
    colno: None,
  }
}

///|
extern "js" fn ScriptingPolicyReportBody::to_js_ffi(
  self : ScriptingPolicyReportBody,
) -> JsValue =
  #| (self) => ({
  #|   violationType: self.violationType,
  #|   violationURL: ((() => { const v = self.violationURL; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   violationSample: ((() => { const v = self.violationSample; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   lineno: self.lineno,
  #|   colno: self.colno
  #| })

///|
/// Convert to JsValue
pub fn ScriptingPolicyReportBody::to_js(
  self : ScriptingPolicyReportBody,
) -> JsValue {
  ScriptingPolicyReportBody::to_js_ffi(self)
}

///|
extern "js" fn ScriptingPolicyReportBody::from_js_ffi(
  value : JsValue,
) -> ScriptingPolicyReportBody =
  #| (v) => ({
  #|   violationType: v.violationType,
  #|   violationURL: (v.violationURL === undefined ? { $tag: 0 } : v.violationURL === null ? { $tag: 1 } : { $tag: 2, _0: v.violationURL }),
  #|   violationSample: (v.violationSample === undefined ? { $tag: 0 } : v.violationSample === null ? { $tag: 1 } : { $tag: 2, _0: v.violationSample }),
  #|   lineno: v.lineno,
  #|   colno: v.colno
  #| })

///|
/// Convert from JsValue
pub fn ScriptingPolicyReportBody::from_js(
  value : JsValue,
) -> ScriptingPolicyReportBody {
  ScriptingPolicyReportBody::from_js_ffi(value)
}
