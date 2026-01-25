// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/server-timing

///|
/// PerformanceServerTiming interface
pub type PerformanceServerTiming

///|
pub extern "js" fn PerformanceServerTiming::to_js_value(
  self : PerformanceServerTiming,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceServerTiming (unchecked)
pub extern "js" fn PerformanceServerTiming::from_js_value(
  v : JsValue,
) -> PerformanceServerTiming =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceServerTiming (checked with instanceof)
pub extern "js" fn PerformanceServerTiming::from_js_value_opt(
  v : JsValue,
) -> PerformanceServerTiming? =
  #| (v) => (v instanceof PerformanceServerTiming) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceServerTiming (checked with instanceof)
pub extern "js" fn JsValue::as_performance_server_timing(
  self : JsValue,
) -> PerformanceServerTiming? =
  #| (self) => (self instanceof PerformanceServerTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceServerTiming (unchecked)
pub extern "js" fn JsValue::to_performance_server_timing(
  self : JsValue,
) -> PerformanceServerTiming =
  #| (self) => self

///|
pub extern "js" fn PerformanceServerTiming::get_name(
  self : PerformanceServerTiming,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn PerformanceServerTiming::get_duration(
  self : PerformanceServerTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.duration

///|
pub extern "js" fn PerformanceServerTiming::get_description(
  self : PerformanceServerTiming,
) -> String =
  #| (self) => self.description

///|
pub extern "js" fn PerformanceServerTiming::to_json(
  self : PerformanceServerTiming,
) -> JsValue =
  #| (self) => self.toJSON()
