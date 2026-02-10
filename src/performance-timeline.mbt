// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/performance-timeline

///|
/// PerformanceEntryList typedef
pub type PerformanceEntryList = Array[PerformanceEntry]

///|
/// PerformanceObserverCallback callback interface
pub type PerformanceObserverCallback

///|
/// Create PerformanceObserverCallback from a MoonBit function
pub extern "js" fn PerformanceObserverCallback::from_fn(
  handler : (
    PerformanceObserverEntryList,
    PerformanceObserver,
    PerformanceObserverCallbackOptions,
  ) -> Unit,
) -> PerformanceObserverCallback =
  #| (handler) => (a0, a1, a2) => handler(a0, a1, a2)

///|
/// PerformanceObserverCallbackOptions dictionary
pub(all) struct PerformanceObserverCallbackOptions {
  droppedEntriesCount : Int64?
}

///|
/// Create a new PerformanceObserverCallbackOptions with default values
pub fn PerformanceObserverCallbackOptions::default() -> PerformanceObserverCallbackOptions {
  PerformanceObserverCallbackOptions::{ droppedEntriesCount: None }
}

///|
extern "js" fn PerformanceObserverCallbackOptions::to_js_ffi(
  self : PerformanceObserverCallbackOptions,
) -> JsValue =
  #| (self) => ({
  #|   droppedEntriesCount: self.droppedEntriesCount
  #| })

///|
/// Convert to JsValue
pub fn PerformanceObserverCallbackOptions::to_js(
  self : PerformanceObserverCallbackOptions,
) -> JsValue {
  PerformanceObserverCallbackOptions::to_js_ffi(self)
}

///|
extern "js" fn PerformanceObserverCallbackOptions::from_js_ffi(
  value : JsValue,
) -> PerformanceObserverCallbackOptions =
  #| (v) => ({
  #|   droppedEntriesCount: v.droppedEntriesCount
  #| })

///|
/// Convert from JsValue
pub fn PerformanceObserverCallbackOptions::from_js(
  value : JsValue,
) -> PerformanceObserverCallbackOptions {
  PerformanceObserverCallbackOptions::from_js_ffi(value)
}

///|
/// PerformanceObserverInit dictionary
pub(all) struct PerformanceObserverInit {
  entryTypes : Array[String]?
  type_ : String?
  buffered : Bool?
  durationThreshold : DOMHighResTimeStamp?
}

///|
/// Create a new PerformanceObserverInit with default values
pub fn PerformanceObserverInit::default() -> PerformanceObserverInit {
  PerformanceObserverInit::{
    entryTypes: None,
    type_: None,
    buffered: None,
    durationThreshold: None,
  }
}

///|
extern "js" fn PerformanceObserverInit::to_js_ffi(
  self : PerformanceObserverInit,
) -> JsValue =
  #| (self) => ({
  #|   entryTypes: ((() => { const v = self.entryTypes; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   type: self.type_,
  #|   buffered: (self.buffered === -1 ? undefined : self.buffered),
  #|   durationThreshold: ((() => { const v = self.durationThreshold; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
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
  #|   entryTypes: (v.entryTypes === undefined ? { $tag: 0 } : { $tag: 1, _0: v.entryTypes }),
  #|   type_: v.type,
  #|   buffered: (v.buffered === undefined ? -1 : v.buffered),
  #|   durationThreshold: (v.durationThreshold === undefined ? { $tag: 0 } : { $tag: 1, _0: v.durationThreshold })
  #| })

///|
/// Convert from JsValue
pub fn PerformanceObserverInit::from_js(
  value : JsValue,
) -> PerformanceObserverInit {
  PerformanceObserverInit::from_js_ffi(value)
}

///|
/// PerformanceEntry interface
pub type PerformanceEntry

