// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/connection-allowlists

///|
/// ConnectionAllowlistDisposition enum
pub(all) enum ConnectionAllowlistDisposition {
  Enforce
  Report
} derive(Eq, Debug)

pub extend ConnectionAllowlistDisposition with Eq::{equal, not_equal}
pub extend ConnectionAllowlistDisposition with @debug.Debug::{to_repr}

/// Convert to string value
pub fn ConnectionAllowlistDisposition::to_string(self : ConnectionAllowlistDisposition) -> String {
  match self {
    ConnectionAllowlistDisposition::Enforce => "enforce"
    ConnectionAllowlistDisposition::Report => "report"
  }
}

/// Parse from string value
pub fn ConnectionAllowlistDisposition::from_string(s : String) -> ConnectionAllowlistDisposition? {
  match s {
    "enforce" => Some(ConnectionAllowlistDisposition::Enforce)
    "report" => Some(ConnectionAllowlistDisposition::Report)
    _ => None
  }
}

///|
/// ConnectionAllowlistViolationReport dictionary
pub(all) struct ConnectionAllowlistViolationReport {
  url : String?
  connection : String?
  allowlist : FixedArray[String]?
  disposition : ConnectionAllowlistDisposition?
}

/// Create a new ConnectionAllowlistViolationReport with default values
pub fn ConnectionAllowlistViolationReport::default() -> ConnectionAllowlistViolationReport {
  ConnectionAllowlistViolationReport::{
    url: None,
    connection: None,
    allowlist: None,
    disposition: None,
  }
}

extern "js" fn ConnectionAllowlistViolationReport::to_js_ffi(self : ConnectionAllowlistViolationReport) -> JsValue =
  #| (self) => ({
  #|   url: self.url,
  #|   connection: self.connection,
  #|   allowlist: self.allowlist,
  #|   disposition: ((() => { const v = self.disposition; if (v === undefined) return undefined; return ['enforce', 'report'][v]; })())
  #| })

/// Convert to JsValue
pub fn ConnectionAllowlistViolationReport::to_js(self : ConnectionAllowlistViolationReport) -> JsValue {
  ConnectionAllowlistViolationReport::to_js_ffi(self)
}

extern "js" fn ConnectionAllowlistViolationReport::from_js_ffi(value : JsValue) -> ConnectionAllowlistViolationReport =
  #| (v) => ({
  #|   url: v.url,
  #|   connection: v.connection,
  #|   allowlist: v.allowlist,
  #|   disposition: (v.disposition === undefined ? undefined : ['enforce', 'report'].indexOf(v.disposition))
  #| })

/// Convert from JsValue
pub fn ConnectionAllowlistViolationReport::from_js(value : JsValue) -> ConnectionAllowlistViolationReport {
  ConnectionAllowlistViolationReport::from_js_ffi(value)
}
