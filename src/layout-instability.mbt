// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/layout-instability

///|
/// LayoutShift interface
pub type LayoutShift

///|
pub extern "js" fn LayoutShift::to_js_value(self : LayoutShift) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LayoutShift (unchecked)
pub extern "js" fn LayoutShift::from_js_value(v : JsValue) -> LayoutShift =
  #| (v) => v

///|
/// Safely cast JsValue to LayoutShift (checked with instanceof)
pub extern "js" fn LayoutShift::from_js_value_opt(v : JsValue) -> LayoutShift? =
  #| (v) => (v instanceof LayoutShift) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LayoutShift (checked with instanceof)
pub extern "js" fn JsValue::as_layout_shift(self : JsValue) -> LayoutShift? =
  #| (self) => (self instanceof LayoutShift) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LayoutShift (unchecked)
pub extern "js" fn JsValue::to_layout_shift(self : JsValue) -> LayoutShift =
  #| (self) => self

///|
pub extern "js" fn LayoutShift::to_performance_entry(
  self : LayoutShift,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn LayoutShift::get_value(self : LayoutShift) -> Double =
  #| (self) => self.value

///|
pub extern "js" fn LayoutShift::get_had_recent_input(
  self : LayoutShift,
) -> Bool =
  #| (self) => self.hadRecentInput

///|
pub extern "js" fn LayoutShift::get_last_input_time(
  self : LayoutShift,
) -> DOMHighResTimeStamp =
  #| (self) => self.lastInputTime

///|
pub extern "js" fn LayoutShift::get_sources(
  self : LayoutShift,
) -> Array[LayoutShiftAttribution] =
  #| (self) => self.sources

///|
pub extern "js" fn LayoutShift::to_json(self : LayoutShift) -> JsValue =
  #| (self) => self.toJSON()

///|
/// LayoutShiftAttribution interface
pub type LayoutShiftAttribution

///|
pub extern "js" fn LayoutShiftAttribution::to_js_value(
  self : LayoutShiftAttribution,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LayoutShiftAttribution (unchecked)
pub extern "js" fn LayoutShiftAttribution::from_js_value(
  v : JsValue,
) -> LayoutShiftAttribution =
  #| (v) => v

///|
/// Safely cast JsValue to LayoutShiftAttribution (checked with instanceof)
pub extern "js" fn LayoutShiftAttribution::from_js_value_opt(
  v : JsValue,
) -> LayoutShiftAttribution? =
  #| (v) => (v instanceof LayoutShiftAttribution) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LayoutShiftAttribution (checked with instanceof)
pub extern "js" fn JsValue::as_layout_shift_attribution(
  self : JsValue,
) -> LayoutShiftAttribution? =
  #| (self) => (self instanceof LayoutShiftAttribution) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LayoutShiftAttribution (unchecked)
pub extern "js" fn JsValue::to_layout_shift_attribution(
  self : JsValue,
) -> LayoutShiftAttribution =
  #| (self) => self

///|
pub extern "js" fn LayoutShiftAttribution::get_node(
  self : LayoutShiftAttribution,
) -> Node? =
  #| (self) => (() => { const v = self.node; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn LayoutShiftAttribution::get_previous_rect(
  self : LayoutShiftAttribution,
) -> DOMRectReadOnly =
  #| (self) => self.previousRect

///|
pub extern "js" fn LayoutShiftAttribution::get_current_rect(
  self : LayoutShiftAttribution,
) -> DOMRectReadOnly =
  #| (self) => self.currentRect
