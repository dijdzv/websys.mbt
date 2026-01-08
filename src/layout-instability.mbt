// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/layout-instability

///|
/// LayoutShift interface
pub type LayoutShift

///|
pub extern "js" fn LayoutShift::to_js_value(self : LayoutShift) -> JsValue =
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
pub extern "js" fn LayoutShift::get_sources(self : LayoutShift) -> JsValue =
  #| (self) => self.sources

///|
pub extern "js" fn LayoutShift::to_j_s_o_n(self : LayoutShift) -> JsValue =
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
pub extern "js" fn LayoutShiftAttribution::get_node(
  self : LayoutShiftAttribution,
) -> Node? =
  #| (self) => self.node

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
