// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/background-sync

///|
/// SyncEventInit dictionary
pub struct SyncEventInit {
  tag : String
  lastChance : Bool?
}

/// Create a new SyncEventInit with default values
pub fn SyncEventInit::default() -> SyncEventInit {
  SyncEventInit::{
    tag: "",
    lastChance: None,
  }
}

/// Convert to JsValue
pub extern "js" fn SyncEventInit::to_js(self : SyncEventInit) -> JsValue =
  #| (self) => ({
  #|   tag: self.tag,
  #|   lastChance: self.lastChance
  #| })

///|
/// SyncManager interface
pub type SyncManager

pub extern "js" fn SyncManager::to_js_value(self : SyncManager) -> JsValue =
  #| (self) => self

pub extern "js" fn SyncManager::register(self : SyncManager, tag : String) -> Promise[Unit] =
  #| (self, tag) => self.register(tag)

pub extern "js" fn SyncManager::get_tags(self : SyncManager) -> Promise[Array[String]] =
  #| (self) => self.getTags()

///|
/// SyncEvent interface
pub type SyncEvent

pub extern "js" fn SyncEvent::to_js_value(self : SyncEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn SyncEvent::new(type_ : String, init_ : SyncEventInit) -> SyncEvent =
  #| (type_, init_) => new SyncEvent(type_, init_)

pub extern "js" fn SyncEvent::get_tag(self : SyncEvent) -> String =
  #| (self) => self.tag

pub extern "js" fn SyncEvent::get_last_chance(self : SyncEvent) -> Bool =
  #| (self) => self.lastChance

