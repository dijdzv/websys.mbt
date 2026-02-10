// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/sri

///|
/// IntegrityViolationReportBody dictionary
pub(all) struct IntegrityViolationReportBody {
  documentURL : String?
  blockedURL : String?
  destination : String?
  reportOnly : Bool?
}

///|
/// Create a new IntegrityViolationReportBody with default values
pub fn IntegrityViolationReportBody::default() -> IntegrityViolationReportBody {
  IntegrityViolationReportBody::{
    documentURL: None,
    blockedURL: None,
    destination: None,
    reportOnly: None,
  }
}

///|
extern "js" fn IntegrityViolationReportBody::to_js_ffi(
  self : IntegrityViolationReportBody,
) -> JsValue =
  #| (self) => ({
  #|   documentURL: self.documentURL,
  #|   blockedURL: self.blockedURL,
  #|   destination: self.destination,
  #|   reportOnly: (self.reportOnly === -1 ? undefined : self.reportOnly)
  #| })

///|
/// Convert to JsValue
pub fn IntegrityViolationReportBody::to_js(
  self : IntegrityViolationReportBody,
) -> JsValue {
  IntegrityViolationReportBody::to_js_ffi(self)
}

///|
extern "js" fn IntegrityViolationReportBody::from_js_ffi(
  value : JsValue,
) -> IntegrityViolationReportBody =
  #| (v) => ({
  #|   documentURL: v.documentURL,
  #|   blockedURL: v.blockedURL,
  #|   destination: v.destination,
  #|   reportOnly: (v.reportOnly === undefined ? -1 : v.reportOnly)
  #| })

///|
/// Convert from JsValue
pub fn IntegrityViolationReportBody::from_js(
  value : JsValue,
) -> IntegrityViolationReportBody {
  IntegrityViolationReportBody::from_js_ffi(value)
}
