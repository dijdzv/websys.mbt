// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/event-timing

///|
/// PerformanceEventTiming interface
pub type PerformanceEventTiming

///|
pub extern "js" fn PerformanceEventTiming::to_js_value(
  self : PerformanceEventTiming,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceEventTiming (unchecked)
pub extern "js" fn PerformanceEventTiming::from_js_value(
  v : JsValue,
) -> PerformanceEventTiming =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceEventTiming (checked with instanceof)
pub extern "js" fn PerformanceEventTiming::from_js_value_opt(
  v : JsValue,
) -> PerformanceEventTiming? =
  #| (v) => (v instanceof PerformanceEventTiming) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceEventTiming (checked with instanceof)
pub extern "js" fn JsValue::as_performance_event_timing(
  self : JsValue,
) -> PerformanceEventTiming? =
  #| (self) => (self instanceof PerformanceEventTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceEventTiming (unchecked)
pub extern "js" fn JsValue::to_performance_event_timing(
  self : JsValue,
) -> PerformanceEventTiming =
  #| (self) => self

///|
pub extern "js" fn PerformanceEventTiming::to_performance_entry(
  self : PerformanceEventTiming,
) -> PerformanceEntry =
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
  #| (self) => { const v = self.target; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

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
pub extern "js" fn PerformanceEventTiming::to_json(
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
/// Cast JsValue to EventCounts (unchecked)
pub extern "js" fn EventCounts::from_js_value(v : JsValue) -> EventCounts =
  #| (v) => v

///|
/// Safely cast JsValue to EventCounts (checked with instanceof)
pub extern "js" fn EventCounts::from_js_value_opt(v : JsValue) -> EventCounts? =
  #| (v) => (v instanceof EventCounts) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to EventCounts (checked with instanceof)
pub extern "js" fn JsValue::as_event_counts(self : JsValue) -> EventCounts? =
  #| (self) => (self instanceof EventCounts) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to EventCounts (unchecked)
pub extern "js" fn JsValue::to_event_counts(self : JsValue) -> EventCounts =
  #| (self) => self

///|
pub extern "js" fn EventCounts::get(self : EventCounts, key : String) -> Int64? =
  #| (self, key) => { const v = self.get(key); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn EventCounts::has(self : EventCounts, key : String) -> Bool =
  #| (self, key) => self.has(key)
