// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/urlpattern

///|
/// URLPatternInput typedef
pub type URLPatternInput = JsValue

///|
/// URLPatternCompatible typedef
pub type URLPatternCompatible = JsValue

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

/// Create a new URLPatternOptions with default values
pub fn URLPatternOptions::default() -> URLPatternOptions {
  URLPatternOptions::{
    ignoreCase: None,
  }
}

/// Convert to JsValue
pub extern "js" fn URLPatternOptions::to_js(self : URLPatternOptions) -> JsValue =
  #| (self) => ({
  #|   ignoreCase: self.ignoreCase
  #| })

///|
/// URLPatternResult dictionary
pub struct URLPatternResult {
  inputs : JsValue?
  protocol : URLPatternComponentResult?
  username : URLPatternComponentResult?
  password : URLPatternComponentResult?
  hostname : URLPatternComponentResult?
  port : URLPatternComponentResult?
  pathname : URLPatternComponentResult?
  search : URLPatternComponentResult?
  hash : URLPatternComponentResult?
}

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

/// Create a new URLPatternComponentResult with default values
pub fn URLPatternComponentResult::default() -> URLPatternComponentResult {
  URLPatternComponentResult::{
    input: None,
    groups: None,
  }
}

/// Convert to JsValue
pub extern "js" fn URLPatternComponentResult::to_js(self : URLPatternComponentResult) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   groups: self.groups
  #| })

///|
/// URLPattern interface
pub type URLPattern

pub extern "js" fn URLPattern::to_js_value(self : URLPattern) -> JsValue =
  #| (self) => self

pub extern "js" fn URLPattern::new(input : URLPatternInput, base_u_r_l : String, options : URLPatternOptions) -> URLPattern =
  #| (input, base_u_r_l, options) => new URLPattern(input, base_u_r_l, options)

pub extern "js" fn URLPattern::test_(self : URLPattern, input : URLPatternInput, base_u_r_l : String) -> Bool =
  #| (self, input, base_u_r_l) => self.test(input, base_u_r_l)

pub extern "js" fn URLPattern::exec(self : URLPattern, input : URLPatternInput, base_u_r_l : String) -> URLPatternResult? =
  #| (self, input, base_u_r_l) => self.exec(input, base_u_r_l)

pub extern "js" fn URLPattern::get_protocol(self : URLPattern) -> String =
  #| (self) => self.protocol

pub extern "js" fn URLPattern::get_username(self : URLPattern) -> String =
  #| (self) => self.username

pub extern "js" fn URLPattern::get_password(self : URLPattern) -> String =
  #| (self) => self.password

pub extern "js" fn URLPattern::get_hostname(self : URLPattern) -> String =
  #| (self) => self.hostname

pub extern "js" fn URLPattern::get_port(self : URLPattern) -> String =
  #| (self) => self.port

pub extern "js" fn URLPattern::get_pathname(self : URLPattern) -> String =
  #| (self) => self.pathname

pub extern "js" fn URLPattern::get_search(self : URLPattern) -> String =
  #| (self) => self.search

pub extern "js" fn URLPattern::get_hash(self : URLPattern) -> String =
  #| (self) => self.hash

pub extern "js" fn URLPattern::get_has_reg_exp_groups(self : URLPattern) -> Bool =
  #| (self) => self.hasRegExpGroups

