// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/url

///|
/// URL interface
pub type URL

///|
pub extern "js" fn URL::to_js_value(self : URL) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to URL (unchecked)
pub extern "js" fn URL::from_js_value(v : JsValue) -> URL =
  #| (v) => v

///|
/// Safely cast JsValue to URL (checked with instanceof)
pub extern "js" fn URL::from_js_value_opt(v : JsValue) -> URL? =
  #| (v) => (v instanceof URL) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to URL (checked with instanceof)
pub extern "js" fn JsValue::as_url(self : JsValue) -> URL? =
  #| (self) => (self instanceof URL) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to URL (unchecked)
pub extern "js" fn JsValue::to_url(self : JsValue) -> URL =
  #| (self) => self

///|
pub extern "js" fn URL::new(url : String) -> URL =
  #| (url) => new URL(url)

///|
pub extern "js" fn URL::new_with_base(url : String, base : String) -> URL =
  #| (url, base) => new URL(url, base)

///|
pub extern "js" fn URL::parse(url : String) -> URL? =
  #| (url) => (() => { const v = URL.parse(url); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn URL::parse_with_base(url : String, base : String) -> URL? =
  #| (url, base) => (() => { const v = URL.parse(url, base); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn URL::can_parse(url : String) -> Bool =
  #| (url) => URL.canParse(url)

///|
pub extern "js" fn URL::can_parse_with_base(
  url : String,
  base : String,
) -> Bool =
  #| (url, base) => URL.canParse(url, base)

///|
pub extern "js" fn URL::get_href(self : URL) -> String =
  #| (self) => self.href

///|
pub extern "js" fn URL::set_href(self : URL, value : String) -> Unit =
  #| (self, value) => { self.href = value }

///|
pub extern "js" fn URL::get_origin(self : URL) -> String =
  #| (self) => self.origin

///|
pub extern "js" fn URL::get_protocol(self : URL) -> String =
  #| (self) => self.protocol

///|
pub extern "js" fn URL::set_protocol(self : URL, value : String) -> Unit =
  #| (self, value) => { self.protocol = value }

///|
pub extern "js" fn URL::get_username(self : URL) -> String =
  #| (self) => self.username

///|
pub extern "js" fn URL::set_username(self : URL, value : String) -> Unit =
  #| (self, value) => { self.username = value }

///|
pub extern "js" fn URL::get_password(self : URL) -> String =
  #| (self) => self.password

///|
pub extern "js" fn URL::set_password(self : URL, value : String) -> Unit =
  #| (self, value) => { self.password = value }

///|
pub extern "js" fn URL::get_host(self : URL) -> String =
  #| (self) => self.host

///|
pub extern "js" fn URL::set_host(self : URL, value : String) -> Unit =
  #| (self, value) => { self.host = value }

///|
pub extern "js" fn URL::get_hostname(self : URL) -> String =
  #| (self) => self.hostname

///|
pub extern "js" fn URL::set_hostname(self : URL, value : String) -> Unit =
  #| (self, value) => { self.hostname = value }

///|
pub extern "js" fn URL::get_port(self : URL) -> String =
  #| (self) => self.port

///|
pub extern "js" fn URL::set_port(self : URL, value : String) -> Unit =
  #| (self, value) => { self.port = value }

///|
pub extern "js" fn URL::get_pathname(self : URL) -> String =
  #| (self) => self.pathname

///|
pub extern "js" fn URL::set_pathname(self : URL, value : String) -> Unit =
  #| (self, value) => { self.pathname = value }

///|
pub extern "js" fn URL::get_search(self : URL) -> String =
  #| (self) => self.search

///|
pub extern "js" fn URL::set_search(self : URL, value : String) -> Unit =
  #| (self, value) => { self.search = value }

///|
pub extern "js" fn URL::get_search_params(self : URL) -> URLSearchParams =
  #| (self) => self.searchParams

///|
pub extern "js" fn URL::get_hash(self : URL) -> String =
  #| (self) => self.hash

///|
pub extern "js" fn URL::set_hash(self : URL, value : String) -> Unit =
  #| (self, value) => { self.hash = value }

