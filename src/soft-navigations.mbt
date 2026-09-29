// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/soft-navigations

///|
/// InteractionContentfulPaint interface
pub type InteractionContentfulPaint

pub extern "js" fn InteractionContentfulPaint::to_js_value(self : InteractionContentfulPaint) -> JsValue =
  #| (self) => self

/// Cast JsValue to InteractionContentfulPaint (unchecked)
pub extern "js" fn InteractionContentfulPaint::from_js_value(v : JsValue) -> InteractionContentfulPaint =
  #| (v) => v

/// Safely cast JsValue to InteractionContentfulPaint (checked with instanceof)
pub extern "js" fn InteractionContentfulPaint::from_js_value_opt(v : JsValue) -> InteractionContentfulPaint? =
  #| (v) => (v instanceof InteractionContentfulPaint) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to InteractionContentfulPaint (checked with instanceof)
pub extern "js" fn JsValue::as_interaction_contentful_paint(self : JsValue) -> InteractionContentfulPaint? =
  #| (self) => (self instanceof InteractionContentfulPaint) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to InteractionContentfulPaint (unchecked)
pub extern "js" fn JsValue::to_interaction_contentful_paint(self : JsValue) -> InteractionContentfulPaint =
  #| (self) => self

pub extern "js" fn InteractionContentfulPaint::to_performance_entry(self : InteractionContentfulPaint) -> PerformanceEntry =
  #| (self) => self

pub extern "js" fn InteractionContentfulPaint::get_largest_contentful_paint(self : InteractionContentfulPaint) -> LargestContentfulPaint =
  #| (self) => self.largestContentfulPaint

pub extern "js" fn InteractionContentfulPaint::get_interaction_id(self : InteractionContentfulPaint) -> Int64 =
  #| (self) => BigInt.asUintN(64, BigInt(self.interactionId))

pub extern "js" fn InteractionContentfulPaint::to_json(self : InteractionContentfulPaint) -> JsValue =
  #| (self) => self.toJSON()

pub extern "js" fn InteractionContentfulPaint::get_paint_time(self : InteractionContentfulPaint) -> DOMHighResTimeStamp =
  #| (self) => self.paintTime

pub extern "js" fn InteractionContentfulPaint::get_presentation_time(self : InteractionContentfulPaint) -> DOMHighResTimeStamp? =
  #| (self) => (() => { const v = self.presentationTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// PerformanceSoftNavigation interface
pub type PerformanceSoftNavigation

pub extern "js" fn PerformanceSoftNavigation::to_js_value(self : PerformanceSoftNavigation) -> JsValue =
  #| (self) => self

/// Cast JsValue to PerformanceSoftNavigation (unchecked)
pub extern "js" fn PerformanceSoftNavigation::from_js_value(v : JsValue) -> PerformanceSoftNavigation =
  #| (v) => v

/// Safely cast JsValue to PerformanceSoftNavigation (checked with instanceof)
pub extern "js" fn PerformanceSoftNavigation::from_js_value_opt(v : JsValue) -> PerformanceSoftNavigation? =
  #| (v) => (v instanceof PerformanceSoftNavigation) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to PerformanceSoftNavigation (checked with instanceof)
pub extern "js" fn JsValue::as_performance_soft_navigation(self : JsValue) -> PerformanceSoftNavigation? =
  #| (self) => (self instanceof PerformanceSoftNavigation) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to PerformanceSoftNavigation (unchecked)
pub extern "js" fn JsValue::to_performance_soft_navigation(self : JsValue) -> PerformanceSoftNavigation =
  #| (self) => self

pub extern "js" fn PerformanceSoftNavigation::to_performance_entry(self : PerformanceSoftNavigation) -> PerformanceEntry =
  #| (self) => self

pub extern "js" fn PerformanceSoftNavigation::get_navigation_type(self : PerformanceSoftNavigation) -> NavigationType =
  #| (self) => ['push', 'replace', 'reload', 'traverse'].indexOf(self.navigationType)

pub extern "js" fn PerformanceSoftNavigation::get_interaction_id(self : PerformanceSoftNavigation) -> Int64 =
  #| (self) => BigInt.asUintN(64, BigInt(self.interactionId))

pub extern "js" fn PerformanceSoftNavigation::get_largest_interaction_contentful_paint(self : PerformanceSoftNavigation) -> InteractionContentfulPaint? =
  #| (self) => (() => { const v = self.getLargestInteractionContentfulPaint(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn PerformanceSoftNavigation::to_json(self : PerformanceSoftNavigation) -> JsValue =
  #| (self) => self.toJSON()

pub extern "js" fn PerformanceSoftNavigation::get_paint_time(self : PerformanceSoftNavigation) -> DOMHighResTimeStamp =
  #| (self) => self.paintTime

pub extern "js" fn PerformanceSoftNavigation::get_presentation_time(self : PerformanceSoftNavigation) -> DOMHighResTimeStamp? =
  #| (self) => (() => { const v = self.presentationTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
