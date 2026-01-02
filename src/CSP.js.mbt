// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/CSP

///|
/// SecurityPolicyViolationEventDisposition enum
pub(all) enum SecurityPolicyViolationEventDisposition {
  Enforce
  Report
}

/// Convert to string value
pub fn SecurityPolicyViolationEventDisposition::to_string(self : SecurityPolicyViolationEventDisposition) -> String {
  match self {
    Enforce => "enforce"
    Report => "report"
  }
}

/// Parse from string value
pub fn SecurityPolicyViolationEventDisposition::from_string(s : String) -> SecurityPolicyViolationEventDisposition? {
  match s {
    "enforce" => Some(Enforce)
    "report" => Some(Report)
    _ => None
  }
}

///|
/// CSPViolationReportBody dictionary
pub struct CSPViolationReportBody {
  documentURL : String?
  referrer : String??
  blockedURL : String??
  effectiveDirective : String?
  originalPolicy : String?
  sourceFile : String??
  sample : String??
  disposition : SecurityPolicyViolationEventDisposition?
  statusCode : Int?
  lineNumber : Int??
  columnNumber : Int??
}

/// Create a new CSPViolationReportBody with default values
pub fn CSPViolationReportBody::default() -> CSPViolationReportBody {
  CSPViolationReportBody::{
    documentURL: None,
    referrer: None,
    blockedURL: None,
    effectiveDirective: None,
    originalPolicy: None,
    sourceFile: None,
    sample: None,
    disposition: None,
    statusCode: None,
    lineNumber: None,
    columnNumber: None,
  }
}

/// Convert to JsValue
pub extern "js" fn CSPViolationReportBody::to_js(self : CSPViolationReportBody) -> JsValue =
  #| (self) => ({
  #|   documentURL: self.documentURL,
  #|   referrer: self.referrer,
  #|   blockedURL: self.blockedURL,
  #|   effectiveDirective: self.effectiveDirective,
  #|   originalPolicy: self.originalPolicy,
  #|   sourceFile: self.sourceFile,
  #|   sample: self.sample,
  #|   disposition: self.disposition,
  #|   statusCode: self.statusCode,
  #|   lineNumber: self.lineNumber,
  #|   columnNumber: self.columnNumber
  #| })

///|
/// SecurityPolicyViolationEventInit dictionary
pub struct SecurityPolicyViolationEventInit {
  documentURI : String?
  referrer : String?
  blockedURI : String?
  violatedDirective : String?
  effectiveDirective : String?
  originalPolicy : String?
  sourceFile : String?
  sample : String?
  disposition : SecurityPolicyViolationEventDisposition?
  statusCode : Int?
  lineNumber : Int?
  columnNumber : Int?
}

/// Create a new SecurityPolicyViolationEventInit with default values
pub fn SecurityPolicyViolationEventInit::default() -> SecurityPolicyViolationEventInit {
  SecurityPolicyViolationEventInit::{
    documentURI: None,
    referrer: None,
    blockedURI: None,
    violatedDirective: None,
    effectiveDirective: None,
    originalPolicy: None,
    sourceFile: None,
    sample: None,
    disposition: None,
    statusCode: None,
    lineNumber: None,
    columnNumber: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SecurityPolicyViolationEventInit::to_js(self : SecurityPolicyViolationEventInit) -> JsValue =
  #| (self) => ({
  #|   documentURI: self.documentURI,
  #|   referrer: self.referrer,
  #|   blockedURI: self.blockedURI,
  #|   violatedDirective: self.violatedDirective,
  #|   effectiveDirective: self.effectiveDirective,
  #|   originalPolicy: self.originalPolicy,
  #|   sourceFile: self.sourceFile,
  #|   sample: self.sample,
  #|   disposition: self.disposition,
  #|   statusCode: self.statusCode,
  #|   lineNumber: self.lineNumber,
  #|   columnNumber: self.columnNumber
  #| })

///|
/// SecurityPolicyViolationEvent interface
pub type SecurityPolicyViolationEvent

pub extern "js" fn SecurityPolicyViolationEvent::to_js_value(self : SecurityPolicyViolationEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn SecurityPolicyViolationEvent::new(type_ : String, event_init_dict : SecurityPolicyViolationEventInit) -> SecurityPolicyViolationEvent =
  #| (type_, event_init_dict) => new SecurityPolicyViolationEvent(type_, event_init_dict)

pub extern "js" fn SecurityPolicyViolationEvent::get_document_u_r_i(self : SecurityPolicyViolationEvent) -> String =
  #| (self) => self.documentURI

pub extern "js" fn SecurityPolicyViolationEvent::get_referrer(self : SecurityPolicyViolationEvent) -> String =
  #| (self) => self.referrer

pub extern "js" fn SecurityPolicyViolationEvent::get_blocked_u_r_i(self : SecurityPolicyViolationEvent) -> String =
  #| (self) => self.blockedURI

pub extern "js" fn SecurityPolicyViolationEvent::get_effective_directive(self : SecurityPolicyViolationEvent) -> String =
  #| (self) => self.effectiveDirective

pub extern "js" fn SecurityPolicyViolationEvent::get_violated_directive(self : SecurityPolicyViolationEvent) -> String =
  #| (self) => self.violatedDirective

pub extern "js" fn SecurityPolicyViolationEvent::get_original_policy(self : SecurityPolicyViolationEvent) -> String =
  #| (self) => self.originalPolicy

pub extern "js" fn SecurityPolicyViolationEvent::get_source_file(self : SecurityPolicyViolationEvent) -> String =
  #| (self) => self.sourceFile

pub extern "js" fn SecurityPolicyViolationEvent::get_sample(self : SecurityPolicyViolationEvent) -> String =
  #| (self) => self.sample

pub extern "js" fn SecurityPolicyViolationEvent::get_disposition(self : SecurityPolicyViolationEvent) -> SecurityPolicyViolationEventDisposition =
  #| (self) => self.disposition

pub extern "js" fn SecurityPolicyViolationEvent::get_status_code(self : SecurityPolicyViolationEvent) -> Int =
  #| (self) => self.statusCode

pub extern "js" fn SecurityPolicyViolationEvent::get_line_number(self : SecurityPolicyViolationEvent) -> Int =
  #| (self) => self.lineNumber

pub extern "js" fn SecurityPolicyViolationEvent::get_column_number(self : SecurityPolicyViolationEvent) -> Int =
  #| (self) => self.columnNumber

