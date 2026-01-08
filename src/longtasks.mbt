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
) -> JsValue =
  #| (self) => self.attribution

///|
pub extern "js" fn PerformanceLongTaskTiming::to_j_s_o_n(
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
pub extern "js" fn TaskAttributionTiming::to_j_s_o_n(
  self : TaskAttributionTiming,
) -> JsValue =
  #| (self) => self.toJSON()
