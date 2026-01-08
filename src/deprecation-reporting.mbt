// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/deprecation-reporting

///|
/// DeprecationReportBody dictionary
pub struct DeprecationReportBody {
  id : String?
  anticipatedRemoval : Nullable[JsValue]
  message : String?
  sourceFile : Nullable[String]
  lineNumber : Nullable[Int]
  columnNumber : Nullable[Int]
}

///|
/// Create a new DeprecationReportBody with default values
pub fn DeprecationReportBody::default() -> DeprecationReportBody {
  DeprecationReportBody::{
    id: None,
    anticipatedRemoval: Nullable::Undefined,
    message: None,
    sourceFile: Nullable::Undefined,
    lineNumber: Nullable::Undefined,
    columnNumber: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn DeprecationReportBody::to_js(
  self : DeprecationReportBody,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   anticipatedRemoval: ((() => { const v = self.anticipatedRemoval; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   message: self.message,
  #|   sourceFile: ((() => { const v = self.sourceFile; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   lineNumber: ((() => { const v = self.lineNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   columnNumber: ((() => { const v = self.columnNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })
