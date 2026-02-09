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
pub extern "js" fn StorageManager::persisted(
  self : StorageManager,
) -> Promise[Bool] =
  #| (self) => self.persisted()

///|
pub extern "js" fn StorageManager::persist(
  self : StorageManager,
) -> Promise[Bool] =
  #| (self) => self.persist()

///|
pub extern "js" fn StorageManager::estimate(
  self : StorageManager,
) -> Promise[StorageEstimate] =
  #| (self) => self.estimate()

///|
pub extern "js" fn StorageManager::get_directory(
  self : StorageManager,
) -> Promise[FileSystemDirectoryHandle] =
  #| (self) => self.getDirectory()
