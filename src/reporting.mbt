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
  #| (handler) => handler

///|
/// ReportBody dictionary
pub struct ReportBody {}

///|
/// Create a new ReportBody with default values
pub fn ReportBody::default() -> ReportBody {
  ReportBody::{  }
}

///|
/// Convert to JsValue
pub extern "js" fn ReportBody::to_js(self : ReportBody) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Report dictionary
pub struct Report {
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
/// Convert to JsValue
pub extern "js" fn Report::to_js(self : Report) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   url: self.url,
  #|   body: ((() => { const v = self.body; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// ReportingObserverOptions dictionary
pub struct ReportingObserverOptions {
  types : Array[String]?
  buffered : Bool?
}

///|
/// Create a new ReportingObserverOptions with default values
pub fn ReportingObserverOptions::default() -> ReportingObserverOptions {
  ReportingObserverOptions::{ types: None, buffered: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ReportingObserverOptions::to_js(
  self : ReportingObserverOptions,
) -> JsValue =
  #| (self) => ({
  #|   types: self.types,
  #|   buffered: self.buffered
  #| })

///|
/// GenerateTestReportParameters dictionary
pub struct GenerateTestReportParameters {
  message : String
  group : String?
}

///|
/// Create a new GenerateTestReportParameters with default values
pub fn GenerateTestReportParameters::default() -> GenerateTestReportParameters {
  GenerateTestReportParameters::{ message: "", group: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GenerateTestReportParameters::to_js(
  self : GenerateTestReportParameters,
) -> JsValue =
  #| (self) => ({
  #|   message: self.message,
  #|   group: self.group
  #| })

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
  options : ReportingObserverOptions,
) -> ReportingObserver =
  #| (callback, options) => new ReportingObserver(callback, options)

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
