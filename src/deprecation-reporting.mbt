// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/deprecation-reporting

///|
/// DeprecationReportBody dictionary
pub(all) struct DeprecationReportBody {
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
extern "js" fn DeprecationReportBody::to_js_ffi(
  self : DeprecationReportBody,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   anticipatedRemoval: ((() => { const v = self.anticipatedRemoval; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   message: self.message,
  #|   sourceFile: ((() => { const v = self.sourceFile; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   lineNumber: ((() => { const v = self.lineNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   columnNumber: ((() => { const v = self.columnNumber; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn DeprecationReportBody::to_js(self : DeprecationReportBody) -> JsValue {
  DeprecationReportBody::to_js_ffi(self)
}

///|
extern "js" fn DeprecationReportBody::from_js_ffi(
  value : JsValue,
) -> DeprecationReportBody =
  #| (v) => ({
  #|   id: v.id,
  #|   anticipatedRemoval: (v.anticipatedRemoval === undefined ? { $tag: 0 } : v.anticipatedRemoval === null ? { $tag: 1 } : { $tag: 2, _0: v.anticipatedRemoval }),
  #|   message: v.message,
  #|   sourceFile: (v.sourceFile === undefined ? { $tag: 0 } : v.sourceFile === null ? { $tag: 1 } : { $tag: 2, _0: v.sourceFile }),
  #|   lineNumber: (v.lineNumber === undefined ? { $tag: 0 } : v.lineNumber === null ? { $tag: 1 } : { $tag: 2, _0: v.lineNumber }),
  #|   columnNumber: (v.columnNumber === undefined ? { $tag: 0 } : v.columnNumber === null ? { $tag: 1 } : { $tag: 2, _0: v.columnNumber })
  #| })

///|
/// Convert from JsValue
pub fn DeprecationReportBody::from_js(value : JsValue) -> DeprecationReportBody {
  DeprecationReportBody::from_js_ffi(value)
}
