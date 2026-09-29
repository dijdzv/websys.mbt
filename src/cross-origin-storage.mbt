// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/cross-origin-storage

///|
/// CrossOriginStorageRequestFileHandleHash dictionary
pub(all) struct CrossOriginStorageRequestFileHandleHash {
  value : String
  algorithm : String
}

/// Create a new CrossOriginStorageRequestFileHandleHash with default values
pub fn CrossOriginStorageRequestFileHandleHash::default() -> CrossOriginStorageRequestFileHandleHash {
  CrossOriginStorageRequestFileHandleHash::{
    value: "",
    algorithm: "",
  }
}

extern "js" fn CrossOriginStorageRequestFileHandleHash::to_js_ffi(self : CrossOriginStorageRequestFileHandleHash) -> JsValue =
  #| (self) => ({
  #|   value: self.value,
  #|   algorithm: self.algorithm
  #| })

/// Convert to JsValue
pub fn CrossOriginStorageRequestFileHandleHash::to_js(self : CrossOriginStorageRequestFileHandleHash) -> JsValue {
  CrossOriginStorageRequestFileHandleHash::to_js_ffi(self)
}

extern "js" fn CrossOriginStorageRequestFileHandleHash::from_js_ffi(value : JsValue) -> CrossOriginStorageRequestFileHandleHash =
  #| (v) => ({
  #|   value: v.value,
  #|   algorithm: v.algorithm
  #| })

/// Convert from JsValue
pub fn CrossOriginStorageRequestFileHandleHash::from_js(value : JsValue) -> CrossOriginStorageRequestFileHandleHash {
  CrossOriginStorageRequestFileHandleHash::from_js_ffi(value)
}

///|
/// CrossOriginStorageRequestFileHandleOptions dictionary
pub(all) struct CrossOriginStorageRequestFileHandleOptions {
  create : Bool?
  origins : StringOrArrayOfString?
}

/// Create a new CrossOriginStorageRequestFileHandleOptions with default values
pub fn CrossOriginStorageRequestFileHandleOptions::default() -> CrossOriginStorageRequestFileHandleOptions {
  CrossOriginStorageRequestFileHandleOptions::{
    create: None,
    origins: None,
  }
}

extern "js" fn CrossOriginStorageRequestFileHandleOptions::to_js_ffi(self : CrossOriginStorageRequestFileHandleOptions) -> JsValue =
  #| (self) => ({
  #|   create: (self.create === -1 ? undefined : self.create),
  #|   origins: ((() => { const v = self.origins; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

/// Convert to JsValue
pub fn CrossOriginStorageRequestFileHandleOptions::to_js(self : CrossOriginStorageRequestFileHandleOptions) -> JsValue {
  CrossOriginStorageRequestFileHandleOptions::to_js_ffi(self)
}

extern "js" fn CrossOriginStorageRequestFileHandleOptions::from_js_ffi(value : JsValue) -> CrossOriginStorageRequestFileHandleOptions =
  #| (v) => ({
  #|   create: (v.create === undefined ? -1 : v.create),
  #|   origins: (v.origins === undefined ? { $tag: 0 } : { $tag: 1, _0: v.origins })
  #| })

/// Convert from JsValue
pub fn CrossOriginStorageRequestFileHandleOptions::from_js(value : JsValue) -> CrossOriginStorageRequestFileHandleOptions {
  CrossOriginStorageRequestFileHandleOptions::from_js_ffi(value)
}

///|
/// CrossOriginStorageManager interface
pub type CrossOriginStorageManager

pub extern "js" fn CrossOriginStorageManager::to_js_value(self : CrossOriginStorageManager) -> JsValue =
  #| (self) => self

/// Cast JsValue to CrossOriginStorageManager (unchecked)
pub extern "js" fn CrossOriginStorageManager::from_js_value(v : JsValue) -> CrossOriginStorageManager =
  #| (v) => v

/// Safely cast JsValue to CrossOriginStorageManager (checked with instanceof)
pub extern "js" fn CrossOriginStorageManager::from_js_value_opt(v : JsValue) -> CrossOriginStorageManager? =
  #| (v) => (v instanceof CrossOriginStorageManager) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to CrossOriginStorageManager (checked with instanceof)
pub extern "js" fn JsValue::as_cross_origin_storage_manager(self : JsValue) -> CrossOriginStorageManager? =
  #| (self) => (self instanceof CrossOriginStorageManager) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to CrossOriginStorageManager (unchecked)
pub extern "js" fn JsValue::to_cross_origin_storage_manager(self : JsValue) -> CrossOriginStorageManager =
  #| (self) => self

extern "js" fn CrossOriginStorageManager::request_file_handle_ffi(self : CrossOriginStorageManager, hash : JsValue) -> Promise[FileSystemFileHandle] =
  #| (self, hash) => self.requestFileHandle(hash)

pub fn CrossOriginStorageManager::request_file_handle(self : CrossOriginStorageManager, hash : CrossOriginStorageRequestFileHandleHash) -> Promise[FileSystemFileHandle] {
  CrossOriginStorageManager::request_file_handle_ffi(self, hash.to_js())
}

extern "js" fn CrossOriginStorageManager::request_file_handle_with_options_ffi(self : CrossOriginStorageManager, hash : JsValue, options : JsValue) -> Promise[FileSystemFileHandle] =
  #| (self, hash, options) => self.requestFileHandle(hash, options)

pub fn CrossOriginStorageManager::request_file_handle_with_options(self : CrossOriginStorageManager, hash : CrossOriginStorageRequestFileHandleHash, options : CrossOriginStorageRequestFileHandleOptions) -> Promise[FileSystemFileHandle] {
  CrossOriginStorageManager::request_file_handle_with_options_ffi(self, hash.to_js(), options.to_js())
}
