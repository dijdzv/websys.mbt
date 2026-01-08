// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-fonts

///|
/// CSSFontFeatureValuesRule interface
pub type CSSFontFeatureValuesRule

///|
pub extern "js" fn CSSFontFeatureValuesRule::to_js_value(
  self : CSSFontFeatureValuesRule,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSFontFeatureValuesRule::get_font_family(
  self : CSSFontFeatureValuesRule,
) -> CSSOMString =
  #| (self) => self.fontFamily

///|
pub extern "js" fn CSSFontFeatureValuesRule::set_font_family(
  self : CSSFontFeatureValuesRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.fontFamily = value }

///|
pub extern "js" fn CSSFontFeatureValuesRule::get_annotation(
  self : CSSFontFeatureValuesRule,
) -> CSSFontFeatureValuesMap =
  #| (self) => self.annotation

///|
pub extern "js" fn CSSFontFeatureValuesRule::get_ornaments(
  self : CSSFontFeatureValuesRule,
) -> CSSFontFeatureValuesMap =
  #| (self) => self.ornaments

///|
pub extern "js" fn CSSFontFeatureValuesRule::get_stylistic(
  self : CSSFontFeatureValuesRule,
) -> CSSFontFeatureValuesMap =
  #| (self) => self.stylistic

///|
pub extern "js" fn CSSFontFeatureValuesRule::get_swash(
  self : CSSFontFeatureValuesRule,
) -> CSSFontFeatureValuesMap =
  #| (self) => self.swash

///|
pub extern "js" fn CSSFontFeatureValuesRule::get_character_variant(
  self : CSSFontFeatureValuesRule,
) -> CSSFontFeatureValuesMap =
  #| (self) => self.characterVariant

///|
pub extern "js" fn CSSFontFeatureValuesRule::get_styleset(
  self : CSSFontFeatureValuesRule,
) -> CSSFontFeatureValuesMap =
  #| (self) => self.styleset

///|
pub extern "js" fn CSSFontFeatureValuesRule::get_historical_forms(
  self : CSSFontFeatureValuesRule,
) -> CSSFontFeatureValuesMap =
  #| (self) => self.historicalForms

///|
/// CSSFontFeatureValuesMap interface
pub type CSSFontFeatureValuesMap

///|
pub extern "js" fn CSSFontFeatureValuesMap::to_js_value(
  self : CSSFontFeatureValuesMap,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSFontFeatureValuesMap::get(
  self : CSSFontFeatureValuesMap,
  key : CSSOMString,
) -> Array[Int]? =
  #| (self, key) => self.get(key)

///|
pub extern "js" fn CSSFontFeatureValuesMap::has(
  self : CSSFontFeatureValuesMap,
  key : CSSOMString,
) -> Bool =
  #| (self, key) => self.has(key)

///|
pub extern "js" fn CSSFontFeatureValuesMap::set(
  self : CSSFontFeatureValuesMap,
  key : CSSOMString,
  value : Array[Int],
) -> Unit =
  #| (self, key, value) => { self.set(key, value) }

///|
pub extern "js" fn CSSFontFeatureValuesMap::delete(
  self : CSSFontFeatureValuesMap,
  key : CSSOMString,
) -> Bool =
  #| (self, key) => self.delete(key)

///|
pub extern "js" fn CSSFontFeatureValuesMap::clear(
  self : CSSFontFeatureValuesMap,
) -> Unit =
  #| (self) => { self.clear() }

///|
/// CSSFontPaletteValuesRule interface
pub type CSSFontPaletteValuesRule

///|
pub extern "js" fn CSSFontPaletteValuesRule::to_js_value(
  self : CSSFontPaletteValuesRule,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSFontPaletteValuesRule::get_name(
  self : CSSFontPaletteValuesRule,
) -> CSSOMString =
  #| (self) => self.name

///|
pub extern "js" fn CSSFontPaletteValuesRule::get_font_family(
  self : CSSFontPaletteValuesRule,
) -> CSSOMString =
  #| (self) => self.fontFamily

///|
pub extern "js" fn CSSFontPaletteValuesRule::get_base_palette(
  self : CSSFontPaletteValuesRule,
) -> CSSOMString =
  #| (self) => self.basePalette

///|
pub extern "js" fn CSSFontPaletteValuesRule::get_override_colors(
  self : CSSFontPaletteValuesRule,
) -> CSSOMString =
  #| (self) => self.overrideColors
