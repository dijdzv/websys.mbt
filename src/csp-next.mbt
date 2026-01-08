// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/csp-next

///|
/// ScriptingPolicyViolationType enum
pub(all) enum ScriptingPolicyViolationType {
  ExternalScript
  InlineScript
  InlineEventHandler
  Eval
}

///|
/// Convert to string value
pub fn ScriptingPolicyViolationType::to_string(
  self : ScriptingPolicyViolationType,
) -> String {
  match self {
    ExternalScript => "externalScript"
    InlineScript => "inlineScript"
    InlineEventHandler => "inlineEventHandler"
    Eval => "eval"
  }
}

///|
/// Parse from string value
pub fn ScriptingPolicyViolationType::from_string(
  s : String,
) -> ScriptingPolicyViolationType? {
  match s {
    "externalScript" => Some(ExternalScript)
    "inlineScript" => Some(InlineScript)
    "inlineEventHandler" => Some(InlineEventHandler)
    "eval" => Some(Eval)
    _ => None
  }
}

///|
/// ScriptingPolicyReportBody dictionary
pub struct ScriptingPolicyReportBody {
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
/// Convert to JsValue
pub extern "js" fn ScriptingPolicyReportBody::to_js(
  self : ScriptingPolicyReportBody,
) -> JsValue =
  #| (self) => ({
  #|   violationType: self.violationType,
  #|   violationURL: ((() => { const v = self.violationURL; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   violationSample: ((() => { const v = self.violationSample; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   lineno: self.lineno,
  #|   colno: self.colno
  #| })
