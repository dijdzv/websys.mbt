// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/cssom

///|
/// CSSStyleSheetInit dictionary
pub struct CSSStyleSheetInit {
  baseURL : String?
  media : MediaListOrString?
  disabled : Bool?
}

///|
/// Create a new CSSStyleSheetInit with default values
pub fn CSSStyleSheetInit::default() -> CSSStyleSheetInit {
  CSSStyleSheetInit::{ baseURL: None, media: None, disabled: None }
}

///|
/// Convert to JsValue
pub extern "js" fn CSSStyleSheetInit::to_js(
  self : CSSStyleSheetInit,
) -> JsValue =
  #| (self) => ({
  #|   baseURL: self.baseURL,
  #|   media: self.media,
  #|   disabled: self.disabled
  #| })

///|
/// MediaList interface
pub type MediaList

///|
pub extern "js" fn MediaList::to_js_value(self : MediaList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaList (unchecked)
pub extern "js" fn MediaList::from_js_value(v : JsValue) -> MediaList =
  #| (v) => v

///|
/// Safely cast JsValue to MediaList (checked with instanceof)
pub extern "js" fn MediaList::from_js_value_opt(v : JsValue) -> MediaList? =
  #| (v) => (v instanceof MediaList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaList (checked with instanceof)
pub extern "js" fn JsValue::as_media_list(self : JsValue) -> MediaList? =
  #| (self) => (self instanceof MediaList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaList (unchecked)
pub extern "js" fn JsValue::to_media_list(self : JsValue) -> MediaList =
  #| (self) => self

///|
pub extern "js" fn MediaList::get_media_text(self : MediaList) -> CSSOMString =
  #| (self) => self.mediaText

///|
pub extern "js" fn MediaList::set_media_text(
  self : MediaList,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.mediaText = value }

///|
pub extern "js" fn MediaList::get_length(self : MediaList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn MediaList::item(
  self : MediaList,
  index : Int,
) -> CSSOMString? =
  #| (self, index) => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn MediaList::get(
  self : MediaList,
  index : Int,
) -> CSSOMString? =
  #| (self, index) => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn MediaList::append_medium(
  self : MediaList,
  medium : CSSOMString,
) -> Unit =
  #| (self, medium) => self.appendMedium(medium)

///|
pub extern "js" fn MediaList::delete_medium(
  self : MediaList,
  medium : CSSOMString,
) -> Unit =
  #| (self, medium) => self.deleteMedium(medium)

///|
/// StyleSheet interface
pub type StyleSheet

///|
pub extern "js" fn StyleSheet::to_js_value(self : StyleSheet) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to StyleSheet (unchecked)
pub extern "js" fn StyleSheet::from_js_value(v : JsValue) -> StyleSheet =
  #| (v) => v

///|
/// Safely cast JsValue to StyleSheet (checked with instanceof)
pub extern "js" fn StyleSheet::from_js_value_opt(v : JsValue) -> StyleSheet? =
  #| (v) => (v instanceof StyleSheet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to StyleSheet (checked with instanceof)
pub extern "js" fn JsValue::as_style_sheet(self : JsValue) -> StyleSheet? =
  #| (self) => (self instanceof StyleSheet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to StyleSheet (unchecked)
pub extern "js" fn JsValue::to_style_sheet(self : JsValue) -> StyleSheet =
  #| (self) => self

///|
pub extern "js" fn StyleSheet::as_css_style_sheet(
  self : StyleSheet,
) -> CSSStyleSheet? =
  #| (self) => (self instanceof CSSStyleSheet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn StyleSheet::get_type(self : StyleSheet) -> CSSOMString =
  #| (self) => self.type

///|
pub extern "js" fn StyleSheet::get_href(self : StyleSheet) -> String? =
  #| (self) => { const v = self.href; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn StyleSheet::get_owner_node(
  self : StyleSheet,
) -> ElementOrProcessingInstruction =
  #| (self) => self.ownerNode

///|
pub extern "js" fn StyleSheet::get_parent_style_sheet(
  self : StyleSheet,
) -> CSSStyleSheet? =
  #| (self) => { const v = self.parentStyleSheet; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn StyleSheet::get_title(self : StyleSheet) -> String? =
  #| (self) => { const v = self.title; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn StyleSheet::get_media(self : StyleSheet) -> MediaList =
  #| (self) => self.media

