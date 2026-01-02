// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/encrypted-media

///|
/// MediaKeysRequirement enum
pub(all) enum MediaKeysRequirement {
  Required
  Optional
  NotAllowed
}

/// Convert to string value
pub fn MediaKeysRequirement::to_string(self : MediaKeysRequirement) -> String {
  match self {
    Required => "required"
    Optional => "optional"
    NotAllowed => "not-allowed"
  }
}

/// Parse from string value
pub fn MediaKeysRequirement::from_string(s : String) -> MediaKeysRequirement? {
  match s {
    "required" => Some(Required)
    "optional" => Some(Optional)
    "not-allowed" => Some(NotAllowed)
    _ => None
  }
}

///|
/// MediaKeySessionType enum
pub(all) enum MediaKeySessionType {
  Temporary
  PersistentLicense
}

/// Convert to string value
pub fn MediaKeySessionType::to_string(self : MediaKeySessionType) -> String {
  match self {
    Temporary => "temporary"
    PersistentLicense => "persistent-license"
  }
}

/// Parse from string value
pub fn MediaKeySessionType::from_string(s : String) -> MediaKeySessionType? {
  match s {
    "temporary" => Some(Temporary)
    "persistent-license" => Some(PersistentLicense)
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

/// Convert to string value
pub fn MediaKeySessionClosedReason::to_string(self : MediaKeySessionClosedReason) -> String {
  match self {
    InternalError => "internal-error"
    ClosedByApplication => "closed-by-application"
    ReleaseAcknowledged => "release-acknowledged"
    HardwareContextReset => "hardware-context-reset"
    ResourceEvicted => "resource-evicted"
  }
}

/// Parse from string value
pub fn MediaKeySessionClosedReason::from_string(s : String) -> MediaKeySessionClosedReason? {
  match s {
    "internal-error" => Some(InternalError)
    "closed-by-application" => Some(ClosedByApplication)
    "release-acknowledged" => Some(ReleaseAcknowledged)
    "hardware-context-reset" => Some(HardwareContextReset)
    "resource-evicted" => Some(ResourceEvicted)
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

/// Convert to string value
pub fn MediaKeyStatus::to_string(self : MediaKeyStatus) -> String {
  match self {
    Usable => "usable"
    Expired => "expired"
    Released => "released"
    OutputRestricted => "output-restricted"
    OutputDownscaled => "output-downscaled"
    UsableInFuture => "usable-in-future"
    StatusPending => "status-pending"
    InternalError => "internal-error"
  }
}

/// Parse from string value
pub fn MediaKeyStatus::from_string(s : String) -> MediaKeyStatus? {
  match s {
    "usable" => Some(Usable)
    "expired" => Some(Expired)
    "released" => Some(Released)
    "output-restricted" => Some(OutputRestricted)
    "output-downscaled" => Some(OutputDownscaled)
    "usable-in-future" => Some(UsableInFuture)
    "status-pending" => Some(StatusPending)
    "internal-error" => Some(InternalError)
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

/// Convert to string value
pub fn MediaKeyMessageType::to_string(self : MediaKeyMessageType) -> String {
  match self {
    LicenseRequest => "license-request"
    LicenseRenewal => "license-renewal"
    LicenseRelease => "license-release"
    IndividualizationRequest => "individualization-request"
  }
}

/// Parse from string value
pub fn MediaKeyMessageType::from_string(s : String) -> MediaKeyMessageType? {
  match s {
    "license-request" => Some(LicenseRequest)
    "license-renewal" => Some(LicenseRenewal)
    "license-release" => Some(LicenseRelease)
    "individualization-request" => Some(IndividualizationRequest)
    _ => None
  }
}

///|
/// MediaKeySystemConfiguration dictionary
pub struct MediaKeySystemConfiguration {
  label : String?
  initDataTypes : JsValue?
  audioCapabilities : JsValue?
  videoCapabilities : JsValue?
  distinctiveIdentifier : MediaKeysRequirement?
  persistentState : MediaKeysRequirement?
  sessionTypes : JsValue?
}

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

/// Convert to JsValue
pub extern "js" fn MediaKeySystemConfiguration::to_js(self : MediaKeySystemConfiguration) -> JsValue =
  #| (self) => ({
  #|   label: self.label,
  #|   initDataTypes: self.initDataTypes,
  #|   audioCapabilities: self.audioCapabilities,
  #|   videoCapabilities: self.videoCapabilities,
  #|   distinctiveIdentifier: self.distinctiveIdentifier,
  #|   persistentState: self.persistentState,
  #|   sessionTypes: self.sessionTypes
  #| })

///|
/// MediaKeySystemMediaCapability dictionary
pub struct MediaKeySystemMediaCapability {
  contentType : String?
  encryptionScheme : String??
  robustness : String?
}

/// Create a new MediaKeySystemMediaCapability with default values
pub fn MediaKeySystemMediaCapability::default() -> MediaKeySystemMediaCapability {
  MediaKeySystemMediaCapability::{
    contentType: None,
    encryptionScheme: None,
    robustness: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MediaKeySystemMediaCapability::to_js(self : MediaKeySystemMediaCapability) -> JsValue =
  #| (self) => ({
  #|   contentType: self.contentType,
  #|   encryptionScheme: self.encryptionScheme,
  #|   robustness: self.robustness
  #| })

///|
/// MediaKeysPolicy dictionary
pub struct MediaKeysPolicy {
  minHdcpVersion : String?
}

/// Create a new MediaKeysPolicy with default values
pub fn MediaKeysPolicy::default() -> MediaKeysPolicy {
  MediaKeysPolicy::{
    minHdcpVersion: None,
  }
}

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

/// Create a new MediaKeyMessageEventInit with default values
pub fn MediaKeyMessageEventInit::default() -> MediaKeyMessageEventInit {
  MediaKeyMessageEventInit::{
    messageType: panic(),
    message: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn MediaKeyMessageEventInit::to_js(self : MediaKeyMessageEventInit) -> JsValue =
  #| (self) => ({
  #|   messageType: self.messageType,
  #|   message: self.message
  #| })

///|
/// MediaEncryptedEventInit dictionary
pub struct MediaEncryptedEventInit {
  initDataType : String?
  initData : ArrayBuffer??
}

/// Create a new MediaEncryptedEventInit with default values
pub fn MediaEncryptedEventInit::default() -> MediaEncryptedEventInit {
  MediaEncryptedEventInit::{
    initDataType: None,
    initData: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MediaEncryptedEventInit::to_js(self : MediaEncryptedEventInit) -> JsValue =
  #| (self) => ({
  #|   initDataType: self.initDataType,
  #|   initData: self.initData
  #| })

///|
/// MediaKeySystemAccess interface
pub type MediaKeySystemAccess

pub extern "js" fn MediaKeySystemAccess::to_js_value(self : MediaKeySystemAccess) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaKeySystemAccess::get_key_system(self : MediaKeySystemAccess) -> String =
  #| (self) => self.keySystem

pub extern "js" fn MediaKeySystemAccess::get_configuration(self : MediaKeySystemAccess) -> MediaKeySystemConfiguration =
  #| (self) => self.getConfiguration()

pub extern "js" fn MediaKeySystemAccess::create_media_keys(self : MediaKeySystemAccess) -> JsValue =
  #| (self) => self.createMediaKeys()

///|
/// MediaKeys interface
pub type MediaKeys

pub extern "js" fn MediaKeys::to_js_value(self : MediaKeys) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaKeys::create_session(self : MediaKeys, session_type : MediaKeySessionType) -> MediaKeySession =
  #| (self, session_type) => self.createSession(['temporary', 'persistent-license'][session_type])

pub extern "js" fn MediaKeys::get_status_for_policy(self : MediaKeys, policy : MediaKeysPolicy) -> JsValue =
  #| (self, policy) => self.getStatusForPolicy(policy)

pub extern "js" fn MediaKeys::set_server_certificate(self : MediaKeys, server_certificate : BufferSource) -> JsValue =
  #| (self, server_certificate) => self.setServerCertificate(server_certificate)

///|
/// MediaKeySession interface
pub type MediaKeySession

pub extern "js" fn MediaKeySession::to_js_value(self : MediaKeySession) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaKeySession::get_session_id(self : MediaKeySession) -> String =
  #| (self) => self.sessionId

pub extern "js" fn MediaKeySession::get_expiration(self : MediaKeySession) -> Double =
  #| (self) => self.expiration

pub extern "js" fn MediaKeySession::get_closed(self : MediaKeySession) -> JsValue =
  #| (self) => self.closed

pub extern "js" fn MediaKeySession::get_key_statuses(self : MediaKeySession) -> MediaKeyStatusMap =
  #| (self) => self.keyStatuses

pub extern "js" fn MediaKeySession::get_onkeystatuseschange(self : MediaKeySession) -> EventHandler =
  #| (self) => self.onkeystatuseschange

pub extern "js" fn MediaKeySession::set_onkeystatuseschange(self : MediaKeySession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onkeystatuseschange = value }

pub extern "js" fn MediaKeySession::get_onmessage(self : MediaKeySession) -> EventHandler =
  #| (self) => self.onmessage

pub extern "js" fn MediaKeySession::set_onmessage(self : MediaKeySession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onmessage = value }

pub extern "js" fn MediaKeySession::generate_request(self : MediaKeySession, init_data_type : String, init_data : BufferSource) -> JsValue =
  #| (self, init_data_type, init_data) => self.generateRequest(init_data_type, init_data)

pub extern "js" fn MediaKeySession::load(self : MediaKeySession, session_id : String) -> JsValue =
  #| (self, session_id) => self.load(session_id)

pub extern "js" fn MediaKeySession::update(self : MediaKeySession, response : BufferSource) -> JsValue =
  #| (self, response) => self.update(response)

pub extern "js" fn MediaKeySession::close(self : MediaKeySession) -> JsValue =
  #| (self) => self.close()

pub extern "js" fn MediaKeySession::remove(self : MediaKeySession) -> JsValue =
  #| (self) => self.remove()

///|
/// MediaKeyStatusMap interface
pub type MediaKeyStatusMap

pub extern "js" fn MediaKeyStatusMap::to_js_value(self : MediaKeyStatusMap) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaKeyStatusMap::_unknown_(self : MediaKeyStatusMap) -> Unit =
  #| (self) => self._unknown_()

pub extern "js" fn MediaKeyStatusMap::get_size(self : MediaKeyStatusMap) -> Int =
  #| (self) => self.size

pub extern "js" fn MediaKeyStatusMap::has(self : MediaKeyStatusMap, key_id : BufferSource) -> Bool =
  #| (self, key_id) => self.has(key_id)

pub extern "js" fn MediaKeyStatusMap::get(self : MediaKeyStatusMap, key_id : BufferSource) -> JsValue =
  #| (self, key_id) => self.get(key_id)

///|
/// MediaKeyMessageEvent interface
pub type MediaKeyMessageEvent

pub extern "js" fn MediaKeyMessageEvent::to_js_value(self : MediaKeyMessageEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaKeyMessageEvent::new(type_ : String, event_init_dict : MediaKeyMessageEventInit) -> MediaKeyMessageEvent =
  #| (type_, event_init_dict) => new MediaKeyMessageEvent(type_, event_init_dict)

pub extern "js" fn MediaKeyMessageEvent::get_message_type(self : MediaKeyMessageEvent) -> MediaKeyMessageType =
  #| (self) => self.messageType

pub extern "js" fn MediaKeyMessageEvent::get_message(self : MediaKeyMessageEvent) -> ArrayBuffer =
  #| (self) => self.message

///|
/// MediaEncryptedEvent interface
pub type MediaEncryptedEvent

pub extern "js" fn MediaEncryptedEvent::to_js_value(self : MediaEncryptedEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaEncryptedEvent::new(type_ : String, event_init_dict : MediaEncryptedEventInit) -> MediaEncryptedEvent =
  #| (type_, event_init_dict) => new MediaEncryptedEvent(type_, event_init_dict)

pub extern "js" fn MediaEncryptedEvent::get_init_data_type(self : MediaEncryptedEvent) -> String =
  #| (self) => self.initDataType

pub extern "js" fn MediaEncryptedEvent::get_init_data(self : MediaEncryptedEvent) -> ArrayBuffer? =
  #| (self) => self.initData

