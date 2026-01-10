// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/css-parser-api

///|
/// CSSStringSource typedef
pub type CSSStringSource

///|
pub extern "js" fn CSSStringSource::to_js_value(
  self : CSSStringSource,
) -> JsValue =
  #| (self) => self

///|
/// Create CSSStringSource from String
pub extern "js" fn CSSStringSource::from_string(v : String) -> CSSStringSource =
  #| (v) => v

///|
/// Create CSSStringSource from ReadableStream
pub extern "js" fn CSSStringSource::from_readable_stream(
  v : ReadableStream,
) -> CSSStringSource =
  #| (v) => v

///|
/// Check if this CSSStringSource is String
pub extern "js" fn CSSStringSource::is_string(self : CSSStringSource) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this CSSStringSource is ReadableStream
pub extern "js" fn CSSStringSource::is_readable_stream(
  self : CSSStringSource,
) -> Bool =
  #| (self) => self instanceof ReadableStream

///|
/// Try to get CSSStringSource as String
pub extern "js" fn CSSStringSource::as_string(
  self : CSSStringSource,
) -> String? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSStringSource as ReadableStream
pub extern "js" fn CSSStringSource::as_readable_stream(
  self : CSSStringSource,
) -> ReadableStream? =
  #| (self) => (self instanceof ReadableStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSToken typedef
pub type CSSToken

///|
pub extern "js" fn CSSToken::to_js_value(self : CSSToken) -> JsValue =
  #| (self) => self

///|
/// Create CSSToken from String
pub extern "js" fn CSSToken::from_string(v : String) -> CSSToken =
  #| (v) => v

///|
/// Create CSSToken from CSSStyleValue
pub extern "js" fn CSSToken::from_c_s_s_style_value(
  v : CSSStyleValue,
) -> CSSToken =
  #| (v) => v

///|
/// Create CSSToken from CSSParserValue
pub extern "js" fn CSSToken::from_c_s_s_parser_value(
  v : CSSParserValue,
) -> CSSToken =
  #| (v) => v

///|
/// Check if this CSSToken is String
pub extern "js" fn CSSToken::is_string(self : CSSToken) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this CSSToken is CSSStyleValue
pub extern "js" fn CSSToken::is_c_s_s_style_value(self : CSSToken) -> Bool =
  #| (self) => self instanceof CSSStyleValue

///|
/// Check if this CSSToken is CSSParserValue
pub extern "js" fn CSSToken::is_c_s_s_parser_value(self : CSSToken) -> Bool =
  #| (self) => self instanceof CSSParserValue

///|
/// Try to get CSSToken as String
pub extern "js" fn CSSToken::as_string(self : CSSToken) -> String? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSToken as CSSStyleValue
pub extern "js" fn CSSToken::as_c_s_s_style_value(
  self : CSSToken,
) -> CSSStyleValue? =
  #| (self) => (self instanceof CSSStyleValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSToken as CSSParserValue
pub extern "js" fn CSSToken::as_c_s_s_parser_value(
  self : CSSToken,
) -> CSSParserValue? =
  #| (self) => (self instanceof CSSParserValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSParserOptions dictionary
pub struct CSSParserOptions {
  atRules : JsValue?
}

///|
/// Create a new CSSParserOptions with default values
pub fn CSSParserOptions::default() -> CSSParserOptions {
  CSSParserOptions::{ atRules: None }
}

///|
/// Convert to JsValue
pub extern "js" fn CSSParserOptions::to_js(self : CSSParserOptions) -> JsValue =
  #| (self) => ({
  #|   atRules: self.atRules
  #| })

///|
/// CSSParserRule interface
pub type CSSParserRule

///|
pub extern "js" fn CSSParserRule::to_js_value(self : CSSParserRule) -> JsValue =
  #| (self) => self

///|
/// CSSParserAtRule interface
pub type CSSParserAtRule

///|
pub extern "js" fn CSSParserAtRule::to_js_value(
  self : CSSParserAtRule,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSParserAtRule::new(
  name : String,
  prelude : Array[CSSToken],
  body : Array[CSSParserRule],
) -> CSSParserAtRule =
  #| (name, prelude, body) => new CSSParserAtRule(name, prelude, body)

///|
pub extern "js" fn CSSParserAtRule::get_name(self : CSSParserAtRule) -> String =
  #| (self) => self.name

///|
pub extern "js" fn CSSParserAtRule::get_prelude(
  self : CSSParserAtRule,
) -> JsValue =
  #| (self) => self.prelude

///|
pub extern "js" fn CSSParserAtRule::get_body(
  self : CSSParserAtRule,
) -> JsValue? =
  #| (self) => self.body

///|
/// CSSParserQualifiedRule interface
pub type CSSParserQualifiedRule

///|
pub extern "js" fn CSSParserQualifiedRule::to_js_value(
  self : CSSParserQualifiedRule,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSParserQualifiedRule::new(
  prelude : Array[CSSToken],
  body : Array[CSSParserRule],
) -> CSSParserQualifiedRule =
  #| (prelude, body) => new CSSParserQualifiedRule(prelude, body)

///|
pub extern "js" fn CSSParserQualifiedRule::get_prelude(
  self : CSSParserQualifiedRule,
) -> JsValue =
  #| (self) => self.prelude

///|
pub extern "js" fn CSSParserQualifiedRule::get_body(
  self : CSSParserQualifiedRule,
) -> JsValue =
  #| (self) => self.body

///|
/// CSSParserDeclaration interface
pub type CSSParserDeclaration

///|
pub extern "js" fn CSSParserDeclaration::to_js_value(
  self : CSSParserDeclaration,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSParserDeclaration::new(
  name : String,
  body : Array[CSSParserRule],
) -> CSSParserDeclaration =
  #| (name, body) => new CSSParserDeclaration(name, body)

///|
pub extern "js" fn CSSParserDeclaration::get_name(
  self : CSSParserDeclaration,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn CSSParserDeclaration::get_body(
  self : CSSParserDeclaration,
) -> JsValue =
  #| (self) => self.body

///|
/// CSSParserValue interface
pub type CSSParserValue

///|
pub extern "js" fn CSSParserValue::to_js_value(
  self : CSSParserValue,
) -> JsValue =
  #| (self) => self

///|
/// CSSParserBlock interface
pub type CSSParserBlock

///|
pub extern "js" fn CSSParserBlock::to_js_value(
  self : CSSParserBlock,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSParserBlock::new(
  name : String,
  body : Array[CSSParserValue],
) -> CSSParserBlock =
  #| (name, body) => new CSSParserBlock(name, body)

///|
pub extern "js" fn CSSParserBlock::get_name(self : CSSParserBlock) -> String =
  #| (self) => self.name

///|
pub extern "js" fn CSSParserBlock::get_body(self : CSSParserBlock) -> JsValue =
  #| (self) => self.body

///|
/// CSSParserFunction interface
pub type CSSParserFunction

///|
pub extern "js" fn CSSParserFunction::to_js_value(
  self : CSSParserFunction,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CSSParserFunction::new(
  name : String,
  args : Array[Array[CSSParserValue]],
) -> CSSParserFunction =
  #| (name, args) => new CSSParserFunction(name, args)

///|
pub extern "js" fn CSSParserFunction::get_name(
  self : CSSParserFunction,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn CSSParserFunction::get_args(
  self : CSSParserFunction,
) -> JsValue =
  #| (self) => self.args
