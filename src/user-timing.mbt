// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/user-timing

///|
/// PerformanceMarkOptions dictionary
pub struct PerformanceMarkOptions {
  detail : JsValue?
  startTime : DOMHighResTimeStamp?
}

///|
/// Create a new PerformanceMarkOptions with default values
pub fn PerformanceMarkOptions::default() -> PerformanceMarkOptions {
  PerformanceMarkOptions::{ detail: None, startTime: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PerformanceMarkOptions::to_js(
  self : PerformanceMarkOptions,
) -> JsValue =
  #| (self) => ({
  #|   detail: self.detail,
  #|   startTime: self.startTime
  #| })

///|
/// PerformanceMeasureOptions dictionary
pub struct PerformanceMeasureOptions {
  detail : JsValue?
  start : JsValue?
  duration : DOMHighResTimeStamp?
  end : JsValue?
}

///|
/// Create a new PerformanceMeasureOptions with default values
pub fn PerformanceMeasureOptions::default() -> PerformanceMeasureOptions {
  PerformanceMeasureOptions::{
    detail: None,
    start: None,
    duration: None,
    end: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PerformanceMeasureOptions::to_js(
  self : PerformanceMeasureOptions,
) -> JsValue =
  #| (self) => ({
  #|   detail: self.detail,
  #|   start: self.start,
  #|   duration: self.duration,
  #|   end: self.end
  #| })

///|
/// PerformanceMark interface
pub type PerformanceMark

///|
pub extern "js" fn PerformanceMark::to_js_value(
  self : PerformanceMark,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PerformanceMark::new(
  mark_name : String,
  mark_options : PerformanceMarkOptions,
) -> PerformanceMark =
  #| (mark_name, mark_options) => new PerformanceMark(mark_name, mark_options)

///|
pub extern "js" fn PerformanceMark::get_detail(
  self : PerformanceMark,
) -> JsValue =
  #| (self) => self.detail

///|
/// PerformanceMeasure interface
pub type PerformanceMeasure

///|
pub extern "js" fn PerformanceMeasure::to_js_value(
  self : PerformanceMeasure,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PerformanceMeasure::get_detail(
  self : PerformanceMeasure,
) -> JsValue =
  #| (self) => self.detail
