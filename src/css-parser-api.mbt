// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-parser-api

///|
/// CSSStringSource typedef
pub type CSSStringSource = JsValue

///|
/// CSSToken typedef
pub type CSSToken = JsValue

///|
/// CSSParserOptions dictionary
pub struct CSSParserOptions {
  atRules : JsValue?
}

/// Create a new CSSParserOptions with default values
pub fn CSSParserOptions::default() -> CSSParserOptions {
  CSSParserOptions::{
    atRules: None,
  }
}

/// Convert to JsValue
pub extern "js" fn CSSParserOptions::to_js(self : CSSParserOptions) -> JsValue =
  #| (self) => ({
  #|   atRules: self.atRules
  #| })

///|
/// CSSParserRule interface
pub type CSSParserRule

pub extern "js" fn CSSParserRule::to_js_value(self : CSSParserRule) -> JsValue =
  #| (self) => self

///|
/// CSSParserAtRule interface
pub type CSSParserAtRule

pub extern "js" fn CSSParserAtRule::to_js_value(self : CSSParserAtRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSParserAtRule::new(name : String, prelude : JsValue, body : JsValue) -> CSSParserAtRule =
  #| (name, prelude, body) => new CSSParserAtRule(name, prelude, body)

pub extern "js" fn CSSParserAtRule::get_name(self : CSSParserAtRule) -> String =
  #| (self) => self.name

pub extern "js" fn CSSParserAtRule::get_prelude(self : CSSParserAtRule) -> JsValue =
  #| (self) => self.prelude

pub extern "js" fn CSSParserAtRule::get_body(self : CSSParserAtRule) -> JsValue? =
  #| (self) => self.body

///|
/// CSSParserQualifiedRule interface
pub type CSSParserQualifiedRule

pub extern "js" fn CSSParserQualifiedRule::to_js_value(self : CSSParserQualifiedRule) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSParserQualifiedRule::new(prelude : JsValue, body : JsValue) -> CSSParserQualifiedRule =
  #| (prelude, body) => new CSSParserQualifiedRule(prelude, body)

pub extern "js" fn CSSParserQualifiedRule::get_prelude(self : CSSParserQualifiedRule) -> JsValue =
  #| (self) => self.prelude

pub extern "js" fn CSSParserQualifiedRule::get_body(self : CSSParserQualifiedRule) -> JsValue =
  #| (self) => self.body

///|
/// CSSParserDeclaration interface
pub type CSSParserDeclaration

pub extern "js" fn CSSParserDeclaration::to_js_value(self : CSSParserDeclaration) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSParserDeclaration::new(name : String, body : JsValue) -> CSSParserDeclaration =
  #| (name, body) => new CSSParserDeclaration(name, body)

pub extern "js" fn CSSParserDeclaration::get_name(self : CSSParserDeclaration) -> String =
  #| (self) => self.name

pub extern "js" fn CSSParserDeclaration::get_body(self : CSSParserDeclaration) -> JsValue =
  #| (self) => self.body

///|
/// CSSParserValue interface
pub type CSSParserValue

pub extern "js" fn CSSParserValue::to_js_value(self : CSSParserValue) -> JsValue =
  #| (self) => self

///|
/// CSSParserBlock interface
pub type CSSParserBlock

pub extern "js" fn CSSParserBlock::to_js_value(self : CSSParserBlock) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSParserBlock::new(name : String, body : JsValue) -> CSSParserBlock =
  #| (name, body) => new CSSParserBlock(name, body)

pub extern "js" fn CSSParserBlock::get_name(self : CSSParserBlock) -> String =
  #| (self) => self.name

pub extern "js" fn CSSParserBlock::get_body(self : CSSParserBlock) -> JsValue =
  #| (self) => self.body

///|
/// CSSParserFunction interface
pub type CSSParserFunction

pub extern "js" fn CSSParserFunction::to_js_value(self : CSSParserFunction) -> JsValue =
  #| (self) => self

pub extern "js" fn CSSParserFunction::new(name : String, args : JsValue) -> CSSParserFunction =
  #| (name, args) => new CSSParserFunction(name, args)

pub extern "js" fn CSSParserFunction::get_name(self : CSSParserFunction) -> String =
  #| (self) => self.name

pub extern "js" fn CSSParserFunction::get_args(self : CSSParserFunction) -> JsValue =
  #| (self) => self.args

