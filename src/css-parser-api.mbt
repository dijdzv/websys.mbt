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
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get CSSStringSource as ReadableStream
pub extern "js" fn CSSStringSource::as_readable_stream(
  self : CSSStringSource,
) -> ReadableStream? =
  #| (self) => (self instanceof ReadableStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[CSSStringSource] to String?
pub fn CSSStringSource::bind_as_string(value : CSSStringSource?) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// Flatten Option[CSSStringSource] to ReadableStream?
pub fn CSSStringSource::bind_as_readable_stream(
  value : CSSStringSource?,
) -> ReadableStream? {
  match value {
    Some(v) => v.as_readable_stream()
    None => None
  }
}

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
pub extern "js" fn CSSToken::from_css_style_value(
  v : CSSStyleValue,
) -> CSSToken =
  #| (v) => v

///|
/// Create CSSToken from CSSParserValue
pub extern "js" fn CSSToken::from_css_parser_value(
  v : CSSParserValue,
) -> CSSToken =
  #| (v) => v

///|
/// Check if this CSSToken is String
pub extern "js" fn CSSToken::is_string(self : CSSToken) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this CSSToken is CSSStyleValue
pub extern "js" fn CSSToken::is_css_style_value(self : CSSToken) -> Bool =
  #| (self) => self instanceof CSSStyleValue

///|
/// Check if this CSSToken is CSSParserValue
pub extern "js" fn CSSToken::is_css_parser_value(self : CSSToken) -> Bool =
  #| (self) => self instanceof CSSParserValue

///|
/// Try to get CSSToken as String
pub extern "js" fn CSSToken::as_string(self : CSSToken) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get CSSToken as CSSStyleValue
pub extern "js" fn CSSToken::as_css_style_value(
  self : CSSToken,
) -> CSSStyleValue? =
  #| (self) => (self instanceof CSSStyleValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get CSSToken as CSSParserValue
pub extern "js" fn CSSToken::as_css_parser_value(
  self : CSSToken,
) -> CSSParserValue? =
  #| (self) => (self instanceof CSSParserValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[CSSToken] to String?
pub fn CSSToken::bind_as_string(value : CSSToken?) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// Flatten Option[CSSToken] to CSSStyleValue?
pub fn CSSToken::bind_as_css_style_value(value : CSSToken?) -> CSSStyleValue? {
  match value {
    Some(v) => v.as_css_style_value()
    None => None
  }
}

///|
/// Flatten Option[CSSToken] to CSSParserValue?
pub fn CSSToken::bind_as_css_parser_value(value : CSSToken?) -> CSSParserValue? {
  match value {
    Some(v) => v.as_css_parser_value()
    None => None
  }
}

///|
/// CSSParserOptions dictionary
pub(all) struct CSSParserOptions {
  atRules : JsValue?
}

///|
/// Create a new CSSParserOptions with default values
pub fn CSSParserOptions::default() -> CSSParserOptions {
  CSSParserOptions::{ atRules: None }
}

///|
extern "js" fn CSSParserOptions::to_js_ffi(self : CSSParserOptions) -> JsValue =
  #| (self) => ({
  #|   atRules: ((() => { const v = self.atRules; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn CSSParserOptions::to_js(self : CSSParserOptions) -> JsValue {
  CSSParserOptions::to_js_ffi(self)
}

///|
extern "js" fn CSSParserOptions::from_js_ffi(
  value : JsValue,
) -> CSSParserOptions =
  #| (v) => ({
  #|   atRules: (v.atRules === undefined ? { $tag: 0 } : { $tag: 1, _0: v.atRules })
  #| })

///|
/// Convert from JsValue
pub fn CSSParserOptions::from_js(value : JsValue) -> CSSParserOptions {
  CSSParserOptions::from_js_ffi(value)
}

///|
/// CSSParserRule interface
pub type CSSParserRule

///|
pub extern "js" fn CSSParserRule::to_js_value(self : CSSParserRule) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSParserRule (unchecked)
pub extern "js" fn CSSParserRule::from_js_value(v : JsValue) -> CSSParserRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSParserRule (checked with instanceof)
pub extern "js" fn CSSParserRule::from_js_value_opt(
  v : JsValue,
) -> CSSParserRule? =
  #| (v) => (v instanceof CSSParserRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSParserRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_parser_rule(
  self : JsValue,
) -> CSSParserRule? =
  #| (self) => (self instanceof CSSParserRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSParserRule (unchecked)
