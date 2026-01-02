// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/storage-buckets

///|
/// StorageBucketOptions dictionary
pub struct StorageBucketOptions {
  persisted : Bool?
  quota : Int64?
  expires : DOMHighResTimeStamp?
}

/// Create a new StorageBucketOptions with default values
pub fn StorageBucketOptions::default() -> StorageBucketOptions {
  StorageBucketOptions::{
    persisted: None,
    quota: None,
    expires: None,
  }
}

/// Convert to JsValue
pub extern "js" fn StorageBucketOptions::to_js(self : StorageBucketOptions) -> JsValue =
  #| (self) => ({
  #|   persisted: self.persisted,
  #|   quota: self.quota,
  #|   expires: self.expires
  #| })

///|
/// StorageBucketManager interface
pub type StorageBucketManager

pub extern "js" fn StorageBucketManager::to_js_value(self : StorageBucketManager) -> JsValue =
  #| (self) => self

pub extern "js" fn StorageBucketManager::open(self : StorageBucketManager, name : String, options : StorageBucketOptions) -> JsValue =
  #| (self, name, options) => self.open(name, options)

pub extern "js" fn StorageBucketManager::keys(self : StorageBucketManager) -> JsValue =
  #| (self) => self.keys()

pub extern "js" fn StorageBucketManager::delete(self : StorageBucketManager, name : String) -> JsValue =
  #| (self, name) => self.delete(name)

///|
/// StorageBucket interface
pub type StorageBucket

pub extern "js" fn StorageBucket::to_js_value(self : StorageBucket) -> JsValue =
  #| (self) => self

pub extern "js" fn StorageBucket::get_name(self : StorageBucket) -> String =
  #| (self) => self.name

pub extern "js" fn StorageBucket::persist(self : StorageBucket) -> JsValue =
  #| (self) => self.persist()

pub extern "js" fn StorageBucket::persisted(self : StorageBucket) -> JsValue =
  #| (self) => self.persisted()

pub extern "js" fn StorageBucket::estimate(self : StorageBucket) -> JsValue =
  #| (self) => self.estimate()

pub extern "js" fn StorageBucket::set_expires(self : StorageBucket, expires : DOMHighResTimeStamp) -> JsValue =
  #| (self, expires) => self.setExpires(expires)

pub extern "js" fn StorageBucket::expires(self : StorageBucket) -> JsValue =
  #| (self) => self.expires()

pub extern "js" fn StorageBucket::get_indexed_d_b(self : StorageBucket) -> IDBFactory =
  #| (self) => self.indexedDB

pub extern "js" fn StorageBucket::get_caches(self : StorageBucket) -> CacheStorage =
  #| (self) => self.caches

pub extern "js" fn StorageBucket::get_directory(self : StorageBucket) -> JsValue =
  #| (self) => self.getDirectory()