///|
pub extern "js" fn StyleSheet::get_disabled(self : StyleSheet) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn StyleSheet::set_disabled(
  self : StyleSheet,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
/// CSSStyleSheet interface
pub type CSSStyleSheet

///|
pub extern "js" fn CSSStyleSheet::to_js_value(self : CSSStyleSheet) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSStyleSheet (unchecked)
pub extern "js" fn CSSStyleSheet::from_js_value(v : JsValue) -> CSSStyleSheet =
  #| (v) => v

///|
/// Safely cast JsValue to CSSStyleSheet (checked with instanceof)
pub extern "js" fn CSSStyleSheet::from_js_value_opt(
  v : JsValue,
) -> CSSStyleSheet? =
  #| (v) => (v instanceof CSSStyleSheet) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSStyleSheet (checked with instanceof)
pub extern "js" fn JsValue::as_css_style_sheet(
  self : JsValue,
) -> CSSStyleSheet? =
  #| (self) => (self instanceof CSSStyleSheet) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSStyleSheet (unchecked)
pub extern "js" fn JsValue::to_css_style_sheet(self : JsValue) -> CSSStyleSheet =
  #| (self) => self

///|
pub extern "js" fn CSSStyleSheet::to_style_sheet(
  self : CSSStyleSheet,
) -> StyleSheet =
  #| (self) => self

///|
pub extern "js" fn CSSStyleSheet::new(
  options : CSSStyleSheetInit,
) -> CSSStyleSheet =
  #| (options) => new CSSStyleSheet(options)

///|
pub extern "js" fn CSSStyleSheet::get_owner_rule(
  self : CSSStyleSheet,
) -> CSSRule? =
  #| (self) => { const v = self.ownerRule; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn CSSStyleSheet::get_css_rules(
  self : CSSStyleSheet,
) -> CSSRuleList =
  #| (self) => self.cssRules

///|
pub extern "js" fn CSSStyleSheet::insert_rule(
  self : CSSStyleSheet,
  rule : CSSOMString,
) -> Int =
  #| (self, rule) => self.insertRule(rule)

///|
pub extern "js" fn CSSStyleSheet::insert_rule_with_index(
  self : CSSStyleSheet,
  rule : CSSOMString,
  index : Int,
) -> Int =
  #| (self, rule, index) => self.insertRule(rule, index)

///|
pub extern "js" fn CSSStyleSheet::delete_rule(
  self : CSSStyleSheet,
  index : Int,
) -> Unit =
  #| (self, index) => self.deleteRule(index)

///|
pub extern "js" fn CSSStyleSheet::replace(
  self : CSSStyleSheet,
  text : String,
) -> Promise[CSSStyleSheet] =
  #| (self, text) => self.replace(text)

///|
pub extern "js" fn CSSStyleSheet::replace_sync(
  self : CSSStyleSheet,
  text : String,
) -> Unit =
  #| (self, text) => self.replaceSync(text)

///|
pub extern "js" fn CSSStyleSheet::get_rules(
  self : CSSStyleSheet,
) -> CSSRuleList =
  #| (self) => self.rules

///|
pub extern "js" fn CSSStyleSheet::add_rule(self : CSSStyleSheet) -> Int =
  #| (self) => self.addRule()

///|
pub extern "js" fn CSSStyleSheet::add_rule_with_index(
  self : CSSStyleSheet,
  selector : String,
  style : String,
  index : Int,
) -> Int =
  #| (self, selector, style, index) => self.addRule(selector, style, index)

///|
pub extern "js" fn CSSStyleSheet::remove_rule(self : CSSStyleSheet) -> Unit =
  #| (self) => self.removeRule()

///|
pub extern "js" fn CSSStyleSheet::remove_rule_with_index(
  self : CSSStyleSheet,
  index : Int,
) -> Unit =
  #| (self, index) => self.removeRule(index)

///|
/// StyleSheetList interface
pub type StyleSheetList

///|
pub extern "js" fn StyleSheetList::to_js_value(
  self : StyleSheetList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to StyleSheetList (unchecked)
pub extern "js" fn StyleSheetList::from_js_value(v : JsValue) -> StyleSheetList =
  #| (v) => v

///|
/// Safely cast JsValue to StyleSheetList (checked with instanceof)
pub extern "js" fn StyleSheetList::from_js_value_opt(
  v : JsValue,
) -> StyleSheetList? =
  #| (v) => (v instanceof StyleSheetList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to StyleSheetList (checked with instanceof)
pub extern "js" fn JsValue::as_style_sheet_list(
  self : JsValue,
) -> StyleSheetList? =
  #| (self) => (self instanceof StyleSheetList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to StyleSheetList (unchecked)
pub extern "js" fn JsValue::to_style_sheet_list(
  self : JsValue,
) -> StyleSheetList =
  #| (self) => self

///|
pub extern "js" fn StyleSheetList::item(
  self : StyleSheetList,
  index : Int,
) -> CSSStyleSheet? =
  #| (self, index) => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn StyleSheetList::get(
  self : StyleSheetList,
  index : Int,
) -> CSSStyleSheet? =
  #| (self, index) => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn StyleSheetList::get_length(self : StyleSheetList) -> Int =
  #| (self) => self.length

