// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/periodic-background-sync

///|
/// BackgroundSyncOptions dictionary
pub struct BackgroundSyncOptions {
  minInterval : Int64?
}

/// Create a new BackgroundSyncOptions with default values
pub fn BackgroundSyncOptions::default() -> BackgroundSyncOptions {
  BackgroundSyncOptions::{
    minInterval: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BackgroundSyncOptions::to_js(self : BackgroundSyncOptions) -> JsValue =
  #| (self) => ({
  #|   minInterval: self.minInterval
  #| })

///|
/// PeriodicSyncEventInit dictionary
pub struct PeriodicSyncEventInit {
  tag : String
}

/// Create a new PeriodicSyncEventInit with default values
pub fn PeriodicSyncEventInit::default() -> PeriodicSyncEventInit {
  PeriodicSyncEventInit::{
    tag: "",
  }
}

/// Convert to JsValue
pub extern "js" fn PeriodicSyncEventInit::to_js(self : PeriodicSyncEventInit) -> JsValue =
  #| (self) => ({
  #|   tag: self.tag
  #| })

///|
/// PeriodicSyncManager interface
pub type PeriodicSyncManager

pub extern "js" fn PeriodicSyncManager::to_js_value(self : PeriodicSyncManager) -> JsValue =
  #| (self) => self

pub extern "js" fn PeriodicSyncManager::register(self : PeriodicSyncManager, tag : String, options : BackgroundSyncOptions) -> JsValue =
  #| (self, tag, options) => self.register(tag, options)

pub extern "js" fn PeriodicSyncManager::get_tags(self : PeriodicSyncManager) -> JsValue =
  #| (self) => self.getTags()

pub extern "js" fn PeriodicSyncManager::unregister(self : PeriodicSyncManager, tag : String) -> JsValue =
  #| (self, tag) => self.unregister(tag)

///|
/// PeriodicSyncEvent interface
pub type PeriodicSyncEvent

pub extern "js" fn PeriodicSyncEvent::to_js_value(self : PeriodicSyncEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn PeriodicSyncEvent::new(type_ : String, init_ : PeriodicSyncEventInit) -> PeriodicSyncEvent =
  #| (type_, init_) => new PeriodicSyncEvent(type_, init_)

pub extern "js" fn PeriodicSyncEvent::get_tag(self : PeriodicSyncEvent) -> String =
  #| (self) => self.tag

