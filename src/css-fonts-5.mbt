// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-fonts-5

///|
/// CSSFontFaceDescriptors interface
pub type CSSFontFaceDescriptors

///|
pub extern "js" fn CSSFontFaceDescriptors::to_js_value(
  self : CSSFontFaceDescriptors,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSFontFaceDescriptors (unchecked)
pub extern "js" fn CSSFontFaceDescriptors::from_js_value(
  v : JsValue,
) -> CSSFontFaceDescriptors =
  #| (v) => v

///|
/// Safely cast JsValue to CSSFontFaceDescriptors (checked with instanceof)
pub extern "js" fn CSSFontFaceDescriptors::from_js_value_opt(
  v : JsValue,
) -> CSSFontFaceDescriptors? =
  #| (v) => (v instanceof CSSFontFaceDescriptors) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSFontFaceDescriptors (checked with instanceof)
pub extern "js" fn JsValue::as_css_font_face_descriptors(
  self : JsValue,
) -> CSSFontFaceDescriptors? =
  #| (self) => (self instanceof CSSFontFaceDescriptors) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSFontFaceDescriptors (unchecked)
pub extern "js" fn JsValue::to_css_font_face_descriptors(
  self : JsValue,
) -> CSSFontFaceDescriptors =
  #| (self) => self

///|
pub extern "js" fn CSSFontFaceDescriptors::to_css_style_declaration(
  self : CSSFontFaceDescriptors,
) -> CSSStyleDeclaration =
  #| (self) => self

///|
pub extern "js" fn CSSFontFaceDescriptors::get_src(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.src

///|
pub extern "js" fn CSSFontFaceDescriptors::set_src(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_font_family(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.fontFamily

///|
pub extern "js" fn CSSFontFaceDescriptors::set_font_family(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.fontFamily = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_font_style(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.fontStyle

///|
pub extern "js" fn CSSFontFaceDescriptors::set_font_style(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.fontStyle = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_font_weight(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.fontWeight

///|
pub extern "js" fn CSSFontFaceDescriptors::set_font_weight(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.fontWeight = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_font_stretch(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.fontStretch

///|
pub extern "js" fn CSSFontFaceDescriptors::set_font_stretch(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.fontStretch = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_font_width(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.fontWidth

///|
pub extern "js" fn CSSFontFaceDescriptors::set_font_width(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.fontWidth = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_font_size(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.fontSize

///|
pub extern "js" fn CSSFontFaceDescriptors::set_font_size(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.fontSize = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_size_adjust(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.sizeAdjust

///|
pub extern "js" fn CSSFontFaceDescriptors::set_size_adjust(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.sizeAdjust = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_unicode_range(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.unicodeRange

///|
pub extern "js" fn CSSFontFaceDescriptors::set_unicode_range(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.unicodeRange = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_font_feature_settings(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.fontFeatureSettings

///|
pub extern "js" fn CSSFontFaceDescriptors::set_font_feature_settings(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.fontFeatureSettings = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_font_variation_settings(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.fontVariationSettings

///|
pub extern "js" fn CSSFontFaceDescriptors::set_font_variation_settings(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.fontVariationSettings = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_font_named_instance(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.fontNamedInstance

///|
pub extern "js" fn CSSFontFaceDescriptors::set_font_named_instance(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.fontNamedInstance = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_font_display(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.fontDisplay

///|
pub extern "js" fn CSSFontFaceDescriptors::set_font_display(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.fontDisplay = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_font_language_override(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.fontLanguageOverride

///|
pub extern "js" fn CSSFontFaceDescriptors::set_font_language_override(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.fontLanguageOverride = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_ascent_override(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.ascentOverride

///|
pub extern "js" fn CSSFontFaceDescriptors::set_ascent_override(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.ascentOverride = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_descent_override(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.descentOverride

///|
pub extern "js" fn CSSFontFaceDescriptors::set_descent_override(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.descentOverride = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_line_gap_override(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.lineGapOverride

///|
pub extern "js" fn CSSFontFaceDescriptors::set_line_gap_override(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.lineGapOverride = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_superscript_position_override(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.superscriptPositionOverride

///|
pub extern "js" fn CSSFontFaceDescriptors::set_superscript_position_override(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.superscriptPositionOverride = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_subscript_position_override(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.subscriptPositionOverride

///|
pub extern "js" fn CSSFontFaceDescriptors::set_subscript_position_override(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.subscriptPositionOverride = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_superscript_size_override(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.superscriptSizeOverride

///|
pub extern "js" fn CSSFontFaceDescriptors::set_superscript_size_override(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.superscriptSizeOverride = value }

///|
pub extern "js" fn CSSFontFaceDescriptors::get_subscript_size_override(
  self : CSSFontFaceDescriptors,
) -> String =
  #| (self) => self.subscriptSizeOverride

///|
pub extern "js" fn CSSFontFaceDescriptors::set_subscript_size_override(
  self : CSSFontFaceDescriptors,
  value : String,
) -> Unit =
  #| (self, value) => { self.subscriptSizeOverride = value }

///|
/// CSSFontFaceRule interface
pub type CSSFontFaceRule

///|
pub extern "js" fn CSSFontFaceRule::to_js_value(
  self : CSSFontFaceRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSFontFaceRule (unchecked)
pub extern "js" fn CSSFontFaceRule::from_js_value(
  v : JsValue,
) -> CSSFontFaceRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSFontFaceRule (checked with instanceof)
pub extern "js" fn CSSFontFaceRule::from_js_value_opt(
  v : JsValue,
) -> CSSFontFaceRule? =
  #| (v) => (v instanceof CSSFontFaceRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSFontFaceRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_font_face_rule(
  self : JsValue,
) -> CSSFontFaceRule? =
  #| (self) => (self instanceof CSSFontFaceRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSFontFaceRule (unchecked)
pub extern "js" fn JsValue::to_css_font_face_rule(
  self : JsValue,
) -> CSSFontFaceRule =
  #| (self) => self

///|
pub extern "js" fn CSSFontFaceRule::to_css_rule(
  self : CSSFontFaceRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSFontFaceRule::get_style(
  self : CSSFontFaceRule,
) -> CSSFontFaceDescriptors =
  #| (self) => self.style
