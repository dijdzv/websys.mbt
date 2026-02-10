// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/digital-credentials

///|
/// DigitalCredentialRequestOptions dictionary
pub(all) struct DigitalCredentialRequestOptions {
  requests : Array[DigitalCredentialGetRequest]
}

///|
/// Create a new DigitalCredentialRequestOptions with default values
pub fn DigitalCredentialRequestOptions::default() -> DigitalCredentialRequestOptions {
  DigitalCredentialRequestOptions::{ requests: [] }
}

///|
extern "js" fn DigitalCredentialRequestOptions::to_js_ffi(
  self : DigitalCredentialRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   requests: self.requests
  #| })

///|
/// Convert to JsValue
pub fn DigitalCredentialRequestOptions::to_js(
  self : DigitalCredentialRequestOptions,
) -> JsValue {
  DigitalCredentialRequestOptions::to_js_ffi(self)
}

///|
extern "js" fn DigitalCredentialRequestOptions::from_js_ffi(
  value : JsValue,
) -> DigitalCredentialRequestOptions =
  #| (v) => ({
  #|   requests: v.requests
  #| })

///|
/// Convert from JsValue
pub fn DigitalCredentialRequestOptions::from_js(
  value : JsValue,
) -> DigitalCredentialRequestOptions {
  DigitalCredentialRequestOptions::from_js_ffi(value)
}

///|
/// DigitalCredentialGetRequest dictionary
pub(all) struct DigitalCredentialGetRequest {
  protocol : String
  data : JsValue
}

///|
/// Create a new DigitalCredentialGetRequest
pub fn DigitalCredentialGetRequest::new(
  data~ : JsValue,
) -> DigitalCredentialGetRequest {
  DigitalCredentialGetRequest::{ protocol: "", data }
}

///|
extern "js" fn DigitalCredentialGetRequest::to_js_ffi(
  self : DigitalCredentialGetRequest,
) -> JsValue =
  #| (self) => ({
  #|   protocol: self.protocol,
  #|   data: self.data
  #| })

///|
/// Convert to JsValue
pub fn DigitalCredentialGetRequest::to_js(
  self : DigitalCredentialGetRequest,
) -> JsValue {
  DigitalCredentialGetRequest::to_js_ffi(self)
}

///|
extern "js" fn DigitalCredentialGetRequest::from_js_ffi(
  value : JsValue,
) -> DigitalCredentialGetRequest =
  #| (v) => ({
  #|   protocol: v.protocol,
  #|   data: v.data
  #| })

///|
/// Convert from JsValue
pub fn DigitalCredentialGetRequest::from_js(
  value : JsValue,
) -> DigitalCredentialGetRequest {
  DigitalCredentialGetRequest::from_js_ffi(value)
}

///|
/// CredentialCreationOptions dictionary
pub(all) struct CredentialCreationOptions {
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
extern "js" fn CredentialCreationOptions::to_js_ffi(
  self : CredentialCreationOptions,
) -> JsValue =
  #| (self) => ({
  #|   digital: ((() => { const v = self.digital; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   publicKey: ((() => { const v = self.publicKey; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   mediation: ((() => { const v = self.mediation; if (v === undefined) return undefined; return ['silent', 'optional', 'conditional', 'required'][v]; })()),
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   password: ((() => { const v = self.password; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   federated: ((() => { const v = self.federated; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn CredentialCreationOptions::to_js(
  self : CredentialCreationOptions,
) -> JsValue {
  CredentialCreationOptions::to_js_ffi(self)
}

///|
extern "js" fn CredentialCreationOptions::from_js_ffi(
  value : JsValue,
) -> CredentialCreationOptions =
  #| (v) => ({
  #|   digital: (v.digital === undefined ? { $tag: 0 } : { $tag: 1, _0: v.digital }),
  #|   publicKey: (v.publicKey === undefined ? { $tag: 0 } : { $tag: 1, _0: v.publicKey }),
  #|   mediation: (v.mediation === undefined ? undefined : ['silent', 'optional', 'conditional', 'required'].indexOf(v.mediation)),
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal }),
  #|   password: (v.password === undefined ? { $tag: 0 } : { $tag: 1, _0: v.password }),
  #|   federated: (v.federated === undefined ? { $tag: 0 } : { $tag: 1, _0: v.federated })
  #| })

///|
/// Convert from JsValue
pub fn CredentialCreationOptions::from_js(
  value : JsValue,
) -> CredentialCreationOptions {
  CredentialCreationOptions::from_js_ffi(value)
}

///|
/// DigitalCredentialCreationOptions dictionary
pub(all) struct DigitalCredentialCreationOptions {
  requests : Array[DigitalCredentialCreateRequest]?
}

///|
/// Create a new DigitalCredentialCreationOptions with default values
pub fn DigitalCredentialCreationOptions::default() -> DigitalCredentialCreationOptions {
  DigitalCredentialCreationOptions::{ requests: None }
}

///|
extern "js" fn DigitalCredentialCreationOptions::to_js_ffi(
  self : DigitalCredentialCreationOptions,
) -> JsValue =
  #| (self) => ({
  #|   requests: ((() => { const v = self.requests; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn DigitalCredentialCreationOptions::to_js(
  self : DigitalCredentialCreationOptions,
) -> JsValue {
  DigitalCredentialCreationOptions::to_js_ffi(self)
}

///|
extern "js" fn DigitalCredentialCreationOptions::from_js_ffi(
  value : JsValue,
) -> DigitalCredentialCreationOptions =
  #| (v) => ({
  #|   requests: (v.requests === undefined ? { $tag: 0 } : { $tag: 1, _0: v.requests })
  #| })

///|
/// Convert from JsValue
pub fn DigitalCredentialCreationOptions::from_js(
  value : JsValue,
) -> DigitalCredentialCreationOptions {
  DigitalCredentialCreationOptions::from_js_ffi(value)
}

///|
/// DigitalCredentialCreateRequest dictionary
pub(all) struct DigitalCredentialCreateRequest {
  protocol : String
  data : JsValue
}

///|
/// Create a new DigitalCredentialCreateRequest
pub fn DigitalCredentialCreateRequest::new(
  data~ : JsValue,
) -> DigitalCredentialCreateRequest {
  DigitalCredentialCreateRequest::{ protocol: "", data }
}

///|
extern "js" fn DigitalCredentialCreateRequest::to_js_ffi(
  self : DigitalCredentialCreateRequest,
) -> JsValue =
  #| (self) => ({
  #|   protocol: self.protocol,
  #|   data: self.data
  #| })

///|
/// Convert to JsValue
pub fn DigitalCredentialCreateRequest::to_js(
  self : DigitalCredentialCreateRequest,
) -> JsValue {
  DigitalCredentialCreateRequest::to_js_ffi(self)
}

///|
extern "js" fn DigitalCredentialCreateRequest::from_js_ffi(
  value : JsValue,
) -> DigitalCredentialCreateRequest =
  #| (v) => ({
  #|   protocol: v.protocol,
  #|   data: v.data
  #| })

///|
/// Convert from JsValue
pub fn DigitalCredentialCreateRequest::from_js(
  value : JsValue,
) -> DigitalCredentialCreateRequest {
  DigitalCredentialCreateRequest::from_js_ffi(value)
}

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