///|
/// CSSRuleList interface
pub type CSSRuleList

///|
pub extern "js" fn CSSRuleList::to_js_value(self : CSSRuleList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSRuleList (unchecked)
pub extern "js" fn CSSRuleList::from_js_value(v : JsValue) -> CSSRuleList =
  #| (v) => v

///|
/// Safely cast JsValue to CSSRuleList (checked with instanceof)
pub extern "js" fn CSSRuleList::from_js_value_opt(v : JsValue) -> CSSRuleList? =
  #| (v) => (v instanceof CSSRuleList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSRuleList (checked with instanceof)
pub extern "js" fn JsValue::as_css_rule_list(self : JsValue) -> CSSRuleList? =
  #| (self) => (self instanceof CSSRuleList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSRuleList (unchecked)
pub extern "js" fn JsValue::to_css_rule_list(self : JsValue) -> CSSRuleList =
  #| (self) => self

///|
pub extern "js" fn CSSRuleList::item(
  self : CSSRuleList,
  index : Int,
) -> CSSRule? =
  #| (self, index) => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn CSSRuleList::get(
  self : CSSRuleList,
  index : Int,
) -> CSSRule? =
  #| (self, index) => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn CSSRuleList::get_length(self : CSSRuleList) -> Int =
  #| (self) => self.length

///|
/// CSSRule interface
pub type CSSRule

///|
pub extern "js" fn CSSRule::to_js_value(self : CSSRule) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSRule (unchecked)
pub extern "js" fn CSSRule::from_js_value(v : JsValue) -> CSSRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSRule (checked with instanceof)
pub extern "js" fn CSSRule::from_js_value_opt(v : JsValue) -> CSSRule? =
  #| (v) => (v instanceof CSSRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_rule(self : JsValue) -> CSSRule? =
  #| (self) => (self instanceof CSSRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSRule (unchecked)
pub extern "js" fn JsValue::to_css_rule(self : JsValue) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSRule::as_css_function_rule(
  self : CSSRule,
) -> CSSFunctionRule? =
  #| (self) => (self instanceof CSSFunctionRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_function_declarations(
  self : CSSRule,
) -> CSSFunctionDeclarations? =
  #| (self) => (self instanceof CSSFunctionDeclarations) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_condition_rule(
  self : CSSRule,
) -> CSSConditionRule? =
  #| (self) => (self instanceof CSSConditionRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_media_rule(self : CSSRule) -> CSSMediaRule? =
  #| (self) => (self instanceof CSSMediaRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_supports_rule(
  self : CSSRule,
) -> CSSSupportsRule? =
  #| (self) => (self instanceof CSSSupportsRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_layer_block_rule(
  self : CSSRule,
) -> CSSLayerBlockRule? =
  #| (self) => (self instanceof CSSLayerBlockRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_layer_statement_rule(
  self : CSSRule,
) -> CSSLayerStatementRule? =
  #| (self) => (self instanceof CSSLayerStatementRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_counter_style_rule(
  self : CSSRule,
) -> CSSCounterStyleRule? =
  #| (self) => (self instanceof CSSCounterStyleRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_container_rule(
  self : CSSRule,
) -> CSSContainerRule? =
  #| (self) => (self instanceof CSSContainerRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_supports_condition_rule(
  self : CSSRule,
) -> CSSSupportsConditionRule? =
  #| (self) => (self instanceof CSSSupportsConditionRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_scope_rule(self : CSSRule) -> CSSScopeRule? =
  #| (self) => (self instanceof CSSScopeRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_property_rule(
  self : CSSRule,
) -> CSSPropertyRule? =
  #| (self) => (self instanceof CSSPropertyRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_style_rule(self : CSSRule) -> CSSStyleRule? =
  #| (self) => (self instanceof CSSStyleRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_import_rule(
  self : CSSRule,
) -> CSSImportRule? =
  #| (self) => (self instanceof CSSImportRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_grouping_rule(
  self : CSSRule,
) -> CSSGroupingRule? =
  #| (self) => (self instanceof CSSGroupingRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_page_rule(self : CSSRule) -> CSSPageRule? =
  #| (self) => (self instanceof CSSPageRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_margin_rule(
  self : CSSRule,
) -> CSSMarginRule? =
  #| (self) => (self instanceof CSSMarginRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_namespace_rule(
  self : CSSRule,
) -> CSSNamespaceRule? =
  #| (self) => (self instanceof CSSNamespaceRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_color_profile_rule(
  self : CSSRule,
) -> CSSColorProfileRule? =
  #| (self) => (self instanceof CSSColorProfileRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_keyframe_rule(
  self : CSSRule,
) -> CSSKeyframeRule? =
  #| (self) => (self instanceof CSSKeyframeRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_keyframes_rule(
  self : CSSRule,
) -> CSSKeyframesRule? =
  #| (self) => (self instanceof CSSKeyframesRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_position_try_rule(
  self : CSSRule,
) -> CSSPositionTryRule? =
  #| (self) => (self instanceof CSSPositionTryRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_view_transition_rule(
  self : CSSRule,
) -> CSSViewTransitionRule? =
  #| (self) => (self instanceof CSSViewTransitionRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_font_face_rule(
  self : CSSRule,
) -> CSSFontFaceRule? =
  #| (self) => (self instanceof CSSFontFaceRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_starting_style_rule(
  self : CSSRule,
) -> CSSStartingStyleRule? =
  #| (self) => (self instanceof CSSStartingStyleRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_custom_media_rule(
  self : CSSRule,
) -> CSSCustomMediaRule? =
  #| (self) => (self instanceof CSSCustomMediaRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_font_feature_values_rule(
  self : CSSRule,
) -> CSSFontFeatureValuesRule? =
  #| (self) => (self instanceof CSSFontFeatureValuesRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_font_palette_values_rule(
  self : CSSRule,
) -> CSSFontPaletteValuesRule? =
  #| (self) => (self instanceof CSSFontPaletteValuesRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::as_css_nested_declarations(
  self : CSSRule,
) -> CSSNestedDeclarations? =
  #| (self) => (self instanceof CSSNestedDeclarations) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSRule::get_css_text(self : CSSRule) -> CSSOMString =
  #| (self) => self.cssText

