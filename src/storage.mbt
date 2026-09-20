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
  StorageEstimate::{ usage: None, quota: None, }
}

///|
extern "js" fn StorageEstimate::to_js_ffi(self : StorageEstimate) -> JsValue =
  #| (self) => ({
  #|   usage: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.usage),
  #|   quota: ((value) => value === undefined ? undefined : ((value) => { const number = Number(BigInt.asUintN(64, value)); if (!Number.isSafeInteger(number)) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return number; })(value))(self.quota)
  #| })

///|
/// Convert to JsValue
pub fn StorageEstimate::to_js(self : StorageEstimate) -> JsValue {
  StorageEstimate::to_js_ffi(self)
}

///|
extern "js" fn StorageEstimate::from_js_ffi(value : JsValue) -> StorageEstimate =
  #| (v) => ({
  #|   usage: (v.usage === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.usage)),
  #|   quota: (v.quota === undefined ? undefined : ((value) => { if (typeof value !== 'number') throw new TypeError('Dictionary integer must be a Number'); if (!Number.isSafeInteger(value) || value < 0) throw new RangeError('Dictionary integer exceeds the exact JavaScript Number range'); return BigInt.asUintN(64, BigInt(value)); })(v.quota))
  #| })

///|
/// Convert from JsValue
pub fn StorageEstimate::from_js(value : JsValue) -> StorageEstimate {
  StorageEstimate::from_js_ffi(value)
}

///|
/// Catch dictionary conversion errors, including unsafe integer ranges.
pub fn StorageEstimate::to_js_checked(
  self : StorageEstimate,
) -> Result[JsValue, JsError] {
  try_dictionary_conversion(() => self.to_js())
}

///|
extern "js" fn try_dictionary_StorageEstimate(
  convert : () -> StorageEstimate,
) -> Result[StorageEstimate, JsError] =
  #| convert => { try { return { $tag: 1, _0: convert() }; } catch (error) { return { $tag: 0, _0: error }; } }

///|
/// Catch invalid host fields, including unsafe integer ranges.
pub fn StorageEstimate::from_js_checked(
  value : JsValue,
) -> Result[StorageEstimate, JsError] {
  try_dictionary_StorageEstimate(() => StorageEstimate::from_js(value))
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
} derive(Debug)

///|
/// Error type for throwing methods
pub(all) enum StorageManagerPersistError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
/// Error type for throwing methods
pub(all) enum StorageManagerEstimateError {
  TypeError(JsError)
  OtherError(JsError)
} derive(Debug)

///|
/// Error type for throwing methods
pub(all) enum StorageManagerGetDirectoryError {
  UnknownError(JsError)
  SecurityError(JsError)
  OtherError(JsError)
} derive(Debug)

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
