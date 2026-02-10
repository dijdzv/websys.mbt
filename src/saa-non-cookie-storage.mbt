// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/saa-non-cookie-storage

///|
/// SameSiteCookiesType enum
pub(all) enum SameSiteCookiesType {
  All
  None
} derive(Eq, Show)

///|
/// Convert to string value
pub fn SameSiteCookiesType::to_string(self : SameSiteCookiesType) -> String {
  match self {
    SameSiteCookiesType::All => "all"
    SameSiteCookiesType::None => "none"
  }
}

///|
/// Parse from string value
pub fn SameSiteCookiesType::from_string(s : String) -> SameSiteCookiesType? {
  match s {
    "all" => Some(SameSiteCookiesType::All)
    "none" => Some(SameSiteCookiesType::None)
    _ => None
  }
}

///|
/// StorageAccessTypes dictionary
pub(all) struct StorageAccessTypes {
  all : Bool?
  cookies : Bool?
  sessionStorage : Bool?
  localStorage : Bool?
  indexedDB : Bool?
  locks : Bool?
  caches : Bool?
  getDirectory : Bool?
  estimate : Bool?
  createObjectURL : Bool?
  revokeObjectURL : Bool?
  broadcastChannel : Bool?
  sharedWorker : Bool?
}

///|
/// Create a new StorageAccessTypes with default values
pub fn StorageAccessTypes::default() -> StorageAccessTypes {
  StorageAccessTypes::{
    all: None,
    cookies: None,
    sessionStorage: None,
    localStorage: None,
    indexedDB: None,
    locks: None,
    caches: None,
    getDirectory: None,
    estimate: None,
    createObjectURL: None,
    revokeObjectURL: None,
    broadcastChannel: None,
    sharedWorker: None,
  }
}

///|
extern "js" fn StorageAccessTypes::to_js_ffi(
  self : StorageAccessTypes,
) -> JsValue =
  #| (self) => ({
  #|   all: (self.all === -1 ? undefined : self.all),
  #|   cookies: (self.cookies === -1 ? undefined : self.cookies),
  #|   sessionStorage: (self.sessionStorage === -1 ? undefined : self.sessionStorage),
  #|   localStorage: (self.localStorage === -1 ? undefined : self.localStorage),
  #|   indexedDB: (self.indexedDB === -1 ? undefined : self.indexedDB),
  #|   locks: (self.locks === -1 ? undefined : self.locks),
  #|   caches: (self.caches === -1 ? undefined : self.caches),
  #|   getDirectory: (self.getDirectory === -1 ? undefined : self.getDirectory),
  #|   estimate: (self.estimate === -1 ? undefined : self.estimate),
  #|   createObjectURL: (self.createObjectURL === -1 ? undefined : self.createObjectURL),
  #|   revokeObjectURL: (self.revokeObjectURL === -1 ? undefined : self.revokeObjectURL),
  #|   BroadcastChannel: (self.broadcastChannel === -1 ? undefined : self.broadcastChannel),
  #|   SharedWorker: (self.sharedWorker === -1 ? undefined : self.sharedWorker)
  #| })

///|
/// Convert to JsValue
pub fn StorageAccessTypes::to_js(self : StorageAccessTypes) -> JsValue {
  StorageAccessTypes::to_js_ffi(self)
}

///|
extern "js" fn StorageAccessTypes::from_js_ffi(
  value : JsValue,
) -> StorageAccessTypes =
  #| (v) => ({
  #|   all: (v.all === undefined ? -1 : v.all),
  #|   cookies: (v.cookies === undefined ? -1 : v.cookies),
  #|   sessionStorage: (v.sessionStorage === undefined ? -1 : v.sessionStorage),
  #|   localStorage: (v.localStorage === undefined ? -1 : v.localStorage),
  #|   indexedDB: (v.indexedDB === undefined ? -1 : v.indexedDB),
  #|   locks: (v.locks === undefined ? -1 : v.locks),
  #|   caches: (v.caches === undefined ? -1 : v.caches),
  #|   getDirectory: (v.getDirectory === undefined ? -1 : v.getDirectory),
  #|   estimate: (v.estimate === undefined ? -1 : v.estimate),
  #|   createObjectURL: (v.createObjectURL === undefined ? -1 : v.createObjectURL),
  #|   revokeObjectURL: (v.revokeObjectURL === undefined ? -1 : v.revokeObjectURL),
  #|   broadcastChannel: (v.BroadcastChannel === undefined ? -1 : v.BroadcastChannel),
  #|   sharedWorker: (v.SharedWorker === undefined ? -1 : v.SharedWorker)
  #| })

///|
/// Convert from JsValue
pub fn StorageAccessTypes::from_js(value : JsValue) -> StorageAccessTypes {
  StorageAccessTypes::from_js_ffi(value)
}