///|
pub extern "js" fn CSSRule::set_css_text(
  self : CSSRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.cssText = value }

///|
pub extern "js" fn CSSRule::get_parent_rule(self : CSSRule) -> CSSRule? =
  #| (self) => { const v = self.parentRule; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn CSSRule::get_parent_style_sheet(
  self : CSSRule,
) -> CSSStyleSheet? =
  #| (self) => { const v = self.parentStyleSheet; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn CSSRule::get_type(self : CSSRule) -> Int =
  #| (self) => self.type

// CSSRule.STYLE_RULE

///|
pub let css_rule_style_rule : Int = 1

// CSSRule.CHARSET_RULE

///|
pub let css_rule_charset_rule : Int = 2

// CSSRule.IMPORT_RULE

///|
pub let css_rule_import_rule : Int = 3

// CSSRule.MEDIA_RULE

///|
pub let css_rule_media_rule : Int = 4

// CSSRule.FONT_FACE_RULE

///|
pub let css_rule_font_face_rule : Int = 5

// CSSRule.PAGE_RULE

///|
pub let css_rule_page_rule : Int = 6

// CSSRule.MARGIN_RULE

///|
pub let css_rule_margin_rule : Int = 9

// CSSRule.NAMESPACE_RULE

///|
pub let css_rule_namespace_rule : Int = 10

// CSSRule.SUPPORTS_RULE

///|
pub let css_rule_supports_rule : Int = 12

// CSSRule.COUNTER_STYLE_RULE

///|
pub let css_rule_counter_style_rule : Int = 11

// CSSRule.KEYFRAMES_RULE

///|
pub let css_rule_keyframes_rule : Int = 7

// CSSRule.KEYFRAME_RULE

///|
pub let css_rule_keyframe_rule : Int = 8

// CSSRule.FONT_FEATURE_VALUES_RULE

///|
pub let css_rule_font_feature_values_rule : Int = 14

///|
/// CSSStyleRule interface
pub type CSSStyleRule

///|
pub extern "js" fn CSSStyleRule::to_js_value(self : CSSStyleRule) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSStyleRule (unchecked)
pub extern "js" fn CSSStyleRule::from_js_value(v : JsValue) -> CSSStyleRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSStyleRule (checked with instanceof)
pub extern "js" fn CSSStyleRule::from_js_value_opt(
  v : JsValue,
) -> CSSStyleRule? =
  #| (v) => (v instanceof CSSStyleRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSStyleRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_style_rule(self : JsValue) -> CSSStyleRule? =
  #| (self) => (self instanceof CSSStyleRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSStyleRule (unchecked)
pub extern "js" fn JsValue::to_css_style_rule(self : JsValue) -> CSSStyleRule =
  #| (self) => self

