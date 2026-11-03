// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/paint-timing

///|
/// PerformancePaintTiming interface
pub type PerformancePaintTiming

///|
pub extern "js" fn PerformancePaintTiming::to_js_value(
  self : PerformancePaintTiming,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformancePaintTiming (unchecked)
pub extern "js" fn PerformancePaintTiming::from_js_value(
  v : JsValue,
) -> PerformancePaintTiming =
  #| (v) => v

///|
/// Safely cast JsValue to PerformancePaintTiming (checked with instanceof)
pub extern "js" fn PerformancePaintTiming::from_js_value_opt(
  v : JsValue,
) -> PerformancePaintTiming? =
  #| (v) => (v instanceof PerformancePaintTiming) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformancePaintTiming (checked with instanceof)
pub extern "js" fn JsValue::as_performance_paint_timing(
  self : JsValue,
) -> PerformancePaintTiming? =
  #| (self) => (self instanceof PerformancePaintTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformancePaintTiming (unchecked)
pub extern "js" fn JsValue::to_performance_paint_timing(
  self : JsValue,
) -> PerformancePaintTiming =
  #| (self) => self

///|
pub extern "js" fn PerformancePaintTiming::to_performance_entry(
  self : PerformancePaintTiming,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn PerformancePaintTiming::to_json(
  self : PerformancePaintTiming,
) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn PerformancePaintTiming::get_paint_time(
  self : PerformancePaintTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.paintTime

///|
pub extern "js" fn PerformancePaintTiming::get_presentation_time(
  self : PerformancePaintTiming,
) -> DOMHighResTimeStamp? =
  #| (self) => (() => { const v = self.presentationTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
