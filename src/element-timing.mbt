// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/element-timing

///|
/// PerformanceElementTiming interface
pub type PerformanceElementTiming

pub extern "js" fn PerformanceElementTiming::to_js_value(self : PerformanceElementTiming) -> JsValue =
  #| (self) => self

pub extern "js" fn PerformanceElementTiming::get_render_time(self : PerformanceElementTiming) -> DOMHighResTimeStamp =
  #| (self) => self.renderTime

pub extern "js" fn PerformanceElementTiming::get_load_time(self : PerformanceElementTiming) -> DOMHighResTimeStamp =
  #| (self) => self.loadTime

pub extern "js" fn PerformanceElementTiming::get_intersection_rect(self : PerformanceElementTiming) -> DOMRectReadOnly =
  #| (self) => self.intersectionRect

pub extern "js" fn PerformanceElementTiming::get_identifier(self : PerformanceElementTiming) -> String =
  #| (self) => self.identifier

pub extern "js" fn PerformanceElementTiming::get_natural_width(self : PerformanceElementTiming) -> Int =
  #| (self) => self.naturalWidth

pub extern "js" fn PerformanceElementTiming::get_natural_height(self : PerformanceElementTiming) -> Int =
  #| (self) => self.naturalHeight

pub extern "js" fn PerformanceElementTiming::get_id(self : PerformanceElementTiming) -> String =
  #| (self) => self.id

pub extern "js" fn PerformanceElementTiming::get_element(self : PerformanceElementTiming) -> Element? =
  #| (self) => self.element

pub extern "js" fn PerformanceElementTiming::get_url(self : PerformanceElementTiming) -> String =
  #| (self) => self.url

pub extern "js" fn PerformanceElementTiming::to_j_s_o_n(self : PerformanceElementTiming) -> JsValue =
  #| (self) => self.toJSON()

pub extern "js" fn PerformanceElementTiming::get_paint_time(self : PerformanceElementTiming) -> DOMHighResTimeStamp =
  #| (self) => self.paintTime

pub extern "js" fn PerformanceElementTiming::get_presentation_time(self : PerformanceElementTiming) -> DOMHighResTimeStamp? =
  #| (self) => self.presentationTime

