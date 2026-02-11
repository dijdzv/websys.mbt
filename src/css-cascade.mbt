// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-cascade

///|
/// CSSLayerBlockRule interface
pub type CSSLayerBlockRule

///|
pub extern "js" fn CSSLayerBlockRule::to_js_value(
  self : CSSLayerBlockRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSLayerBlockRule (unchecked)
pub extern "js" fn CSSLayerBlockRule::from_js_value(
  v : JsValue,
) -> CSSLayerBlockRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSLayerBlockRule (checked with instanceof)
pub extern "js" fn CSSLayerBlockRule::from_js_value_opt(
  v : JsValue,
) -> CSSLayerBlockRule? =
  #| (v) => (v instanceof CSSLayerBlockRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSLayerBlockRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_layer_block_rule(
  self : JsValue,
) -> CSSLayerBlockRule? =
  #| (self) => (self instanceof CSSLayerBlockRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSLayerBlockRule (unchecked)
pub extern "js" fn JsValue::to_css_layer_block_rule(
  self : JsValue,
) -> CSSLayerBlockRule =
  #| (self) => self

///|
pub extern "js" fn CSSLayerBlockRule::to_css_grouping_rule(
  self : CSSLayerBlockRule,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSLayerBlockRule::to_css_rule(
  self : CSSLayerBlockRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSLayerBlockRule::get_name(
  self : CSSLayerBlockRule,
) -> String =
  #| (self) => self.name

///|
/// CSSLayerStatementRule interface
pub type CSSLayerStatementRule

///|
pub extern "js" fn CSSLayerStatementRule::to_js_value(
  self : CSSLayerStatementRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSLayerStatementRule (unchecked)
pub extern "js" fn CSSLayerStatementRule::from_js_value(
  v : JsValue,
) -> CSSLayerStatementRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSLayerStatementRule (checked with instanceof)
pub extern "js" fn CSSLayerStatementRule::from_js_value_opt(
  v : JsValue,
) -> CSSLayerStatementRule? =
  #| (v) => (v instanceof CSSLayerStatementRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSLayerStatementRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_layer_statement_rule(
  self : JsValue,
) -> CSSLayerStatementRule? =
  #| (self) => (self instanceof CSSLayerStatementRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSLayerStatementRule (unchecked)
pub extern "js" fn JsValue::to_css_layer_statement_rule(
  self : JsValue,
) -> CSSLayerStatementRule =
  #| (self) => self

///|
pub extern "js" fn CSSLayerStatementRule::to_css_rule(
  self : CSSLayerStatementRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSLayerStatementRule::get_name_list(
  self : CSSLayerStatementRule,
) -> Array[String] =
  #| (self) => self.nameList
