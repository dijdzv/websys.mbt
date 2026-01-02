// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-locks

///|
/// LockMode enum
pub(all) enum LockMode {
  Shared
  Exclusive
}

/// Convert to string value
pub fn LockMode::to_string(self : LockMode) -> String {
  match self {
    Shared => "shared"
    Exclusive => "exclusive"
  }
}

/// Parse from string value
pub fn LockMode::from_string(s : String) -> LockMode? {
  match s {
    "shared" => Some(Shared)
    "exclusive" => Some(Exclusive)
    _ => None
  }
}

/// LockGrantedCallback callback interface
pub type LockGrantedCallback

/// Create LockGrantedCallback from a MoonBit function
pub extern "js" fn LockGrantedCallback::from_fn(handler : (Lock?) -> Promise[JsValue]) -> LockGrantedCallback =
  #| (handler) => handler

///|
/// LockOptions dictionary
pub struct LockOptions {
  mode : LockMode?
  ifAvailable : Bool?
  steal : Bool?
  signal : AbortSignal?
}

/// Create a new LockOptions with default values
pub fn LockOptions::default() -> LockOptions {
  LockOptions::{
    mode: None,
    ifAvailable: None,
    steal: None,
    signal: None,
  }
}

/// Convert to JsValue
pub extern "js" fn LockOptions::to_js(self : LockOptions) -> JsValue =
  #| (self) => ({
  #|   mode: self.mode,
  #|   ifAvailable: self.ifAvailable,
  #|   steal: self.steal,
  #|   signal: self.signal
  #| })

///|
/// LockManagerSnapshot dictionary
pub struct LockManagerSnapshot {
  held : Array[LockInfo]?
  pending : Array[LockInfo]?
}

/// Create a new LockManagerSnapshot with default values
pub fn LockManagerSnapshot::default() -> LockManagerSnapshot {
  LockManagerSnapshot::{
    held: None,
    pending: None,
  }
}

/// Convert to JsValue
pub extern "js" fn LockManagerSnapshot::to_js(self : LockManagerSnapshot) -> JsValue =
  #| (self) => ({
  #|   held: self.held,
  #|   pending: self.pending
  #| })

///|
/// LockInfo dictionary
pub struct LockInfo {
  name : String?
  mode : LockMode?
  clientId : String?
}

/// Create a new LockInfo with default values
pub fn LockInfo::default() -> LockInfo {
  LockInfo::{
    name: None,
    mode: None,
    clientId: None,
  }
}

/// Convert to JsValue
pub extern "js" fn LockInfo::to_js(self : LockInfo) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   mode: self.mode,
  #|   clientId: self.clientId
  #| })

///|
/// LockManager interface
pub type LockManager

pub extern "js" fn LockManager::to_js_value(self : LockManager) -> JsValue =
  #| (self) => self

pub extern "js" fn LockManager::request(self : LockManager, name : String, callback : LockGrantedCallback) -> Promise[JsValue] =
  #| (self, name, callback) => self.request(name, callback)

pub extern "js" fn LockManager::query(self : LockManager) -> Promise[LockManagerSnapshot] =
  #| (self) => self.query()

///|
/// Lock interface
pub type Lock

pub extern "js" fn Lock::to_js_value(self : Lock) -> JsValue =
  #| (self) => self

pub extern "js" fn Lock::get_name(self : Lock) -> String =
  #| (self) => self.name

pub extern "js" fn Lock::get_mode(self : Lock) -> LockMode =
  #| (self) => self.mode

