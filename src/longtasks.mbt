// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/longtasks

///|
/// PerformanceLongTaskTiming interface
pub type PerformanceLongTaskTiming

///|
pub extern "js" fn PerformanceLongTaskTiming::to_js_value(
  self : PerformanceLongTaskTiming,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceLongTaskTiming (unchecked)
pub extern "js" fn PerformanceLongTaskTiming::from_js_value(
  v : JsValue,
) -> PerformanceLongTaskTiming =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceLongTaskTiming (checked with instanceof)
pub extern "js" fn PerformanceLongTaskTiming::from_js_value_opt(
  v : JsValue,
) -> PerformanceLongTaskTiming? =
  #| (v) => (v instanceof PerformanceLongTaskTiming) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceLongTaskTiming (checked with instanceof)
pub extern "js" fn JsValue::as_performance_long_task_timing(
  self : JsValue,
) -> PerformanceLongTaskTiming? =
  #| (self) => (self instanceof PerformanceLongTaskTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceLongTaskTiming (unchecked)
pub extern "js" fn JsValue::to_performance_long_task_timing(
  self : JsValue,
) -> PerformanceLongTaskTiming =
  #| (self) => self

///|
pub extern "js" fn PerformanceLongTaskTiming::to_performance_entry(
  self : PerformanceLongTaskTiming,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn PerformanceLongTaskTiming::get_start_time(
  self : PerformanceLongTaskTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.startTime

///|
pub extern "js" fn PerformanceLongTaskTiming::get_duration(
  self : PerformanceLongTaskTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.duration

///|
pub extern "js" fn PerformanceLongTaskTiming::get_name(
  self : PerformanceLongTaskTiming,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn PerformanceLongTaskTiming::get_entry_type(
  self : PerformanceLongTaskTiming,
) -> String =
  #| (self) => self.entryType

///|
pub extern "js" fn PerformanceLongTaskTiming::get_attribution(
  self : PerformanceLongTaskTiming,
) -> Array[TaskAttributionTiming] =
  #| (self) => self.attribution

///|
pub extern "js" fn PerformanceLongTaskTiming::to_json(
  self : PerformanceLongTaskTiming,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// TaskAttributionTiming interface
pub type TaskAttributionTiming

///|
pub extern "js" fn TaskAttributionTiming::to_js_value(
  self : TaskAttributionTiming,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TaskAttributionTiming (unchecked)
pub extern "js" fn TaskAttributionTiming::from_js_value(
  v : JsValue,
) -> TaskAttributionTiming =
  #| (v) => v

///|
/// Safely cast JsValue to TaskAttributionTiming (checked with instanceof)
pub extern "js" fn TaskAttributionTiming::from_js_value_opt(
  v : JsValue,
) -> TaskAttributionTiming? =
  #| (v) => (v instanceof TaskAttributionTiming) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TaskAttributionTiming (checked with instanceof)
pub extern "js" fn JsValue::as_task_attribution_timing(
  self : JsValue,
) -> TaskAttributionTiming? =
  #| (self) => (self instanceof TaskAttributionTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TaskAttributionTiming (unchecked)
pub extern "js" fn JsValue::to_task_attribution_timing(
  self : JsValue,
) -> TaskAttributionTiming =
  #| (self) => self

///|
pub extern "js" fn TaskAttributionTiming::to_performance_entry(
  self : TaskAttributionTiming,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn TaskAttributionTiming::get_start_time(
  self : TaskAttributionTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.startTime

///|
pub extern "js" fn TaskAttributionTiming::get_duration(
  self : TaskAttributionTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.duration

///|
pub extern "js" fn TaskAttributionTiming::get_name(
  self : TaskAttributionTiming,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn TaskAttributionTiming::get_entry_type(
  self : TaskAttributionTiming,
) -> String =
  #| (self) => self.entryType

///|
pub extern "js" fn TaskAttributionTiming::get_container_type(
  self : TaskAttributionTiming,
) -> String =
  #| (self) => self.containerType

///|
pub extern "js" fn TaskAttributionTiming::get_container_src(
  self : TaskAttributionTiming,
) -> String =
  #| (self) => self.containerSrc

///|
pub extern "js" fn TaskAttributionTiming::get_container_id(
  self : TaskAttributionTiming,
) -> String =
  #| (self) => self.containerId

///|
pub extern "js" fn TaskAttributionTiming::get_container_name(
  self : TaskAttributionTiming,
) -> String =
  #| (self) => self.containerName

///|
pub extern "js" fn TaskAttributionTiming::to_json(
  self : TaskAttributionTiming,
) -> JsValue =
  #| (self) => self.toJSON()
