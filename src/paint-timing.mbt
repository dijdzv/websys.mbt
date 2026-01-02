// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/paint-timing

///|
/// PerformancePaintTiming interface
pub type PerformancePaintTiming

pub extern "js" fn PerformancePaintTiming::to_js_value(self : PerformancePaintTiming) -> JsValue =
  #| (self) => self

pub extern "js" fn PerformancePaintTiming::to_j_s_o_n(self : PerformancePaintTiming) -> JsValue =
  #| (self) => self.toJSON()

pub extern "js" fn PerformancePaintTiming::get_paint_time(self : PerformancePaintTiming) -> DOMHighResTimeStamp =
  #| (self) => self.paintTime

pub extern "js" fn PerformancePaintTiming::get_presentation_time(self : PerformancePaintTiming) -> DOMHighResTimeStamp? =
  #| (self) => self.presentationTime

