// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/storage

///|
/// StorageEstimate dictionary
pub(all) struct StorageEstimate {
  usage : Int64?
  quota : Int64?
}

///|
/// Create a new StorageEstimate with default values
pub fn StorageEstimate::default() -> StorageEstimate {
  StorageEstimate::{ usage: None, quota: None }
}

///|
extern "js" fn StorageEstimate::to_js_ffi(self : StorageEstimate) -> JsValue =
  #| (self) => ({
  #|   usage: self.usage,
  #|   quota: self.quota
  #| })

///|
/// Convert to JsValue
pub fn StorageEstimate::to_js(self : StorageEstimate) -> JsValue {
  StorageEstimate::to_js_ffi(self)
}

///|
extern "js" fn StorageEstimate::from_js_ffi(value : JsValue) -> StorageEstimate =
  #| (v) => ({
  #|   usage: v.usage,
  #|   quota: v.quota
  #| })

///|
/// Convert from JsValue
pub fn StorageEstimate::from_js(value : JsValue) -> StorageEstimate {
  StorageEstimate::from_js_ffi(value)
}

///|
/// StorageManager interface
pub type StorageManager

///|
pub extern "js" fn StorageManager::to_js_value(
  self : StorageManager,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to StorageManager (unchecked)
pub extern "js" fn StorageManager::from_js_value(v : JsValue) -> StorageManager =
  #| (v) => v

///|
/// Safely cast JsValue to StorageManager (checked with instanceof)
pub extern "js" fn StorageManager::from_js_value_opt(
  v : JsValue,
) -> StorageManager? =
  #| (v) => (v instanceof StorageManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to StorageManager (checked with instanceof)
pub extern "js" fn JsValue::as_storage_manager(
  self : JsValue,
) -> StorageManager? =
  #| (self) => (self instanceof StorageManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to StorageManager (unchecked)
pub extern "js" fn JsValue::to_storage_manager(
  self : JsValue,
) -> StorageManager =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum StorageManagerPersistedError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum StorageManagerPersistError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum StorageManagerEstimateError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum StorageManagerGetDirectoryError {
  UnknownError(JsError)
  SecurityError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn StorageManager::persisted(
  self : StorageManager,
) -> Promise[Result[Bool, StorageManagerPersistedError]] =
  #| (self) => self.persisted().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn StorageManager::persist(
  self : StorageManager,
) -> Promise[Result[Bool, StorageManagerPersistError]] =
  #| (self) => self.persist().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn StorageManager::estimate(
  self : StorageManager,
) -> Promise[Result[StorageEstimate, StorageManagerEstimateError]] =
  #| (self) => self.estimate().then(v => ({
  #|   usage: v.usage,
  #|   quota: v.quota
  #| })).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn StorageManager::get_directory(
  self : StorageManager,
) -> Promise[Result[FileSystemDirectoryHandle, StorageManagerGetDirectoryError]] =
  #| (self) => self.getDirectory().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'SecurityError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))
