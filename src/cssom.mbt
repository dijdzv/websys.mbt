// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/cssom

///|
/// CSSStyleSheetInit dictionary
pub struct CSSStyleSheetInit {
  baseURL : String?
  media : JsValue?
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
  #| (self, index) => self.item(index)

///|
pub extern "js" fn MediaList::get(
  self : MediaList,
  index : Int,
) -> CSSOMString? =
  #| (self, index) => self[index]

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
pub extern "js" fn StyleSheet::get_type(self : StyleSheet) -> CSSOMString =
  #| (self) => self.type

///|
pub extern "js" fn StyleSheet::get_href(self : StyleSheet) -> String? =
  #| (self) => self.href

///|
pub extern "js" fn StyleSheet::get_owner_node(
  self : StyleSheet,
) -> ElementOrProcessingInstruction =
  #| (self) => self.ownerNode

///|
pub extern "js" fn StyleSheet::get_parent_style_sheet(
  self : StyleSheet,
) -> CSSStyleSheet? =
  #| (self) => self.parentStyleSheet

///|
pub extern "js" fn StyleSheet::get_title(self : StyleSheet) -> String? =
  #| (self) => self.title

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
pub extern "js" fn CSSStyleSheet::get_type(self : CSSStyleSheet) -> CSSOMString =
  #| (self) => self.type

///|
pub extern "js" fn CSSStyleSheet::get_href(self : CSSStyleSheet) -> String? =
  #| (self) => self.href

///|
pub extern "js" fn CSSStyleSheet::get_owner_node(
  self : CSSStyleSheet,
) -> ElementOrProcessingInstruction =
  #| (self) => self.ownerNode

///|
pub extern "js" fn CSSStyleSheet::get_parent_style_sheet(
  self : CSSStyleSheet,
) -> CSSStyleSheet? =
  #| (self) => self.parentStyleSheet

///|
pub extern "js" fn CSSStyleSheet::get_title(self : CSSStyleSheet) -> String? =
  #| (self) => self.title

///|
pub extern "js" fn CSSStyleSheet::get_media(self : CSSStyleSheet) -> MediaList =
  #| (self) => self.media

///|
pub extern "js" fn CSSStyleSheet::get_disabled(self : CSSStyleSheet) -> Bool =
  #| (self) => self.disabled

///|
pub extern "js" fn CSSStyleSheet::set_disabled(
  self : CSSStyleSheet,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.disabled = value }

///|
pub extern "js" fn CSSStyleSheet::new(
  options : CSSStyleSheetInit,
) -> CSSStyleSheet =
  #| (options) => new CSSStyleSheet(options)

///|
pub extern "js" fn CSSStyleSheet::get_owner_rule(
  self : CSSStyleSheet,
) -> CSSRule? =
  #| (self) => self.ownerRule

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
pub extern "js" fn StyleSheetList::item(
  self : StyleSheetList,
  index : Int,
) -> CSSStyleSheet? =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn StyleSheetList::get(
  self : StyleSheetList,
  index : Int,
) -> CSSStyleSheet? =
  #| (self, index) => self[index]

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
pub extern "js" fn CSSRuleList::item(
  self : CSSRuleList,
  index : Int,
) -> CSSRule? =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn CSSRuleList::get(
  self : CSSRuleList,
  index : Int,
) -> CSSRule? =
  #| (self, index) => self[index]

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
  #| (self) => self.parentRule

///|
pub extern "js" fn CSSRule::get_parent_style_sheet(
  self : CSSRule,
) -> CSSStyleSheet? =
  #| (self) => self.parentStyleSheet

///|
pub extern "js" fn CSSRule::get_type(self : CSSRule) -> Int =
  #| (self) => self.type

// CSSRule.STYLE_RULE

///|
pub let c_s_s_rule_style_rule : Int = 1

// CSSRule.CHARSET_RULE

///|
pub let c_s_s_rule_charset_rule : Int = 2

// CSSRule.IMPORT_RULE

///|
pub let c_s_s_rule_import_rule : Int = 3

// CSSRule.MEDIA_RULE

///|
pub let c_s_s_rule_media_rule : Int = 4

// CSSRule.FONT_FACE_RULE

///|
pub let c_s_s_rule_font_face_rule : Int = 5

// CSSRule.PAGE_RULE

///|
pub let c_s_s_rule_page_rule : Int = 6

// CSSRule.MARGIN_RULE

///|
pub let c_s_s_rule_margin_rule : Int = 9

// CSSRule.NAMESPACE_RULE

///|
pub let c_s_s_rule_namespace_rule : Int = 10

// CSSRule.KEYFRAMES_RULE

///|
pub let c_s_s_rule_keyframes_rule : Int = 7

// CSSRule.KEYFRAME_RULE

///|
pub let c_s_s_rule_keyframe_rule : Int = 8

// CSSRule.SUPPORTS_RULE

///|
pub let c_s_s_rule_supports_rule : Int = 12

// CSSRule.COUNTER_STYLE_RULE

///|
pub let c_s_s_rule_counter_style_rule : Int = 11

// CSSRule.FONT_FEATURE_VALUES_RULE

///|
pub let c_s_s_rule_font_feature_values_rule : Int = 14

///|
/// CSSStyleRule interface
pub type CSSStyleRule

///|
pub extern "js" fn CSSStyleRule::to_js_value(self : CSSStyleRule) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSStyleRule::get_css_text(
  self : CSSStyleRule,
) -> CSSOMString =
  #| (self) => self.cssText

///|
pub extern "js" fn CSSStyleRule::set_css_text(
  self : CSSStyleRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.cssText = value }

///|
pub extern "js" fn CSSStyleRule::get_parent_rule(
  self : CSSStyleRule,
) -> CSSRule? =
  #| (self) => self.parentRule

///|
pub extern "js" fn CSSStyleRule::get_parent_style_sheet(
  self : CSSStyleRule,
) -> CSSStyleSheet? =
  #| (self) => self.parentStyleSheet

///|
pub extern "js" fn CSSStyleRule::get_type(self : CSSStyleRule) -> Int =
  #| (self) => self.type

// CSSStyleRule.STYLE_RULE

///|
pub let c_s_s_style_rule_style_rule : Int = 1

// CSSStyleRule.CHARSET_RULE

///|
pub let c_s_s_style_rule_charset_rule : Int = 2

// CSSStyleRule.IMPORT_RULE

///|
pub let c_s_s_style_rule_import_rule : Int = 3

// CSSStyleRule.MEDIA_RULE

///|
pub let c_s_s_style_rule_media_rule : Int = 4

// CSSStyleRule.FONT_FACE_RULE

///|
pub let c_s_s_style_rule_font_face_rule : Int = 5

// CSSStyleRule.PAGE_RULE

///|
pub let c_s_s_style_rule_page_rule : Int = 6

// CSSStyleRule.MARGIN_RULE

///|
pub let c_s_s_style_rule_margin_rule : Int = 9

// CSSStyleRule.NAMESPACE_RULE

///|
pub let c_s_s_style_rule_namespace_rule : Int = 10

// CSSStyleRule.KEYFRAMES_RULE

///|
pub let c_s_s_style_rule_keyframes_rule : Int = 7

// CSSStyleRule.KEYFRAME_RULE

///|
pub let c_s_s_style_rule_keyframe_rule : Int = 8

// CSSStyleRule.SUPPORTS_RULE

///|
pub let c_s_s_style_rule_supports_rule : Int = 12

// CSSStyleRule.COUNTER_STYLE_RULE

///|
pub let c_s_s_style_rule_counter_style_rule : Int = 11

// CSSStyleRule.FONT_FEATURE_VALUES_RULE

///|
pub let c_s_s_style_rule_font_feature_values_rule : Int = 14

///|
pub extern "js" fn CSSStyleRule::get_css_rules(
  self : CSSStyleRule,
) -> CSSRuleList =
  #| (self) => self.cssRules

///|
pub extern "js" fn CSSStyleRule::insert_rule(
  self : CSSStyleRule,
  rule : CSSOMString,
) -> Int =
  #| (self, rule) => self.insertRule(rule)

///|
pub extern "js" fn CSSStyleRule::insert_rule_with_index(
  self : CSSStyleRule,
  rule : CSSOMString,
  index : Int,
) -> Int =
  #| (self, rule, index) => self.insertRule(rule, index)

///|
pub extern "js" fn CSSStyleRule::delete_rule(
  self : CSSStyleRule,
  index : Int,
) -> Unit =
  #| (self, index) => self.deleteRule(index)

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
pub extern "js" fn CSSImportRule::get_css_text(
  self : CSSImportRule,
) -> CSSOMString =
  #| (self) => self.cssText

///|
pub extern "js" fn CSSImportRule::set_css_text(
  self : CSSImportRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.cssText = value }

///|
pub extern "js" fn CSSImportRule::get_parent_rule(
  self : CSSImportRule,
) -> CSSRule? =
  #| (self) => self.parentRule

///|
pub extern "js" fn CSSImportRule::get_parent_style_sheet(
  self : CSSImportRule,
) -> CSSStyleSheet? =
  #| (self) => self.parentStyleSheet

///|
pub extern "js" fn CSSImportRule::get_type(self : CSSImportRule) -> Int =
  #| (self) => self.type

// CSSImportRule.STYLE_RULE

///|
pub let c_s_s_import_rule_style_rule : Int = 1

// CSSImportRule.CHARSET_RULE

///|
pub let c_s_s_import_rule_charset_rule : Int = 2

// CSSImportRule.IMPORT_RULE

///|
pub let c_s_s_import_rule_import_rule : Int = 3

// CSSImportRule.MEDIA_RULE

///|
pub let c_s_s_import_rule_media_rule : Int = 4

// CSSImportRule.FONT_FACE_RULE

///|
pub let c_s_s_import_rule_font_face_rule : Int = 5

// CSSImportRule.PAGE_RULE

///|
pub let c_s_s_import_rule_page_rule : Int = 6

// CSSImportRule.MARGIN_RULE

///|
pub let c_s_s_import_rule_margin_rule : Int = 9

// CSSImportRule.NAMESPACE_RULE

///|
pub let c_s_s_import_rule_namespace_rule : Int = 10

// CSSImportRule.KEYFRAMES_RULE

///|
pub let c_s_s_import_rule_keyframes_rule : Int = 7

// CSSImportRule.KEYFRAME_RULE

///|
pub let c_s_s_import_rule_keyframe_rule : Int = 8

// CSSImportRule.SUPPORTS_RULE

///|
pub let c_s_s_import_rule_supports_rule : Int = 12

// CSSImportRule.COUNTER_STYLE_RULE

///|
pub let c_s_s_import_rule_counter_style_rule : Int = 11

// CSSImportRule.FONT_FEATURE_VALUES_RULE

///|
pub let c_s_s_import_rule_font_feature_values_rule : Int = 14

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
  #| (self) => self.styleSheet

///|
pub extern "js" fn CSSImportRule::get_layer_name(
  self : CSSImportRule,
) -> CSSOMString? =
  #| (self) => self.layerName

///|
pub extern "js" fn CSSImportRule::get_supports_text(
  self : CSSImportRule,
) -> CSSOMString? =
  #| (self) => self.supportsText

///|
/// CSSGroupingRule interface
pub type CSSGroupingRule

///|
pub extern "js" fn CSSGroupingRule::to_js_value(
  self : CSSGroupingRule,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSGroupingRule::get_css_text(
  self : CSSGroupingRule,
) -> CSSOMString =
  #| (self) => self.cssText

///|
pub extern "js" fn CSSGroupingRule::set_css_text(
  self : CSSGroupingRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.cssText = value }

///|
pub extern "js" fn CSSGroupingRule::get_parent_rule(
  self : CSSGroupingRule,
) -> CSSRule? =
  #| (self) => self.parentRule

///|
pub extern "js" fn CSSGroupingRule::get_parent_style_sheet(
  self : CSSGroupingRule,
) -> CSSStyleSheet? =
  #| (self) => self.parentStyleSheet

///|
pub extern "js" fn CSSGroupingRule::get_type(self : CSSGroupingRule) -> Int =
  #| (self) => self.type

// CSSGroupingRule.STYLE_RULE

///|
pub let c_s_s_grouping_rule_style_rule : Int = 1

// CSSGroupingRule.CHARSET_RULE

///|
pub let c_s_s_grouping_rule_charset_rule : Int = 2

// CSSGroupingRule.IMPORT_RULE

///|
pub let c_s_s_grouping_rule_import_rule : Int = 3

// CSSGroupingRule.MEDIA_RULE

///|
pub let c_s_s_grouping_rule_media_rule : Int = 4

// CSSGroupingRule.FONT_FACE_RULE

///|
pub let c_s_s_grouping_rule_font_face_rule : Int = 5

// CSSGroupingRule.PAGE_RULE

///|
pub let c_s_s_grouping_rule_page_rule : Int = 6

// CSSGroupingRule.MARGIN_RULE

///|
pub let c_s_s_grouping_rule_margin_rule : Int = 9

// CSSGroupingRule.NAMESPACE_RULE

///|
pub let c_s_s_grouping_rule_namespace_rule : Int = 10

// CSSGroupingRule.KEYFRAMES_RULE

///|
pub let c_s_s_grouping_rule_keyframes_rule : Int = 7

// CSSGroupingRule.KEYFRAME_RULE

///|
pub let c_s_s_grouping_rule_keyframe_rule : Int = 8

// CSSGroupingRule.SUPPORTS_RULE

///|
pub let c_s_s_grouping_rule_supports_rule : Int = 12

// CSSGroupingRule.COUNTER_STYLE_RULE

///|
pub let c_s_s_grouping_rule_counter_style_rule : Int = 11

// CSSGroupingRule.FONT_FEATURE_VALUES_RULE

///|
pub let c_s_s_grouping_rule_font_feature_values_rule : Int = 14

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
pub extern "js" fn CSSPageDescriptors::get_css_text(
  self : CSSPageDescriptors,
) -> CSSOMString =
  #| (self) => self.cssText

///|
pub extern "js" fn CSSPageDescriptors::set_css_text(
  self : CSSPageDescriptors,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.cssText = value }

///|
pub extern "js" fn CSSPageDescriptors::get_length(
  self : CSSPageDescriptors,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn CSSPageDescriptors::item(
  self : CSSPageDescriptors,
  index : Int,
) -> CSSOMString =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn CSSPageDescriptors::get(
  self : CSSPageDescriptors,
  index : Int,
) -> CSSOMString =
  #| (self, index) => self[index]

///|
pub extern "js" fn CSSPageDescriptors::get_property_value(
  self : CSSPageDescriptors,
  property : CSSOMString,
) -> CSSOMString =
  #| (self, property) => self.getPropertyValue(property)

///|
pub extern "js" fn CSSPageDescriptors::get_property_priority(
  self : CSSPageDescriptors,
  property : CSSOMString,
) -> CSSOMString =
  #| (self, property) => self.getPropertyPriority(property)

///|
pub extern "js" fn CSSPageDescriptors::set_property(
  self : CSSPageDescriptors,
  property : CSSOMString,
  value : CSSOMString,
) -> Unit =
  #| (self, property, value) => self.setProperty(property, value)

///|
pub extern "js" fn CSSPageDescriptors::set_property_with_priority(
  self : CSSPageDescriptors,
  property : CSSOMString,
  value : CSSOMString,
  priority : CSSOMString,
) -> Unit =
  #| (self, property, value, priority) => self.setProperty(property, value, priority)

///|
pub extern "js" fn CSSPageDescriptors::remove_property(
  self : CSSPageDescriptors,
  property : CSSOMString,
) -> CSSOMString =
  #| (self, property) => self.removeProperty(property)

///|
pub extern "js" fn CSSPageDescriptors::get_parent_rule(
  self : CSSPageDescriptors,
) -> CSSRule? =
  #| (self) => self.parentRule

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
pub extern "js" fn CSSPageRule::get_css_text(self : CSSPageRule) -> CSSOMString =
  #| (self) => self.cssText

///|
pub extern "js" fn CSSPageRule::set_css_text(
  self : CSSPageRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.cssText = value }

///|
pub extern "js" fn CSSPageRule::get_parent_rule(self : CSSPageRule) -> CSSRule? =
  #| (self) => self.parentRule

///|
pub extern "js" fn CSSPageRule::get_parent_style_sheet(
  self : CSSPageRule,
) -> CSSStyleSheet? =
  #| (self) => self.parentStyleSheet

///|
pub extern "js" fn CSSPageRule::get_type(self : CSSPageRule) -> Int =
  #| (self) => self.type

// CSSPageRule.STYLE_RULE

///|
pub let c_s_s_page_rule_style_rule : Int = 1

// CSSPageRule.CHARSET_RULE

///|
pub let c_s_s_page_rule_charset_rule : Int = 2

// CSSPageRule.IMPORT_RULE

///|
pub let c_s_s_page_rule_import_rule : Int = 3

// CSSPageRule.MEDIA_RULE

///|
pub let c_s_s_page_rule_media_rule : Int = 4

// CSSPageRule.FONT_FACE_RULE

///|
pub let c_s_s_page_rule_font_face_rule : Int = 5

// CSSPageRule.PAGE_RULE

///|
pub let c_s_s_page_rule_page_rule : Int = 6

// CSSPageRule.MARGIN_RULE

///|
pub let c_s_s_page_rule_margin_rule : Int = 9

// CSSPageRule.NAMESPACE_RULE

///|
pub let c_s_s_page_rule_namespace_rule : Int = 10

// CSSPageRule.KEYFRAMES_RULE

///|
pub let c_s_s_page_rule_keyframes_rule : Int = 7

// CSSPageRule.KEYFRAME_RULE

///|
pub let c_s_s_page_rule_keyframe_rule : Int = 8

// CSSPageRule.SUPPORTS_RULE

///|
pub let c_s_s_page_rule_supports_rule : Int = 12

// CSSPageRule.COUNTER_STYLE_RULE

///|
pub let c_s_s_page_rule_counter_style_rule : Int = 11

// CSSPageRule.FONT_FEATURE_VALUES_RULE

///|
pub let c_s_s_page_rule_font_feature_values_rule : Int = 14

///|
pub extern "js" fn CSSPageRule::get_css_rules(
  self : CSSPageRule,
) -> CSSRuleList =
  #| (self) => self.cssRules

///|
pub extern "js" fn CSSPageRule::insert_rule(
  self : CSSPageRule,
  rule : CSSOMString,
) -> Int =
  #| (self, rule) => self.insertRule(rule)

///|
pub extern "js" fn CSSPageRule::insert_rule_with_index(
  self : CSSPageRule,
  rule : CSSOMString,
  index : Int,
) -> Int =
  #| (self, rule, index) => self.insertRule(rule, index)

///|
pub extern "js" fn CSSPageRule::delete_rule(
  self : CSSPageRule,
  index : Int,
) -> Unit =
  #| (self, index) => self.deleteRule(index)

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
pub extern "js" fn CSSMarginRule::get_css_text(
  self : CSSMarginRule,
) -> CSSOMString =
  #| (self) => self.cssText

///|
pub extern "js" fn CSSMarginRule::set_css_text(
  self : CSSMarginRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.cssText = value }

///|
pub extern "js" fn CSSMarginRule::get_parent_rule(
  self : CSSMarginRule,
) -> CSSRule? =
  #| (self) => self.parentRule

///|
pub extern "js" fn CSSMarginRule::get_parent_style_sheet(
  self : CSSMarginRule,
) -> CSSStyleSheet? =
  #| (self) => self.parentStyleSheet

///|
pub extern "js" fn CSSMarginRule::get_type(self : CSSMarginRule) -> Int =
  #| (self) => self.type

// CSSMarginRule.STYLE_RULE

///|
pub let c_s_s_margin_rule_style_rule : Int = 1

// CSSMarginRule.CHARSET_RULE

///|
pub let c_s_s_margin_rule_charset_rule : Int = 2

// CSSMarginRule.IMPORT_RULE

///|
pub let c_s_s_margin_rule_import_rule : Int = 3

// CSSMarginRule.MEDIA_RULE

///|
pub let c_s_s_margin_rule_media_rule : Int = 4

// CSSMarginRule.FONT_FACE_RULE

///|
pub let c_s_s_margin_rule_font_face_rule : Int = 5

// CSSMarginRule.PAGE_RULE

///|
pub let c_s_s_margin_rule_page_rule : Int = 6

// CSSMarginRule.MARGIN_RULE

///|
pub let c_s_s_margin_rule_margin_rule : Int = 9

// CSSMarginRule.NAMESPACE_RULE

///|
pub let c_s_s_margin_rule_namespace_rule : Int = 10

// CSSMarginRule.KEYFRAMES_RULE

///|
pub let c_s_s_margin_rule_keyframes_rule : Int = 7

// CSSMarginRule.KEYFRAME_RULE

///|
pub let c_s_s_margin_rule_keyframe_rule : Int = 8

// CSSMarginRule.SUPPORTS_RULE

///|
pub let c_s_s_margin_rule_supports_rule : Int = 12

// CSSMarginRule.COUNTER_STYLE_RULE

///|
pub let c_s_s_margin_rule_counter_style_rule : Int = 11

// CSSMarginRule.FONT_FEATURE_VALUES_RULE

///|
pub let c_s_s_margin_rule_font_feature_values_rule : Int = 14

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
pub extern "js" fn CSSNamespaceRule::get_css_text(
  self : CSSNamespaceRule,
) -> CSSOMString =
  #| (self) => self.cssText

///|
pub extern "js" fn CSSNamespaceRule::set_css_text(
  self : CSSNamespaceRule,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.cssText = value }

///|
pub extern "js" fn CSSNamespaceRule::get_parent_rule(
  self : CSSNamespaceRule,
) -> CSSRule? =
  #| (self) => self.parentRule

///|
pub extern "js" fn CSSNamespaceRule::get_parent_style_sheet(
  self : CSSNamespaceRule,
) -> CSSStyleSheet? =
  #| (self) => self.parentStyleSheet

///|
pub extern "js" fn CSSNamespaceRule::get_type(self : CSSNamespaceRule) -> Int =
  #| (self) => self.type

// CSSNamespaceRule.STYLE_RULE

///|
pub let c_s_s_namespace_rule_style_rule : Int = 1

// CSSNamespaceRule.CHARSET_RULE

///|
pub let c_s_s_namespace_rule_charset_rule : Int = 2

// CSSNamespaceRule.IMPORT_RULE

///|
pub let c_s_s_namespace_rule_import_rule : Int = 3

// CSSNamespaceRule.MEDIA_RULE

///|
pub let c_s_s_namespace_rule_media_rule : Int = 4

// CSSNamespaceRule.FONT_FACE_RULE

///|
pub let c_s_s_namespace_rule_font_face_rule : Int = 5

// CSSNamespaceRule.PAGE_RULE

///|
pub let c_s_s_namespace_rule_page_rule : Int = 6

// CSSNamespaceRule.MARGIN_RULE

///|
pub let c_s_s_namespace_rule_margin_rule : Int = 9

// CSSNamespaceRule.NAMESPACE_RULE

///|
pub let c_s_s_namespace_rule_namespace_rule : Int = 10

// CSSNamespaceRule.KEYFRAMES_RULE

///|
pub let c_s_s_namespace_rule_keyframes_rule : Int = 7

// CSSNamespaceRule.KEYFRAME_RULE

///|
pub let c_s_s_namespace_rule_keyframe_rule : Int = 8

// CSSNamespaceRule.SUPPORTS_RULE

///|
pub let c_s_s_namespace_rule_supports_rule : Int = 12

// CSSNamespaceRule.COUNTER_STYLE_RULE

///|
pub let c_s_s_namespace_rule_counter_style_rule : Int = 11

// CSSNamespaceRule.FONT_FEATURE_VALUES_RULE

///|
pub let c_s_s_namespace_rule_font_feature_values_rule : Int = 14

///|
pub extern "js" fn CSSNamespaceRule::get_namespace_u_r_i(
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
  #| (self) => self.parentRule

///|
/// CSSStyleProperties interface
pub type CSSStyleProperties

///|
pub extern "js" fn CSSStyleProperties::to_js_value(
  self : CSSStyleProperties,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSStyleProperties::get_css_text(
  self : CSSStyleProperties,
) -> CSSOMString =
  #| (self) => self.cssText

///|
pub extern "js" fn CSSStyleProperties::set_css_text(
  self : CSSStyleProperties,
  value : CSSOMString,
) -> Unit =
  #| (self, value) => { self.cssText = value }

///|
pub extern "js" fn CSSStyleProperties::get_length(
  self : CSSStyleProperties,
) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn CSSStyleProperties::item(
  self : CSSStyleProperties,
  index : Int,
) -> CSSOMString =
  #| (self, index) => self.item(index)

///|
pub extern "js" fn CSSStyleProperties::get(
  self : CSSStyleProperties,
  index : Int,
) -> CSSOMString =
  #| (self, index) => self[index]

///|
pub extern "js" fn CSSStyleProperties::get_property_value(
  self : CSSStyleProperties,
  property : CSSOMString,
) -> CSSOMString =
  #| (self, property) => self.getPropertyValue(property)

///|
pub extern "js" fn CSSStyleProperties::get_property_priority(
  self : CSSStyleProperties,
  property : CSSOMString,
) -> CSSOMString =
  #| (self, property) => self.getPropertyPriority(property)

///|
pub extern "js" fn CSSStyleProperties::set_property(
  self : CSSStyleProperties,
  property : CSSOMString,
  value : CSSOMString,
) -> Unit =
  #| (self, property, value) => self.setProperty(property, value)

///|
pub extern "js" fn CSSStyleProperties::set_property_with_priority(
  self : CSSStyleProperties,
  property : CSSOMString,
  value : CSSOMString,
  priority : CSSOMString,
) -> Unit =
  #| (self, property, value, priority) => self.setProperty(property, value, priority)

///|
pub extern "js" fn CSSStyleProperties::remove_property(
  self : CSSStyleProperties,
  property : CSSOMString,
) -> CSSOMString =
  #| (self, property) => self.removeProperty(property)

///|
pub extern "js" fn CSSStyleProperties::get_parent_rule(
  self : CSSStyleProperties,
) -> CSSRule? =
  #| (self) => self.parentRule

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
