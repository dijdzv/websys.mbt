// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/largest-contentful-paint

///|
/// LargestContentfulPaint interface
pub type LargestContentfulPaint

///|
pub extern "js" fn LargestContentfulPaint::to_js_value(
  self : LargestContentfulPaint,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LargestContentfulPaint (unchecked)
pub extern "js" fn LargestContentfulPaint::from_js_value(
  v : JsValue,
) -> LargestContentfulPaint =
  #| (v) => v

///|
/// Safely cast JsValue to LargestContentfulPaint (checked with instanceof)
pub extern "js" fn LargestContentfulPaint::from_js_value_opt(
  v : JsValue,
) -> LargestContentfulPaint? =
  #| (v) => (v instanceof LargestContentfulPaint) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LargestContentfulPaint (checked with instanceof)
pub extern "js" fn JsValue::as_largest_contentful_paint(
  self : JsValue,
) -> LargestContentfulPaint? =
  #| (self) => (self instanceof LargestContentfulPaint) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LargestContentfulPaint (unchecked)
pub extern "js" fn JsValue::to_largest_contentful_paint(
  self : JsValue,
) -> LargestContentfulPaint =
  #| (self) => self

///|
pub extern "js" fn LargestContentfulPaint::to_performance_entry(
  self : LargestContentfulPaint,
) -> PerformanceEntry =
  #| (self) => self

///|
pub extern "js" fn LargestContentfulPaint::get_load_time(
  self : LargestContentfulPaint,
) -> DOMHighResTimeStamp =
  #| (self) => self.loadTime

///|
pub extern "js" fn LargestContentfulPaint::get_render_time(
  self : LargestContentfulPaint,
) -> DOMHighResTimeStamp =
  #| (self) => self.renderTime

///|
pub extern "js" fn LargestContentfulPaint::get_size(
  self : LargestContentfulPaint,
) -> Int =
  #| (self) => self.size

///|
pub extern "js" fn LargestContentfulPaint::get_id(
  self : LargestContentfulPaint,
) -> String =
  #| (self) => self.id

///|
pub extern "js" fn LargestContentfulPaint::get_url(
  self : LargestContentfulPaint,
) -> String =
  #| (self) => self.url

///|
pub extern "js" fn LargestContentfulPaint::get_element(
  self : LargestContentfulPaint,
) -> Element? =
  #| (self) => (() => { const v = self.element; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn LargestContentfulPaint::to_json(
  self : LargestContentfulPaint,
) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn LargestContentfulPaint::get_paint_time(
  self : LargestContentfulPaint,
) -> DOMHighResTimeStamp =
  #| (self) => self.paintTime

///|
pub extern "js" fn LargestContentfulPaint::get_presentation_time(
  self : LargestContentfulPaint,
) -> DOMHighResTimeStamp? =
  #| (self) => (() => { const v = self.presentationTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
