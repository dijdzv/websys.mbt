// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/background-sync

///|
/// SyncEventInit dictionary
pub(all) struct SyncEventInit {
  tag : String
  lastChance : Bool?
}

///|
/// Create a new SyncEventInit with default values
pub fn SyncEventInit::default() -> SyncEventInit {
  SyncEventInit::{ tag: "", lastChance: None }
}

///|
extern "js" fn SyncEventInit::to_js_ffi(self : SyncEventInit) -> JsValue =
  #| (self) => ({
  #|   tag: self.tag,
  #|   lastChance: (self.lastChance === -1 ? undefined : self.lastChance)
  #| })

///|
/// Convert to JsValue
pub fn SyncEventInit::to_js(self : SyncEventInit) -> JsValue {
  SyncEventInit::to_js_ffi(self)
}

///|
/// SyncManager interface
pub type SyncManager

///|
pub extern "js" fn SyncManager::to_js_value(self : SyncManager) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SyncManager (unchecked)
pub extern "js" fn SyncManager::from_js_value(v : JsValue) -> SyncManager =
  #| (v) => v

///|
/// Safely cast JsValue to SyncManager (checked with instanceof)
pub extern "js" fn SyncManager::from_js_value_opt(v : JsValue) -> SyncManager? =
  #| (v) => (v instanceof SyncManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SyncManager (checked with instanceof)
pub extern "js" fn JsValue::as_sync_manager(self : JsValue) -> SyncManager? =
  #| (self) => (self instanceof SyncManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SyncManager (unchecked)
pub extern "js" fn JsValue::to_sync_manager(self : JsValue) -> SyncManager =
  #| (self) => self

///|
pub extern "js" fn SyncManager::register(
  self : SyncManager,
  tag : String,
) -> Promise[Unit] =
  #| (self, tag) => self.register(tag)

///|
pub extern "js" fn SyncManager::get_tags(
  self : SyncManager,
) -> Promise[Array[String]] =
  #| (self) => self.getTags()

///|
/// SyncEvent interface
pub type SyncEvent

///|
pub extern "js" fn SyncEvent::to_js_value(self : SyncEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SyncEvent (unchecked)
pub extern "js" fn SyncEvent::from_js_value(v : JsValue) -> SyncEvent =
  #| (v) => v

///|
/// Safely cast JsValue to SyncEvent (checked with instanceof)
pub extern "js" fn SyncEvent::from_js_value_opt(v : JsValue) -> SyncEvent? =
  #| (v) => (v instanceof SyncEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SyncEvent (checked with instanceof)
pub extern "js" fn JsValue::as_sync_event(self : JsValue) -> SyncEvent? =
  #| (self) => (self instanceof SyncEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SyncEvent (unchecked)
pub extern "js" fn JsValue::to_sync_event(self : JsValue) -> SyncEvent =
  #| (self) => self

///|
pub extern "js" fn SyncEvent::to_extendable_event(
  self : SyncEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn SyncEvent::to_event(self : SyncEvent) -> Event =
  #| (self) => self

///|
extern "js" fn SyncEvent::new_ffi(type_ : String, init_ : JsValue) -> SyncEvent =
  #| (type_, init_) => new SyncEvent(type_, init_)

///|
pub fn SyncEvent::new(type_ : String, init_ : SyncEventInit) -> SyncEvent {
  SyncEvent::new_ffi(type_, init_.to_js())
}

///|
pub extern "js" fn SyncEvent::get_tag(self : SyncEvent) -> String =
  #| (self) => self.tag

///|
pub extern "js" fn SyncEvent::get_last_chance(self : SyncEvent) -> Bool =
  #| (self) => self.lastChance
