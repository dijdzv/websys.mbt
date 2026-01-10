// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/encrypted-media

///|
/// MediaKeysRequirement enum
pub(all) enum MediaKeysRequirement {
  Required
  Optional
  NotAllowed
}

///|
/// Convert to string value
pub fn MediaKeysRequirement::to_string(self : MediaKeysRequirement) -> String {
  match self {
    MediaKeysRequirement::Required => "required"
    MediaKeysRequirement::Optional => "optional"
    MediaKeysRequirement::NotAllowed => "not-allowed"
  }
}

///|
/// Parse from string value
pub fn MediaKeysRequirement::from_string(s : String) -> MediaKeysRequirement? {
  match s {
    "required" => Some(MediaKeysRequirement::Required)
    "optional" => Some(MediaKeysRequirement::Optional)
    "not-allowed" => Some(MediaKeysRequirement::NotAllowed)
    _ => None
  }
}

///|
/// MediaKeySessionType enum
pub(all) enum MediaKeySessionType {
  Temporary
  PersistentLicense
}

///|
/// Convert to string value
pub fn MediaKeySessionType::to_string(self : MediaKeySessionType) -> String {
  match self {
    MediaKeySessionType::Temporary => "temporary"
    MediaKeySessionType::PersistentLicense => "persistent-license"
  }
}

///|
/// Parse from string value
pub fn MediaKeySessionType::from_string(s : String) -> MediaKeySessionType? {
  match s {
    "temporary" => Some(MediaKeySessionType::Temporary)
    "persistent-license" => Some(MediaKeySessionType::PersistentLicense)
    _ => None
  }
}

///|
/// MediaKeySessionClosedReason enum
pub(all) enum MediaKeySessionClosedReason {
  InternalError
  ClosedByApplication
  ReleaseAcknowledged
  HardwareContextReset
  ResourceEvicted
}

///|
/// Convert to string value
pub fn MediaKeySessionClosedReason::to_string(
  self : MediaKeySessionClosedReason,
) -> String {
  match self {
    MediaKeySessionClosedReason::InternalError => "internal-error"
    MediaKeySessionClosedReason::ClosedByApplication => "closed-by-application"
    MediaKeySessionClosedReason::ReleaseAcknowledged => "release-acknowledged"
    MediaKeySessionClosedReason::HardwareContextReset =>
      "hardware-context-reset"
    MediaKeySessionClosedReason::ResourceEvicted => "resource-evicted"
  }
}

///|
/// Parse from string value
pub fn MediaKeySessionClosedReason::from_string(
  s : String,
) -> MediaKeySessionClosedReason? {
  match s {
    "internal-error" => Some(MediaKeySessionClosedReason::InternalError)
    "closed-by-application" =>
      Some(MediaKeySessionClosedReason::ClosedByApplication)
    "release-acknowledged" =>
      Some(MediaKeySessionClosedReason::ReleaseAcknowledged)
    "hardware-context-reset" =>
      Some(MediaKeySessionClosedReason::HardwareContextReset)
    "resource-evicted" => Some(MediaKeySessionClosedReason::ResourceEvicted)
    _ => None
  }
}

///|
/// MediaKeyStatus enum
pub(all) enum MediaKeyStatus {
  Usable
  Expired
  Released
  OutputRestricted
  OutputDownscaled
  UsableInFuture
  StatusPending
  InternalError
}

///|
/// Convert to string value
pub fn MediaKeyStatus::to_string(self : MediaKeyStatus) -> String {
  match self {
    MediaKeyStatus::Usable => "usable"
    MediaKeyStatus::Expired => "expired"
    MediaKeyStatus::Released => "released"
    MediaKeyStatus::OutputRestricted => "output-restricted"
    MediaKeyStatus::OutputDownscaled => "output-downscaled"
    MediaKeyStatus::UsableInFuture => "usable-in-future"
    MediaKeyStatus::StatusPending => "status-pending"
    MediaKeyStatus::InternalError => "internal-error"
  }
}

///|
/// Parse from string value
pub fn MediaKeyStatus::from_string(s : String) -> MediaKeyStatus? {
  match s {
    "usable" => Some(MediaKeyStatus::Usable)
    "expired" => Some(MediaKeyStatus::Expired)
    "released" => Some(MediaKeyStatus::Released)
    "output-restricted" => Some(MediaKeyStatus::OutputRestricted)
    "output-downscaled" => Some(MediaKeyStatus::OutputDownscaled)
    "usable-in-future" => Some(MediaKeyStatus::UsableInFuture)
    "status-pending" => Some(MediaKeyStatus::StatusPending)
    "internal-error" => Some(MediaKeyStatus::InternalError)
    _ => None
  }
}

///|
/// MediaKeyMessageType enum
pub(all) enum MediaKeyMessageType {
  LicenseRequest
  LicenseRenewal
  LicenseRelease
  IndividualizationRequest
}

///|
/// Convert to string value
pub fn MediaKeyMessageType::to_string(self : MediaKeyMessageType) -> String {
  match self {
    MediaKeyMessageType::LicenseRequest => "license-request"
    MediaKeyMessageType::LicenseRenewal => "license-renewal"
    MediaKeyMessageType::LicenseRelease => "license-release"
    MediaKeyMessageType::IndividualizationRequest => "individualization-request"
  }
}

///|
/// Parse from string value
pub fn MediaKeyMessageType::from_string(s : String) -> MediaKeyMessageType? {
  match s {
    "license-request" => Some(MediaKeyMessageType::LicenseRequest)
    "license-renewal" => Some(MediaKeyMessageType::LicenseRenewal)
    "license-release" => Some(MediaKeyMessageType::LicenseRelease)
    "individualization-request" =>
      Some(MediaKeyMessageType::IndividualizationRequest)
    _ => None
  }
}

///|
/// MediaKeySystemConfiguration dictionary
pub struct MediaKeySystemConfiguration {
  label : String?
  initDataTypes : Array[String]?
  audioCapabilities : Array[MediaKeySystemMediaCapability]?
  videoCapabilities : Array[MediaKeySystemMediaCapability]?
  distinctiveIdentifier : MediaKeysRequirement?
  persistentState : MediaKeysRequirement?
  sessionTypes : Array[String]?
}