pub extern "js" fn JsValue::to_css_parser_rule(self : JsValue) -> CSSParserRule =
  #| (self) => self

///|
pub extern "js" fn CSSParserRule::as_css_parser_at_rule(
  self : CSSParserRule,
) -> CSSParserAtRule? =
  #| (self) => (self instanceof CSSParserAtRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSParserRule::as_css_parser_qualified_rule(
  self : CSSParserRule,
) -> CSSParserQualifiedRule? =
  #| (self) => (self instanceof CSSParserQualifiedRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSParserRule::as_css_parser_declaration(
  self : CSSParserRule,
) -> CSSParserDeclaration? =
  #| (self) => (self instanceof CSSParserDeclaration) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSParserAtRule interface
pub type CSSParserAtRule

///|
pub extern "js" fn CSSParserAtRule::to_js_value(
  self : CSSParserAtRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSParserAtRule (unchecked)
pub extern "js" fn CSSParserAtRule::from_js_value(
  v : JsValue,
) -> CSSParserAtRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSParserAtRule (checked with instanceof)
pub extern "js" fn CSSParserAtRule::from_js_value_opt(
  v : JsValue,
) -> CSSParserAtRule? =
  #| (v) => (v instanceof CSSParserAtRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSParserAtRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_parser_at_rule(
  self : JsValue,
) -> CSSParserAtRule? =
  #| (self) => (self instanceof CSSParserAtRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSParserAtRule (unchecked)
pub extern "js" fn JsValue::to_css_parser_at_rule(
  self : JsValue,
) -> CSSParserAtRule =
  #| (self) => self

///|
pub extern "js" fn CSSParserAtRule::to_css_parser_rule(
  self : CSSParserAtRule,
) -> CSSParserRule =
  #| (self) => self

///|
pub extern "js" fn CSSParserAtRule::new(
  name : String,
  prelude : Array[CSSToken],
) -> CSSParserAtRule =
  #| (name, prelude) => new CSSParserAtRule(name, prelude)