///|
pub extern "js" fn PerformanceEntry::to_js_value(
  self : PerformanceEntry,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceEntry (unchecked)
pub extern "js" fn PerformanceEntry::from_js_value(
  v : JsValue,
) -> PerformanceEntry =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceEntry (checked with instanceof)
pub extern "js" fn PerformanceEntry::from_js_value_opt(
  v : JsValue,
) -> PerformanceEntry? =
  #| (v) => (v instanceof PerformanceEntry) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceEntry (checked with instanceof)
pub extern "js" fn JsValue::as_performance_entry(
  self : JsValue,
) -> PerformanceEntry? =
  #| (self) => (self instanceof PerformanceEntry) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceEntry (unchecked)
pub extern "js" fn JsValue::to_performance_entry(
  self : JsValue,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn PerformanceEntry::as_layout_shift(
  self : PerformanceEntry,
) -> LayoutShift? =
  #| (self) => (self instanceof LayoutShift) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_performance_mark(
  self : PerformanceEntry,
) -> PerformanceMark? =
  #| (self) => (self instanceof PerformanceMark) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_performance_measure(
  self : PerformanceEntry,
) -> PerformanceMeasure? =
  #| (self) => (self instanceof PerformanceMeasure) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_visibility_state_entry(
  self : PerformanceEntry,
) -> VisibilityStateEntry? =
  #| (self) => (self instanceof VisibilityStateEntry) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_largest_contentful_paint(
  self : PerformanceEntry,
) -> LargestContentfulPaint? =
  #| (self) => (self instanceof LargestContentfulPaint) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_performance_navigation_timing(
  self : PerformanceEntry,
) -> PerformanceNavigationTiming? =
  #| (self) => (self instanceof PerformanceNavigationTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_performance_paint_timing(
  self : PerformanceEntry,
) -> PerformancePaintTiming? =
  #| (self) => (self instanceof PerformancePaintTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_performance_element_timing(
  self : PerformanceEntry,
) -> PerformanceElementTiming? =
  #| (self) => (self instanceof PerformanceElementTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_performance_long_task_timing(
  self : PerformanceEntry,
) -> PerformanceLongTaskTiming? =
  #| (self) => (self instanceof PerformanceLongTaskTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_task_attribution_timing(
  self : PerformanceEntry,
) -> TaskAttributionTiming? =
  #| (self) => (self instanceof TaskAttributionTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_performance_resource_timing(
  self : PerformanceEntry,
) -> PerformanceResourceTiming? =
  #| (self) => (self instanceof PerformanceResourceTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_performance_event_timing(
  self : PerformanceEntry,
) -> PerformanceEventTiming? =
  #| (self) => (self instanceof PerformanceEventTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_performance_long_animation_frame_timing(
  self : PerformanceEntry,
) -> PerformanceLongAnimationFrameTiming? =
  #| (self) => (self instanceof PerformanceLongAnimationFrameTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::as_performance_script_timing(
  self : PerformanceEntry,
) -> PerformanceScriptTiming? =
  #| (self) => (self instanceof PerformanceScriptTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PerformanceEntry::get_id(self : PerformanceEntry) -> Int64 =
  #| (self) => (() => { const n = self.id; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn PerformanceEntry::get_name(
  self : PerformanceEntry,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn PerformanceEntry::get_entry_type(
  self : PerformanceEntry,
) -> String =
  #| (self) => self.entryType

///|
pub extern "js" fn PerformanceEntry::get_start_time(
  self : PerformanceEntry,
) -> DOMHighResTimeStamp =
  #| (self) => self.startTime

///|
pub extern "js" fn PerformanceEntry::get_duration(
  self : PerformanceEntry,
) -> DOMHighResTimeStamp =
  #| (self) => self.duration

///|
pub extern "js" fn PerformanceEntry::get_navigation_id(
  self : PerformanceEntry,
) -> Int64 =
  #| (self) => (() => { const n = self.navigationId; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()

