// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/largest-contentful-paint

///|
/// LargestContentfulPaint interface
pub type LargestContentfulPaint

pub extern "js" fn LargestContentfulPaint::to_js_value(self : LargestContentfulPaint) -> JsValue =
  #| (self) => self

pub extern "js" fn LargestContentfulPaint::get_load_time(self : LargestContentfulPaint) -> DOMHighResTimeStamp =
  #| (self) => self.loadTime

pub extern "js" fn LargestContentfulPaint::get_render_time(self : LargestContentfulPaint) -> DOMHighResTimeStamp =
  #| (self) => self.renderTime

pub extern "js" fn LargestContentfulPaint::get_size(self : LargestContentfulPaint) -> Int =
  #| (self) => self.size

pub extern "js" fn LargestContentfulPaint::get_id(self : LargestContentfulPaint) -> String =
  #| (self) => self.id

pub extern "js" fn LargestContentfulPaint::get_url(self : LargestContentfulPaint) -> String =
  #| (self) => self.url

pub extern "js" fn LargestContentfulPaint::get_element(self : LargestContentfulPaint) -> Element? =
  #| (self) => self.element

pub extern "js" fn LargestContentfulPaint::to_j_s_o_n(self : LargestContentfulPaint) -> JsValue =
  #| (self) => self.toJSON()

pub extern "js" fn LargestContentfulPaint::get_paint_time(self : LargestContentfulPaint) -> DOMHighResTimeStamp =
  #| (self) => self.paintTime

pub extern "js" fn LargestContentfulPaint::get_presentation_time(self : LargestContentfulPaint) -> DOMHighResTimeStamp? =
  #| (self) => self.presentationTime

