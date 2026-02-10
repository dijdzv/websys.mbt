// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/push-api

///|
/// PushMessageDataInit typedef
pub type PushMessageDataInit

///|
pub extern "js" fn PushMessageDataInit::to_js_value(
  self : PushMessageDataInit,
) -> JsValue =
  #| (self) => self

///|
/// Create PushMessageDataInit from BufferSource
pub extern "js" fn PushMessageDataInit::from_buffer_source(
  v : BufferSource,
) -> PushMessageDataInit =
  #| (v) => v

///|
/// Create PushMessageDataInit from String
pub extern "js" fn PushMessageDataInit::from_string(
  v : String,
) -> PushMessageDataInit =
  #| (v) => v

///|
/// Check if this PushMessageDataInit is BufferSource
pub extern "js" fn PushMessageDataInit::is_buffer_source(
  self : PushMessageDataInit,
) -> Bool =
  #| (self) => self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView || self instanceof ArrayBuffer

///|
/// Check if this PushMessageDataInit is String
pub extern "js" fn PushMessageDataInit::is_string(
  self : PushMessageDataInit,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Try to get PushMessageDataInit as BufferSource
pub extern "js" fn PushMessageDataInit::as_buffer_source(
  self : PushMessageDataInit,
) -> BufferSource? =
  #| (self) => (self instanceof Int8Array || self instanceof Int16Array || self instanceof Int32Array || self instanceof Uint8Array || self instanceof Uint16Array || self instanceof Uint32Array || self instanceof Uint8ClampedArray || self instanceof BigInt64Array || self instanceof BigUint64Array || self instanceof Float16Array || self instanceof Float32Array || self instanceof Float64Array || self instanceof DataView || self instanceof ArrayBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get PushMessageDataInit as String
pub extern "js" fn PushMessageDataInit::as_string(
  self : PushMessageDataInit,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Flatten Option[PushMessageDataInit] to BufferSource?
pub fn PushMessageDataInit::bind_as_buffer_source(
  value : PushMessageDataInit?,
) -> BufferSource? {
  match value {
    Some(v) => v.as_buffer_source()
    None => None
  }
}

///|
/// Flatten Option[PushMessageDataInit] to String?
pub fn PushMessageDataInit::bind_as_string(
  value : PushMessageDataInit?,
) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// PushEncryptionKeyName enum
pub(all) enum PushEncryptionKeyName {
  P256dh
  Auth
} derive(Eq, Show)

///|
/// Convert to string value
pub fn PushEncryptionKeyName::to_string(self : PushEncryptionKeyName) -> String {
  match self {
    PushEncryptionKeyName::P256dh => "p256dh"
    PushEncryptionKeyName::Auth => "auth"
  }
}

///|
/// Parse from string value
pub fn PushEncryptionKeyName::from_string(s : String) -> PushEncryptionKeyName? {
  match s {
    "p256dh" => Some(PushEncryptionKeyName::P256dh)
    "auth" => Some(PushEncryptionKeyName::Auth)
    _ => None
  }
}

///|
/// PushPermissionDescriptor dictionary
pub(all) struct PushPermissionDescriptor {
  userVisibleOnly : Bool?
}

///|
/// Create a new PushPermissionDescriptor with default values
pub fn PushPermissionDescriptor::default() -> PushPermissionDescriptor {
  PushPermissionDescriptor::{ userVisibleOnly: None }
}

///|
extern "js" fn PushPermissionDescriptor::to_js_ffi(
  self : PushPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   userVisibleOnly: (self.userVisibleOnly === -1 ? undefined : self.userVisibleOnly)
  #| })

///|
/// Convert to JsValue
pub fn PushPermissionDescriptor::to_js(
  self : PushPermissionDescriptor,
) -> JsValue {
  PushPermissionDescriptor::to_js_ffi(self)
}

///|
extern "js" fn PushPermissionDescriptor::from_js_ffi(
  value : JsValue,
) -> PushPermissionDescriptor =
  #| (v) => ({
  #|   userVisibleOnly: (v.userVisibleOnly === undefined ? -1 : v.userVisibleOnly)
  #| })

///|
/// Convert from JsValue
pub fn PushPermissionDescriptor::from_js(
  value : JsValue,
) -> PushPermissionDescriptor {
  PushPermissionDescriptor::from_js_ffi(value)
}

///|
/// PushSubscriptionOptionsInit dictionary
pub(all) struct PushSubscriptionOptionsInit {
  userVisibleOnly : Bool?
  applicationServerKey : BufferSourceOrString?
}

///|
/// Create a new PushSubscriptionOptionsInit with default values
pub fn PushSubscriptionOptionsInit::default() -> PushSubscriptionOptionsInit {
  PushSubscriptionOptionsInit::{
    userVisibleOnly: None,
    applicationServerKey: None,
  }
}

///|
extern "js" fn PushSubscriptionOptionsInit::to_js_ffi(
  self : PushSubscriptionOptionsInit,
) -> JsValue =
  #| (self) => ({
  #|   userVisibleOnly: (self.userVisibleOnly === -1 ? undefined : self.userVisibleOnly),
  #|   applicationServerKey: ((() => { const v = self.applicationServerKey; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PushSubscriptionOptionsInit::to_js(
  self : PushSubscriptionOptionsInit,
) -> JsValue {
  PushSubscriptionOptionsInit::to_js_ffi(self)
}

///|
extern "js" fn PushSubscriptionOptionsInit::from_js_ffi(
  value : JsValue,
) -> PushSubscriptionOptionsInit =
  #| (v) => ({
  #|   userVisibleOnly: (v.userVisibleOnly === undefined ? -1 : v.userVisibleOnly),
  #|   applicationServerKey: (v.applicationServerKey === undefined ? { $tag: 0 } : { $tag: 1, _0: v.applicationServerKey })
  #| })

///|
/// Convert from JsValue
pub fn PushSubscriptionOptionsInit::from_js(
  value : JsValue,
) -> PushSubscriptionOptionsInit {
  PushSubscriptionOptionsInit::from_js_ffi(value)
}

///|
/// PushSubscriptionJSON dictionary
pub(all) struct PushSubscriptionJSON {
  endpoint : String?
  expirationTime : Nullable[EpochTimeStamp]
  keys : JsValue?
}

///|
/// Create a new PushSubscriptionJSON with default values
pub fn PushSubscriptionJSON::default() -> PushSubscriptionJSON {
  PushSubscriptionJSON::{
    endpoint: None,
    expirationTime: Nullable::Undefined,
    keys: None,
  }
}

///|
extern "js" fn PushSubscriptionJSON::to_js_ffi(
  self : PushSubscriptionJSON,
) -> JsValue =
  #| (self) => ({
  #|   endpoint: self.endpoint,
  #|   expirationTime: ((() => { const v = self.expirationTime; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   keys: ((() => { const v = self.keys; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PushSubscriptionJSON::to_js(self : PushSubscriptionJSON) -> JsValue {
  PushSubscriptionJSON::to_js_ffi(self)
}

///|
extern "js" fn PushSubscriptionJSON::from_js_ffi(
  value : JsValue,
) -> PushSubscriptionJSON =
  #| (v) => ({
  #|   endpoint: v.endpoint,
  #|   expirationTime: (v.expirationTime === undefined ? { $tag: 0 } : v.expirationTime === null ? { $tag: 1 } : { $tag: 2, _0: v.expirationTime }),
  #|   keys: (v.keys === undefined ? { $tag: 0 } : { $tag: 1, _0: v.keys })
  #| })

///|
/// Convert from JsValue
pub fn PushSubscriptionJSON::from_js(value : JsValue) -> PushSubscriptionJSON {
  PushSubscriptionJSON::from_js_ffi(value)
}

///|
/// PushEventInit dictionary
pub(all) struct PushEventInit {
  data : Nullable[PushMessageDataInit]
  notification : Nullable[Notification]
}

///|
/// Create a new PushEventInit with default values
pub fn PushEventInit::default() -> PushEventInit {
  PushEventInit::{
    data: Nullable::Undefined,
    notification: Nullable::Undefined,
  }
}

///|
extern "js" fn PushEventInit::to_js_ffi(self : PushEventInit) -> JsValue =
  #| (self) => ({
  #|   data: ((() => { const v = self.data; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0.to_js_value(); })()),
  #|   notification: ((() => { const v = self.notification; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PushEventInit::to_js(self : PushEventInit) -> JsValue {
  PushEventInit::to_js_ffi(self)
}

