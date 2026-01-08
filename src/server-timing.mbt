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
pub extern "js" fn PerformanceServerTiming::to_j_s_o_n(
  self : PerformanceServerTiming,
) -> JsValue =
  #| (self) => self.toJSON()
