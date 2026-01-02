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

/// Convert to string value
pub fn ScriptingPolicyViolationType::to_string(self : ScriptingPolicyViolationType) -> String {
  match self {
    ExternalScript => "externalScript"
    InlineScript => "inlineScript"
    InlineEventHandler => "inlineEventHandler"
    Eval => "eval"
  }
}

/// Parse from string value
pub fn ScriptingPolicyViolationType::from_string(s : String) -> ScriptingPolicyViolationType? {
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
  violationURL : String??
  violationSample : String??
  lineno : Int?
  colno : Int?
}

/// Create a new ScriptingPolicyReportBody with default values
pub fn ScriptingPolicyReportBody::default() -> ScriptingPolicyReportBody {
  ScriptingPolicyReportBody::{
    violationType: None,
    violationURL: None,
    violationSample: None,
    lineno: None,
    colno: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ScriptingPolicyReportBody::to_js(self : ScriptingPolicyReportBody) -> JsValue =
  #| (self) => ({
  #|   violationType: self.violationType,
  #|   violationURL: self.violationURL,
  #|   violationSample: self.violationSample,
  #|   lineno: self.lineno,
  #|   colno: self.colno
  #| })

