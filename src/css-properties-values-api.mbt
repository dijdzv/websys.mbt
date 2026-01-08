// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-properties-values-api

///|
/// PropertyDefinition dictionary
pub struct PropertyDefinition {
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
/// Convert to JsValue
pub extern "js" fn PropertyDefinition::to_js(
  self : PropertyDefinition,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   syntax: self.syntax,
  #|   inherits: self.inherits,
  #|   initialValue: self.initialValue
  #| })

///|
/// CSSPropertyRule interface
pub type CSSPropertyRule

///|
pub extern "js" fn CSSPropertyRule::to_js_value(
  self : CSSPropertyRule,
) -> JsValue =
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
  #| (self) => self.initialValue