///|
/// Create a new MediaKeySystemConfiguration with default values
pub fn MediaKeySystemConfiguration::default() -> MediaKeySystemConfiguration {
  MediaKeySystemConfiguration::{
    label: None,
    initDataTypes: None,
    audioCapabilities: None,
    videoCapabilities: None,
    distinctiveIdentifier: None,
    persistentState: None,
    sessionTypes: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaKeySystemConfiguration::to_js(
  self : MediaKeySystemConfiguration,
) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   initDataTypes: self.initDataTypes,
  #|   audioCapabilities: self.audioCapabilities,
  #|   videoCapabilities: self.videoCapabilities,
  #|   distinctiveIdentifier: ['required', 'optional', 'not-allowed'][self.distinctiveIdentifier],
  #|   persistentState: ['required', 'optional', 'not-allowed'][self.persistentState],
  #|   sessionTypes: self.sessionTypes
  #| })

///|
/// MediaKeySystemMediaCapability dictionary
pub struct MediaKeySystemMediaCapability {
  contentType : String?
  encryptionScheme : Nullable[String]
  robustness : String?
}

///|
/// Create a new MediaKeySystemMediaCapability with default values
pub fn MediaKeySystemMediaCapability::default() -> MediaKeySystemMediaCapability {
  MediaKeySystemMediaCapability::{
    contentType: None,
    encryptionScheme: Nullable::Undefined,
    robustness: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaKeySystemMediaCapability::to_js(
  self : MediaKeySystemMediaCapability,
) -> JsValue =
  #| (self) => ({
  #|   contentType: self.contentType,
  #|   encryptionScheme: ((() => { const v = self.encryptionScheme; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   robustness: self.robustness
  #| })

///|
/// MediaKeysPolicy dictionary
pub struct MediaKeysPolicy {
  minHdcpVersion : String?
}

///|
/// Create a new MediaKeysPolicy with default values
pub fn MediaKeysPolicy::default() -> MediaKeysPolicy {
  MediaKeysPolicy::{ minHdcpVersion: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaKeysPolicy::to_js(self : MediaKeysPolicy) -> JsValue =
  #| (self) => ({
  #|   minHdcpVersion: self.minHdcpVersion
  #| })

///|
/// MediaKeyMessageEventInit dictionary
pub struct MediaKeyMessageEventInit {
  messageType : MediaKeyMessageType
  message : ArrayBuffer
}

///|
/// Create a new MediaKeyMessageEventInit with default values
pub fn MediaKeyMessageEventInit::default() -> MediaKeyMessageEventInit {
  MediaKeyMessageEventInit::{ messageType: panic(), message: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaKeyMessageEventInit::to_js(
  self : MediaKeyMessageEventInit,
) -> JsValue =
  #| (self) => ({
  #|   messageType: ['license-request', 'license-renewal', 'license-release', 'individualization-request'][self.messageType],
  #|   message: self.message
  #| })

///|
/// MediaEncryptedEventInit dictionary
pub struct MediaEncryptedEventInit {
  initDataType : String?
  initData : Nullable[ArrayBuffer]
}

///|
/// Create a new MediaEncryptedEventInit with default values
pub fn MediaEncryptedEventInit::default() -> MediaEncryptedEventInit {
  MediaEncryptedEventInit::{ initDataType: None, initData: Nullable::Undefined }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaEncryptedEventInit::to_js(
  self : MediaEncryptedEventInit,
) -> JsValue =
  #| (self) => ({
  #|   initDataType: self.initDataType,
  #|   initData: ((() => { const v = self.initData; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// MediaKeySystemAccess interface
pub type MediaKeySystemAccess

///|
pub extern "js" fn MediaKeySystemAccess::to_js_value(
  self : MediaKeySystemAccess,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaKeySystemAccess::get_key_system(
  self : MediaKeySystemAccess,
) -> String =
  #| (self) => self.keySystem

///|
pub extern "js" fn MediaKeySystemAccess::get_configuration(
  self : MediaKeySystemAccess,
) -> MediaKeySystemConfiguration =
  #| (self) => self.getConfiguration()

///|
pub extern "js" fn MediaKeySystemAccess::create_media_keys(
  self : MediaKeySystemAccess,
) -> Promise[MediaKeys] =
  #| (self) => self.createMediaKeys()

///|
/// MediaKeys interface
pub type MediaKeys

///|
pub extern "js" fn MediaKeys::to_js_value(self : MediaKeys) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaKeys::create_session(
  self : MediaKeys,
) -> MediaKeySession =
  #| (self) => self.createSession()

///|
pub extern "js" fn MediaKeys::create_session_with_session_type(
  self : MediaKeys,
  session_type : MediaKeySessionType,
) -> MediaKeySession =
  #| (self, session_type) => self.createSession(['temporary', 'persistent-license'][session_type])

///|
pub extern "js" fn MediaKeys::get_status_for_policy(
  self : MediaKeys,
) -> Promise[MediaKeyStatus] =
  #| (self) => self.getStatusForPolicy()

///|
pub extern "js" fn MediaKeys::get_status_for_policy_with_policy(
  self : MediaKeys,
  policy : MediaKeysPolicy,
) -> Promise[MediaKeyStatus] =
  #| (self, policy) => self.getStatusForPolicy(policy)

///|
pub extern "js" fn MediaKeys::set_server_certificate(
  self : MediaKeys,
  server_certificate : BufferSource,
) -> Promise[Bool] =
  #| (self, server_certificate) => self.setServerCertificate(server_certificate)

///|
/// MediaKeySession interface
pub type MediaKeySession

///|
pub extern "js" fn MediaKeySession::to_js_value(
  self : MediaKeySession,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaKeySession::get_session_id(
  self : MediaKeySession,
) -> String =
  #| (self) => self.sessionId

///|
pub extern "js" fn MediaKeySession::get_expiration(
  self : MediaKeySession,
) -> Double =
  #| (self) => self.expiration

///|
pub extern "js" fn MediaKeySession::get_closed(
  self : MediaKeySession,
) -> Promise[MediaKeySessionClosedReason] =
  #| (self) => self.closed

///|
pub extern "js" fn MediaKeySession::get_key_statuses(
  self : MediaKeySession,
) -> MediaKeyStatusMap =
  #| (self) => self.keyStatuses

///|
pub extern "js" fn MediaKeySession::get_onkeystatuseschange(
  self : MediaKeySession,
) -> EventHandler =
  #| (self) => self.onkeystatuseschange

///|
pub extern "js" fn MediaKeySession::set_onkeystatuseschange(
  self : MediaKeySession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onkeystatuseschange = value }

///|
pub extern "js" fn MediaKeySession::get_onmessage(
  self : MediaKeySession,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn MediaKeySession::set_onmessage(
  self : MediaKeySession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn MediaKeySession::generate_request(
  self : MediaKeySession,
  init_data_type : String,
  init_data : BufferSource,
) -> Promise[Unit] =
  #| (self, init_data_type, init_data) => self.generateRequest(init_data_type, init_data)

///|
pub extern "js" fn MediaKeySession::load(
  self : MediaKeySession,
  session_id : String,
) -> Promise[Bool] =
  #| (self, session_id) => self.load(session_id)

///|
pub extern "js" fn MediaKeySession::update(
  self : MediaKeySession,
  response : BufferSource,
) -> Promise[Unit] =
  #| (self, response) => self.update(response)

///|
pub extern "js" fn MediaKeySession::close(
  self : MediaKeySession,
) -> Promise[Unit] =
  #| (self) => self.close()

///|
pub extern "js" fn MediaKeySession::remove(
  self : MediaKeySession,
) -> Promise[Unit] =
  #| (self) => self.remove()

///|
/// MediaKeyStatusMap interface
pub type MediaKeyStatusMap

///|
pub extern "js" fn MediaKeyStatusMap::to_js_value(
  self : MediaKeyStatusMap,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaKeyStatusMap::_unknown_(
  self : MediaKeyStatusMap,
) -> Unit =
  #| (self) => self._unknown_()

///|
pub extern "js" fn MediaKeyStatusMap::get_size(self : MediaKeyStatusMap) -> Int =
  #| (self) => self.size

///|
pub extern "js" fn MediaKeyStatusMap::has(
  self : MediaKeyStatusMap,
  key_id : BufferSource,
) -> Bool =
  #| (self, key_id) => self.has(key_id)

///|
pub extern "js" fn MediaKeyStatusMap::get(
  self : MediaKeyStatusMap,
  key_id : BufferSource,
) -> MediaKeyStatusOrVoid =
  #| (self, key_id) => self.get(key_id)

///|
/// MediaKeyMessageEvent interface
pub type MediaKeyMessageEvent

///|
pub extern "js" fn MediaKeyMessageEvent::to_js_value(
  self : MediaKeyMessageEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaKeyMessageEvent::new(
  type_ : String,
  event_init_dict : MediaKeyMessageEventInit,
) -> MediaKeyMessageEvent =
  #| (type_, event_init_dict) => new MediaKeyMessageEvent(type_, event_init_dict)

///|
pub extern "js" fn MediaKeyMessageEvent::get_message_type(
  self : MediaKeyMessageEvent,
) -> MediaKeyMessageType =
  #| (self) => self.messageType

///|
pub extern "js" fn MediaKeyMessageEvent::get_message(
  self : MediaKeyMessageEvent,
) -> ArrayBuffer =
  #| (self) => self.message

///|
/// MediaEncryptedEvent interface
pub type MediaEncryptedEvent

///|
pub extern "js" fn MediaEncryptedEvent::to_js_value(
  self : MediaEncryptedEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaEncryptedEvent::new(
  type_ : String,
  event_init_dict : MediaEncryptedEventInit,
) -> MediaEncryptedEvent =
  #| (type_, event_init_dict) => new MediaEncryptedEvent(type_, event_init_dict)

///|
pub extern "js" fn MediaEncryptedEvent::get_init_data_type(
  self : MediaEncryptedEvent,
) -> String =
  #| (self) => self.initDataType

///|
pub extern "js" fn MediaEncryptedEvent::get_init_data(
  self : MediaEncryptedEvent,
) -> ArrayBuffer? =
  #| (self) => self.initData
