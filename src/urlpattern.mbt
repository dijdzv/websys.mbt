// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/urlpattern

///|
/// URLPatternInput typedef
pub type URLPatternInput

///|
pub extern "js" fn URLPatternInput::to_js_value(
  self : URLPatternInput,
) -> JsValue =
  #| (self) => self

///|
/// Create URLPatternInput from String
pub extern "js" fn URLPatternInput::from_string(v : String) -> URLPatternInput =
  #| (v) => v

///|
/// Create URLPatternInput from URLPatternInit
pub extern "js" fn URLPatternInput::from_u_r_l_pattern_init(
  v : URLPatternInit,
) -> URLPatternInput =
  #| (v) => v

///|
/// Check if this URLPatternInput is String
pub extern "js" fn URLPatternInput::is_string(self : URLPatternInput) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this URLPatternInput is URLPatternInit
pub extern "js" fn URLPatternInput::is_u_r_l_pattern_init(
  self : URLPatternInput,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get URLPatternInput as String
pub extern "js" fn URLPatternInput::as_string(
  self : URLPatternInput,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get URLPatternInput as URLPatternInit
pub extern "js" fn URLPatternInput::as_u_r_l_pattern_init(
  self : URLPatternInput,
) -> URLPatternInit? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// URLPatternCompatible typedef
pub type URLPatternCompatible

///|
pub extern "js" fn URLPatternCompatible::to_js_value(
  self : URLPatternCompatible,
) -> JsValue =
  #| (self) => self

///|
/// Create URLPatternCompatible from String
pub extern "js" fn URLPatternCompatible::from_string(
  v : String,
) -> URLPatternCompatible =
  #| (v) => v

///|
/// Create URLPatternCompatible from URLPatternInit
pub extern "js" fn URLPatternCompatible::from_u_r_l_pattern_init(
  v : URLPatternInit,
) -> URLPatternCompatible =
  #| (v) => v

///|
/// Create URLPatternCompatible from URLPattern
pub extern "js" fn URLPatternCompatible::from_u_r_l_pattern(
  v : URLPattern,
) -> URLPatternCompatible =
  #| (v) => v

///|
/// Check if this URLPatternCompatible is String
pub extern "js" fn URLPatternCompatible::is_string(
  self : URLPatternCompatible,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this URLPatternCompatible is URLPatternInit
pub extern "js" fn URLPatternCompatible::is_u_r_l_pattern_init(
  self : URLPatternCompatible,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Check if this URLPatternCompatible is URLPattern
pub extern "js" fn URLPatternCompatible::is_u_r_l_pattern(
  self : URLPatternCompatible,
) -> Bool =
  #| (self) => self instanceof URLPattern

///|
/// Try to get URLPatternCompatible as String
pub extern "js" fn URLPatternCompatible::as_string(
  self : URLPatternCompatible,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get URLPatternCompatible as URLPatternInit
pub extern "js" fn URLPatternCompatible::as_u_r_l_pattern_init(
  self : URLPatternCompatible,
) -> URLPatternInit? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get URLPatternCompatible as URLPattern
pub extern "js" fn URLPatternCompatible::as_u_r_l_pattern(
  self : URLPatternCompatible,
) -> URLPattern? =
  #| (self) => (self instanceof URLPattern) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// URLPatternInit dictionary
pub(all) struct URLPatternInit {
  protocol : String?
  username : String?
  password : String?
  hostname : String?
  port : String?
  pathname : String?
  search : String?
  hash : String?
  baseURL : String?
}

///|
/// Create a new URLPatternInit with default values
pub fn URLPatternInit::default() -> URLPatternInit {
  URLPatternInit::{
    protocol: None,
    username: None,
    password: None,
    hostname: None,
    port: None,
    pathname: None,
    search: None,
    hash: None,
    baseURL: None,
  }
}

///|
extern "js" fn URLPatternInit::to_js_ffi(self : URLPatternInit) -> JsValue =
  #| (self) => ({
  #|   protocol: self.protocol,
  #|   username: self.username,
  #|   password: self.password,
  #|   hostname: self.hostname,
  #|   port: self.port,
  #|   pathname: self.pathname,
  #|   search: self.search,
  #|   hash: self.hash,
  #|   baseURL: self.baseURL
  #| })

///|
/// Convert to JsValue
pub fn URLPatternInit::to_js(self : URLPatternInit) -> JsValue {
  URLPatternInit::to_js_ffi(self)
}

///|
/// URLPatternOptions dictionary
pub(all) struct URLPatternOptions {
  ignoreCase : Bool?
}

///|
/// Create a new URLPatternOptions with default values
pub fn URLPatternOptions::default() -> URLPatternOptions {
  URLPatternOptions::{ ignoreCase: None }
}

///|
extern "js" fn URLPatternOptions::to_js_ffi(
  self : URLPatternOptions,
) -> JsValue =
  #| (self) => ({
  #|   ignoreCase: (self.ignoreCase === -1 ? undefined : self.ignoreCase)
  #| })

///|
/// Convert to JsValue
pub fn URLPatternOptions::to_js(self : URLPatternOptions) -> JsValue {
  URLPatternOptions::to_js_ffi(self)
}

///|
/// URLPatternResult dictionary
pub(all) struct URLPatternResult {
  inputs : Array[URLPatternInput]?
  protocol : URLPatternComponentResult?
  username : URLPatternComponentResult?
  password : URLPatternComponentResult?
  hostname : URLPatternComponentResult?
  port : URLPatternComponentResult?
  pathname : URLPatternComponentResult?
  search : URLPatternComponentResult?
  hash : URLPatternComponentResult?
}

///|
/// Create a new URLPatternResult with default values
pub fn URLPatternResult::default() -> URLPatternResult {
  URLPatternResult::{
    inputs: None,
    protocol: None,
    username: None,
    password: None,
    hostname: None,
    port: None,
    pathname: None,
    search: None,
    hash: None,
  }
}

///|
extern "js" fn URLPatternResult::to_js_ffi(self : URLPatternResult) -> JsValue =
  #| (self) => ({
  #|   inputs: ((() => { const v = self.inputs; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   protocol: ((() => { const v = self.protocol; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   username: ((() => { const v = self.username; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   password: ((() => { const v = self.password; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   hostname: ((() => { const v = self.hostname; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   port: ((() => { const v = self.port; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   pathname: ((() => { const v = self.pathname; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   search: ((() => { const v = self.search; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   hash: ((() => { const v = self.hash; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn URLPatternResult::to_js(self : URLPatternResult) -> JsValue {
  URLPatternResult::to_js_ffi(self)
}

///|
/// URLPatternComponentResult dictionary
pub(all) struct URLPatternComponentResult {
  input : String?
  groups : JsValue?
}

///|
/// Create a new URLPatternComponentResult with default values
pub fn URLPatternComponentResult::default() -> URLPatternComponentResult {
  URLPatternComponentResult::{ input: None, groups: None }
}

///|
extern "js" fn URLPatternComponentResult::to_js_ffi(
  self : URLPatternComponentResult,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   groups: ((() => { const v = self.groups; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn URLPatternComponentResult::to_js(
  self : URLPatternComponentResult,
) -> JsValue {
  URLPatternComponentResult::to_js_ffi(self)
}

///|
/// URLPattern interface
pub type URLPattern

///|
pub extern "js" fn URLPattern::to_js_value(self : URLPattern) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to URLPattern (unchecked)
pub extern "js" fn URLPattern::from_js_value(v : JsValue) -> URLPattern =
  #| (v) => v

///|
/// Safely cast JsValue to URLPattern (checked with instanceof)
pub extern "js" fn URLPattern::from_js_value_opt(v : JsValue) -> URLPattern? =
  #| (v) => (v instanceof URLPattern) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to URLPattern (checked with instanceof)
pub extern "js" fn JsValue::as_url_pattern(self : JsValue) -> URLPattern? =
  #| (self) => (self instanceof URLPattern) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to URLPattern (unchecked)
pub extern "js" fn JsValue::to_url_pattern(self : JsValue) -> URLPattern =
  #| (self) => self

///|
pub extern "js" fn URLPattern::new() -> URLPattern =
  #| () => new URLPattern()

///|
extern "js" fn URLPattern::new_with_options_ffi(
  input : URLPatternInput,
  options : JsValue,
) -> URLPattern =
  #| (input, options) => new URLPattern(input, options)

///|
pub fn URLPattern::new_with_options(
  input : URLPatternInput,
  options : URLPatternOptions,
) -> URLPattern {
  URLPattern::new_with_options_ffi(input, options.to_js())
}

///|
pub extern "js" fn URLPattern::new_with_input_and_base_url(
  input : URLPatternInput,
  base_url : String,
) -> URLPattern =
  #| (input, base_url) => new URLPattern(input, base_url)

///|
extern "js" fn URLPattern::new_with_input_and_base_url_with_options_ffi(
  input : URLPatternInput,
  base_url : String,
  options : JsValue,
) -> URLPattern =
  #| (input, base_url, options) => new URLPattern(input, base_url, options)

///|
pub fn URLPattern::new_with_input_and_base_url_with_options(
  input : URLPatternInput,
  base_url : String,
  options : URLPatternOptions,
) -> URLPattern {
  URLPattern::new_with_input_and_base_url_with_options_ffi(
    input,
    base_url,
    options.to_js(),
  )
}

///|
pub extern "js" fn URLPattern::test_(self : URLPattern) -> Bool =
  #| (self) => self.test()

///|
pub extern "js" fn URLPattern::test__with_base_url(
  self : URLPattern,
  input : URLPatternInput,
  base_url : String,
) -> Bool =
  #| (self, input, base_url) => self.test(input, base_url)

///|
pub extern "js" fn URLPattern::exec(self : URLPattern) -> URLPatternResult? =
  #| (self) => (() => { const v = self.exec(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn URLPattern::exec_with_base_url(
  self : URLPattern,
  input : URLPatternInput,
  base_url : String,
) -> URLPatternResult? =
  #| (self, input, base_url) => (() => { const v = self.exec(input, base_url); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn URLPattern::get_protocol(self : URLPattern) -> String =
  #| (self) => self.protocol

///|
pub extern "js" fn URLPattern::get_username(self : URLPattern) -> String =
  #| (self) => self.username

///|
pub extern "js" fn URLPattern::get_password(self : URLPattern) -> String =
  #| (self) => self.password

///|
pub extern "js" fn URLPattern::get_hostname(self : URLPattern) -> String =
  #| (self) => self.hostname

///|
pub extern "js" fn URLPattern::get_port(self : URLPattern) -> String =
  #| (self) => self.port

///|
pub extern "js" fn URLPattern::get_pathname(self : URLPattern) -> String =
  #| (self) => self.pathname

///|
pub extern "js" fn URLPattern::get_search(self : URLPattern) -> String =
  #| (self) => self.search

///|
pub extern "js" fn URLPattern::get_hash(self : URLPattern) -> String =
  #| (self) => self.hash

///|
pub extern "js" fn URLPattern::get_has_reg_exp_groups(
  self : URLPattern,
) -> Bool =
  #| (self) => self.hasRegExpGroups

///|
pub extern "js" fn URLPattern::new_with_string(
  input : String,
  base_url : String,
  options : URLPatternOptions,
) -> URLPattern =
  #| (input, base_url, options) => new URLPattern(input, base_url, options)

///|
pub extern "js" fn URLPattern::new_with_u_r_l_pattern_init(
  input : URLPatternInit,
  base_url : String,
  options : URLPatternOptions,
) -> URLPattern =
  #| (input, base_url, options) => new URLPattern(input, base_url, options)

///|
pub extern "js" fn URLPattern::test__with_string(
  self : URLPattern,
  input : String,
  base_url : String,
) -> Bool =
  #| (self, input, base_url) => self.test(input, base_url)

///|
pub extern "js" fn URLPattern::test__with_u_r_l_pattern_init(
  self : URLPattern,
  input : URLPatternInit,
  base_url : String,
) -> Bool =
  #| (self, input, base_url) => self.test(input, base_url)

///|
pub extern "js" fn URLPattern::exec_with_string(
  self : URLPattern,
  input : String,
  base_url : String,
) -> URLPatternResult? =
  #| (self, input, base_url) => (() => { const v = self.exec(input, base_url); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn URLPattern::exec_with_u_r_l_pattern_init(
  self : URLPattern,
  input : URLPatternInit,
  base_url : String,
) -> URLPatternResult? =
  #| (self, input, base_url) => (() => { const v = self.exec(input, base_url); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
