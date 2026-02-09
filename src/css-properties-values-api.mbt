// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-properties-values-api

///|
/// PropertyDefinition dictionary
pub(all) struct PropertyDefinition {
  name : String
  syntax : String?
  inherits : Bool
  initialValue : String?
}

///|
/// Create a new PropertyDefinition with default values
pub fn PropertyDefinition::default() -> PropertyDefinition {
  PropertyDefinition::{
    name: "",
    syntax: None,
    inherits: false,
    initialValue: None,
  }
}

///|
extern "js" fn PropertyDefinition::to_js_ffi(
  self : PropertyDefinition,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   syntax: self.syntax,
  #|   inherits: self.inherits,
  #|   initialValue: self.initialValue
  #| })

///|
/// Convert to JsValue
pub fn PropertyDefinition::to_js(self : PropertyDefinition) -> JsValue {
  PropertyDefinition::to_js_ffi(self)
}

///|
/// CSSPropertyRule interface
pub type CSSPropertyRule

///|
pub extern "js" fn CSSPropertyRule::to_js_value(
  self : CSSPropertyRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSPropertyRule (unchecked)
pub extern "js" fn CSSPropertyRule::from_js_value(
  v : JsValue,
) -> CSSPropertyRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSPropertyRule (checked with instanceof)
pub extern "js" fn CSSPropertyRule::from_js_value_opt(
  v : JsValue,
) -> CSSPropertyRule? =
  #| (v) => (v instanceof CSSPropertyRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSPropertyRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_property_rule(
  self : JsValue,
) -> CSSPropertyRule? =
  #| (self) => (self instanceof CSSPropertyRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSPropertyRule (unchecked)
pub extern "js" fn JsValue::to_css_property_rule(
  self : JsValue,
) -> CSSPropertyRule =
  #| (self) => self

///|
pub extern "js" fn CSSPropertyRule::to_css_rule(
  self : CSSPropertyRule,
) -> CSSRule =
  #| (self) => self

///|
pub extern "js" fn CSSPropertyRule::get_name(
  self : CSSPropertyRule,
) -> CSSOMString =
  #| (self) => self.name

///|
pub extern "js" fn CSSPropertyRule::get_syntax(
  self : CSSPropertyRule,
) -> CSSOMString =
  #| (self) => self.syntax

///|
pub extern "js" fn CSSPropertyRule::get_inherits(
  self : CSSPropertyRule,
) -> Bool =
  #| (self) => self.inherits

///|
pub extern "js" fn CSSPropertyRule::get_initial_value(
  self : CSSPropertyRule,
) -> CSSOMString? =
  #| (self) => (() => { const v = self.initialValue; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
