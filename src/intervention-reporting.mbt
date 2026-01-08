// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/intervention-reporting

///|
/// InterventionReportBody dictionary
pub struct InterventionReportBody {
  id : String?
  message : String?
  sourceFile : Nullable[String]
  lineNumber : Nullable[Int]
  columnNumber : Nullable[Int]
}

///|
/// Create a new InterventionReportBody with default values
pub fn InterventionReportBody::default() -> InterventionReportBody {
  InterventionReportBody::{
    id: None,
    message: None,
    sourceFile: Nullable::Undefined,
    lineNumber: Nullable::Undefined,
    columnNumber: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn InterventionReportBody::to_js(
  self : InterventionReportBody,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   message: self.message,
  #|   sourceFile: ((() => { const v = self.sourceFile; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   lineNumber: ((() => { const v = self.lineNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   columnNumber: ((() => { const v = self.columnNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })
