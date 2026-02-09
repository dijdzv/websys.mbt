// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/periodic-background-sync

///|
/// BackgroundSyncOptions dictionary
pub(all) struct BackgroundSyncOptions {
  minInterval : Int64?
}

///|
/// Create a new BackgroundSyncOptions with default values
pub fn BackgroundSyncOptions::default() -> BackgroundSyncOptions {
  BackgroundSyncOptions::{ minInterval: None }
}

///|
extern "js" fn BackgroundSyncOptions::to_js_ffi(
  self : BackgroundSyncOptions,
) -> JsValue =
  #| (self) => ({
  #|   minInterval: self.minInterval
  #| })

///|
/// Convert to JsValue
pub fn BackgroundSyncOptions::to_js(self : BackgroundSyncOptions) -> JsValue {
  BackgroundSyncOptions::to_js_ffi(self)
}

///|
/// PeriodicSyncEventInit dictionary
pub(all) struct PeriodicSyncEventInit {
  tag : String
}

///|
/// Create a new PeriodicSyncEventInit with default values
pub fn PeriodicSyncEventInit::default() -> PeriodicSyncEventInit {
  PeriodicSyncEventInit::{ tag: "" }
}

///|
extern "js" fn PeriodicSyncEventInit::to_js_ffi(
  self : PeriodicSyncEventInit,
) -> JsValue =
  #| (self) => ({
  #|   tag: self.tag
  #| })

///|
/// Convert to JsValue
pub fn PeriodicSyncEventInit::to_js(self : PeriodicSyncEventInit) -> JsValue {
  PeriodicSyncEventInit::to_js_ffi(self)
}

///|
/// PeriodicSyncManager interface
pub type PeriodicSyncManager

///|
pub extern "js" fn PeriodicSyncManager::to_js_value(
  self : PeriodicSyncManager,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PeriodicSyncManager (unchecked)
pub extern "js" fn PeriodicSyncManager::from_js_value(
  v : JsValue,
) -> PeriodicSyncManager =
  #| (v) => v

///|
/// Safely cast JsValue to PeriodicSyncManager (checked with instanceof)
pub extern "js" fn PeriodicSyncManager::from_js_value_opt(
  v : JsValue,
) -> PeriodicSyncManager? =
  #| (v) => (v instanceof PeriodicSyncManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PeriodicSyncManager (checked with instanceof)
pub extern "js" fn JsValue::as_periodic_sync_manager(
  self : JsValue,
) -> PeriodicSyncManager? =
  #| (self) => (self instanceof PeriodicSyncManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PeriodicSyncManager (unchecked)
pub extern "js" fn JsValue::to_periodic_sync_manager(
  self : JsValue,
) -> PeriodicSyncManager =
  #| (self) => self

///|
pub extern "js" fn PeriodicSyncManager::register(
  self : PeriodicSyncManager,
  tag : String,
) -> Promise[Unit] =
  #| (self, tag) => self.register(tag)

///|
extern "js" fn PeriodicSyncManager::register_with_options_ffi(
  self : PeriodicSyncManager,
  tag : String,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, tag, options) => self.register(tag, options)

///|
pub fn PeriodicSyncManager::register_with_options(
  self : PeriodicSyncManager,
  tag : String,
  options : BackgroundSyncOptions,
) -> Promise[Unit] {
  PeriodicSyncManager::register_with_options_ffi(self, tag, options.to_js())
}

///|
pub extern "js" fn PeriodicSyncManager::get_tags(
  self : PeriodicSyncManager,
) -> Promise[Array[String]] =
  #| (self) => self.getTags()

///|
pub extern "js" fn PeriodicSyncManager::unregister(
  self : PeriodicSyncManager,
  tag : String,
) -> Promise[Unit] =
  #| (self, tag) => self.unregister(tag)

///|
/// PeriodicSyncEvent interface
pub type PeriodicSyncEvent

///|
pub extern "js" fn PeriodicSyncEvent::to_js_value(
  self : PeriodicSyncEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PeriodicSyncEvent (unchecked)
pub extern "js" fn PeriodicSyncEvent::from_js_value(
  v : JsValue,
) -> PeriodicSyncEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PeriodicSyncEvent (checked with instanceof)
pub extern "js" fn PeriodicSyncEvent::from_js_value_opt(
  v : JsValue,
) -> PeriodicSyncEvent? =
  #| (v) => (v instanceof PeriodicSyncEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PeriodicSyncEvent (checked with instanceof)
pub extern "js" fn JsValue::as_periodic_sync_event(
  self : JsValue,
) -> PeriodicSyncEvent? =
  #| (self) => (self instanceof PeriodicSyncEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PeriodicSyncEvent (unchecked)
pub extern "js" fn JsValue::to_periodic_sync_event(
  self : JsValue,
) -> PeriodicSyncEvent =
  #| (self) => self

///|
pub extern "js" fn PeriodicSyncEvent::to_extendable_event(
  self : PeriodicSyncEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn PeriodicSyncEvent::to_event(
  self : PeriodicSyncEvent,
) -> Event =
  #| (self) => self

///|
extern "js" fn PeriodicSyncEvent::new_ffi(
  type_ : String,
  init_ : JsValue,
) -> PeriodicSyncEvent =
  #| (type_, init_) => new PeriodicSyncEvent(type_, init_)

///|
pub fn PeriodicSyncEvent::new(
  type_ : String,
  init_ : PeriodicSyncEventInit,
) -> PeriodicSyncEvent {
  PeriodicSyncEvent::new_ffi(type_, init_.to_js())
}

///|
pub extern "js" fn PeriodicSyncEvent::get_tag(
  self : PeriodicSyncEvent,
) -> String =
  #| (self) => self.tag