///|
pub extern "js" fn CSSParserAtRule::new_with_body(
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
  #| (self) => (() => { const v = self.body; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// CSSParserQualifiedRule interface
pub type CSSParserQualifiedRule

///|
pub extern "js" fn CSSParserQualifiedRule::to_js_value(
  self : CSSParserQualifiedRule,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSParserQualifiedRule (unchecked)
pub extern "js" fn CSSParserQualifiedRule::from_js_value(
  v : JsValue,
) -> CSSParserQualifiedRule =
  #| (v) => v

///|
/// Safely cast JsValue to CSSParserQualifiedRule (checked with instanceof)
pub extern "js" fn CSSParserQualifiedRule::from_js_value_opt(
  v : JsValue,
) -> CSSParserQualifiedRule? =
  #| (v) => (v instanceof CSSParserQualifiedRule) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSParserQualifiedRule (checked with instanceof)
pub extern "js" fn JsValue::as_css_parser_qualified_rule(
  self : JsValue,
) -> CSSParserQualifiedRule? =
  #| (self) => (self instanceof CSSParserQualifiedRule) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSParserQualifiedRule (unchecked)
pub extern "js" fn JsValue::to_css_parser_qualified_rule(
  self : JsValue,
) -> CSSParserQualifiedRule =
  #| (self) => self

///|
pub extern "js" fn CSSParserQualifiedRule::to_css_parser_rule(
  self : CSSParserQualifiedRule,
) -> CSSParserRule =
  #| (self) => self

///|
pub extern "js" fn CSSParserQualifiedRule::new(
  prelude : Array[CSSToken],
) -> CSSParserQualifiedRule =
  #| (prelude) => new CSSParserQualifiedRule(prelude)

///|
pub extern "js" fn CSSParserQualifiedRule::new_with_body(
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
/// Cast JsValue to CSSParserDeclaration (unchecked)
pub extern "js" fn CSSParserDeclaration::from_js_value(
  v : JsValue,
) -> CSSParserDeclaration =
  #| (v) => v

///|
/// Safely cast JsValue to CSSParserDeclaration (checked with instanceof)
pub extern "js" fn CSSParserDeclaration::from_js_value_opt(
  v : JsValue,
) -> CSSParserDeclaration? =
  #| (v) => (v instanceof CSSParserDeclaration) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSParserDeclaration (checked with instanceof)
pub extern "js" fn JsValue::as_css_parser_declaration(
  self : JsValue,
) -> CSSParserDeclaration? =
  #| (self) => (self instanceof CSSParserDeclaration) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSParserDeclaration (unchecked)
pub extern "js" fn JsValue::to_css_parser_declaration(
  self : JsValue,
) -> CSSParserDeclaration =
  #| (self) => self

///|
pub extern "js" fn CSSParserDeclaration::to_css_parser_rule(
  self : CSSParserDeclaration,
) -> CSSParserRule =
  #| (self) => self

///|
pub extern "js" fn CSSParserDeclaration::new(
  name : String,
) -> CSSParserDeclaration =
  #| (name) => new CSSParserDeclaration(name)

///|
pub extern "js" fn CSSParserDeclaration::new_with_body(
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
/// Cast JsValue to CSSParserValue (unchecked)
pub extern "js" fn CSSParserValue::from_js_value(v : JsValue) -> CSSParserValue =
  #| (v) => v

///|
/// Safely cast JsValue to CSSParserValue (checked with instanceof)
pub extern "js" fn CSSParserValue::from_js_value_opt(
  v : JsValue,
) -> CSSParserValue? =
  #| (v) => (v instanceof CSSParserValue) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSParserValue (checked with instanceof)
pub extern "js" fn JsValue::as_css_parser_value(
  self : JsValue,
) -> CSSParserValue? =
  #| (self) => (self instanceof CSSParserValue) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSParserValue (unchecked)
pub extern "js" fn JsValue::to_css_parser_value(
  self : JsValue,
) -> CSSParserValue =
  #| (self) => self

///|
pub extern "js" fn CSSParserValue::as_css_parser_block(
  self : CSSParserValue,
) -> CSSParserBlock? =
  #| (self) => (self instanceof CSSParserBlock) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn CSSParserValue::as_css_parser_function(
  self : CSSParserValue,
) -> CSSParserFunction? =
  #| (self) => (self instanceof CSSParserFunction) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// CSSParserBlock interface
pub type CSSParserBlock

///|
pub extern "js" fn CSSParserBlock::to_js_value(
  self : CSSParserBlock,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CSSParserBlock (unchecked)
pub extern "js" fn CSSParserBlock::from_js_value(v : JsValue) -> CSSParserBlock =
  #| (v) => v

///|
/// Safely cast JsValue to CSSParserBlock (checked with instanceof)
pub extern "js" fn CSSParserBlock::from_js_value_opt(
  v : JsValue,
) -> CSSParserBlock? =
  #| (v) => (v instanceof CSSParserBlock) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSParserBlock (checked with instanceof)
pub extern "js" fn JsValue::as_css_parser_block(
  self : JsValue,
) -> CSSParserBlock? =
  #| (self) => (self instanceof CSSParserBlock) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSParserBlock (unchecked)
pub extern "js" fn JsValue::to_css_parser_block(
  self : JsValue,
) -> CSSParserBlock =
  #| (self) => self

///|
pub extern "js" fn CSSParserBlock::to_css_parser_value(
  self : CSSParserBlock,
) -> CSSParserValue =
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
/// Cast JsValue to CSSParserFunction (unchecked)
pub extern "js" fn CSSParserFunction::from_js_value(
  v : JsValue,
) -> CSSParserFunction =
  #| (v) => v

///|
/// Safely cast JsValue to CSSParserFunction (checked with instanceof)
pub extern "js" fn CSSParserFunction::from_js_value_opt(
  v : JsValue,
) -> CSSParserFunction? =
  #| (v) => (v instanceof CSSParserFunction) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CSSParserFunction (checked with instanceof)
pub extern "js" fn JsValue::as_css_parser_function(
  self : JsValue,
) -> CSSParserFunction? =
  #| (self) => (self instanceof CSSParserFunction) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CSSParserFunction (unchecked)
pub extern "js" fn JsValue::to_css_parser_function(
  self : JsValue,
) -> CSSParserFunction =
  #| (self) => self

///|
pub extern "js" fn CSSParserFunction::to_css_parser_value(
  self : CSSParserFunction,
) -> CSSParserValue =
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
