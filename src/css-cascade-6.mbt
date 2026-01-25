// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-cascade-6

///|
/// CSSScopeRule interface
pub type CSSScopeRule

///|
pub extern "js" fn CSSScopeRule::to_js_value(self : CSSScopeRule) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSScopeRule (unchecked)
pub extern "js" fn CSSScopeRule::from_js_value(v : JsValue) -> CSSScopeRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSScopeRule (checked with instanceof)
pub extern "js" fn CSSScopeRule::from_js_value_opt(
  v : JsValue,
) -> CSSScopeRule? =
  #| (v) => (v instanceof CSSScopeRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSScopeRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_scope_rule(self : JsValue) -> CSSScopeRule? =
  #| (self) => (self instanceof CSSScopeRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSScopeRule (unchecked)
pub extern "js" fn JsValue::to_css_scope_rule(self : JsValue) -> CSSScopeRule =
  #| (self) => self

///|
pub extern "js" fn CSSScopeRule::to_css_grouping_rule(
  self : CSSScopeRule,
) -> CSSGroupingRule =
  #| (self) => self

///|
pub extern "js" fn CSSScopeRule::to_css_rule(self : CSSScopeRule) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSScopeRule::get_start(self : CSSScopeRule) -> CSSOMString? =
  #| (self) => { const v = self.start; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn CSSScopeRule::get_end(self : CSSScopeRule) -> CSSOMString? =
  #| (self) => { const v = self.end; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }
