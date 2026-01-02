// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/intervention-reporting

///|
/// InterventionReportBody dictionary
pub struct InterventionReportBody {
  id : String?
  message : String?
  sourceFile : String??
  lineNumber : Int??
  columnNumber : Int??
}

/// Create a new InterventionReportBody with default values
pub fn InterventionReportBody::default() -> InterventionReportBody {
  InterventionReportBody::{
    id: None,
    message: None,
    sourceFile: None,
    lineNumber: None,
    columnNumber: None,
  }
}

/// Convert to JsValue
pub extern "js" fn InterventionReportBody::to_js(self : InterventionReportBody) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   message: self.message,
  #|   sourceFile: self.sourceFile,
  #|   lineNumber: self.lineNumber,
  #|   columnNumber: self.columnNumber
  #| })

