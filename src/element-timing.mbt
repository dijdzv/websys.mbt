// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/element-timing

///|
/// PerformanceElementTiming interface
pub type PerformanceElementTiming

///|
pub extern "js" fn PerformanceElementTiming::to_js_value(
  self : PerformanceElementTiming,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PerformanceElementTiming (unchecked)
pub extern "js" fn PerformanceElementTiming::from_js_value(
  v : JsValue,
) -> PerformanceElementTiming =
  #| (v) => v

///|
/// Safely cast JsValue to PerformanceElementTiming (checked with instanceof)
pub extern "js" fn PerformanceElementTiming::from_js_value_opt(
  v : JsValue,
) -> PerformanceElementTiming? =
  #| (v) => (v instanceof PerformanceElementTiming) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PerformanceElementTiming (checked with instanceof)
pub extern "js" fn JsValue::as_performance_element_timing(
  self : JsValue,
) -> PerformanceElementTiming? =
  #| (self) => (self instanceof PerformanceElementTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PerformanceElementTiming (unchecked)
pub extern "js" fn JsValue::to_performance_element_timing(
  self : JsValue,
) -> PerformanceElementTiming =
  #| (self) => self

///|
pub extern "js" fn PerformanceElementTiming::to_performance_entry(
  self : PerformanceElementTiming,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn PerformanceElementTiming::get_render_time(
  self : PerformanceElementTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.renderTime

///|
pub extern "js" fn PerformanceElementTiming::get_load_time(
  self : PerformanceElementTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.loadTime

///|
pub extern "js" fn PerformanceElementTiming::get_intersection_rect(
  self : PerformanceElementTiming,
) -> DOMRectReadOnly =
  #| (self) => self.intersectionRect

///|
pub extern "js" fn PerformanceElementTiming::get_identifier(
  self : PerformanceElementTiming,
) -> String =
  #| (self) => self.identifier

///|
pub extern "js" fn PerformanceElementTiming::get_natural_width(
  self : PerformanceElementTiming,
) -> Int =
  #| (self) => self.naturalWidth

///|
pub extern "js" fn PerformanceElementTiming::get_natural_height(
  self : PerformanceElementTiming,
) -> Int =
  #| (self) => self.naturalHeight

///|
pub extern "js" fn PerformanceElementTiming::get_id(
  self : PerformanceElementTiming,
) -> String =
  #| (self) => self.id

///|
pub extern "js" fn PerformanceElementTiming::get_element(
  self : PerformanceElementTiming,
) -> Element? =
  #| (self) => (() => { const v = self.element; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PerformanceElementTiming::get_url(
  self : PerformanceElementTiming,
) -> String =
  #| (self) => self.url

///|
pub extern "js" fn PerformanceElementTiming::to_json(
  self : PerformanceElementTiming,
) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn PerformanceElementTiming::get_paint_time(
  self : PerformanceElementTiming,
) -> DOMHighResTimeStamp =
  #| (self) => self.paintTime

///|
pub extern "js" fn PerformanceElementTiming::get_presentation_time(
  self : PerformanceElementTiming,
) -> DOMHighResTimeStamp? =
  #| (self) => (() => { const v = self.presentationTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
