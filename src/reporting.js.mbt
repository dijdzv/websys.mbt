// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/reporting

///|
/// ReportList typedef
pub type ReportList = JsValue

/// ReportingObserverCallback callback interface
pub type ReportingObserverCallback

///|
/// ReportBody dictionary
pub struct ReportBody {
}

/// Create a new ReportBody with default values
pub fn ReportBody::default() -> ReportBody {
  ReportBody::{
  }
}

/// Convert to JsValue
pub extern "js" fn ReportBody::to_js(self : ReportBody) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Report dictionary
pub struct Report {
  type_ : String?
  url : String?
  body : ReportBody??
}

/// Create a new Report with default values
pub fn Report::default() -> Report {
  Report::{
    type_: None,
    url: None,
    body: None,
  }
}

/// Convert to JsValue
pub extern "js" fn Report::to_js(self : Report) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   url: self.url,
  #|   body: self.body
  #| })

///|
/// ReportingObserverOptions dictionary
pub struct ReportingObserverOptions {
  types : JsValue?
  buffered : Bool?
}

/// Create a new ReportingObserverOptions with default values
pub fn ReportingObserverOptions::default() -> ReportingObserverOptions {
  ReportingObserverOptions::{
    types: None,
    buffered: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ReportingObserverOptions::to_js(self : ReportingObserverOptions) -> JsValue =
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

/// Create a new GenerateTestReportParameters with default values
pub fn GenerateTestReportParameters::default() -> GenerateTestReportParameters {
  GenerateTestReportParameters::{
    message: "",
    group: None,
  }
}

/// Convert to JsValue
pub extern "js" fn GenerateTestReportParameters::to_js(self : GenerateTestReportParameters) -> JsValue =
  #| (self) => ({
  #|   message: self.message,
  #|   group: self.group
  #| })

///|
/// ReportingObserver interface
pub type ReportingObserver

pub extern "js" fn ReportingObserver::to_js_value(self : ReportingObserver) -> JsValue =
  #| (self) => self

pub extern "js" fn ReportingObserver::new(callback : ReportingObserverCallback, options : ReportingObserverOptions) -> ReportingObserver =
  #| (callback, options) => new ReportingObserver(callback, options)

pub extern "js" fn ReportingObserver::observe(self : ReportingObserver) -> Unit =
  #| (self) => self.observe()

pub extern "js" fn ReportingObserver::disconnect(self : ReportingObserver) -> Unit =
  #| (self) => self.disconnect()

pub extern "js" fn ReportingObserver::take_records(self : ReportingObserver) -> ReportList =
  #| (self) => self.takeRecords()