///|
/// SharedWorkerOptions dictionary
pub(all) struct SharedWorkerOptions {
  sameSiteCookies : SameSiteCookiesType?
}

///|
/// Create a new SharedWorkerOptions with default values
pub fn SharedWorkerOptions::default() -> SharedWorkerOptions {
  SharedWorkerOptions::{ sameSiteCookies: None }
}

///|
extern "js" fn SharedWorkerOptions::to_js_ffi(
  self : SharedWorkerOptions,
) -> JsValue =
  #| (self) => ({
  #|   sameSiteCookies: ((() => { const v = self.sameSiteCookies; if (v === undefined) return undefined; return ['all', 'none'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn SharedWorkerOptions::to_js(self : SharedWorkerOptions) -> JsValue {
  SharedWorkerOptions::to_js_ffi(self)
}

///|
extern "js" fn SharedWorkerOptions::from_js_ffi(
  value : JsValue,
) -> SharedWorkerOptions =
  #| (v) => ({
  #|   sameSiteCookies: (v.sameSiteCookies === undefined ? undefined : ['all', 'none'].indexOf(v.sameSiteCookies))
  #| })

///|
/// Convert from JsValue
pub fn SharedWorkerOptions::from_js(value : JsValue) -> SharedWorkerOptions {
  SharedWorkerOptions::from_js_ffi(value)
}

///|
/// StorageAccessHandle interface
pub type StorageAccessHandle

///|
pub extern "js" fn StorageAccessHandle::to_js_value(
  self : StorageAccessHandle,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to StorageAccessHandle (unchecked)
pub extern "js" fn StorageAccessHandle::from_js_value(
  v : JsValue,
) -> StorageAccessHandle =
  #| (v) => v

///|
/// Safely cast JsValue to StorageAccessHandle (checked with instanceof)
pub extern "js" fn StorageAccessHandle::from_js_value_opt(
  v : JsValue,
) -> StorageAccessHandle? =
  #| (v) => (v instanceof StorageAccessHandle) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to StorageAccessHandle (checked with instanceof)
pub extern "js" fn JsValue::as_storage_access_handle(
  self : JsValue,
) -> StorageAccessHandle? =
  #| (self) => (self instanceof StorageAccessHandle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to StorageAccessHandle (unchecked)
pub extern "js" fn JsValue::to_storage_access_handle(
  self : JsValue,
) -> StorageAccessHandle =
  #| (self) => self

///|
pub extern "js" fn StorageAccessHandle::get_session_storage(
  self : StorageAccessHandle,
) -> Storage =
  #| (self) => self.sessionStorage

///|
pub extern "js" fn StorageAccessHandle::get_local_storage(
  self : StorageAccessHandle,
) -> Storage =
  #| (self) => self.localStorage

///|
pub extern "js" fn StorageAccessHandle::get_indexed_db(
  self : StorageAccessHandle,
) -> IDBFactory =
  #| (self) => self.indexedDB

///|
pub extern "js" fn StorageAccessHandle::get_locks(
  self : StorageAccessHandle,
) -> LockManager =
  #| (self) => self.locks

///|
pub extern "js" fn StorageAccessHandle::get_caches(
  self : StorageAccessHandle,
) -> CacheStorage =
  #| (self) => self.caches

///|
pub extern "js" fn StorageAccessHandle::get_directory(
  self : StorageAccessHandle,
) -> Promise[FileSystemDirectoryHandle] =
  #| (self) => self.getDirectory()

///|
pub extern "js" fn StorageAccessHandle::estimate(
  self : StorageAccessHandle,
) -> Promise[StorageEstimate] =
  #| (self) => self.estimate().then(v => ({
  #|   usage: v.usage,
  #|   quota: v.quota
  #| }))

///|
pub extern "js" fn StorageAccessHandle::create_object_url(
  self : StorageAccessHandle,
  obj : BlobOrMediaSource,
) -> String =
  #| (self, obj) => self.createObjectURL(obj)

///|
pub extern "js" fn StorageAccessHandle::revoke_object_url(
  self : StorageAccessHandle,
  url : String,
) -> Unit =
  #| (self, url) => self.revokeObjectURL(url)

///|
pub extern "js" fn StorageAccessHandle::broadcast_channel(
  self : StorageAccessHandle,
  name : String,
) -> BroadcastChannel =
  #| (self, name) => self.BroadcastChannel(name)

///|
pub extern "js" fn StorageAccessHandle::shared_worker(
  self : StorageAccessHandle,
  script_url : String,
) -> SharedWorker =
  #| (self, script_url) => self.SharedWorker(script_url)

///|
pub extern "js" fn StorageAccessHandle::shared_worker_with_options(
  self : StorageAccessHandle,
  script_url : String,
  options : StringOrSharedWorkerOptions,
) -> SharedWorker =
  #| (self, script_url, options) => self.SharedWorker(script_url, options)
