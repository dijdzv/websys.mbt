// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/storage-buckets

///|
/// StorageBucketOptions dictionary
pub(all) struct StorageBucketOptions {
  persisted : Bool?
  quota : Int64?
  expires : DOMHighResTimeStamp?
}

///|
/// Create a new StorageBucketOptions with default values
pub fn StorageBucketOptions::default() -> StorageBucketOptions {
  StorageBucketOptions::{ persisted: None, quota: None, expires: None }
}

///|
extern "js" fn StorageBucketOptions::to_js_ffi(
  self : StorageBucketOptions,
) -> JsValue =
  #| (self) => ({
  #|   persisted: (self.persisted === -1 ? undefined : self.persisted),
  #|   quota: self.quota,
  #|   expires: ((() => { const v = self.expires; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn StorageBucketOptions::to_js(self : StorageBucketOptions) -> JsValue {
  StorageBucketOptions::to_js_ffi(self)
}

///|
/// StorageBucketManager interface
pub type StorageBucketManager

///|
pub extern "js" fn StorageBucketManager::to_js_value(
  self : StorageBucketManager,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to StorageBucketManager (unchecked)
pub extern "js" fn StorageBucketManager::from_js_value(
  v : JsValue,
) -> StorageBucketManager =
  #| (v) => v

///|
/// Safely cast JsValue to StorageBucketManager (checked with instanceof)
pub extern "js" fn StorageBucketManager::from_js_value_opt(
  v : JsValue,
) -> StorageBucketManager? =
  #| (v) => (v instanceof StorageBucketManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to StorageBucketManager (checked with instanceof)
pub extern "js" fn JsValue::as_storage_bucket_manager(
  self : JsValue,
) -> StorageBucketManager? =
  #| (self) => (self instanceof StorageBucketManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to StorageBucketManager (unchecked)
pub extern "js" fn JsValue::to_storage_bucket_manager(
  self : JsValue,
) -> StorageBucketManager =
  #| (self) => self

///|
pub extern "js" fn StorageBucketManager::open(
  self : StorageBucketManager,
  name : String,
) -> Promise[StorageBucket] =
  #| (self, name) => self.open(name)

///|
extern "js" fn StorageBucketManager::open_with_options_ffi(
  self : StorageBucketManager,
  name : String,
  options : JsValue,
) -> Promise[StorageBucket] =
  #| (self, name, options) => self.open(name, options)

///|
pub fn StorageBucketManager::open_with_options(
  self : StorageBucketManager,
  name : String,
  options : StorageBucketOptions,
) -> Promise[StorageBucket] {
  StorageBucketManager::open_with_options_ffi(self, name, options.to_js())
}

///|
pub extern "js" fn StorageBucketManager::keys(
  self : StorageBucketManager,
) -> Promise[Array[String]] =
  #| (self) => self.keys()

///|
pub extern "js" fn StorageBucketManager::delete(
  self : StorageBucketManager,
  name : String,
) -> Promise[Unit] =
  #| (self, name) => self.delete(name)

///|
/// StorageBucket interface
pub type StorageBucket

///|
pub extern "js" fn StorageBucket::to_js_value(self : StorageBucket) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to StorageBucket (unchecked)
pub extern "js" fn StorageBucket::from_js_value(v : JsValue) -> StorageBucket =
  #| (v) => v

///|
/// Safely cast JsValue to StorageBucket (checked with instanceof)
pub extern "js" fn StorageBucket::from_js_value_opt(
  v : JsValue,
) -> StorageBucket? =
  #| (v) => (v instanceof StorageBucket) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to StorageBucket (checked with instanceof)
pub extern "js" fn JsValue::as_storage_bucket(self : JsValue) -> StorageBucket? =
  #| (self) => (self instanceof StorageBucket) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to StorageBucket (unchecked)
pub extern "js" fn JsValue::to_storage_bucket(self : JsValue) -> StorageBucket =
  #| (self) => self

///|
pub extern "js" fn StorageBucket::get_name(self : StorageBucket) -> String =
  #| (self) => self.name

///|
pub extern "js" fn StorageBucket::persist(
  self : StorageBucket,
) -> Promise[Bool] =
  #| (self) => self.persist()

///|
pub extern "js" fn StorageBucket::persisted(
  self : StorageBucket,
) -> Promise[Bool] =
  #| (self) => self.persisted()

///|
pub extern "js" fn StorageBucket::estimate(
  self : StorageBucket,
) -> Promise[StorageEstimate] =
  #| (self) => self.estimate()

///|
pub extern "js" fn StorageBucket::set_expires(
  self : StorageBucket,
  expires : DOMHighResTimeStamp,
) -> Promise[Unit] =
  #| (self, expires) => self.setExpires(expires)

///|
pub extern "js" fn StorageBucket::expires(
  self : StorageBucket,
) -> Promise[DOMHighResTimeStamp?] =
  #| (self) => self.expires()

///|
pub extern "js" fn StorageBucket::get_indexed_db(
  self : StorageBucket,
) -> IDBFactory =
  #| (self) => self.indexedDB

///|
pub extern "js" fn StorageBucket::get_caches(
  self : StorageBucket,
) -> CacheStorage =
  #| (self) => self.caches

///|
pub extern "js" fn StorageBucket::get_directory(
  self : StorageBucket,
) -> Promise[FileSystemDirectoryHandle] =
  #| (self) => self.getDirectory()
