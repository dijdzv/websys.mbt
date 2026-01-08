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
  #| (handler) => handler

///|
/// PerformanceObserverCallbackOptions dictionary
pub struct PerformanceObserverCallbackOptions {
  droppedEntriesCount : Int64?
}

///|
/// Create a new PerformanceObserverCallbackOptions with default values
pub fn PerformanceObserverCallbackOptions::default() -> PerformanceObserverCallbackOptions {
  PerformanceObserverCallbackOptions::{ droppedEntriesCount: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PerformanceObserverCallbackOptions::to_js(
  self : PerformanceObserverCallbackOptions,
) -> JsValue =
  #| (self) => ({
  #|   droppedEntriesCount: self.droppedEntriesCount
  #| })

///|
/// PerformanceEntry interface
pub type PerformanceEntry

///|
pub extern "js" fn PerformanceEntry::to_js_value(
  self : PerformanceEntry,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PerformanceEntry::get_id(self : PerformanceEntry) -> Int64 =
  #| (self) => self.id

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
  #| (self) => self.navigationId

///|
pub extern "js" fn PerformanceEntry::to_j_s_o_n(
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
pub extern "js" fn PerformanceObserver::observe_with_options(
  self : PerformanceObserver,
  options : PerformanceObserverInit,
) -> Unit =
  #| (self, options) => self.observe(options)

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
