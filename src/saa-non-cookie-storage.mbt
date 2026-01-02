// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/saa-non-cookie-storage

///|
/// SameSiteCookiesType enum
pub(all) enum SameSiteCookiesType {
  All
  None
}

/// Convert to string value
pub fn SameSiteCookiesType::to_string(self : SameSiteCookiesType) -> String {
  match self {
    All => "all"
    None => "none"
  }
}

/// Parse from string value
pub fn SameSiteCookiesType::from_string(s : String) -> SameSiteCookiesType? {
  match s {
    "all" => Some(All)
    "none" => Some(None)
    _ => None
  }
}

///|
/// StorageAccessTypes dictionary
pub struct StorageAccessTypes {
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

/// Convert to JsValue
pub extern "js" fn StorageAccessTypes::to_js(self : StorageAccessTypes) -> JsValue =
  #| (self) => ({
  #|   all: self.all,
  #|   cookies: self.cookies,
  #|   sessionStorage: self.sessionStorage,
  #|   localStorage: self.localStorage,
  #|   indexedDB: self.indexedDB,
  #|   locks: self.locks,
  #|   caches: self.caches,
  #|   getDirectory: self.getDirectory,
  #|   estimate: self.estimate,
  #|   createObjectURL: self.createObjectURL,
  #|   revokeObjectURL: self.revokeObjectURL,
  #|   BroadcastChannel: self.broadcastChannel,
  #|   SharedWorker: self.sharedWorker
  #| })

///|
/// SharedWorkerOptions dictionary
pub struct SharedWorkerOptions {
  sameSiteCookies : SameSiteCookiesType?
}

/// Create a new SharedWorkerOptions with default values
pub fn SharedWorkerOptions::default() -> SharedWorkerOptions {
  SharedWorkerOptions::{
    sameSiteCookies: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SharedWorkerOptions::to_js(self : SharedWorkerOptions) -> JsValue =
  #| (self) => ({
  #|   sameSiteCookies: self.sameSiteCookies
  #| })

///|
/// StorageAccessHandle interface
pub type StorageAccessHandle

pub extern "js" fn StorageAccessHandle::to_js_value(self : StorageAccessHandle) -> JsValue =
  #| (self) => self

pub extern "js" fn StorageAccessHandle::get_session_storage(self : StorageAccessHandle) -> Storage =
  #| (self) => self.sessionStorage

pub extern "js" fn StorageAccessHandle::get_local_storage(self : StorageAccessHandle) -> Storage =
  #| (self) => self.localStorage

pub extern "js" fn StorageAccessHandle::get_indexed_d_b(self : StorageAccessHandle) -> IDBFactory =
  #| (self) => self.indexedDB

pub extern "js" fn StorageAccessHandle::get_locks(self : StorageAccessHandle) -> LockManager =
  #| (self) => self.locks

pub extern "js" fn StorageAccessHandle::get_caches(self : StorageAccessHandle) -> CacheStorage =
  #| (self) => self.caches

pub extern "js" fn StorageAccessHandle::get_directory(self : StorageAccessHandle) -> JsValue =
  #| (self) => self.getDirectory()

pub extern "js" fn StorageAccessHandle::estimate(self : StorageAccessHandle) -> JsValue =
  #| (self) => self.estimate()

pub extern "js" fn StorageAccessHandle::create_object_u_r_l(self : StorageAccessHandle, obj : JsValue) -> String =
  #| (self, obj) => self.createObjectURL(obj)

pub extern "js" fn StorageAccessHandle::revoke_object_u_r_l(self : StorageAccessHandle, url : String) -> Unit =
  #| (self, url) => self.revokeObjectURL(url)

pub extern "js" fn StorageAccessHandle::broadcast_channel(self : StorageAccessHandle, name : String) -> BroadcastChannel =
  #| (self, name) => self.BroadcastChannel(name)

pub extern "js" fn StorageAccessHandle::shared_worker(self : StorageAccessHandle, script_u_r_l : String, options : JsValue) -> SharedWorker =
  #| (self, script_u_r_l, options) => self.SharedWorker(script_u_r_l, options)

