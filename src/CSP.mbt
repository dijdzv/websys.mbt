// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/CSP

///|
/// SecurityPolicyViolationEventDisposition enum
pub(all) enum SecurityPolicyViolationEventDisposition {
  Enforce
  Report
}

///|
/// Convert to string value
pub fn SecurityPolicyViolationEventDisposition::to_string(
  self : SecurityPolicyViolationEventDisposition,
) -> String {
  match self {
    SecurityPolicyViolationEventDisposition::Enforce => "enforce"
    SecurityPolicyViolationEventDisposition::Report => "report"
  }
}

///|
/// Parse from string value
pub fn SecurityPolicyViolationEventDisposition::from_string(
  s : String,
) -> SecurityPolicyViolationEventDisposition? {
  match s {
    "enforce" => Some(SecurityPolicyViolationEventDisposition::Enforce)
    "report" => Some(SecurityPolicyViolationEventDisposition::Report)
    _ => None
  }
}

///|
/// CSPViolationReportBody dictionary
pub(all) struct CSPViolationReportBody {
  documentURL : String?
  referrer : Nullable[String]
  blockedURL : Nullable[String]
  effectiveDirective : String?
  originalPolicy : String?
  sourceFile : Nullable[String]
  sample : Nullable[String]
  disposition : SecurityPolicyViolationEventDisposition?
  statusCode : Int?
  lineNumber : Nullable[Int]
  columnNumber : Nullable[Int]
}

///|
/// Create a new CSPViolationReportBody with default values
pub fn CSPViolationReportBody::default() -> CSPViolationReportBody {
  CSPViolationReportBody::{
    documentURL: None,
    referrer: Nullable::Undefined,
    blockedURL: Nullable::Undefined,
    effectiveDirective: None,
    originalPolicy: None,
    sourceFile: Nullable::Undefined,
    sample: Nullable::Undefined,
    disposition: None,
    statusCode: None,
    lineNumber: Nullable::Undefined,
    columnNumber: Nullable::Undefined,
  }
}

///|
extern "js" fn CSPViolationReportBody::to_js_ffi(
  self : CSPViolationReportBody,
) -> JsValue =
  #| (self) => ({
  #|   documentURL: self.documentURL,
  #|   referrer: ((() => { const v = self.referrer; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   blockedURL: ((() => { const v = self.blockedURL; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   effectiveDirective: self.effectiveDirective,
  #|   originalPolicy: self.originalPolicy,
  #|   sourceFile: ((() => { const v = self.sourceFile; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   sample: ((() => { const v = self.sample; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   disposition: ((() => { const v = self.disposition; if (v === undefined) return undefined; return ['enforce', 'report'][v]; })()),
  #|   statusCode: self.statusCode,
  #|   lineNumber: ((() => { const v = self.lineNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   columnNumber: ((() => { const v = self.columnNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// Convert to JsValue
pub fn CSPViolationReportBody::to_js(self : CSPViolationReportBody) -> JsValue {
  CSPViolationReportBody::to_js_ffi(self)
}

