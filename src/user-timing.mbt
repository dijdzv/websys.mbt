// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/user-timing

///|
/// PerformanceMarkOptions dictionary
pub(all) struct PerformanceMarkOptions {
  detail : JsValue?
  startTime : DOMHighResTimeStamp?
}

///|
/// Create a new PerformanceMarkOptions with default values
pub fn PerformanceMarkOptions::default() -> PerformanceMarkOptions {
  PerformanceMarkOptions::{ detail: None, startTime: None }
}

///|
extern "js" fn PerformanceMarkOptions::to_js_ffi(
  self : PerformanceMarkOptions,
) -> JsValue =
  #| (self) => ({
  #|   detail: ((() => { const v = self.detail; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   startTime: ((() => { const v = self.startTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PerformanceMarkOptions::to_js(self : PerformanceMarkOptions) -> JsValue {
  PerformanceMarkOptions::to_js_ffi(self)
}

///|
extern "js" fn PerformanceMarkOptions::from_js_ffi(
  value : JsValue,
) -> PerformanceMarkOptions =
  #| (v) => ({
  #|   detail: (v.detail === undefined ? { $tag: 0 } : { $tag: 1, _0: v.detail }),
  #|   startTime: (v.startTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.startTime })
  #| })

///|
/// Convert from JsValue
pub fn PerformanceMarkOptions::from_js(
  value : JsValue,
) -> PerformanceMarkOptions {
  PerformanceMarkOptions::from_js_ffi(value)
}

///|
/// PerformanceMeasureOptions dictionary
pub(all) struct PerformanceMeasureOptions {
  detail : JsValue?
  start : StringOrDOMHighResTimeStamp?
  duration : DOMHighResTimeStamp?
  end : StringOrDOMHighResTimeStamp?
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
extern "js" fn PerformanceMeasureOptions::to_js_ffi(
  self : PerformanceMeasureOptions,
) -> JsValue =
  #| (self) => ({
  #|   detail: ((() => { const v = self.detail; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   start: ((() => { const v = self.start; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   duration: ((() => { const v = self.duration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   end: ((() => { const v = self.end; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PerformanceMeasureOptions::to_js(
  self : PerformanceMeasureOptions,
) -> JsValue {
  PerformanceMeasureOptions::to_js_ffi(self)
}

///|
extern "js" fn PerformanceMeasureOptions::from_js_ffi(
  value : JsValue,
) -> PerformanceMeasureOptions =
  #| (v) => ({
  #|   detail: (v.detail === undefined ? { $tag: 0 } : { $tag: 1, _0: v.detail }),
  #|   start: (v.start === undefined ? { $tag: 0 } : { $tag: 1, _0: v.start }),
  #|   duration: (v.duration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.duration }),
  #|   end: (v.end === undefined ? { $tag: 0 } : { $tag: 1, _0: v.end })
  #| })

///|
/// Convert from JsValue
pub fn PerformanceMeasureOptions::from_js(
  value : JsValue,
) -> PerformanceMeasureOptions {
  PerformanceMeasureOptions::from_js_ffi(value)
}

///|
/// PerformanceMark interface
pub type PerformanceMark

///|
pub extern "js" fn PerformanceMark::to_js_value(
  self : PerformanceMark,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceMark (unchecked)
pub extern "js" fn PerformanceMark::from_js_value(
  v : JsValue,
) -> PerformanceMark =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceMark (checked with instanceof)
pub extern "js" fn PerformanceMark::from_js_value_opt(
  v : JsValue,
) -> PerformanceMark? =
  #| (v) => (v instanceof PerformanceMark) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceMark (checked with instanceof)
pub extern "js" fn JsValue::as_performance_mark(
  self : JsValue,
) -> PerformanceMark? =
  #| (self) => (self instanceof PerformanceMark) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceMark (unchecked)
pub extern "js" fn JsValue::to_performance_mark(
  self : JsValue,
) -> PerformanceMark =
  #| (self) => self

///|
pub extern "js" fn PerformanceMark::to_performance_entry(
  self : PerformanceMark,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn PerformanceMark::new(mark_name : String) -> PerformanceMark =
  #| (mark_name) => new PerformanceMark(mark_name)

///|
extern "js" fn PerformanceMark::new_with_mark_options_ffi(
  mark_name : String,
  mark_options : JsValue,
) -> PerformanceMark =
  #| (mark_name, mark_options) => new PerformanceMark(mark_name, mark_options)

///|
pub fn PerformanceMark::new_with_mark_options(
  mark_name : String,
  mark_options : PerformanceMarkOptions,
) -> PerformanceMark {
  PerformanceMark::new_with_mark_options_ffi(mark_name, mark_options.to_js())
}

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
/// Cast JsValue to PerformanceMeasure (unchecked)
pub extern "js" fn PerformanceMeasure::from_js_value(
  v : JsValue,
) -> PerformanceMeasure =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceMeasure (checked with instanceof)
pub extern "js" fn PerformanceMeasure::from_js_value_opt(
  v : JsValue,
) -> PerformanceMeasure? =
  #| (v) => (v instanceof PerformanceMeasure) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceMeasure (checked with instanceof)
pub extern "js" fn JsValue::as_performance_measure(
  self : JsValue,
) -> PerformanceMeasure? =
  #| (self) => (self instanceof PerformanceMeasure) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceMeasure (unchecked)
pub extern "js" fn JsValue::to_performance_measure(
  self : JsValue,
) -> PerformanceMeasure =
  #| (self) => self

///|
pub extern "js" fn PerformanceMeasure::to_performance_entry(
  self : PerformanceMeasure,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn PerformanceMeasure::get_detail(
  self : PerformanceMeasure,
) -> JsValue =
  #| (self) => self.detail
