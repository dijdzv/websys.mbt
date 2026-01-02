// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-fonts-5

///|
/// CSSFontFaceDescriptors interface
pub type CSSFontFaceDescriptors

pub extern "js" fn CSSFontFaceDescriptors::to_js_value(self : CSSFontFaceDescriptors) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSFontFaceDescriptors::get_src(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.src

pub extern "js" fn CSSFontFaceDescriptors::set_src(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.src = value }

pub extern "js" fn CSSFontFaceDescriptors::get_font_family(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.fontFamily

pub extern "js" fn CSSFontFaceDescriptors::set_font_family(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.fontFamily = value }

pub extern "js" fn CSSFontFaceDescriptors::get_font_style(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.fontStyle

pub extern "js" fn CSSFontFaceDescriptors::set_font_style(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.fontStyle = value }

pub extern "js" fn CSSFontFaceDescriptors::get_font_weight(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.fontWeight

pub extern "js" fn CSSFontFaceDescriptors::set_font_weight(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.fontWeight = value }

pub extern "js" fn CSSFontFaceDescriptors::get_font_stretch(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.fontStretch

pub extern "js" fn CSSFontFaceDescriptors::set_font_stretch(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.fontStretch = value }

pub extern "js" fn CSSFontFaceDescriptors::get_font_width(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.fontWidth

pub extern "js" fn CSSFontFaceDescriptors::set_font_width(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.fontWidth = value }

pub extern "js" fn CSSFontFaceDescriptors::get_font_size(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.fontSize

pub extern "js" fn CSSFontFaceDescriptors::set_font_size(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.fontSize = value }

pub extern "js" fn CSSFontFaceDescriptors::get_size_adjust(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.sizeAdjust

pub extern "js" fn CSSFontFaceDescriptors::set_size_adjust(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.sizeAdjust = value }

pub extern "js" fn CSSFontFaceDescriptors::get_unicode_range(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.unicodeRange

pub extern "js" fn CSSFontFaceDescriptors::set_unicode_range(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.unicodeRange = value }

pub extern "js" fn CSSFontFaceDescriptors::get_font_feature_settings(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.fontFeatureSettings

pub extern "js" fn CSSFontFaceDescriptors::set_font_feature_settings(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.fontFeatureSettings = value }

pub extern "js" fn CSSFontFaceDescriptors::get_font_variation_settings(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.fontVariationSettings

pub extern "js" fn CSSFontFaceDescriptors::set_font_variation_settings(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.fontVariationSettings = value }

pub extern "js" fn CSSFontFaceDescriptors::get_font_named_instance(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.fontNamedInstance

pub extern "js" fn CSSFontFaceDescriptors::set_font_named_instance(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.fontNamedInstance = value }

pub extern "js" fn CSSFontFaceDescriptors::get_font_display(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.fontDisplay

pub extern "js" fn CSSFontFaceDescriptors::set_font_display(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.fontDisplay = value }

pub extern "js" fn CSSFontFaceDescriptors::get_font_language_override(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.fontLanguageOverride

pub extern "js" fn CSSFontFaceDescriptors::set_font_language_override(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.fontLanguageOverride = value }

pub extern "js" fn CSSFontFaceDescriptors::get_ascent_override(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.ascentOverride

pub extern "js" fn CSSFontFaceDescriptors::set_ascent_override(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.ascentOverride = value }

pub extern "js" fn CSSFontFaceDescriptors::get_descent_override(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.descentOverride

pub extern "js" fn CSSFontFaceDescriptors::set_descent_override(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.descentOverride = value }

pub extern "js" fn CSSFontFaceDescriptors::get_line_gap_override(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.lineGapOverride

pub extern "js" fn CSSFontFaceDescriptors::set_line_gap_override(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.lineGapOverride = value }

pub extern "js" fn CSSFontFaceDescriptors::get_superscript_position_override(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.superscriptPositionOverride

pub extern "js" fn CSSFontFaceDescriptors::set_superscript_position_override(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.superscriptPositionOverride = value }

pub extern "js" fn CSSFontFaceDescriptors::get_subscript_position_override(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.subscriptPositionOverride

pub extern "js" fn CSSFontFaceDescriptors::set_subscript_position_override(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.subscriptPositionOverride = value }

pub extern "js" fn CSSFontFaceDescriptors::get_superscript_size_override(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.superscriptSizeOverride

pub extern "js" fn CSSFontFaceDescriptors::set_superscript_size_override(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.superscriptSizeOverride = value }

pub extern "js" fn CSSFontFaceDescriptors::get_subscript_size_override(self : CSSFontFaceDescriptors) -> CSSOMString =
  #| (self) => self.subscriptSizeOverride

pub extern "js" fn CSSFontFaceDescriptors::set_subscript_size_override(self : CSSFontFaceDescriptors, value : CSSOMString) -> Unit =
  #| (self, value) => { self.subscriptSizeOverride = value }

///|
/// CSSFontFaceRule interface
pub type CSSFontFaceRule

pub extern "js" fn CSSFontFaceRule::to_js_value(self : CSSFontFaceRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSFontFaceRule::get_style(self : CSSFontFaceRule) -> CSSFontFaceDescriptors =
  #| (self) => self.style