///|
/// SecurityPolicyViolationEventInit dictionary
pub(all) struct SecurityPolicyViolationEventInit {
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

///|
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

///|
extern "js" fn SecurityPolicyViolationEventInit::to_js_ffi(
  self : SecurityPolicyViolationEventInit,
) -> JsValue =
  #| (self) => ({
  #|   documentURI: self.documentURI,
  #|   referrer: self.referrer,
  #|   blockedURI: self.blockedURI,
  #|   violatedDirective: self.violatedDirective,
  #|   effectiveDirective: self.effectiveDirective,
  #|   originalPolicy: self.originalPolicy,
  #|   sourceFile: self.sourceFile,
  #|   sample: self.sample,
  #|   disposition: ((() => { const v = self.disposition; if (v === undefined) return undefined; return ['enforce', 'report'][v]; })()),
  #|   statusCode: self.statusCode,
  #|   lineNumber: self.lineNumber,
  #|   columnNumber: self.columnNumber
  #| })

///|
/// Convert to JsValue
pub fn SecurityPolicyViolationEventInit::to_js(
  self : SecurityPolicyViolationEventInit,
) -> JsValue {
  SecurityPolicyViolationEventInit::to_js_ffi(self)
}

///|
/// SecurityPolicyViolationEvent interface
pub type SecurityPolicyViolationEvent

///|
pub extern "js" fn SecurityPolicyViolationEvent::to_js_value(
  self : SecurityPolicyViolationEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SecurityPolicyViolationEvent (unchecked)
pub extern "js" fn SecurityPolicyViolationEvent::from_js_value(
  v : JsValue,
) -> SecurityPolicyViolationEvent =
  #| (v) => v

///|
/// Safely cast JsValue to SecurityPolicyViolationEvent (checked with instanceof)
pub extern "js" fn SecurityPolicyViolationEvent::from_js_value_opt(
  v : JsValue,
) -> SecurityPolicyViolationEvent? =
  #| (v) => (v instanceof SecurityPolicyViolationEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SecurityPolicyViolationEvent (checked with instanceof)
pub extern "js" fn JsValue::as_security_policy_violation_event(
  self : JsValue,
) -> SecurityPolicyViolationEvent? =
  #| (self) => (self instanceof SecurityPolicyViolationEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SecurityPolicyViolationEvent (unchecked)
pub extern "js" fn JsValue::to_security_policy_violation_event(
  self : JsValue,
) -> SecurityPolicyViolationEvent =
  #| (self) => self

///|
pub extern "js" fn SecurityPolicyViolationEvent::to_event(
  self : SecurityPolicyViolationEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn SecurityPolicyViolationEvent::new(
  type_ : String,
) -> SecurityPolicyViolationEvent =
  #| (type_) => new SecurityPolicyViolationEvent(type_)

///|
extern "js" fn SecurityPolicyViolationEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> SecurityPolicyViolationEvent =
  #| (type_, event_init_dict) => new SecurityPolicyViolationEvent(type_, event_init_dict)

///|
pub fn SecurityPolicyViolationEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : SecurityPolicyViolationEventInit,
) -> SecurityPolicyViolationEvent {
  SecurityPolicyViolationEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_document_uri(
  self : SecurityPolicyViolationEvent,
) -> String =
  #| (self) => self.documentURI

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_referrer(
  self : SecurityPolicyViolationEvent,
) -> String =
  #| (self) => self.referrer

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_blocked_uri(
  self : SecurityPolicyViolationEvent,
) -> String =
  #| (self) => self.blockedURI

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_effective_directive(
  self : SecurityPolicyViolationEvent,
) -> String =
  #| (self) => self.effectiveDirective

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_violated_directive(
  self : SecurityPolicyViolationEvent,
) -> String =
  #| (self) => self.violatedDirective

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_original_policy(
  self : SecurityPolicyViolationEvent,
) -> String =
  #| (self) => self.originalPolicy

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_source_file(
  self : SecurityPolicyViolationEvent,
) -> String =
  #| (self) => self.sourceFile

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_sample(
  self : SecurityPolicyViolationEvent,
) -> String =
  #| (self) => self.sample

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_disposition(
  self : SecurityPolicyViolationEvent,
) -> SecurityPolicyViolationEventDisposition =
  #| (self) => ['enforce', 'report'].indexOf(self.disposition)

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_status_code(
  self : SecurityPolicyViolationEvent,
) -> Int =
  #| (self) => self.statusCode

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_line_number(
  self : SecurityPolicyViolationEvent,
) -> Int =
  #| (self) => self.lineNumber

///|
pub extern "js" fn SecurityPolicyViolationEvent::get_column_number(
  self : SecurityPolicyViolationEvent,
) -> Int =
  #| (self) => self.columnNumber
