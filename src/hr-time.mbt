// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/hr-time

///|
/// DOMHighResTimeStamp typedef
pub type DOMHighResTimeStamp = Double

///|
/// EpochTimeStamp typedef
pub type EpochTimeStamp = Int64

///|
/// Performance interface
pub type Performance

///|
pub extern "js" fn Performance::to_js_value(self : Performance) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Performance (unchecked)
pub extern "js" fn Performance::from_js_value(v : JsValue) -> Performance =
  #| (v) => v

///|
/// Safely cast JsValue to Performance (checked with instanceof)
pub extern "js" fn Performance::from_js_value_opt(v : JsValue) -> Performance? =
  #| (v) => (v instanceof Performance) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Performance (checked with instanceof)
pub extern "js" fn JsValue::as_performance(self : JsValue) -> Performance? =
  #| (self) => (self instanceof Performance) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Performance (unchecked)
pub extern "js" fn JsValue::to_performance(self : JsValue) -> Performance =
  #| (self) => self

///|
pub extern "js" fn Performance::to_event_target(
  self : Performance,
) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum PerformanceMarkError {
  TypeError(JsError)
  SyntaxError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum PerformanceMeasureError {
  TypeError(JsError)
  RangeError(JsError)
  SyntaxError(JsError)
  DataCloneError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum PerformanceMeasureUserAgentSpecificMemoryError {
  SecurityError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn Performance::now(self : Performance) -> DOMHighResTimeStamp =
  #| (self) => self.now()

///|
pub extern "js" fn Performance::get_time_origin(
  self : Performance,
) -> DOMHighResTimeStamp =
  #| (self) => self.timeOrigin

///|
pub extern "js" fn Performance::to_json(self : Performance) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn Performance::mark(
  self : Performance,
  mark_name : String,
) -> Result[PerformanceMark, PerformanceMarkError] =
  #| (self, mark_name) => (() => { try { return { $tag: 1, _0: self.mark(mark_name) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'SyntaxError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
extern "js" fn Performance::mark_with_mark_options_ffi(
  self : Performance,
  mark_name : String,
  mark_options : JsValue,
) -> Result[PerformanceMark, PerformanceMarkError] =
  #| (self, mark_name, mark_options) => (() => { try { return { $tag: 1, _0: self.mark(mark_name, mark_options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'SyntaxError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }; } })()

///|
pub fn Performance::mark_with_mark_options(
  self : Performance,
  mark_name : String,
  mark_options : PerformanceMarkOptions,
) -> Result[PerformanceMark, PerformanceMarkError] {
  Performance::mark_with_mark_options_ffi(self, mark_name, mark_options.to_js())
}

///|
pub extern "js" fn Performance::clear_marks(self : Performance) -> Unit =
  #| (self) => self.clearMarks()

///|
pub extern "js" fn Performance::clear_marks_with_mark_name(
  self : Performance,
  mark_name : String,
) -> Unit =
  #| (self, mark_name) => self.clearMarks(mark_name)

///|
pub extern "js" fn Performance::measure(
  self : Performance,
  measure_name : String,
) -> Result[PerformanceMeasure, PerformanceMeasureError] =
  #| (self, measure_name) => (() => { try { return { $tag: 1, _0: self.measure(measure_name) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'RangeError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'DataCloneError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub extern "js" fn Performance::measure_with_end_mark(
  self : Performance,
  measure_name : String,
  start_or_measure_options : StringOrPerformanceMeasureOptions,
  end_mark : String,
) -> Result[PerformanceMeasure, PerformanceMeasureError] =
  #| (self, measure_name, start_or_measure_options, end_mark) => (() => { try { return { $tag: 1, _0: self.measure(measure_name, start_or_measure_options, end_mark) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'RangeError') return { $tag: 1, _0: e }; if (n === 'SyntaxError') return { $tag: 2, _0: e }; if (n === 'DataCloneError') return { $tag: 3, _0: e }; return { $tag: 4, _0: e }; })() }; } })()

///|
pub extern "js" fn Performance::clear_measures(self : Performance) -> Unit =
  #| (self) => self.clearMeasures()

///|
pub extern "js" fn Performance::clear_measures_with_measure_name(
  self : Performance,
  measure_name : String,
) -> Unit =
  #| (self, measure_name) => self.clearMeasures(measure_name)

///|
pub extern "js" fn Performance::get_timing(
  self : Performance,
) -> PerformanceTiming =
  #| (self) => self.timing

///|
pub extern "js" fn Performance::get_navigation(
  self : Performance,
) -> PerformanceNavigation =
  #| (self) => self.navigation

///|
pub extern "js" fn Performance::get_entries(
  self : Performance,
) -> PerformanceEntryList =
  #| (self) => self.getEntries()

///|
pub extern "js" fn Performance::get_entries_by_type(
  self : Performance,
  type_ : String,
) -> PerformanceEntryList =
  #| (self, type_) => self.getEntriesByType(type_)

///|
pub extern "js" fn Performance::get_entries_by_name(
  self : Performance,
  name : String,
) -> PerformanceEntryList =
  #| (self, name) => self.getEntriesByName(name)

///|
pub extern "js" fn Performance::get_entries_by_name_with_type(
  self : Performance,
  name : String,
  type_ : String,
) -> PerformanceEntryList =
  #| (self, name, type_) => self.getEntriesByName(name, type_)

///|
pub extern "js" fn Performance::measure_user_agent_specific_memory(
  self : Performance,
) -> Promise[
  Result[MemoryMeasurement, PerformanceMeasureUserAgentSpecificMemoryError],
] =
  #| (self) => self.measureUserAgentSpecificMemory().then(v => ({
  #|   bytes: v.bytes,
  #|   breakdown: (v.breakdown === undefined ? { $tag: 0 } : { $tag: 1, _0: v.breakdown })
  #| })).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn Performance::clear_resource_timings(
  self : Performance,
) -> Unit =
  #| (self) => self.clearResourceTimings()

///|
pub extern "js" fn Performance::set_resource_timing_buffer_size(
  self : Performance,
  max_size : Int,
) -> Unit =
  #| (self, max_size) => self.setResourceTimingBufferSize(max_size)

///|
pub extern "js" fn Performance::set_onresourcetimingbufferfull(
  self : Performance,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onresourcetimingbufferfull = (e) => handler(e) }

///|
pub extern "js" fn Performance::clear_onresourcetimingbufferfull(
  self : Performance,
) -> Unit =
  #| (self) => { self.onresourcetimingbufferfull = null }

///|
pub extern "js" fn Performance::get_event_counts(
  self : Performance,
) -> EventCounts =
  #| (self) => self.eventCounts

///|
pub extern "js" fn Performance::get_interaction_count(
  self : Performance,
) -> Int64 =
  #| (self) => (() => { const n = self.interactionCount; return { hi: Math.floor(n / 4294967296), lo: n >>> 0 }; })()
