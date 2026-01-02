// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/sri

///|
/// IntegrityViolationReportBody dictionary
pub struct IntegrityViolationReportBody {
  documentURL : String?
  blockedURL : String?
  destination : String?
  reportOnly : Bool?
}

/// Create a new IntegrityViolationReportBody with default values
pub fn IntegrityViolationReportBody::default() -> IntegrityViolationReportBody {
  IntegrityViolationReportBody::{
    documentURL: None,
    blockedURL: None,
    destination: None,
    reportOnly: None,
  }
}

/// Convert to JsValue
pub extern "js" fn IntegrityViolationReportBody::to_js(self : IntegrityViolationReportBody) -> JsValue =
  #| (self) => ({
  #|   documentURL: self.documentURL,
  #|   blockedURL: self.blockedURL,
  #|   destination: self.destination,
  #|   reportOnly: self.reportOnly
  #| })

