// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-locks

///|
/// LockMode enum
pub(all) enum LockMode {
  Shared
  Exclusive
} derive(Eq, Show)

///|
/// Convert to string value
pub fn LockMode::to_string(self : LockMode) -> String {
  match self {
    LockMode::Shared => "shared"
    LockMode::Exclusive => "exclusive"
  }
}

///|
/// Parse from string value
pub fn LockMode::from_string(s : String) -> LockMode? {
  match s {
    "shared" => Some(LockMode::Shared)
    "exclusive" => Some(LockMode::Exclusive)
    _ => None
  }
}

///|
/// LockGrantedCallback callback interface
pub type LockGrantedCallback

///|
/// Create LockGrantedCallback from a MoonBit function
pub extern "js" fn LockGrantedCallback::from_fn(
  handler : (Lock?) -> Promise[JsValue],
) -> LockGrantedCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// LockOptions dictionary
pub(all) struct LockOptions {
  mode : LockMode?
  ifAvailable : Bool?
  steal : Bool?
  signal : AbortSignal?
}

///|
/// Create a new LockOptions with default values
pub fn LockOptions::default() -> LockOptions {
  LockOptions::{ mode: None, ifAvailable: None, steal: None, signal: None }
}

///|
extern "js" fn LockOptions::to_js_ffi(self : LockOptions) -> JsValue =
  #| (self) => ({
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['shared', 'exclusive'][v]; })()),
  #|   ifAvailable: (self.ifAvailable === -1 ? undefined : self.ifAvailable),
  #|   steal: (self.steal === -1 ? undefined : self.steal),
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn LockOptions::to_js(self : LockOptions) -> JsValue {
  LockOptions::to_js_ffi(self)
}

///|
extern "js" fn LockOptions::from_js_ffi(value : JsValue) -> LockOptions =
  #| (v) => ({
  #|   mode: (v.mode === undefined ? undefined : ['shared', 'exclusive'].indexOf(v.mode)),
  #|   ifAvailable: (v.ifAvailable === undefined ? -1 : v.ifAvailable),
  #|   steal: (v.steal === undefined ? -1 : v.steal),
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn LockOptions::from_js(value : JsValue) -> LockOptions {
  LockOptions::from_js_ffi(value)
}

///|
/// LockManagerSnapshot dictionary
pub(all) struct LockManagerSnapshot {
  held : Array[LockInfo]?
  pending : Array[LockInfo]?
}

///|
/// Create a new LockManagerSnapshot with default values
pub fn LockManagerSnapshot::default() -> LockManagerSnapshot {
  LockManagerSnapshot::{ held: None, pending: None }
}

///|
extern "js" fn LockManagerSnapshot::to_js_ffi(
  self : LockManagerSnapshot,
) -> JsValue =
  #| (self) => ({
  #|   held: ((() => { const v = self.held; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   pending: ((() => { const v = self.pending; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn LockManagerSnapshot::to_js(self : LockManagerSnapshot) -> JsValue {
  LockManagerSnapshot::to_js_ffi(self)
}

///|
extern "js" fn LockManagerSnapshot::from_js_ffi(
  value : JsValue,
) -> LockManagerSnapshot =
  #| (v) => ({
  #|   held: (v.held === undefined ? { $tag: 0 } : { $tag: 1, _0: v.held }),
  #|   pending: (v.pending === undefined ? { $tag: 0 } : { $tag: 1, _0: v.pending })
  #| })

///|
/// Convert from JsValue
pub fn LockManagerSnapshot::from_js(value : JsValue) -> LockManagerSnapshot {
  LockManagerSnapshot::from_js_ffi(value)
}

///|
/// LockInfo dictionary
pub(all) struct LockInfo {
  name : String?
  mode : LockMode?
  clientId : String?
}

///|
/// Create a new LockInfo with default values
pub fn LockInfo::default() -> LockInfo {
  LockInfo::{ name: None, mode: None, clientId: None }
}