///|
pub extern "js" fn CSSStyleRule::to_css_grouping_rule(
  self : CSSStyleRule,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSStyleRule::to_css_rule(self : CSSStyleRule) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSStyleRule::get_selector_text(
  self : CSSStyleRule,
) -> CSSOMString =
  #| (self) => self.selectorText

///|
pub extern "js" fn CSSStyleRule::set_selector_text(
  self : CSSStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.selectorText = value }

///|
pub extern "js" fn CSSStyleRule::get_style(
  self : CSSStyleRule,
) -> CSSStyleProperties =
  #| (self) => self.style

///|
pub extern "js" fn CSSStyleRule::get_style_map(
  self : CSSStyleRule,
) -> StylePropertyMap =
  #| (self) => self.styleMap

///|
/// CSSImportRule interface
pub type CSSImportRule

///|
pub extern "js" fn CSSImportRule::to_js_value(self : CSSImportRule) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSImportRule (unchecked)
pub extern "js" fn CSSImportRule::from_js_value(v : JsValue) -> CSSImportRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSImportRule (checked with instanceof)
pub extern "js" fn CSSImportRule::from_js_value_opt(
  v : JsValue,
) -> CSSImportRule? =
  #| (v) => (v instanceof CSSImportRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSImportRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_import_rule(
  self : JsValue,
) -> CSSImportRule? =
  #| (self) => (self instanceof CSSImportRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSImportRule (unchecked)
pub extern "js" fn JsValue::to_css_import_rule(self : JsValue) -> CSSImportRule =
  #| (self) => self

///|
pub extern "js" fn CSSImportRule::to_css_rule(self : CSSImportRule) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSImportRule::get_href(self : CSSImportRule) -> String =
  #| (self) => self.href

///|
pub extern "js" fn CSSImportRule::get_media(self : CSSImportRule) -> MediaList =
  #| (self) => self.media

///|
pub extern "js" fn CSSImportRule::get_style_sheet(
  self : CSSImportRule,
) -> CSSStyleSheet? =
  #| (self) => { const v = self.styleSheet; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn CSSImportRule::get_layer_name(
  self : CSSImportRule,
) -> CSSOMString? =
  #| (self) => { const v = self.layerName; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn CSSImportRule::get_supports_text(
  self : CSSImportRule,
) -> CSSOMString? =
  #| (self) => { const v = self.supportsText; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
/// CSSGroupingRule interface
pub type CSSGroupingRule

///|
pub extern "js" fn CSSGroupingRule::to_js_value(
  self : CSSGroupingRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSGroupingRule (unchecked)
pub extern "js" fn CSSGroupingRule::from_js_value(
  v : JsValue,
) -> CSSGroupingRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSGroupingRule (checked with instanceof)
pub extern "js" fn CSSGroupingRule::from_js_value_opt(
  v : JsValue,
) -> CSSGroupingRule? =
  #| (v) => (v instanceof CSSGroupingRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSGroupingRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_grouping_rule(
  self : JsValue,
) -> CSSGroupingRule? =
  #| (self) => (self instanceof CSSGroupingRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSGroupingRule (unchecked)
pub extern "js" fn JsValue::to_css_grouping_rule(
  self : JsValue,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSGroupingRule::to_css_rule(
  self : CSSGroupingRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSGroupingRule::as_css_function_rule(
  self : CSSGroupingRule,
) -> CSSFunctionRule? =
  #| (self) => (self instanceof CSSFunctionRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSGroupingRule::as_css_condition_rule(
  self : CSSGroupingRule,
) -> CSSConditionRule? =
  #| (self) => (self instanceof CSSConditionRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSGroupingRule::as_css_media_rule(
  self : CSSGroupingRule,
) -> CSSMediaRule? =
  #| (self) => (self instanceof CSSMediaRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSGroupingRule::as_css_supports_rule(
  self : CSSGroupingRule,
) -> CSSSupportsRule? =
  #| (self) => (self instanceof CSSSupportsRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSGroupingRule::as_css_layer_block_rule(
  self : CSSGroupingRule,
) -> CSSLayerBlockRule? =
  #| (self) => (self instanceof CSSLayerBlockRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSGroupingRule::as_css_container_rule(
  self : CSSGroupingRule,
) -> CSSContainerRule? =
  #| (self) => (self instanceof CSSContainerRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSGroupingRule::as_css_supports_condition_rule(
  self : CSSGroupingRule,
) -> CSSSupportsConditionRule? =
  #| (self) => (self instanceof CSSSupportsConditionRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSGroupingRule::as_css_scope_rule(
  self : CSSGroupingRule,
) -> CSSScopeRule? =
  #| (self) => (self instanceof CSSScopeRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSGroupingRule::as_css_style_rule(
  self : CSSGroupingRule,
) -> CSSStyleRule? =
  #| (self) => (self instanceof CSSStyleRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSGroupingRule::as_css_page_rule(
  self : CSSGroupingRule,
) -> CSSPageRule? =
  #| (self) => (self instanceof CSSPageRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSGroupingRule::as_css_starting_style_rule(
  self : CSSGroupingRule,
) -> CSSStartingStyleRule? =
  #| (self) => (self instanceof CSSStartingStyleRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSGroupingRule::get_css_rules(
  self : CSSGroupingRule,
) -> CSSRuleList =
  #| (self) => self.cssRules

