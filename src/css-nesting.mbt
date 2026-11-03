// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-nesting

///|
/// CSSNestedDeclarations interface
pub type CSSNestedDeclarations

///|
pub extern "js" fn CSSNestedDeclarations::to_js_value(
  self : CSSNestedDeclarations,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSNestedDeclarations (unchecked)
pub extern "js" fn CSSNestedDeclarations::from_js_value(
  v : JsValue,
) -> CSSNestedDeclarations =
  #| (v) => v

///|
/// Safely cast JsValue to CSSNestedDeclarations (checked with instanceof)
pub extern "js" fn CSSNestedDeclarations::from_js_value_opt(
  v : JsValue,
) -> CSSNestedDeclarations? =
  #| (v) => (v instanceof CSSNestedDeclarations) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSNestedDeclarations (checked with instanceof)
pub extern "js" fn JsValue::as_css_nested_declarations(
  self : JsValue,
) -> CSSNestedDeclarations? =
  #| (self) => (self instanceof CSSNestedDeclarations) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSNestedDeclarations (unchecked)
pub extern "js" fn JsValue::to_css_nested_declarations(
  self : JsValue,
) -> CSSNestedDeclarations =
  #| (self) => self

///|
pub extern "js" fn CSSNestedDeclarations::to_css_rule(
  self : CSSNestedDeclarations,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSNestedDeclarations::get_style(
  self : CSSNestedDeclarations,
) -> CSSStyleProperties =
  #| (self) => self.style
