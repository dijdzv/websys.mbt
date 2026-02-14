// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/reporting

///|
/// ReportList typedef
pub type ReportList = Array[Report]

///|
/// ReportingObserverCallback callback interface
pub type ReportingObserverCallback

///|
/// Create ReportingObserverCallback from a MoonBit function
pub extern "js" fn ReportingObserverCallback::from_fn(
  handler : (Array[Report], ReportingObserver) -> Unit,
) -> ReportingObserverCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// ReportBody dictionary
pub(all) struct ReportBody {}

///|
/// Create a new ReportBody with default values
pub fn ReportBody::default() -> ReportBody {
  ReportBody::{  }
}

///|
extern "js" fn ReportBody::to_js_ffi(self : ReportBody) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Convert to JsValue
pub fn ReportBody::to_js(self : ReportBody) -> JsValue {
  ReportBody::to_js_ffi(self)
}

///|
extern "js" fn ReportBody::from_js_ffi(value : JsValue) -> ReportBody =
  #| (v) => ({
  #| })

///|
/// Convert from JsValue
pub fn ReportBody::from_js(value : JsValue) -> ReportBody {
  ReportBody::from_js_ffi(value)
}

///|
/// Report dictionary
pub(all) struct Report {
  type_ : String?
  url : String?
  body : Nullable[ReportBody]
}

///|
/// Create a new Report with default values
pub fn Report::default() -> Report {
  Report::{ type_: None, url: None, body: Nullable::Undefined }
}

///|
extern "js" fn Report::to_js_ffi(self : Report) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   url: self.url,
  #|   body: ((() => { const v = self.body; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn Report::to_js(self : Report) -> JsValue {
  Report::to_js_ffi(self)
}

///|
extern "js" fn Report::from_js_ffi(value : JsValue) -> Report =
  #| (v) => ({
  #|   type_: v.type,
  #|   url: v.url,
  #|   body: (v.body === undefined ? { $tag: 0 } : v.body === null ? { $tag: 1 } : { $tag: 2, _0: v.body })
  #| })

///|
/// Convert from JsValue
pub fn Report::from_js(value : JsValue) -> Report {
  Report::from_js_ffi(value)
}

///|
/// ReportingObserverOptions dictionary
pub(all) struct ReportingObserverOptions {
  types : Array[String]?
  buffered : Bool?
}

///|
/// Create a new ReportingObserverOptions with default values
pub fn ReportingObserverOptions::default() -> ReportingObserverOptions {
  ReportingObserverOptions::{ types: None, buffered: None }
}

///|
extern "js" fn ReportingObserverOptions::to_js_ffi(
  self : ReportingObserverOptions,
) -> JsValue =
  #| (self) => ({
  #|   types: ((() => { const v = self.types; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   buffered: (self.buffered === -1 ? undefined : self.buffered)
  #| })

///|
/// Convert to JsValue
pub fn ReportingObserverOptions::to_js(
  self : ReportingObserverOptions,
) -> JsValue {
  ReportingObserverOptions::to_js_ffi(self)
}

///|
extern "js" fn ReportingObserverOptions::from_js_ffi(
  value : JsValue,
) -> ReportingObserverOptions =
  #| (v) => ({
  #|   types: (v.types === undefined ? { $tag: 0 } : { $tag: 1, _0: v.types }),
  #|   buffered: (v.buffered === undefined ? -1 : v.buffered)
  #| })

///|
/// Convert from JsValue
pub fn ReportingObserverOptions::from_js(
  value : JsValue,
) -> ReportingObserverOptions {
  ReportingObserverOptions::from_js_ffi(value)
}

///|
/// GenerateTestReportParameters dictionary
pub(all) struct GenerateTestReportParameters {
  message : String
  group : String?
}

///|
/// Create a new GenerateTestReportParameters with default values
pub fn GenerateTestReportParameters::default() -> GenerateTestReportParameters {
  GenerateTestReportParameters::{ message: "", group: None }
}

///|
extern "js" fn GenerateTestReportParameters::to_js_ffi(
  self : GenerateTestReportParameters,
) -> JsValue =
  #| (self) => ({
  #|   message: self.message,
  #|   group: self.group
  #| })

///|
/// Convert to JsValue
pub fn GenerateTestReportParameters::to_js(
  self : GenerateTestReportParameters,
) -> JsValue {
  GenerateTestReportParameters::to_js_ffi(self)
}

///|
extern "js" fn GenerateTestReportParameters::from_js_ffi(
  value : JsValue,
) -> GenerateTestReportParameters =
  #| (v) => ({
  #|   message: v.message,
  #|   group: v.group
  #| })

///|
/// Convert from JsValue
pub fn GenerateTestReportParameters::from_js(
  value : JsValue,
) -> GenerateTestReportParameters {
  GenerateTestReportParameters::from_js_ffi(value)
}

///|
/// ReportingObserver interface
pub type ReportingObserver

///|
pub extern "js" fn ReportingObserver::to_js_value(
  self : ReportingObserver,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ReportingObserver (unchecked)
pub extern "js" fn ReportingObserver::from_js_value(
  v : JsValue,
) -> ReportingObserver =
  #| (v) => v

///|
/// Safely cast JsValue to ReportingObserver (checked with instanceof)
pub extern "js" fn ReportingObserver::from_js_value_opt(
  v : JsValue,
) -> ReportingObserver? =
  #| (v) => (v instanceof ReportingObserver) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ReportingObserver (checked with instanceof)
pub extern "js" fn JsValue::as_reporting_observer(
  self : JsValue,
) -> ReportingObserver? =
  #| (self) => (self instanceof ReportingObserver) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ReportingObserver (unchecked)
pub extern "js" fn JsValue::to_reporting_observer(
  self : JsValue,
) -> ReportingObserver =
  #| (self) => self

///|
pub extern "js" fn ReportingObserver::new(
  callback : ReportingObserverCallback,
) -> ReportingObserver =
  #| (callback) => new ReportingObserver(callback)

///|
extern "js" fn ReportingObserver::new_with_options_ffi(
  callback : ReportingObserverCallback,
  options : JsValue,
) -> ReportingObserver =
  #| (callback, options) => new ReportingObserver(callback, options)

///|
pub fn ReportingObserver::new_with_options(
  callback : ReportingObserverCallback,
  options : ReportingObserverOptions,
) -> ReportingObserver {
  ReportingObserver::new_with_options_ffi(callback, options.to_js())
}

///|
pub extern "js" fn ReportingObserver::observe(self : ReportingObserver) -> Unit =
  #| (self) => self.observe()

///|
pub extern "js" fn ReportingObserver::disconnect(
  self : ReportingObserver,
) -> Unit =
  #| (self) => self.disconnect()

///|
pub extern "js" fn ReportingObserver::take_records(
  self : ReportingObserver,
) -> ReportList =
  #| (self) => self.takeRecords()
