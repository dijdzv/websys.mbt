// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/push-api

///|
/// PushMessageDataInit typedef
pub type PushMessageDataInit = JsValue

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
/// PushEncryptionKeyName enum
pub(all) enum PushEncryptionKeyName {
  P256dh
  Auth
}

///|
/// Convert to string value
pub fn PushEncryptionKeyName::to_string(self : PushEncryptionKeyName) -> String {
  match self {
    P256dh => "p256dh"
    Auth => "auth"
  }
}

///|
/// Parse from string value
pub fn PushEncryptionKeyName::from_string(s : String) -> PushEncryptionKeyName? {
  match s {
    "p256dh" => Some(P256dh)
    "auth" => Some(Auth)
    _ => None
  }
}

///|
/// PushPermissionDescriptor dictionary
pub struct PushPermissionDescriptor {
  userVisibleOnly : Bool?
}

///|
/// Create a new PushPermissionDescriptor with default values
pub fn PushPermissionDescriptor::default() -> PushPermissionDescriptor {
  PushPermissionDescriptor::{ userVisibleOnly: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PushPermissionDescriptor::to_js(
  self : PushPermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   userVisibleOnly: self.userVisibleOnly
  #| })

///|
/// PushSubscriptionOptionsInit dictionary
pub struct PushSubscriptionOptionsInit {
  userVisibleOnly : Bool?
  applicationServerKey : JsValue?
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
/// Convert to JsValue
pub extern "js" fn PushSubscriptionOptionsInit::to_js(
  self : PushSubscriptionOptionsInit,
) -> JsValue =
  #| (self) => ({
  #|   userVisibleOnly: self.userVisibleOnly,
  #|   applicationServerKey: self.applicationServerKey
  #| })

///|
/// PushSubscriptionJSON dictionary
pub struct PushSubscriptionJSON {
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
/// Convert to JsValue
pub extern "js" fn PushSubscriptionJSON::to_js(
  self : PushSubscriptionJSON,
) -> JsValue =
  #| (self) => ({
  #|   endpoint: self.endpoint,
  #|   expirationTime: ((() => { const v = self.expirationTime; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   keys: self.keys
  #| })

///|
/// PushEventInit dictionary
pub struct PushEventInit {
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
/// Convert to JsValue
pub extern "js" fn PushEventInit::to_js(self : PushEventInit) -> JsValue =
  #| (self) => ({
  #|   data: ((() => { const v = self.data; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   notification: ((() => { const v = self.notification; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// PushSubscriptionChangeEventInit dictionary
pub struct PushSubscriptionChangeEventInit {
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
/// Convert to JsValue
pub extern "js" fn PushSubscriptionChangeEventInit::to_js(
  self : PushSubscriptionChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   newSubscription: self.newSubscription,
  #|   oldSubscription: self.oldSubscription
  #| })

///|
/// PushManager interface
pub type PushManager

///|
pub extern "js" fn PushManager::to_js_value(self : PushManager) -> JsValue =
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
pub extern "js" fn PushManager::subscribe_with_options(
  self : PushManager,
  options : PushSubscriptionOptionsInit,
) -> Promise[PushSubscription] =
  #| (self, options) => self.subscribe(options)

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
pub extern "js" fn PushManager::permission_state_with_options(
  self : PushManager,
  options : PushSubscriptionOptionsInit,
) -> Promise[PermissionState] =
  #| (self, options) => self.permissionState(options)

///|
/// PushSubscriptionOptions interface
pub type PushSubscriptionOptions

///|
pub extern "js" fn PushSubscriptionOptions::to_js_value(
  self : PushSubscriptionOptions,
) -> JsValue =
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
  #| (self) => self.applicationServerKey

///|
/// PushSubscription interface
pub type PushSubscription

///|
pub extern "js" fn PushSubscription::to_js_value(
  self : PushSubscription,
) -> JsValue =
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
  #| (self) => self.expirationTime

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
  #| (self, name) => self.getKey(['p256dh', 'auth'][name])

///|
pub extern "js" fn PushSubscription::unsubscribe(
  self : PushSubscription,
) -> Promise[Bool] =
  #| (self) => self.unsubscribe()

///|
pub extern "js" fn PushSubscription::to_j_s_o_n(
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
pub extern "js" fn PushEvent::new(
  type_ : String,
  event_init_dict : PushEventInit,
) -> PushEvent =
  #| (type_, event_init_dict) => new PushEvent(type_, event_init_dict)

///|
pub extern "js" fn PushEvent::get_data(self : PushEvent) -> PushMessageData? =
  #| (self) => self.data

///|
pub extern "js" fn PushEvent::get_notification(
  self : PushEvent,
) -> Notification? =
  #| (self) => self.notification

///|
/// PushSubscriptionChangeEvent interface
pub type PushSubscriptionChangeEvent

///|
pub extern "js" fn PushSubscriptionChangeEvent::to_js_value(
  self : PushSubscriptionChangeEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PushSubscriptionChangeEvent::new(
  type_ : String,
  event_init_dict : PushSubscriptionChangeEventInit,
) -> PushSubscriptionChangeEvent =
  #| (type_, event_init_dict) => new PushSubscriptionChangeEvent(type_, event_init_dict)

///|
pub extern "js" fn PushSubscriptionChangeEvent::get_new_subscription(
  self : PushSubscriptionChangeEvent,
) -> PushSubscription? =
  #| (self) => self.newSubscription

///|
pub extern "js" fn PushSubscriptionChangeEvent::get_old_subscription(
  self : PushSubscriptionChangeEvent,
) -> PushSubscription? =
  #| (self) => self.oldSubscription
