// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/event-timing

///|
/// PerformanceObserverInit dictionary
pub struct PerformanceObserverInit {
  durationThreshold : DOMHighResTimeStamp?
  entryTypes : Array[String]?
  type_ : String?
  buffered : Bool?
}

///|
/// Create a new PerformanceObserverInit with default values
pub fn PerformanceObserverInit::default() -> PerformanceObserverInit {
  PerformanceObserverInit::{
    durationThreshold: None,
    entryTypes: None,
    type_: None,
    buffered: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PerformanceObserverInit::to_js(
  self : PerformanceObserverInit,
) -> JsValue =
  #| (self) => ({
  #|   durationThreshold: self.durationThreshold,
  #|   entryTypes: self.entryTypes,
  #|   type: self.type_,
  #|   buffered: self.buffered
  #| })

///|
/// PerformanceEventTiming interface
pub type PerformanceEventTiming

///|
pub extern "js" fn PerformanceEventTiming::to_js_value(
  self : PerformanceEventTiming,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PerformanceEventTiming::get_processing_start(
  self : PerformanceEventTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.processingStart

///|
pub extern "js" fn PerformanceEventTiming::get_processing_end(
  self : PerformanceEventTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.processingEnd

///|
pub extern "js" fn PerformanceEventTiming::get_cancelable(
  self : PerformanceEventTiming,
) -> Bool =
  #| (self) => self.cancelable

///|
pub extern "js" fn PerformanceEventTiming::get_target(
  self : PerformanceEventTiming,
) -> Node? =
  #| (self) => self.target

///|
pub extern "js" fn PerformanceEventTiming::get_target_selector(
  self : PerformanceEventTiming,
) -> String =
  #| (self) => self.targetSelector

///|
pub extern "js" fn PerformanceEventTiming::get_interaction_id(
  self : PerformanceEventTiming,
) -> Int64 =
  #| (self) => self.interactionId

///|
pub extern "js" fn PerformanceEventTiming::to_j_s_o_n(
  self : PerformanceEventTiming,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// EventCounts interface
pub type EventCounts

///|
pub extern "js" fn EventCounts::to_js_value(self : EventCounts) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn EventCounts::get(self : EventCounts, key : String) -> Int64? =
  #| (self, key) => self.get(key)

///|
pub extern "js" fn EventCounts::has(self : EventCounts, key : String) -> Bool =
  #| (self, key) => self.has(key)
