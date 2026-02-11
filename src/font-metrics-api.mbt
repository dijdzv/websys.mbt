// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/font-metrics-api

///|
/// FontMetrics interface
pub type FontMetrics

///|
pub extern "js" fn FontMetrics::to_js_value(self : FontMetrics) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FontMetrics (unchecked)
pub extern "js" fn FontMetrics::from_js_value(v : JsValue) -> FontMetrics =
  #| (v) => v

///|
/// Safely cast JsValue to FontMetrics (checked with instanceof)
pub extern "js" fn FontMetrics::from_js_value_opt(v : JsValue) -> FontMetrics? =
  #| (v) => (v instanceof FontMetrics) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FontMetrics (checked with instanceof)
pub extern "js" fn JsValue::as_font_metrics(self : JsValue) -> FontMetrics? =
  #| (self) => (self instanceof FontMetrics) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FontMetrics (unchecked)
pub extern "js" fn JsValue::to_font_metrics(self : JsValue) -> FontMetrics =
  #| (self) => self

///|
pub extern "js" fn FontMetrics::get_width(self : FontMetrics) -> Double =
  #| (self) => self.width

///|
pub extern "js" fn FontMetrics::get_advances(
  self : FontMetrics,
) -> Array[Double] =
  #| (self) => self.advances

///|
pub extern "js" fn FontMetrics::get_bounding_box_left(
  self : FontMetrics,
) -> Double =
  #| (self) => self.boundingBoxLeft

///|
pub extern "js" fn FontMetrics::get_bounding_box_right(
  self : FontMetrics,
) -> Double =
  #| (self) => self.boundingBoxRight

///|
pub extern "js" fn FontMetrics::get_height(self : FontMetrics) -> Double =
  #| (self) => self.height

///|
pub extern "js" fn FontMetrics::get_em_height_ascent(
  self : FontMetrics,
) -> Double =
  #| (self) => self.emHeightAscent

///|
pub extern "js" fn FontMetrics::get_em_height_descent(
  self : FontMetrics,
) -> Double =
  #| (self) => self.emHeightDescent

///|
pub extern "js" fn FontMetrics::get_bounding_box_ascent(
  self : FontMetrics,
) -> Double =
  #| (self) => self.boundingBoxAscent

///|
pub extern "js" fn FontMetrics::get_bounding_box_descent(
  self : FontMetrics,
) -> Double =
  #| (self) => self.boundingBoxDescent

///|
pub extern "js" fn FontMetrics::get_font_bounding_box_ascent(
  self : FontMetrics,
) -> Double =
  #| (self) => self.fontBoundingBoxAscent

///|
pub extern "js" fn FontMetrics::get_font_bounding_box_descent(
  self : FontMetrics,
) -> Double =
  #| (self) => self.fontBoundingBoxDescent

///|
pub extern "js" fn FontMetrics::get_dominant_baseline(
  self : FontMetrics,
) -> Baseline =
  #| (self) => self.dominantBaseline

///|
pub extern "js" fn FontMetrics::get_baselines(
  self : FontMetrics,
) -> Array[Baseline] =
  #| (self) => self.baselines

///|
pub extern "js" fn FontMetrics::get_fonts(self : FontMetrics) -> Array[Font] =
  #| (self) => self.fonts

///|
/// Baseline interface
pub type Baseline

///|
pub extern "js" fn Baseline::to_js_value(self : Baseline) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Baseline (unchecked)
pub extern "js" fn Baseline::from_js_value(v : JsValue) -> Baseline =
  #| (v) => v

///|
/// Safely cast JsValue to Baseline (checked with instanceof)
pub extern "js" fn Baseline::from_js_value_opt(v : JsValue) -> Baseline? =
  #| (v) => (v instanceof Baseline) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Baseline (checked with instanceof)
pub extern "js" fn JsValue::as_baseline(self : JsValue) -> Baseline? =
  #| (self) => (self instanceof Baseline) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Baseline (unchecked)
pub extern "js" fn JsValue::to_baseline(self : JsValue) -> Baseline =
  #| (self) => self

///|
pub extern "js" fn Baseline::get_name(self : Baseline) -> String =
  #| (self) => self.name

///|
pub extern "js" fn Baseline::get_value(self : Baseline) -> Double =
  #| (self) => self.value

///|
/// Font interface
pub type Font

///|
pub extern "js" fn Font::to_js_value(self : Font) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Font (unchecked)
pub extern "js" fn Font::from_js_value(v : JsValue) -> Font =
  #| (v) => v

///|
/// Safely cast JsValue to Font (checked with instanceof)
pub extern "js" fn Font::from_js_value_opt(v : JsValue) -> Font? =
  #| (v) => (v instanceof Font) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Font (checked with instanceof)
pub extern "js" fn JsValue::as_font(self : JsValue) -> Font? =
  #| (self) => (self instanceof Font) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Font (unchecked)
pub extern "js" fn JsValue::to_font(self : JsValue) -> Font =
  #| (self) => self

///|
pub extern "js" fn Font::get_name(self : Font) -> String =
  #| (self) => self.name

///|
pub extern "js" fn Font::get_glyphs_rendered(self : Font) -> Int =
  #| (self) => self.glyphsRendered
