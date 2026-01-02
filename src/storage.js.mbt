// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/storage

///|
/// StorageEstimate dictionary
pub struct StorageEstimate {
  usage : Int64?
  quota : Int64?
}

/// Create a new StorageEstimate with default values
pub fn StorageEstimate::default() -> StorageEstimate {
  StorageEstimate::{
    usage: None,
    quota: None,
  }
}

/// Convert to JsValue
pub extern "js" fn StorageEstimate::to_js(self : StorageEstimate) -> JsValue =
  #| (self) => ({
  #|   usage: self.usage,
  #|   quota: self.quota
  #| })

///|
/// StorageManager interface
pub type StorageManager

pub extern "js" fn StorageManager::to_js_value(self : StorageManager) -> JsValue =
  #| (self) => self

pub extern "js" fn StorageManager::persisted(self : StorageManager) -> JsValue =
  #| (self) => self.persisted()

pub extern "js" fn StorageManager::persist(self : StorageManager) -> JsValue =
  #| (self) => self.persist()

pub extern "js" fn StorageManager::estimate(self : StorageManager) -> JsValue =
  #| (self) => self.estimate()

pub extern "js" fn StorageManager::get_directory(self : StorageManager) -> JsValue =
  #| (self) => self.getDirectory()

