// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/container-timing

///|
/// PerformanceContainerTiming interface
pub type PerformanceContainerTiming

pub extern "js" fn PerformanceContainerTiming::to_js_value(self : PerformanceContainerTiming) -> JsValue =
  #| (self) => self

/// Cast JsValue to PerformanceContainerTiming (unchecked)
pub extern "js" fn PerformanceContainerTiming::from_js_value(v : JsValue) -> PerformanceContainerTiming =
  #| (v) => v

/// Safely cast JsValue to PerformanceContainerTiming (checked with instanceof)
pub extern "js" fn PerformanceContainerTiming::from_js_value_opt(v : JsValue) -> PerformanceContainerTiming? =
  #| (v) => (v instanceof PerformanceContainerTiming) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to PerformanceContainerTiming (checked with instanceof)
pub extern "js" fn JsValue::as_performance_container_timing(self : JsValue) -> PerformanceContainerTiming? =
  #| (self) => (self instanceof PerformanceContainerTiming) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to PerformanceContainerTiming (unchecked)
pub extern "js" fn JsValue::to_performance_container_timing(self : JsValue) -> PerformanceContainerTiming =
  #| (self) => self

pub extern "js" fn PerformanceContainerTiming::to_performance_entry(self : PerformanceContainerTiming) -> PerformanceEntry =
  #| (self) => self

pub extern "js" fn PerformanceContainerTiming::get_identifier(self : PerformanceContainerTiming) -> String =
  #| (self) => self.identifier

pub extern "js" fn PerformanceContainerTiming::get_intersection_rect(self : PerformanceContainerTiming) -> DOMRectReadOnly =
  #| (self) => self.intersectionRect

pub extern "js" fn PerformanceContainerTiming::get_size(self : PerformanceContainerTiming) -> Int64 =
  #| (self) => BigInt.asUintN(64, BigInt(self.size))

pub extern "js" fn PerformanceContainerTiming::get_first_render_time(self : PerformanceContainerTiming) -> DOMHighResTimeStamp =
  #| (self) => self.firstRenderTime

pub extern "js" fn PerformanceContainerTiming::get_last_painted_element(self : PerformanceContainerTiming) -> HTMLElement? =
  #| (self) => (() => { const v = self.lastPaintedElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn PerformanceContainerTiming::get_root_element(self : PerformanceContainerTiming) -> HTMLElement? =
  #| (self) => (() => { const v = self.rootElement; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn PerformanceContainerTiming::to_json(self : PerformanceContainerTiming) -> JsValue =
  #| (self) => self.toJSON()

pub extern "js" fn PerformanceContainerTiming::get_paint_time(self : PerformanceContainerTiming) -> DOMHighResTimeStamp =
  #| (self) => self.paintTime

pub extern "js" fn PerformanceContainerTiming::get_presentation_time(self : PerformanceContainerTiming) -> DOMHighResTimeStamp? =
  #| (self) => (() => { const v = self.presentationTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
