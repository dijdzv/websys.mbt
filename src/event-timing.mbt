// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/event-timing

///|
/// PerformanceObserverInit dictionary
pub(all) struct PerformanceObserverInit {
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
extern "js" fn PerformanceObserverInit::to_js_ffi(
  self : PerformanceObserverInit,
) -> JsValue =
  #| (self) => ({
  #|   durationThreshold: ((() => { const v = self.durationThreshold; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   entryTypes: ((() => { const v = self.entryTypes; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   type: self.type_,
  #|   buffered: (self.buffered === -1 ? undefined : self.buffered)
  #| })

///|
/// Convert to JsValue
pub fn PerformanceObserverInit::to_js(
  self : PerformanceObserverInit,
) -> JsValue {
  PerformanceObserverInit::to_js_ffi(self)
}

///|
extern "js" fn PerformanceObserverInit::from_js_ffi(
  value : JsValue,
) -> PerformanceObserverInit =
  #| (v) => ({
  #|   durationThreshold: (v.durationThreshold === undefined ? { $tag: 0 } : { $tag: 1, _0: v.durationThreshold }),
  #|   entryTypes: (v.entryTypes === undefined ? { $tag: 0 } : { $tag: 1, _0: v.entryTypes }),
  #|   type_: v.type,
  #|   buffered: (v.buffered === undefined ? -1 : v.buffered)
  #| })

///|
/// Convert from JsValue
pub fn PerformanceObserverInit::from_js(
  value : JsValue,
) -> PerformanceObserverInit {
  PerformanceObserverInit::from_js_ffi(value)
}

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
  #| (self) => (() => { const v = self.target; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PerformanceEventTiming::get_target_selector(
  self : PerformanceEventTiming,
) -> String =
  #| (self) => self.targetSelector

///|
pub extern "js" fn PerformanceEventTiming::get_interaction_id(
  self : PerformanceEventTiming,
) -> Int64 =
  #| (self) => (() => { const n = self.interactionId; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

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
  #| (self, key) => self.get(key)

///|
pub extern "js" fn EventCounts::has(self : EventCounts, key : String) -> Bool =
  #| (self, key) => self.has(key)