///|
pub extern "js" fn CSSGroupingRule::insert_rule(
  self : CSSGroupingRule,
  rule : CSSOMString,
) -> Int =
  #| (self, rule) => self.insertRule(rule)

///|
pub extern "js" fn CSSGroupingRule::insert_rule_with_index(
  self : CSSGroupingRule,
  rule : CSSOMString,
  index : Int,
) -> Int =
  #| (self, rule, index) => self.insertRule(rule, index)

///|
pub extern "js" fn CSSGroupingRule::delete_rule(
  self : CSSGroupingRule,
  index : Int,
) -> Unit =
  #| (self, index) => self.deleteRule(index)

///|
/// CSSPageDescriptors interface
pub type CSSPageDescriptors

///|
pub extern "js" fn CSSPageDescriptors::to_js_value(
  self : CSSPageDescriptors,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSPageDescriptors (unchecked)
pub extern "js" fn CSSPageDescriptors::from_js_value(
  v : JsValue,
) -> CSSPageDescriptors =
  #| (v) => v

///|
/// Safely cast JsValue to CSSPageDescriptors (checked with instanceof)
pub extern "js" fn CSSPageDescriptors::from_js_value_opt(
  v : JsValue,
) -> CSSPageDescriptors? =
  #| (v) => (v instanceof CSSPageDescriptors) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSPageDescriptors (checked with instanceof)
pub extern "js" fn JsValue::as_css_page_descriptors(
  self : JsValue,
) -> CSSPageDescriptors? =
  #| (self) => (self instanceof CSSPageDescriptors) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSPageDescriptors (unchecked)
pub extern "js" fn JsValue::to_css_page_descriptors(
  self : JsValue,
) -> CSSPageDescriptors =
  #| (self) => self

///|
pub extern "js" fn CSSPageDescriptors::to_css_style_declaration(
  self : CSSPageDescriptors,
) -> CSSStyleDeclaration =
  #| (self) => self

///|
pub extern "js" fn CSSPageDescriptors::get_margin(
  self : CSSPageDescriptors,
) -> CSSOMString =
  #| (self) => self.margin

///|
pub extern "js" fn CSSPageDescriptors::set_margin(
  self : CSSPageDescriptors,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.margin = value }

///|
pub extern "js" fn CSSPageDescriptors::get_margin_top(
  self : CSSPageDescriptors,
) -> CSSOMString =
  #| (self) => self.marginTop

///|
pub extern "js" fn CSSPageDescriptors::set_margin_top(
  self : CSSPageDescriptors,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.marginTop = value }

///|
pub extern "js" fn CSSPageDescriptors::get_margin_right(
  self : CSSPageDescriptors,
) -> CSSOMString =
  #| (self) => self.marginRight

///|
pub extern "js" fn CSSPageDescriptors::set_margin_right(
  self : CSSPageDescriptors,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.marginRight = value }

///|
pub extern "js" fn CSSPageDescriptors::get_margin_bottom(
  self : CSSPageDescriptors,
) -> CSSOMString =
  #| (self) => self.marginBottom

///|
pub extern "js" fn CSSPageDescriptors::set_margin_bottom(
  self : CSSPageDescriptors,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.marginBottom = value }

///|
pub extern "js" fn CSSPageDescriptors::get_margin_left(
  self : CSSPageDescriptors,
) -> CSSOMString =
  #| (self) => self.marginLeft

///|
pub extern "js" fn CSSPageDescriptors::set_margin_left(
  self : CSSPageDescriptors,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.marginLeft = value }

///|
pub extern "js" fn CSSPageDescriptors::get_size(
  self : CSSPageDescriptors,
) -> CSSOMString =
  #| (self) => self.size

///|
pub extern "js" fn CSSPageDescriptors::set_size(
  self : CSSPageDescriptors,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.size = value }

///|
pub extern "js" fn CSSPageDescriptors::get_page_orientation(
  self : CSSPageDescriptors,
) -> CSSOMString =
  #| (self) => self.pageOrientation

///|
pub extern "js" fn CSSPageDescriptors::set_page_orientation(
  self : CSSPageDescriptors,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.pageOrientation = value }

///|
pub extern "js" fn CSSPageDescriptors::get_marks(
  self : CSSPageDescriptors,
) -> CSSOMString =
  #| (self) => self.marks

///|
pub extern "js" fn CSSPageDescriptors::set_marks(
  self : CSSPageDescriptors,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.marks = value }

///|
pub extern "js" fn CSSPageDescriptors::get_bleed(
  self : CSSPageDescriptors,
) -> CSSOMString =
  #| (self) => self.bleed

///|
pub extern "js" fn CSSPageDescriptors::set_bleed(
  self : CSSPageDescriptors,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.bleed = value }

///|
/// CSSPageRule interface
pub type CSSPageRule

///|
pub extern "js" fn CSSPageRule::to_js_value(self : CSSPageRule) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSPageRule (unchecked)
pub extern "js" fn CSSPageRule::from_js_value(v : JsValue) -> CSSPageRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSPageRule (checked with instanceof)
pub extern "js" fn CSSPageRule::from_js_value_opt(v : JsValue) -> CSSPageRule? =
  #| (v) => (v instanceof CSSPageRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSPageRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_page_rule(self : JsValue) -> CSSPageRule? =
  #| (self) => (self instanceof CSSPageRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSPageRule (unchecked)
pub extern "js" fn JsValue::to_css_page_rule(self : JsValue) -> CSSPageRule =
  #| (self) => self

///|
pub extern "js" fn CSSPageRule::to_css_grouping_rule(
  self : CSSPageRule,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSPageRule::to_css_rule(self : CSSPageRule) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSPageRule::get_selector_text(
  self : CSSPageRule,
) -> CSSOMString =
  #| (self) => self.selectorText

///|
pub extern "js" fn CSSPageRule::set_selector_text(
  self : CSSPageRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.selectorText = value }

///|
pub extern "js" fn CSSPageRule::get_style(
  self : CSSPageRule,
) -> CSSPageDescriptors =
  #| (self) => self.style

///|
/// CSSMarginRule interface
pub type CSSMarginRule

///|
pub extern "js" fn CSSMarginRule::to_js_value(self : CSSMarginRule) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSMarginRule (unchecked)
pub extern "js" fn CSSMarginRule::from_js_value(v : JsValue) -> CSSMarginRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSMarginRule (checked with instanceof)
pub extern "js" fn CSSMarginRule::from_js_value_opt(
  v : JsValue,
) -> CSSMarginRule? =
  #| (v) => (v instanceof CSSMarginRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSMarginRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_margin_rule(
  self : JsValue,
) -> CSSMarginRule? =
  #| (self) => (self instanceof CSSMarginRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSMarginRule (unchecked)
pub extern "js" fn JsValue::to_css_margin_rule(self : JsValue) -> CSSMarginRule =
  #| (self) => self

///|
pub extern "js" fn CSSMarginRule::to_css_rule(self : CSSMarginRule) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSMarginRule::get_name(self : CSSMarginRule) -> CSSOMString =
  #| (self) => self.name

///|
pub extern "js" fn CSSMarginRule::get_style(
  self : CSSMarginRule,
) -> CSSStyleDeclaration =
  #| (self) => self.style

///|
/// CSSNamespaceRule interface
pub type CSSNamespaceRule

///|
pub extern "js" fn CSSNamespaceRule::to_js_value(
  self : CSSNamespaceRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSNamespaceRule (unchecked)
pub extern "js" fn CSSNamespaceRule::from_js_value(
  v : JsValue,
) -> CSSNamespaceRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSNamespaceRule (checked with instanceof)
pub extern "js" fn CSSNamespaceRule::from_js_value_opt(
  v : JsValue,
) -> CSSNamespaceRule? =
  #| (v) => (v instanceof CSSNamespaceRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSNamespaceRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_namespace_rule(
  self : JsValue,
) -> CSSNamespaceRule? =
  #| (self) => (self instanceof CSSNamespaceRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSNamespaceRule (unchecked)
pub extern "js" fn JsValue::to_css_namespace_rule(
  self : JsValue,
) -> CSSNamespaceRule =
  #| (self) => self

///|
pub extern "js" fn CSSNamespaceRule::to_css_rule(
  self : CSSNamespaceRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSNamespaceRule::get_namespace_uri(
  self : CSSNamespaceRule,
) -> CSSOMString =
  #| (self) => self.namespaceURI

///|
pub extern "js" fn CSSNamespaceRule::get_prefix(
  self : CSSNamespaceRule,
) -> CSSOMString =
  #| (self) => self.prefix

///|
/// CSSStyleDeclaration interface
pub type CSSStyleDeclaration

///|
pub extern "js" fn CSSStyleDeclaration::to_js_value(
  self : CSSStyleDeclaration,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSStyleDeclaration (unchecked)
pub extern "js" fn CSSStyleDeclaration::from_js_value(
  v : JsValue,
) -> CSSStyleDeclaration =
  #| (v) => v

///|
/// Safely cast JsValue to CSSStyleDeclaration (checked with instanceof)
pub extern "js" fn CSSStyleDeclaration::from_js_value_opt(
  v : JsValue,
) -> CSSStyleDeclaration? =
  #| (v) => (v instanceof CSSStyleDeclaration) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSStyleDeclaration (checked with instanceof)
pub extern "js" fn JsValue::as_css_style_declaration(
  self : JsValue,
) -> CSSStyleDeclaration? =
  #| (self) => (self instanceof CSSStyleDeclaration) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSStyleDeclaration (unchecked)
pub extern "js" fn JsValue::to_css_style_declaration(
  self : JsValue,
) -> CSSStyleDeclaration =
  #| (self) => self

///|
pub extern "js" fn CSSStyleDeclaration::as_css_function_descriptors(
  self : CSSStyleDeclaration,
) -> CSSFunctionDescriptors? =
  #| (self) => (self instanceof CSSFunctionDescriptors) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleDeclaration::as_css_page_descriptors(
  self : CSSStyleDeclaration,
) -> CSSPageDescriptors? =
  #| (self) => (self instanceof CSSPageDescriptors) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleDeclaration::as_css_style_properties(
  self : CSSStyleDeclaration,
) -> CSSStyleProperties? =
  #| (self) => (self instanceof CSSStyleProperties) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleDeclaration::as_css_position_try_descriptors(
  self : CSSStyleDeclaration,
) -> CSSPositionTryDescriptors? =
  #| (self) => (self instanceof CSSPositionTryDescriptors) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleDeclaration::as_css_font_face_descriptors(
  self : CSSStyleDeclaration,
) -> CSSFontFaceDescriptors? =
  #| (self) => (self instanceof CSSFontFaceDescriptors) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSStyleDeclaration::get_css_text(
  self : CSSStyleDeclaration,
) -> CSSOMString =
  #| (self) => self.cssText

