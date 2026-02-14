// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/intervention-reporting

///|
/// InterventionReportBody dictionary
pub(all) struct InterventionReportBody {
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
extern "js" fn InterventionReportBody::to_js_ffi(
  self : InterventionReportBody,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   message: self.message,
  #|   sourceFile: ((() => { const v = self.sourceFile; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   lineNumber: ((() => { const v = self.lineNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   columnNumber: ((() => { const v = self.columnNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn InterventionReportBody::to_js(self : InterventionReportBody) -> JsValue {
  InterventionReportBody::to_js_ffi(self)
}

///|
extern "js" fn InterventionReportBody::from_js_ffi(
  value : JsValue,
) -> InterventionReportBody =
  #| (v) => ({
  #|   id: v.id,
  #|   message: v.message,
  #|   sourceFile: (v.sourceFile === undefined ? { $tag: 0 } : v.sourceFile === null ? { $tag: 1 } : { $tag: 2, _0: v.sourceFile }),
  #|   lineNumber: (v.lineNumber === undefined ? { $tag: 0 } : v.lineNumber === null ? { $tag: 1 } : { $tag: 2, _0: v.lineNumber }),
  #|   columnNumber: (v.columnNumber === undefined ? { $tag: 0 } : v.columnNumber === null ? { $tag: 1 } : { $tag: 2, _0: v.columnNumber })
  #| })

///|
/// Convert from JsValue
pub fn InterventionReportBody::from_js(
  value : JsValue,
) -> InterventionReportBody {
  InterventionReportBody::from_js_ffi(value)
}
