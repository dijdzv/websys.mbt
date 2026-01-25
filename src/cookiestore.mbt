// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/cookiestore

///|
/// CookieList typedef
pub type CookieList = Array[CookieListItem]

///|
/// CookieSameSite enum
pub(all) enum CookieSameSite {
  Strict
  Lax
  None
}

///|
/// Convert to string value
pub fn CookieSameSite::to_string(self : CookieSameSite) -> String {
  match self {
    CookieSameSite::Strict => "strict"
    CookieSameSite::Lax => "lax"
    CookieSameSite::None => "none"
  }
}

///|
/// Parse from string value
pub fn CookieSameSite::from_string(s : String) -> CookieSameSite? {
  match s {
    "strict" => Some(CookieSameSite::Strict)
    "lax" => Some(CookieSameSite::Lax)
    "none" => Some(CookieSameSite::None)
    _ => None
  }
}

///|
/// CookieStoreGetOptions dictionary
pub struct CookieStoreGetOptions {
  name : String?
  url : String?
}

///|
/// Create a new CookieStoreGetOptions with default values
pub fn CookieStoreGetOptions::default() -> CookieStoreGetOptions {
  CookieStoreGetOptions::{ name: None, url: None }
}

///|
/// Convert to JsValue
pub extern "js" fn CookieStoreGetOptions::to_js(
  self : CookieStoreGetOptions,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   url: self.url
  #| })

///|
/// CookieInit dictionary
pub struct CookieInit {
  name : String
  value : String
  expires : Nullable[DOMHighResTimeStamp]
  domain : Nullable[String]
  path : String?
  sameSite : CookieSameSite?
  partitioned : Bool?
  maxAge : Nullable[Int64]
}

///|
/// Create a new CookieInit with default values
pub fn CookieInit::default() -> CookieInit {
  CookieInit::{
    name: "",
    value: "",
    expires: Nullable::Undefined,
    domain: Nullable::Undefined,
    path: None,
    sameSite: None,
    partitioned: None,
    maxAge: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn CookieInit::to_js(self : CookieInit) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   value: self.value,
  #|   expires: ((() => { const v = self.expires; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   domain: ((() => { const v = self.domain; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   path: self.path,
  #|   sameSite: ['strict', 'lax', 'none'][self.sameSite],
  #|   partitioned: self.partitioned,
  #|   maxAge: ((() => { const v = self.maxAge; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// CookieStoreDeleteOptions dictionary
pub struct CookieStoreDeleteOptions {
  name : String
  domain : Nullable[String]
  path : String?
  partitioned : Bool?
}

///|
/// Create a new CookieStoreDeleteOptions with default values
pub fn CookieStoreDeleteOptions::default() -> CookieStoreDeleteOptions {
  CookieStoreDeleteOptions::{
    name: "",
    domain: Nullable::Undefined,
    path: None,
    partitioned: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn CookieStoreDeleteOptions::to_js(
  self : CookieStoreDeleteOptions,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   domain: ((() => { const v = self.domain; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   path: self.path,
  #|   partitioned: self.partitioned
  #| })

///|
/// CookieListItem dictionary
pub struct CookieListItem {
  name : String?
  value : String?
}

///|
/// Create a new CookieListItem with default values
pub fn CookieListItem::default() -> CookieListItem {
  CookieListItem::{ name: None, value: None }
}

///|
/// Convert to JsValue
pub extern "js" fn CookieListItem::to_js(self : CookieListItem) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   value: self.value
  #| })

///|
/// CookieChangeEventInit dictionary
pub struct CookieChangeEventInit {
  changed : CookieList?
  deleted : CookieList?
}

///|
/// Create a new CookieChangeEventInit with default values
pub fn CookieChangeEventInit::default() -> CookieChangeEventInit {
  CookieChangeEventInit::{ changed: None, deleted: None }
}

///|
/// Convert to JsValue
pub extern "js" fn CookieChangeEventInit::to_js(
  self : CookieChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   changed: self.changed,
  #|   deleted: self.deleted
  #| })

///|
/// ExtendableCookieChangeEventInit dictionary
pub struct ExtendableCookieChangeEventInit {
  changed : CookieList?
  deleted : CookieList?
}

///|
/// Create a new ExtendableCookieChangeEventInit with default values
pub fn ExtendableCookieChangeEventInit::default() -> ExtendableCookieChangeEventInit {
  ExtendableCookieChangeEventInit::{ changed: None, deleted: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ExtendableCookieChangeEventInit::to_js(
  self : ExtendableCookieChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   changed: self.changed,
  #|   deleted: self.deleted
  #| })

///|
/// CookieStore interface
pub type CookieStore

///|
pub extern "js" fn CookieStore::to_js_value(self : CookieStore) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CookieStore (unchecked)
pub extern "js" fn CookieStore::from_js_value(v : JsValue) -> CookieStore =
  #| (v) => v

///|
/// Safely cast JsValue to CookieStore (checked with instanceof)
pub extern "js" fn CookieStore::from_js_value_opt(v : JsValue) -> CookieStore? =
  #| (v) => (v instanceof CookieStore) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CookieStore (checked with instanceof)
pub extern "js" fn JsValue::as_cookie_store(self : JsValue) -> CookieStore? =
  #| (self) => (self instanceof CookieStore) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CookieStore (unchecked)
pub extern "js" fn JsValue::to_cookie_store(self : JsValue) -> CookieStore =
  #| (self) => self

///|
pub extern "js" fn CookieStore::to_event_target(
  self : CookieStore,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn CookieStore::get(
  self : CookieStore,
) -> Promise[CookieListItem?] =
  #| (self) => self.get().then(v => v == null ? { $tag: 0 } : { $tag: 1, _0: v })

///|
pub extern "js" fn CookieStore::get_with_options(
  self : CookieStore,
  options : CookieStoreGetOptions,
) -> Promise[CookieListItem?] =
  #| (self, options) => self.get(options).then(v => v == null ? { $tag: 0 } : { $tag: 1, _0: v })

///|
pub extern "js" fn CookieStore::get_with_name(
  self : CookieStore,
  name : String,
) -> Promise[CookieListItem?] =
  #| (self, name) => self.get(name).then(v => v == null ? { $tag: 0 } : { $tag: 1, _0: v })

///|
pub extern "js" fn CookieStore::get_all(
  self : CookieStore,
) -> Promise[CookieList] =
  #| (self) => self.getAll()

///|
pub extern "js" fn CookieStore::get_all_with_options(
  self : CookieStore,
  options : CookieStoreGetOptions,
) -> Promise[CookieList] =
  #| (self, options) => self.getAll(options)

///|
pub extern "js" fn CookieStore::get_all_with_name(
  self : CookieStore,
  name : String,
) -> Promise[CookieList] =
  #| (self, name) => self.getAll(name)

///|
pub extern "js" fn CookieStore::set(
  self : CookieStore,
  options : CookieInit,
) -> Promise[Unit] =
  #| (self, options) => self.set(options)

///|
pub extern "js" fn CookieStore::set_with_name_and_value(
  self : CookieStore,
  name : String,
  value : String,
) -> Promise[Unit] =
  #| (self, name, value) => self.set(name, value)

///|
pub extern "js" fn CookieStore::delete(
  self : CookieStore,
  name : String,
) -> Promise[Unit] =
  #| (self, name) => self.delete(name)

///|
pub extern "js" fn CookieStore::delete_with_options_cookie_store_delete_options(
  self : CookieStore,
  options : CookieStoreDeleteOptions,
) -> Promise[Unit] =
  #| (self, options) => self.delete(options)

///|
pub extern "js" fn CookieStore::get_onchange(
  self : CookieStore,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn CookieStore::set_onchange(
  self : CookieStore,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
/// CookieStoreManager interface
pub type CookieStoreManager

///|
pub extern "js" fn CookieStoreManager::to_js_value(
  self : CookieStoreManager,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CookieStoreManager (unchecked)
pub extern "js" fn CookieStoreManager::from_js_value(
  v : JsValue,
) -> CookieStoreManager =
  #| (v) => v

///|
/// Safely cast JsValue to CookieStoreManager (checked with instanceof)
pub extern "js" fn CookieStoreManager::from_js_value_opt(
  v : JsValue,
) -> CookieStoreManager? =
  #| (v) => (v instanceof CookieStoreManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CookieStoreManager (checked with instanceof)
pub extern "js" fn JsValue::as_cookie_store_manager(
  self : JsValue,
) -> CookieStoreManager? =
  #| (self) => (self instanceof CookieStoreManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CookieStoreManager (unchecked)
pub extern "js" fn JsValue::to_cookie_store_manager(
  self : JsValue,
) -> CookieStoreManager =
  #| (self) => self

///|
pub extern "js" fn CookieStoreManager::subscribe(
  self : CookieStoreManager,
  subscriptions : Array[CookieStoreGetOptions],
) -> Promise[Unit] =
  #| (self, subscriptions) => self.subscribe(subscriptions)

///|
pub extern "js" fn CookieStoreManager::get_subscriptions(
  self : CookieStoreManager,
) -> Promise[Array[CookieStoreGetOptions]] =
  #| (self) => self.getSubscriptions()

///|
pub extern "js" fn CookieStoreManager::unsubscribe(
  self : CookieStoreManager,
  subscriptions : Array[CookieStoreGetOptions],
) -> Promise[Unit] =
  #| (self, subscriptions) => self.unsubscribe(subscriptions)

///|
/// CookieChangeEvent interface
pub type CookieChangeEvent

///|
pub extern "js" fn CookieChangeEvent::to_js_value(
  self : CookieChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CookieChangeEvent (unchecked)
pub extern "js" fn CookieChangeEvent::from_js_value(
  v : JsValue,
) -> CookieChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to CookieChangeEvent (checked with instanceof)
pub extern "js" fn CookieChangeEvent::from_js_value_opt(
  v : JsValue,
) -> CookieChangeEvent? =
  #| (v) => (v instanceof CookieChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CookieChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_cookie_change_event(
  self : JsValue,
) -> CookieChangeEvent? =
  #| (self) => (self instanceof CookieChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CookieChangeEvent (unchecked)
pub extern "js" fn JsValue::to_cookie_change_event(
  self : JsValue,
) -> CookieChangeEvent =
  #| (self) => self

///|
pub extern "js" fn CookieChangeEvent::to_event(
  self : CookieChangeEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn CookieChangeEvent::new(
  type_ : String,
  event_init_dict : CookieChangeEventInit,
) -> CookieChangeEvent =
  #| (type_, event_init_dict) => new CookieChangeEvent(type_, event_init_dict)

///|
pub extern "js" fn CookieChangeEvent::get_changed(
  self : CookieChangeEvent,
) -> JsValue =
  #| (self) => self.changed

///|
pub extern "js" fn CookieChangeEvent::get_deleted(
  self : CookieChangeEvent,
) -> JsValue =
  #| (self) => self.deleted

///|
/// ExtendableCookieChangeEvent interface
pub type ExtendableCookieChangeEvent

///|
pub extern "js" fn ExtendableCookieChangeEvent::to_js_value(
  self : ExtendableCookieChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ExtendableCookieChangeEvent (unchecked)
pub extern "js" fn ExtendableCookieChangeEvent::from_js_value(
  v : JsValue,
) -> ExtendableCookieChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to ExtendableCookieChangeEvent (checked with instanceof)
pub extern "js" fn ExtendableCookieChangeEvent::from_js_value_opt(
  v : JsValue,
) -> ExtendableCookieChangeEvent? =
  #| (v) => (v instanceof ExtendableCookieChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ExtendableCookieChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_extendable_cookie_change_event(
  self : JsValue,
) -> ExtendableCookieChangeEvent? =
  #| (self) => (self instanceof ExtendableCookieChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ExtendableCookieChangeEvent (unchecked)
pub extern "js" fn JsValue::to_extendable_cookie_change_event(
  self : JsValue,
) -> ExtendableCookieChangeEvent =
  #| (self) => self

///|
pub extern "js" fn ExtendableCookieChangeEvent::to_extendable_event(
  self : ExtendableCookieChangeEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn ExtendableCookieChangeEvent::to_event(
  self : ExtendableCookieChangeEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn ExtendableCookieChangeEvent::new(
  type_ : String,
  event_init_dict : ExtendableCookieChangeEventInit,
) -> ExtendableCookieChangeEvent =
  #| (type_, event_init_dict) => new ExtendableCookieChangeEvent(type_, event_init_dict)

///|
pub extern "js" fn ExtendableCookieChangeEvent::get_changed(
  self : ExtendableCookieChangeEvent,
) -> JsValue =
  #| (self) => self.changed

///|
pub extern "js" fn ExtendableCookieChangeEvent::get_deleted(
  self : ExtendableCookieChangeEvent,
) -> JsValue =
  #| (self) => self.deleted