///|
pub extern "js" fn CSSStyleDeclaration::set_css_text(
  self : CSSStyleDeclaration,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.cssText = value }

///|
pub extern "js" fn CSSStyleDeclaration::get_length(
  self : CSSStyleDeclaration,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn CSSStyleDeclaration::item(
  self : CSSStyleDeclaration,
  index : Int,
) -> CSSOMString =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn CSSStyleDeclaration::get(
  self : CSSStyleDeclaration,
  index : Int,
) -> CSSOMString =
  #| (self, index) => self[index]

///|
pub extern "js" fn CSSStyleDeclaration::get_property_value(
  self : CSSStyleDeclaration,
  property : CSSOMString,
) -> CSSOMString =
  #| (self, property) => self.getPropertyValue(property)

///|
pub extern "js" fn CSSStyleDeclaration::get_property_priority(
  self : CSSStyleDeclaration,
  property : CSSOMString,
) -> CSSOMString =
  #| (self, property) => self.getPropertyPriority(property)

///|
pub extern "js" fn CSSStyleDeclaration::set_property(
  self : CSSStyleDeclaration,
  property : CSSOMString,
  value : CSSOMString,
) -> Unit =
  #| (self, property, value) => self.setProperty(property, value)

///|
pub extern "js" fn CSSStyleDeclaration::set_property_with_priority(
  self : CSSStyleDeclaration,
  property : CSSOMString,
  value : CSSOMString,
  priority : CSSOMString,
) -> Unit =
  #| (self, property, value, priority) => self.setProperty(property, value, priority)

///|
pub extern "js" fn CSSStyleDeclaration::remove_property(
  self : CSSStyleDeclaration,
  property : CSSOMString,
) -> CSSOMString =
  #| (self, property) => self.removeProperty(property)

///|
pub extern "js" fn CSSStyleDeclaration::get_parent_rule(
  self : CSSStyleDeclaration,
) -> CSSRule? =
  #| (self) => { const v = self.parentRule; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
/// CSSStyleProperties interface
pub type CSSStyleProperties

///|
pub extern "js" fn CSSStyleProperties::to_js_value(
  self : CSSStyleProperties,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSStyleProperties (unchecked)
pub extern "js" fn CSSStyleProperties::from_js_value(
  v : JsValue,
) -> CSSStyleProperties =
  #| (v) => v

///|
/// Safely cast JsValue to CSSStyleProperties (checked with instanceof)
pub extern "js" fn CSSStyleProperties::from_js_value_opt(
  v : JsValue,
) -> CSSStyleProperties? =
  #| (v) => (v instanceof CSSStyleProperties) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSStyleProperties (checked with instanceof)
pub extern "js" fn JsValue::as_css_style_properties(
  self : JsValue,
) -> CSSStyleProperties? =
  #| (self) => (self instanceof CSSStyleProperties) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSStyleProperties (unchecked)
pub extern "js" fn JsValue::to_css_style_properties(
  self : JsValue,
) -> CSSStyleProperties =
  #| (self) => self

///|
pub extern "js" fn CSSStyleProperties::to_css_style_declaration(
  self : CSSStyleProperties,
) -> CSSStyleDeclaration =
  #| (self) => self

///|
pub extern "js" fn CSSStyleProperties::get_css_float(
  self : CSSStyleProperties,
) -> CSSOMString =
  #| (self) => self.cssFloat

///|
pub extern "js" fn CSSStyleProperties::set_css_float(
  self : CSSStyleProperties,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.cssFloat = value }
