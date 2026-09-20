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
extern "js" fn URLPatternInput::from_url_pattern_init_ffi(
  v : JsValue,
) -> URLPatternInput =
  #| v => v

///|
pub fn URLPatternInput::from_url_pattern_init(
  v : URLPatternInit,
) -> URLPatternInput {
  URLPatternInput::from_url_pattern_init_ffi(v.to_js())
}

///|
/// Check if this URLPatternInput is String
pub extern "js" fn URLPatternInput::is_string(self : URLPatternInput) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this URLPatternInput is URLPatternInit
pub extern "js" fn URLPatternInput::is_url_pattern_init(
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
pub fn URLPatternInput::as_url_pattern_init(
  self : URLPatternInput,
) -> URLPatternInit? {
  if self.is_url_pattern_init() {
    Some(URLPatternInit::from_js(self.to_js_value()))
  } else {
    None
  }
}

///|
/// Flatten Option[URLPatternInput] to String?
pub fn URLPatternInput::bind_as_string(value : URLPatternInput?) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// Flatten Option[URLPatternInput] to URLPatternInit?
pub fn URLPatternInput::bind_as_url_pattern_init(
  value : URLPatternInput?,
) -> URLPatternInit? {
  match value {
    Some(v) => v.as_url_pattern_init()
    None => None
  }
}

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
extern "js" fn URLPatternCompatible::from_url_pattern_init_ffi(
  v : JsValue,
) -> URLPatternCompatible =
  #| v => v

///|
pub fn URLPatternCompatible::from_url_pattern_init(
  v : URLPatternInit,
) -> URLPatternCompatible {
  URLPatternCompatible::from_url_pattern_init_ffi(v.to_js())
}

///|
/// Create URLPatternCompatible from URLPattern
pub extern "js" fn URLPatternCompatible::from_url_pattern(
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
pub extern "js" fn URLPatternCompatible::is_url_pattern_init(
  self : URLPatternCompatible,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Check if this URLPatternCompatible is URLPattern
pub extern "js" fn URLPatternCompatible::is_url_pattern(
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
pub fn URLPatternCompatible::as_url_pattern_init(
  self : URLPatternCompatible,
) -> URLPatternInit? {
  if self.is_url_pattern_init() {
    Some(URLPatternInit::from_js(self.to_js_value()))
  } else {
    None
  }
}

///|
/// Try to get URLPatternCompatible as URLPattern
pub extern "js" fn URLPatternCompatible::as_url_pattern(
  self : URLPatternCompatible,
) -> URLPattern? =
  #| (self) => (self instanceof URLPattern) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[URLPatternCompatible] to String?
pub fn URLPatternCompatible::bind_as_string(
  value : URLPatternCompatible?,
) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// Flatten Option[URLPatternCompatible] to URLPatternInit?
pub fn URLPatternCompatible::bind_as_url_pattern_init(
  value : URLPatternCompatible?,
) -> URLPatternInit? {
  match value {
    Some(v) => v.as_url_pattern_init()
    None => None
  }
}

///|
/// Flatten Option[URLPatternCompatible] to URLPattern?
pub fn URLPatternCompatible::bind_as_url_pattern(
  value : URLPatternCompatible?,
) -> URLPattern? {
  match value {
    Some(v) => v.as_url_pattern()
    None => None
  }
}

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
extern "js" fn URLPatternInit::from_js_ffi(value : JsValue) -> URLPatternInit =
  #| (v) => ({
  #|   protocol: v.protocol,
  #|   username: v.username,
  #|   password: v.password,
  #|   hostname: v.hostname,
  #|   port: v.port,
  #|   pathname: v.pathname,
  #|   search: v.search,
  #|   hash: v.hash,
  #|   baseURL: v.baseURL
  #| })

///|
/// Convert from JsValue
pub fn URLPatternInit::from_js(value : JsValue) -> URLPatternInit {
  URLPatternInit::from_js_ffi(value)
}

///|
/// URLPatternOptions dictionary
pub(all) struct URLPatternOptions {
  ignoreCase : Bool?
}

///|
/// Create a new URLPatternOptions with default values
pub fn URLPatternOptions::default() -> URLPatternOptions {
  URLPatternOptions::{ ignoreCase: None, }
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
extern "js" fn URLPatternOptions::from_js_ffi(
  value : JsValue,
) -> URLPatternOptions =
  #| (v) => ({
  #|   ignoreCase: (v.ignoreCase === undefined ? -1 : v.ignoreCase)
  #| })

///|
/// Convert from JsValue
pub fn URLPatternOptions::from_js(value : JsValue) -> URLPatternOptions {
  URLPatternOptions::from_js_ffi(value)
}

///|
/// URLPatternResult dictionary
pub(all) struct URLPatternResult {
  inputs : FixedArray[URLPatternInput]?
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
extern "js" fn URLPatternResult::to_js_ffi(
  self : URLPatternResult,
  convert_protocol : (URLPatternComponentResult?) -> JsValue,
  convert_username : (URLPatternComponentResult?) -> JsValue,
  convert_password : (URLPatternComponentResult?) -> JsValue,
  convert_hostname : (URLPatternComponentResult?) -> JsValue,
  convert_port : (URLPatternComponentResult?) -> JsValue,
  convert_pathname : (URLPatternComponentResult?) -> JsValue,
  convert_search : (URLPatternComponentResult?) -> JsValue,
  convert_hash : (URLPatternComponentResult?) -> JsValue,
) -> JsValue =
  #| (self, convert_protocol, convert_username, convert_password, convert_hostname, convert_port, convert_pathname, convert_search, convert_hash) => ({
  #|   inputs: self.inputs,
  #|   protocol: convert_protocol(self.protocol),
  #|   username: convert_username(self.username),
  #|   password: convert_password(self.password),
  #|   hostname: convert_hostname(self.hostname),
  #|   port: convert_port(self.port),
  #|   pathname: convert_pathname(self.pathname),
  #|   search: convert_search(self.search),
  #|   hash: convert_hash(self.hash)
  #| })

///|
/// Convert to JsValue
pub fn URLPatternResult::to_js(self : URLPatternResult) -> JsValue {
  URLPatternResult::to_js_ffi(
    self,
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
  )
}

///|
extern "js" fn URLPatternResult::from_js_ffi(
  value : JsValue,
  convert_protocol : (JsValue) -> URLPatternComponentResult?,
  convert_username : (JsValue) -> URLPatternComponentResult?,
  convert_password : (JsValue) -> URLPatternComponentResult?,
  convert_hostname : (JsValue) -> URLPatternComponentResult?,
  convert_port : (JsValue) -> URLPatternComponentResult?,
  convert_pathname : (JsValue) -> URLPatternComponentResult?,
  convert_search : (JsValue) -> URLPatternComponentResult?,
  convert_hash : (JsValue) -> URLPatternComponentResult?,
) -> URLPatternResult =
  #| (v, convert_protocol, convert_username, convert_password, convert_hostname, convert_port, convert_pathname, convert_search, convert_hash) => ({
  #|   inputs: v.inputs,
  #|   protocol: convert_protocol(v.protocol),
  #|   username: convert_username(v.username),
  #|   password: convert_password(v.password),
  #|   hostname: convert_hostname(v.hostname),
  #|   port: convert_port(v.port),
  #|   pathname: convert_pathname(v.pathname),
  #|   search: convert_search(v.search),
  #|   hash: convert_hash(v.hash)
  #| })

///|
/// Convert from JsValue
pub fn URLPatternResult::from_js(value : JsValue) -> URLPatternResult {
  URLPatternResult::from_js_ffi(
    value,
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(URLPatternComponentResult::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(URLPatternComponentResult::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(URLPatternComponentResult::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(URLPatternComponentResult::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(URLPatternComponentResult::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(URLPatternComponentResult::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(URLPatternComponentResult::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(URLPatternComponentResult::from_js(value))
      }
    },
  )
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
  URLPatternComponentResult::{ input: None, groups: None, }
}

///|
extern "js" fn URLPatternComponentResult::to_js_ffi(
  self : URLPatternComponentResult,
) -> JsValue =
  #| (self) => ({
  #|   input: self.input,
  #|   groups: ((() => { const v = self.groups; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn URLPatternComponentResult::to_js(
  self : URLPatternComponentResult,
) -> JsValue {
  URLPatternComponentResult::to_js_ffi(self)
}

///|
extern "js" fn URLPatternComponentResult::from_js_ffi(
  value : JsValue,
) -> URLPatternComponentResult =
  #| (v) => ({
  #|   input: v.input,
  #|   groups: (v.groups === undefined ? { $tag: 0 } : { $tag: 1, _0: v.groups })
  #| })

///|
/// Convert from JsValue
pub fn URLPatternComponentResult::from_js(
  value : JsValue,
) -> URLPatternComponentResult {
  URLPatternComponentResult::from_js_ffi(value)
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
/// Error type for throwing methods
pub(all) enum URLPatternConstructorError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
/// Error type for throwing methods
pub(all) enum URLPatternTestError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
/// Error type for throwing methods
pub(all) enum URLPatternExecError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
pub extern "js" fn URLPattern::new() -> Result[
  URLPattern,
  URLPatternConstructorError,
] =
  #| () => (() => { try { return { $tag: 1, _0: new URLPattern() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
extern "js" fn URLPattern::new_with_options_ffi(
  input : URLPatternInput,
  options : JsValue,
) -> Result[URLPattern, URLPatternConstructorError] =
  #| (input, options) => (() => { try { return { $tag: 1, _0: new URLPattern(input, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub fn URLPattern::new_with_options(
  input : URLPatternInput,
  options : URLPatternOptions,
) -> Result[URLPattern, URLPatternConstructorError] {
  URLPattern::new_with_options_ffi(input, options.to_js())
}

///|
pub extern "js" fn URLPattern::new_with_input_and_base_url(
  input : URLPatternInput,
  base_url : String,
) -> Result[URLPattern, URLPatternConstructorError] =
  #| (input, base_url) => (() => { try { return { $tag: 1, _0: new URLPattern(input, base_url) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
extern "js" fn URLPattern::new_with_input_and_base_url_with_options_ffi(
  input : URLPatternInput,
  base_url : String,
  options : JsValue,
) -> Result[URLPattern, URLPatternConstructorError] =
  #| (input, base_url, options) => (() => { try { return { $tag: 1, _0: new URLPattern(input, base_url, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub fn URLPattern::new_with_input_and_base_url_with_options(
  input : URLPatternInput,
  base_url : String,
  options : URLPatternOptions,
) -> Result[URLPattern, URLPatternConstructorError] {
  URLPattern::new_with_input_and_base_url_with_options_ffi(
    input,
    base_url,
    options.to_js(),
  )
}

///|
pub extern "js" fn URLPattern::test_(
  self : URLPattern,
) -> Result[Bool, URLPatternTestError] =
  #| (self) => (() => { try { return { $tag: 1, _0: self.test() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn URLPattern::test__with_base_url(
  self : URLPattern,
  input : URLPatternInput,
  base_url : String,
) -> Result[Bool, URLPatternTestError] =
  #| (self, input, base_url) => (() => { try { return { $tag: 1, _0: self.test(input, base_url) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn URLPattern::exec(
  self : URLPattern,
) -> Result[URLPatternResult?, URLPatternExecError] =
  #| (self) => (() => { try { return { $tag: 1, _0: (() => { const v = self.exec(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn URLPattern::exec_with_base_url(
  self : URLPattern,
  input : URLPatternInput,
  base_url : String,
) -> Result[URLPatternResult?, URLPatternExecError] =
  #| (self, input, base_url) => (() => { try { return { $tag: 1, _0: (() => { const v = self.exec(input, base_url); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

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
) -> Result[URLPattern, URLPatternConstructorError] =
  #| (input, base_url, options) => (() => { try { return { $tag: 1, _0: new URLPattern(input, base_url, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn URLPattern::new_with_url_pattern_init(
  input : URLPatternInit,
  base_url : String,
  options : URLPatternOptions,
) -> Result[URLPattern, URLPatternConstructorError] =
  #| (input, base_url, options) => (() => { try { return { $tag: 1, _0: new URLPattern(input, base_url, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn URLPattern::test__with_string(
  self : URLPattern,
  input : String,
  base_url : String,
) -> Result[Bool, URLPatternTestError] =
  #| (self, input, base_url) => (() => { try { return { $tag: 1, _0: self.test(input, base_url) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn URLPattern::test__with_url_pattern_init(
  self : URLPattern,
  input : URLPatternInit,
  base_url : String,
) -> Result[Bool, URLPatternTestError] =
  #| (self, input, base_url) => (() => { try { return { $tag: 1, _0: self.test(input, base_url) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn URLPattern::exec_with_string(
  self : URLPattern,
  input : String,
  base_url : String,
) -> Result[URLPatternResult?, URLPatternExecError] =
  #| (self, input, base_url) => (() => { try { return { $tag: 1, _0: (() => { const v = self.exec(input, base_url); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn URLPattern::exec_with_url_pattern_init(
  self : URLPattern,
  input : URLPatternInit,
  base_url : String,
) -> Result[URLPatternResult?, URLPatternExecError] =
  #| (self, input, base_url) => (() => { try { return { $tag: 1, _0: (() => { const v = self.exec(input, base_url); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()