///|
extern "js" fn LockInfo::to_js_ffi(self : LockInfo) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['shared', 'exclusive'][v]; })()),
  #|   clientId: self.clientId
  #| })

///|
/// Convert to JsValue
pub fn LockInfo::to_js(self : LockInfo) -> JsValue {
  LockInfo::to_js_ffi(self)
}

///|
extern "js" fn LockInfo::from_js_ffi(value : JsValue) -> LockInfo =
  #| (v) => ({
  #|   name: v.name,
  #|   mode: (v.mode === undefined ? undefined : ['shared', 'exclusive'].indexOf(v.mode)),
  #|   clientId: v.clientId
  #| })

///|
/// Convert from JsValue
pub fn LockInfo::from_js(value : JsValue) -> LockInfo {
  LockInfo::from_js_ffi(value)
}

///|
/// LockManager interface
pub type LockManager

///|
pub extern "js" fn LockManager::to_js_value(self : LockManager) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LockManager (unchecked)
pub extern "js" fn LockManager::from_js_value(v : JsValue) -> LockManager =
  #| (v) => v

///|
/// Safely cast JsValue to LockManager (checked with instanceof)
pub extern "js" fn LockManager::from_js_value_opt(v : JsValue) -> LockManager? =
  #| (v) => (v instanceof LockManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LockManager (checked with instanceof)
pub extern "js" fn JsValue::as_lock_manager(self : JsValue) -> LockManager? =
  #| (self) => (self instanceof LockManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LockManager (unchecked)
pub extern "js" fn JsValue::to_lock_manager(self : JsValue) -> LockManager =
  #| (self) => self

///|
pub extern "js" fn LockManager::request(
  self : LockManager,
  name : String,
  callback : LockGrantedCallback,
) -> Promise[JsValue] =
  #| (self, name, callback) => self.request(name, callback)

///|
extern "js" fn LockManager::request_with_name_and_options_lock_options_and_callback_lock_granted_callback_ffi(
  self : LockManager,
  name : String,
  options : JsValue,
  callback : LockGrantedCallback,
) -> Promise[JsValue] =
  #| (self, name, options, callback) => self.request(name, options, callback)

///|
pub fn LockManager::request_with_name_and_options_lock_options_and_callback_lock_granted_callback(
  self : LockManager,
  name : String,
  options : LockOptions,
  callback : LockGrantedCallback,
) -> Promise[JsValue] {
  LockManager::request_with_name_and_options_lock_options_and_callback_lock_granted_callback_ffi(
    self,
    name,
    options.to_js(),
    callback,
  )
}

///|
pub extern "js" fn LockManager::query(
  self : LockManager,
) -> Promise[LockManagerSnapshot] =
  #| (self) => self.query().then(v => ({
  #|   held: (v.held === undefined ? { $tag: 0 } : { $tag: 1, _0: v.held }),
  #|   pending: (v.pending === undefined ? { $tag: 0 } : { $tag: 1, _0: v.pending })
  #| }))

///|
/// Lock interface
pub type Lock

///|
pub extern "js" fn Lock::to_js_value(self : Lock) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Lock (unchecked)
pub extern "js" fn Lock::from_js_value(v : JsValue) -> Lock =
  #| (v) => v

///|
/// Safely cast JsValue to Lock (checked with instanceof)
pub extern "js" fn Lock::from_js_value_opt(v : JsValue) -> Lock? =
  #| (v) => (v instanceof Lock) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Lock (checked with instanceof)
pub extern "js" fn JsValue::as_lock(self : JsValue) -> Lock? =
  #| (self) => (self instanceof Lock) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Lock (unchecked)
pub extern "js" fn JsValue::to_lock(self : JsValue) -> Lock =
  #| (self) => self

///|
pub extern "js" fn Lock::get_name(self : Lock) -> String =
  #| (self) => self.name

///|
pub extern "js" fn Lock::get_mode(self : Lock) -> LockMode =
  #| (self) => ['shared', 'exclusive'].indexOf(self.mode)