///|
pub extern "js" fn PerformanceEntry::to_json(
  self : PerformanceEntry,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// PerformanceObserver interface
pub type PerformanceObserver

///|
pub extern "js" fn PerformanceObserver::to_js_value(
  self : PerformanceObserver,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceObserver (unchecked)
pub extern "js" fn PerformanceObserver::from_js_value(
  v : JsValue,
) -> PerformanceObserver =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceObserver (checked with instanceof)
pub extern "js" fn PerformanceObserver::from_js_value_opt(
  v : JsValue,
) -> PerformanceObserver? =
  #| (v) => (v instanceof PerformanceObserver) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceObserver (checked with instanceof)
pub extern "js" fn JsValue::as_performance_observer(
  self : JsValue,
) -> PerformanceObserver? =
  #| (self) => (self instanceof PerformanceObserver) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceObserver (unchecked)
pub extern "js" fn JsValue::to_performance_observer(
  self : JsValue,
) -> PerformanceObserver =
  #| (self) => self

///|
pub extern "js" fn PerformanceObserver::new(
  callback : PerformanceObserverCallback,
) -> PerformanceObserver =
  #| (callback) => new PerformanceObserver(callback)

///|
pub extern "js" fn PerformanceObserver::observe(
  self : PerformanceObserver,
) -> Unit =
  #| (self) => self.observe()

///|
extern "js" fn PerformanceObserver::observe_with_options_ffi(
  self : PerformanceObserver,
  options : JsValue,
) -> Unit =
  #| (self, options) => self.observe(options)

///|
pub fn PerformanceObserver::observe_with_options(
  self : PerformanceObserver,
  options : PerformanceObserverInit,
) -> Unit {
  PerformanceObserver::observe_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn PerformanceObserver::disconnect(
  self : PerformanceObserver,
) -> Unit =
  #| (self) => self.disconnect()

///|
pub extern "js" fn PerformanceObserver::take_records(
  self : PerformanceObserver,
) -> PerformanceEntryList =
  #| (self) => self.takeRecords()

///|
pub extern "js" fn PerformanceObserver::get_supported_entry_types(
  self : PerformanceObserver,
) -> JsValue =
  #| (self) => self.supportedEntryTypes

///|
/// PerformanceObserverEntryList interface
pub type PerformanceObserverEntryList

///|
pub extern "js" fn PerformanceObserverEntryList::to_js_value(
  self : PerformanceObserverEntryList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceObserverEntryList (unchecked)
pub extern "js" fn PerformanceObserverEntryList::from_js_value(
  v : JsValue,
) -> PerformanceObserverEntryList =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceObserverEntryList (checked with instanceof)
pub extern "js" fn PerformanceObserverEntryList::from_js_value_opt(
  v : JsValue,
) -> PerformanceObserverEntryList? =
  #| (v) => (v instanceof PerformanceObserverEntryList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceObserverEntryList (checked with instanceof)
pub extern "js" fn JsValue::as_performance_observer_entry_list(
  self : JsValue,
) -> PerformanceObserverEntryList? =
  #| (self) => (self instanceof PerformanceObserverEntryList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceObserverEntryList (unchecked)
pub extern "js" fn JsValue::to_performance_observer_entry_list(
  self : JsValue,
) -> PerformanceObserverEntryList =
  #| (self) => self

///|
pub extern "js" fn PerformanceObserverEntryList::get_entries(
  self : PerformanceObserverEntryList,
) -> PerformanceEntryList =
  #| (self) => self.getEntries()

///|
pub extern "js" fn PerformanceObserverEntryList::get_entries_by_type(
  self : PerformanceObserverEntryList,
  type_ : String,
) -> PerformanceEntryList =
  #| (self, type_) => self.getEntriesByType(type_)

///|
pub extern "js" fn PerformanceObserverEntryList::get_entries_by_name(
  self : PerformanceObserverEntryList,
  name : String,
) -> PerformanceEntryList =
  #| (self, name) => self.getEntriesByName(name)

///|
pub extern "js" fn PerformanceObserverEntryList::get_entries_by_name_with_type(
  self : PerformanceObserverEntryList,
  name : String,
  type_ : String,
) -> PerformanceEntryList =
  #| (self, name, type_) => self.getEntriesByName(name, type_)
