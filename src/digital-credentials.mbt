// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/digital-credentials

///|
/// DigitalCredentialRequestOptions dictionary
pub struct DigitalCredentialRequestOptions {
  requests : Array[DigitalCredentialGetRequest]
}

///|
/// Create a new DigitalCredentialRequestOptions with default values
pub fn DigitalCredentialRequestOptions::default() -> DigitalCredentialRequestOptions {
  DigitalCredentialRequestOptions::{ requests: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn DigitalCredentialRequestOptions::to_js(
  self : DigitalCredentialRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   requests: self.requests
  #| })

///|
/// DigitalCredentialGetRequest dictionary
pub struct DigitalCredentialGetRequest {
  protocol : String
  data : JsValue
}

///|
/// Create a new DigitalCredentialGetRequest with default values
pub fn DigitalCredentialGetRequest::default() -> DigitalCredentialGetRequest {
  DigitalCredentialGetRequest::{ protocol: "", data: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn DigitalCredentialGetRequest::to_js(
  self : DigitalCredentialGetRequest,
) -> JsValue =
  #| (self) => ({
  #|   protocol: self.protocol,
  #|   data: self.data
  #| })

///|
/// CredentialCreationOptions dictionary
pub struct CredentialCreationOptions {
  digital : DigitalCredentialCreationOptions?
  publicKey : PublicKeyCredentialCreationOptions?
  mediation : CredentialMediationRequirement?
  signal : AbortSignal?
  password : PasswordCredentialInit?
  federated : FederatedCredentialInit?
}

///|
/// Create a new CredentialCreationOptions with default values
pub fn CredentialCreationOptions::default() -> CredentialCreationOptions {
  CredentialCreationOptions::{
    digital: None,
    publicKey: None,
    mediation: None,
    signal: None,
    password: None,
    federated: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn CredentialCreationOptions::to_js(
  self : CredentialCreationOptions,
) -> JsValue =
  #| (self) => ({
  #|   digital: self.digital,
  #|   publicKey: self.publicKey,
  #|   mediation: ['silent', 'optional', 'conditional', 'required'][self.mediation],
  #|   signal: self.signal,
  #|   password: self.password.to_js_value(),
  #|   federated: self.federated
  #| })

///|
/// DigitalCredentialCreationOptions dictionary
pub struct DigitalCredentialCreationOptions {
  requests : Array[DigitalCredentialCreateRequest]?
}

///|
/// Create a new DigitalCredentialCreationOptions with default values
pub fn DigitalCredentialCreationOptions::default() -> DigitalCredentialCreationOptions {
  DigitalCredentialCreationOptions::{ requests: None }
}

///|
/// Convert to JsValue
pub extern "js" fn DigitalCredentialCreationOptions::to_js(
  self : DigitalCredentialCreationOptions,
) -> JsValue =
  #| (self) => ({
  #|   requests: self.requests
  #| })

///|
/// DigitalCredentialCreateRequest dictionary
pub struct DigitalCredentialCreateRequest {
  protocol : String
  data : JsValue
}

///|
/// Create a new DigitalCredentialCreateRequest with default values
pub fn DigitalCredentialCreateRequest::default() -> DigitalCredentialCreateRequest {
  DigitalCredentialCreateRequest::{ protocol: "", data: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn DigitalCredentialCreateRequest::to_js(
  self : DigitalCredentialCreateRequest,
) -> JsValue =
  #| (self) => ({
  #|   protocol: self.protocol,
  #|   data: self.data
  #| })

///|
/// DigitalCredential interface
pub type DigitalCredential

///|
pub extern "js" fn DigitalCredential::to_js_value(
  self : DigitalCredential,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to DigitalCredential (unchecked)
pub extern "js" fn DigitalCredential::from_js_value(
  v : JsValue,
) -> DigitalCredential =
  #| (v) => v

///|
/// Safely cast JsValue to DigitalCredential (checked with instanceof)
pub extern "js" fn DigitalCredential::from_js_value_opt(
  v : JsValue,
) -> DigitalCredential? =
  #| (v) => (v instanceof DigitalCredential) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DigitalCredential (checked with instanceof)
pub extern "js" fn JsValue::as_digital_credential(
  self : JsValue,
) -> DigitalCredential? =
  #| (self) => (self instanceof DigitalCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DigitalCredential (unchecked)
pub extern "js" fn JsValue::to_digital_credential(
  self : JsValue,
) -> DigitalCredential =
  #| (self) => self

///|
pub extern "js" fn DigitalCredential::to_credential(
  self : DigitalCredential,
) -> Credential =
  #| (self) => self

///|
pub extern "js" fn DigitalCredential::to_json(
  self : DigitalCredential,
) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn DigitalCredential::get_protocol(
  self : DigitalCredential,
) -> String =
  #| (self) => self.protocol

///|
pub extern "js" fn DigitalCredential::get_data(
  self : DigitalCredential,
) -> JsValue =
  #| (self) => self.data

///|
pub extern "js" fn DigitalCredential::user_agent_allows_protocol(
  protocol : String,
) -> Bool =
  #| (protocol) => DigitalCredential.userAgentAllowsProtocol(protocol)
