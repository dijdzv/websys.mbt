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
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

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
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

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
pub struct URLPatternInit {
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
/// Convert to JsValue
pub extern "js" fn URLPatternInit::to_js(self : URLPatternInit) -> JsValue =
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
/// URLPatternOptions dictionary
pub struct URLPatternOptions {
  ignoreCase : Bool?
}

///|
/// Create a new URLPatternOptions with default values
pub fn URLPatternOptions::default() -> URLPatternOptions {
  URLPatternOptions::{ ignoreCase: None }
}

///|
/// Convert to JsValue
pub extern "js" fn URLPatternOptions::to_js(
  self : URLPatternOptions,
) -> JsValue =
  #| (self) => ({
  #|   ignoreCase: self.ignoreCase
  #| })

///|
/// URLPatternResult dictionary
pub struct URLPatternResult {
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
/// Convert to JsValue
pub extern "js" fn URLPatternResult::to_js(self : URLPatternResult) -> JsValue =
  #| (self) => ({
  #|   inputs: self.inputs,
  #|   protocol: self.protocol,
  #|   username: self.username,
  #|   password: self.password,
  #|   hostname: self.hostname,
  #|   port: self.port,
  #|   pathname: self.pathname,
  #|   search: self.search,
  #|   hash: self.hash
  #| })

///|
/// URLPatternComponentResult dictionary
pub struct URLPatternComponentResult {
  input : String?
  groups : JsValue?
}

///|
/// Create a new URLPatternComponentResult with default values
pub fn URLPatternComponentResult::default() -> URLPatternComponentResult {
  URLPatternComponentResult::{ input: None, groups: None }
}

///|
/// Convert to JsValue
pub extern "js" fn URLPatternComponentResult::to_js(
  self : URLPatternComponentResult,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   groups: self.groups
  #| })

///|
/// URLPattern interface
pub type URLPattern

///|
pub extern "js" fn URLPattern::to_js_value(self : URLPattern) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn URLPattern::new(
  input : URLPatternInput,
  base_u_r_l : String,
  options : URLPatternOptions,
) -> URLPattern =
  #| (input, base_u_r_l, options) => new URLPattern(input, base_u_r_l, options)

///|
pub extern "js" fn URLPattern::test_(self : URLPattern) -> Bool =
  #| (self) => self.test()

///|
pub extern "js" fn URLPattern::test__with_base_u_r_l(
  self : URLPattern,
  input : URLPatternInput,
  base_u_r_l : String,
) -> Bool =
  #| (self, input, base_u_r_l) => self.test(input, base_u_r_l)

///|
pub extern "js" fn URLPattern::exec(self : URLPattern) -> URLPatternResult? =
  #| (self) => self.exec()

///|
pub extern "js" fn URLPattern::exec_with_base_u_r_l(
  self : URLPattern,
  input : URLPatternInput,
  base_u_r_l : String,
) -> URLPatternResult? =
  #| (self, input, base_u_r_l) => self.exec(input, base_u_r_l)

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