///|
extern "js" fn PushEventInit::from_js_ffi(value : JsValue) -> PushEventInit =
  #| (v) => ({
  #|   data: (v.data === undefined ? { $tag: 0 } : v.data === null ? { $tag: 1 } : { $tag: 2, _0: v.data }),
  #|   notification: (v.notification === undefined ? { $tag: 0 } : v.notification === null ? { $tag: 1 } : { $tag: 2, _0: v.notification })
  #| })

///|
/// Convert from JsValue
pub fn PushEventInit::from_js(value : JsValue) -> PushEventInit {
  PushEventInit::from_js_ffi(value)
}

///|
/// PushSubscriptionChangeEventInit dictionary
pub(all) struct PushSubscriptionChangeEventInit {
  newSubscription : PushSubscription?
  oldSubscription : PushSubscription?
}

///|
/// Create a new PushSubscriptionChangeEventInit with default values
pub fn PushSubscriptionChangeEventInit::default() -> PushSubscriptionChangeEventInit {
  PushSubscriptionChangeEventInit::{
    newSubscription: None,
    oldSubscription: None,
  }
}

///|
extern "js" fn PushSubscriptionChangeEventInit::to_js_ffi(
  self : PushSubscriptionChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   newSubscription: ((() => { const v = self.newSubscription; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   oldSubscription: ((() => { const v = self.oldSubscription; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PushSubscriptionChangeEventInit::to_js(
  self : PushSubscriptionChangeEventInit,
) -> JsValue {
  PushSubscriptionChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn PushSubscriptionChangeEventInit::from_js_ffi(
  value : JsValue,
) -> PushSubscriptionChangeEventInit =
  #| (v) => ({
  #|   newSubscription: (v.newSubscription === undefined ? { $tag: 0 } : { $tag: 1, _0: v.newSubscription }),
  #|   oldSubscription: (v.oldSubscription === undefined ? { $tag: 0 } : { $tag: 1, _0: v.oldSubscription })
  #| })

///|
/// Convert from JsValue
pub fn PushSubscriptionChangeEventInit::from_js(
  value : JsValue,
) -> PushSubscriptionChangeEventInit {
  PushSubscriptionChangeEventInit::from_js_ffi(value)
}

///|
/// PushManager interface
pub type PushManager

///|
pub extern "js" fn PushManager::to_js_value(self : PushManager) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PushManager (unchecked)
pub extern "js" fn PushManager::from_js_value(v : JsValue) -> PushManager =
  #| (v) => v

///|
/// Safely cast JsValue to PushManager (checked with instanceof)
pub extern "js" fn PushManager::from_js_value_opt(v : JsValue) -> PushManager? =
  #| (v) => (v instanceof PushManager) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PushManager (checked with instanceof)
pub extern "js" fn JsValue::as_push_manager(self : JsValue) -> PushManager? =
  #| (self) => (self instanceof PushManager) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PushManager (unchecked)
pub extern "js" fn JsValue::to_push_manager(self : JsValue) -> PushManager =
  #| (self) => self

///|
pub extern "js" fn PushManager::get_supported_content_encodings(
  self : PushManager,
) -> JsValue =
  #| (self) => self.supportedContentEncodings

///|
pub extern "js" fn PushManager::subscribe(
  self : PushManager,
) -> Promise[PushSubscription] =
  #| (self) => self.subscribe()

///|
extern "js" fn PushManager::subscribe_with_options_ffi(
  self : PushManager,
  options : JsValue,
) -> Promise[PushSubscription] =
  #| (self, options) => self.subscribe(options)

///|
pub fn PushManager::subscribe_with_options(
  self : PushManager,
  options : PushSubscriptionOptionsInit,
) -> Promise[PushSubscription] {
  PushManager::subscribe_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn PushManager::get_subscription(
  self : PushManager,
) -> Promise[PushSubscription?] =
  #| (self) => self.getSubscription()

///|
pub extern "js" fn PushManager::permission_state(
  self : PushManager,
) -> Promise[PermissionState] =
  #| (self) => self.permissionState()

///|
extern "js" fn PushManager::permission_state_with_options_ffi(
  self : PushManager,
  options : JsValue,
) -> Promise[PermissionState] =
  #| (self, options) => self.permissionState(options)

///|
pub fn PushManager::permission_state_with_options(
  self : PushManager,
  options : PushSubscriptionOptionsInit,
) -> Promise[PermissionState] {
  PushManager::permission_state_with_options_ffi(self, options.to_js())
}

///|
/// PushSubscriptionOptions interface
pub type PushSubscriptionOptions

///|
pub extern "js" fn PushSubscriptionOptions::to_js_value(
  self : PushSubscriptionOptions,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PushSubscriptionOptions (unchecked)
pub extern "js" fn PushSubscriptionOptions::from_js_value(
  v : JsValue,
) -> PushSubscriptionOptions =
  #| (v) => v

///|
/// Safely cast JsValue to PushSubscriptionOptions (checked with instanceof)
pub extern "js" fn PushSubscriptionOptions::from_js_value_opt(
  v : JsValue,
) -> PushSubscriptionOptions? =
  #| (v) => (v instanceof PushSubscriptionOptions) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PushSubscriptionOptions (checked with instanceof)
pub extern "js" fn JsValue::as_push_subscription_options(
  self : JsValue,
) -> PushSubscriptionOptions? =
  #| (self) => (self instanceof PushSubscriptionOptions) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PushSubscriptionOptions (unchecked)
pub extern "js" fn JsValue::to_push_subscription_options(
  self : JsValue,
) -> PushSubscriptionOptions =
  #| (self) => self

///|
pub extern "js" fn PushSubscriptionOptions::get_user_visible_only(
  self : PushSubscriptionOptions,
) -> Bool =
  #| (self) => self.userVisibleOnly

///|
pub extern "js" fn PushSubscriptionOptions::get_application_server_key(
  self : PushSubscriptionOptions,
) -> ArrayBuffer? =
  #| (self) => (() => { const v = self.applicationServerKey; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// PushSubscription interface
pub type PushSubscription

///|
pub extern "js" fn PushSubscription::to_js_value(
  self : PushSubscription,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PushSubscription (unchecked)
pub extern "js" fn PushSubscription::from_js_value(
  v : JsValue,
) -> PushSubscription =
  #| (v) => v

///|
/// Safely cast JsValue to PushSubscription (checked with instanceof)
pub extern "js" fn PushSubscription::from_js_value_opt(
  v : JsValue,
) -> PushSubscription? =
  #| (v) => (v instanceof PushSubscription) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PushSubscription (checked with instanceof)
pub extern "js" fn JsValue::as_push_subscription(
  self : JsValue,
) -> PushSubscription? =
  #| (self) => (self instanceof PushSubscription) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PushSubscription (unchecked)
pub extern "js" fn JsValue::to_push_subscription(
  self : JsValue,
) -> PushSubscription =
  #| (self) => self

///|
pub extern "js" fn PushSubscription::get_endpoint(
  self : PushSubscription,
) -> String =
  #| (self) => self.endpoint

///|
pub extern "js" fn PushSubscription::get_expiration_time(
  self : PushSubscription,
) -> EpochTimeStamp? =
  #| (self) => (() => { const v = self.expirationTime; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PushSubscription::get_options(
  self : PushSubscription,
) -> PushSubscriptionOptions =
  #| (self) => self.options

///|
pub extern "js" fn PushSubscription::get_key(
  self : PushSubscription,
  name : PushEncryptionKeyName,
) -> ArrayBuffer? =
  #| (self, name) => (() => { const v = self.getKey(['p256dh', 'auth'][name]); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PushSubscription::unsubscribe(
  self : PushSubscription,
) -> Promise[Bool] =
  #| (self) => self.unsubscribe()

///|
pub extern "js" fn PushSubscription::to_json(
  self : PushSubscription,
) -> PushSubscriptionJSON =
  #| (self) => self.toJSON()

///|
/// PushMessageData interface
pub type PushMessageData

///|
pub extern "js" fn PushMessageData::to_js_value(
  self : PushMessageData,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PushMessageData (unchecked)
pub extern "js" fn PushMessageData::from_js_value(
  v : JsValue,
) -> PushMessageData =
  #| (v) => v

///|
/// Safely cast JsValue to PushMessageData (checked with instanceof)
pub extern "js" fn PushMessageData::from_js_value_opt(
  v : JsValue,
) -> PushMessageData? =
  #| (v) => (v instanceof PushMessageData) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PushMessageData (checked with instanceof)
pub extern "js" fn JsValue::as_push_message_data(
  self : JsValue,
) -> PushMessageData? =
  #| (self) => (self instanceof PushMessageData) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PushMessageData (unchecked)
pub extern "js" fn JsValue::to_push_message_data(
  self : JsValue,
) -> PushMessageData =
  #| (self) => self

///|
pub extern "js" fn PushMessageData::array_buffer(
  self : PushMessageData,
) -> ArrayBuffer =
  #| (self) => self.arrayBuffer()

///|
pub extern "js" fn PushMessageData::blob(self : PushMessageData) -> Blob =
  #| (self) => self.blob()

///|
pub extern "js" fn PushMessageData::bytes(self : PushMessageData) -> Uint8Array =
  #| (self) => self.bytes()

///|
pub extern "js" fn PushMessageData::json(self : PushMessageData) -> JsValue =
  #| (self) => self.json()

///|
pub extern "js" fn PushMessageData::text(self : PushMessageData) -> String =
  #| (self) => self.text()

///|
/// PushEvent interface
pub type PushEvent

///|
pub extern "js" fn PushEvent::to_js_value(self : PushEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PushEvent (unchecked)
pub extern "js" fn PushEvent::from_js_value(v : JsValue) -> PushEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PushEvent (checked with instanceof)
pub extern "js" fn PushEvent::from_js_value_opt(v : JsValue) -> PushEvent? =
  #| (v) => (v instanceof PushEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PushEvent (checked with instanceof)
pub extern "js" fn JsValue::as_push_event(self : JsValue) -> PushEvent? =
  #| (self) => (self instanceof PushEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PushEvent (unchecked)
pub extern "js" fn JsValue::to_push_event(self : JsValue) -> PushEvent =
  #| (self) => self

///|
pub extern "js" fn PushEvent::to_extendable_event(
  self : PushEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn PushEvent::to_event(self : PushEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn PushEvent::new(type_ : String) -> PushEvent =
  #| (type_) => new PushEvent(type_)

///|
extern "js" fn PushEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PushEvent =
  #| (type_, event_init_dict) => new PushEvent(type_, event_init_dict)

///|
pub fn PushEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : PushEventInit,
) -> PushEvent {
  PushEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn PushEvent::get_data(self : PushEvent) -> PushMessageData? =
  #| (self) => (() => { const v = self.data; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PushEvent::get_notification(
  self : PushEvent,
) -> Notification? =
  #| (self) => (() => { const v = self.notification; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// PushSubscriptionChangeEvent interface
pub type PushSubscriptionChangeEvent

///|
pub extern "js" fn PushSubscriptionChangeEvent::to_js_value(
  self : PushSubscriptionChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PushSubscriptionChangeEvent (unchecked)
pub extern "js" fn PushSubscriptionChangeEvent::from_js_value(
  v : JsValue,
) -> PushSubscriptionChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PushSubscriptionChangeEvent (checked with instanceof)
pub extern "js" fn PushSubscriptionChangeEvent::from_js_value_opt(
  v : JsValue,
) -> PushSubscriptionChangeEvent? =
  #| (v) => (v instanceof PushSubscriptionChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PushSubscriptionChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_push_subscription_change_event(
  self : JsValue,
) -> PushSubscriptionChangeEvent? =
  #| (self) => (self instanceof PushSubscriptionChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PushSubscriptionChangeEvent (unchecked)
pub extern "js" fn JsValue::to_push_subscription_change_event(
  self : JsValue,
) -> PushSubscriptionChangeEvent =
  #| (self) => self

///|
pub extern "js" fn PushSubscriptionChangeEvent::to_extendable_event(
  self : PushSubscriptionChangeEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn PushSubscriptionChangeEvent::to_event(
  self : PushSubscriptionChangeEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn PushSubscriptionChangeEvent::new(
  type_ : String,
) -> PushSubscriptionChangeEvent =
  #| (type_) => new PushSubscriptionChangeEvent(type_)

///|
extern "js" fn PushSubscriptionChangeEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PushSubscriptionChangeEvent =
  #| (type_, event_init_dict) => new PushSubscriptionChangeEvent(type_, event_init_dict)

///|
pub fn PushSubscriptionChangeEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : PushSubscriptionChangeEventInit,
) -> PushSubscriptionChangeEvent {
  PushSubscriptionChangeEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn PushSubscriptionChangeEvent::get_new_subscription(
  self : PushSubscriptionChangeEvent,
) -> PushSubscription? =
  #| (self) => (() => { const v = self.newSubscription; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn PushSubscriptionChangeEvent::get_old_subscription(
  self : PushSubscriptionChangeEvent,
) -> PushSubscription? =
  #| (self) => (() => { const v = self.oldSubscription; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
