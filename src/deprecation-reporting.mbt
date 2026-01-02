// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/deprecation-reporting

///|
/// DeprecationReportBody dictionary
pub struct DeprecationReportBody {
  id : String?
  anticipatedRemoval : JsValue??
  message : String?
  sourceFile : String??
  lineNumber : Int??
  columnNumber : Int??
}

/// Create a new DeprecationReportBody with default values
pub fn DeprecationReportBody::default() -> DeprecationReportBody {
  DeprecationReportBody::{
    id: None,
    anticipatedRemoval: None,
    message: None,
    sourceFile: None,
    lineNumber: None,
    columnNumber: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DeprecationReportBody::to_js(self : DeprecationReportBody) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   anticipatedRemoval: self.anticipatedRemoval,
  #|   message: self.message,
  #|   sourceFile: self.sourceFile,
  #|   lineNumber: self.lineNumber,
  #|   columnNumber: self.columnNumber
  #| })