///|
pub extern "js" fn URL::to_json(self : URL) -> String =
  #| (self) => self.toJSON()

///|
pub extern "js" fn URL::create_object_url(obj : BlobOrMediaSource) -> String =
  #| (obj) => URL.createObjectURL(obj)

///|
pub extern "js" fn URL::revoke_object_url(url : String) -> Unit =
  #| (url) => URL.revokeObjectURL(url)

///|
/// URLSearchParams interface
pub type URLSearchParams

///|
pub extern "js" fn URLSearchParams::to_js_value(
  self : URLSearchParams,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to URLSearchParams (unchecked)
pub extern "js" fn URLSearchParams::from_js_value(
  v : JsValue,
) -> URLSearchParams =
  #| (v) => v

///|
/// Safely cast JsValue to URLSearchParams (checked with instanceof)
pub extern "js" fn URLSearchParams::from_js_value_opt(
  v : JsValue,
) -> URLSearchParams? =
  #| (v) => (v instanceof URLSearchParams) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to URLSearchParams (checked with instanceof)
pub extern "js" fn JsValue::as_url_search_params(
  self : JsValue,
) -> URLSearchParams? =
  #| (self) => (self instanceof URLSearchParams) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to URLSearchParams (unchecked)
pub extern "js" fn JsValue::to_url_search_params(
  self : JsValue,
) -> URLSearchParams =
  #| (self) => self

///|
pub extern "js" fn URLSearchParams::new() -> URLSearchParams =
  #| () => new URLSearchParams()

///|
pub extern "js" fn URLSearchParams::new_with_init(
  init_ : ArrayOfArrayOfStringOrAnyOrString,
) -> URLSearchParams =
  #| (init_) => new URLSearchParams(init_)

///|
pub extern "js" fn URLSearchParams::get_size(self : URLSearchParams) -> Int =
  #| (self) => self.size

///|
pub extern "js" fn URLSearchParams::append(
  self : URLSearchParams,
  name : String,
  value : String,
) -> Unit =
  #| (self, name, value) => self.append(name, value)

///|
pub extern "js" fn URLSearchParams::delete(
  self : URLSearchParams,
  name : String,
) -> Unit =
  #| (self, name) => self.delete(name)

///|
pub extern "js" fn URLSearchParams::delete_with_value(
  self : URLSearchParams,
  name : String,
  value : String,
) -> Unit =
  #| (self, name, value) => self.delete(name, value)

///|
pub extern "js" fn URLSearchParams::get(
  self : URLSearchParams,
  name : String,
) -> String? =
  #| (self, name) => (self.get(name)) ?? undefined

///|
pub extern "js" fn URLSearchParams::get_all(
  self : URLSearchParams,
  name : String,
) -> Array[String] =
  #| (self, name) => self.getAll(name)

///|
pub extern "js" fn URLSearchParams::has(
  self : URLSearchParams,
  name : String,
) -> Bool =
  #| (self, name) => self.has(name)

///|
pub extern "js" fn URLSearchParams::has_with_value(
  self : URLSearchParams,
  name : String,
  value : String,
) -> Bool =
  #| (self, name, value) => self.has(name, value)

///|
pub extern "js" fn URLSearchParams::set(
  self : URLSearchParams,
  name : String,
  value : String,
) -> Unit =
  #| (self, name, value) => self.set(name, value)

///|
pub extern "js" fn URLSearchParams::sort(self : URLSearchParams) -> Unit =
  #| (self) => self.sort()

///|
pub extern "js" fn URLSearchParams::keys(self : URLSearchParams) -> JsValue =
  #| (self) => self.keys()

///|
pub extern "js" fn URLSearchParams::values(self : URLSearchParams) -> JsValue =
  #| (self) => self.values()

///|
pub extern "js" fn URLSearchParams::entries(self : URLSearchParams) -> JsValue =
  #| (self) => self.entries()

///|
pub extern "js" fn URLSearchParams::for_each(
  self : URLSearchParams,
  callback : JsValue,
) -> Unit =
  #| (self, callback) => { self.forEach(callback) }
