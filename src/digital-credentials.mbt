// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/digital-credentials

///|
/// DigitalCredentialProtocol typedef
pub type DigitalCredentialProtocol

pub extern "js" fn DigitalCredentialProtocol::to_js_value(self : DigitalCredentialProtocol) -> JsValue =
  #| (self) => self

///|
extern "js" fn DigitalCredentialProtocol::from_digital_credential_presentation_protocol_ffi(v : String) -> DigitalCredentialProtocol =
  #| v => v

///|
pub fn DigitalCredentialProtocol::from_digital_credential_presentation_protocol(v : DigitalCredentialPresentationProtocol) -> DigitalCredentialProtocol { DigitalCredentialProtocol::from_digital_credential_presentation_protocol_ffi(v.to_string()) }

///|
extern "js" fn DigitalCredentialProtocol::from_digital_credential_issuance_protocol_ffi(v : String) -> DigitalCredentialProtocol =
  #| v => v

///|
pub fn DigitalCredentialProtocol::from_digital_credential_issuance_protocol(v : DigitalCredentialIssuanceProtocol) -> DigitalCredentialProtocol { DigitalCredentialProtocol::from_digital_credential_issuance_protocol_ffi(v.to_string()) }

/// Check if this DigitalCredentialProtocol is DigitalCredentialPresentationProtocol
pub extern "js" fn DigitalCredentialProtocol::is_digital_credential_presentation_protocol(self : DigitalCredentialProtocol) -> Bool =
  #| (self) => typeof self === 'string'

/// Check if this DigitalCredentialProtocol is DigitalCredentialIssuanceProtocol
pub extern "js" fn DigitalCredentialProtocol::is_digital_credential_issuance_protocol(self : DigitalCredentialProtocol) -> Bool =
  #| (self) => typeof self === 'string'

///|
extern "js" fn DigitalCredentialProtocol::as_digital_credential_presentation_protocol_string(self : DigitalCredentialProtocol) -> String =
  #| self => self

///|
pub fn DigitalCredentialProtocol::as_digital_credential_presentation_protocol(self : DigitalCredentialProtocol) -> DigitalCredentialPresentationProtocol? { if self.is_digital_credential_presentation_protocol() { DigitalCredentialPresentationProtocol::from_string(self.as_digital_credential_presentation_protocol_string()) } else { None } }

///|
extern "js" fn DigitalCredentialProtocol::as_digital_credential_issuance_protocol_string(self : DigitalCredentialProtocol) -> String =
  #| self => self

///|
pub fn DigitalCredentialProtocol::as_digital_credential_issuance_protocol(self : DigitalCredentialProtocol) -> DigitalCredentialIssuanceProtocol? { if self.is_digital_credential_issuance_protocol() { DigitalCredentialIssuanceProtocol::from_string(self.as_digital_credential_issuance_protocol_string()) } else { None } }

/// Flatten Option[DigitalCredentialProtocol] to DigitalCredentialPresentationProtocol?
pub fn DigitalCredentialProtocol::bind_as_digital_credential_presentation_protocol(value : DigitalCredentialProtocol?) -> DigitalCredentialPresentationProtocol? {
  match value {
    Some(v) => v.as_digital_credential_presentation_protocol()
    None => None
  }
}

/// Flatten Option[DigitalCredentialProtocol] to DigitalCredentialIssuanceProtocol?
pub fn DigitalCredentialProtocol::bind_as_digital_credential_issuance_protocol(value : DigitalCredentialProtocol?) -> DigitalCredentialIssuanceProtocol? {
  match value {
    Some(v) => v.as_digital_credential_issuance_protocol()
    None => None
  }
}

///|
/// DigitalCredentialPresentationProtocol enum
pub(all) enum DigitalCredentialPresentationProtocol {
  Openid4vpV1Unsigned
  Openid4vpV1Signed
  Openid4vpV1Multisigned
  OrgIsoMdoc
} derive(Eq, Debug)

pub extend DigitalCredentialPresentationProtocol with Eq::{equal, not_equal}
pub extend DigitalCredentialPresentationProtocol with @debug.Debug::{to_repr}

/// Convert to string value
pub fn DigitalCredentialPresentationProtocol::to_string(self : DigitalCredentialPresentationProtocol) -> String {
  match self {
    DigitalCredentialPresentationProtocol::Openid4vpV1Unsigned => "openid4vp-v1-unsigned"
    DigitalCredentialPresentationProtocol::Openid4vpV1Signed => "openid4vp-v1-signed"
    DigitalCredentialPresentationProtocol::Openid4vpV1Multisigned => "openid4vp-v1-multisigned"
    DigitalCredentialPresentationProtocol::OrgIsoMdoc => "org-iso-mdoc"
  }
}

/// Parse from string value
pub fn DigitalCredentialPresentationProtocol::from_string(s : String) -> DigitalCredentialPresentationProtocol? {
  match s {
    "openid4vp-v1-unsigned" => Some(DigitalCredentialPresentationProtocol::Openid4vpV1Unsigned)
    "openid4vp-v1-signed" => Some(DigitalCredentialPresentationProtocol::Openid4vpV1Signed)
    "openid4vp-v1-multisigned" => Some(DigitalCredentialPresentationProtocol::Openid4vpV1Multisigned)
    "org-iso-mdoc" => Some(DigitalCredentialPresentationProtocol::OrgIsoMdoc)
    _ => None
  }
}

///|
/// DigitalCredentialIssuanceProtocol enum
pub(all) enum DigitalCredentialIssuanceProtocol {
  Openid4vciV1
} derive(Eq, Debug)

pub extend DigitalCredentialIssuanceProtocol with Eq::{equal, not_equal}
pub extend DigitalCredentialIssuanceProtocol with @debug.Debug::{to_repr}

/// Convert to string value
pub fn DigitalCredentialIssuanceProtocol::to_string(self : DigitalCredentialIssuanceProtocol) -> String {
  match self {
    DigitalCredentialIssuanceProtocol::Openid4vciV1 => "openid4vci-v1"
  }
}

/// Parse from string value
pub fn DigitalCredentialIssuanceProtocol::from_string(s : String) -> DigitalCredentialIssuanceProtocol? {
  match s {
    "openid4vci-v1" => Some(DigitalCredentialIssuanceProtocol::Openid4vciV1)
    _ => None
  }
}

///|
/// DigitalCredentialRequestOptions dictionary
pub(all) struct DigitalCredentialRequestOptions {
  requests : FixedArray[DigitalCredentialGetRequest]
}

/// Create a new DigitalCredentialRequestOptions with default values
pub fn DigitalCredentialRequestOptions::default() -> DigitalCredentialRequestOptions {
  DigitalCredentialRequestOptions::{
    requests: [],
  }
}

extern "js" fn DigitalCredentialRequestOptions::to_js_ffi(self : DigitalCredentialRequestOptions) -> JsValue =
  #| (self) => ({
  #|   requests: self.requests
  #| })

/// Convert to JsValue
pub fn DigitalCredentialRequestOptions::to_js(self : DigitalCredentialRequestOptions) -> JsValue {
  DigitalCredentialRequestOptions::to_js_ffi(self)
}

extern "js" fn DigitalCredentialRequestOptions::from_js_ffi(value : JsValue) -> DigitalCredentialRequestOptions =
  #| (v) => ({
  #|   requests: v.requests
  #| })

/// Convert from JsValue
pub fn DigitalCredentialRequestOptions::from_js(value : JsValue) -> DigitalCredentialRequestOptions {
  DigitalCredentialRequestOptions::from_js_ffi(value)
}

///|
/// DigitalCredentialGetRequest dictionary
pub(all) struct DigitalCredentialGetRequest {
  protocol : String
  data : JsValue
}

/// Create a new DigitalCredentialGetRequest
pub fn DigitalCredentialGetRequest::new(data~ : JsValue) -> DigitalCredentialGetRequest {
  DigitalCredentialGetRequest::{
    protocol: "",
    data: data,
  }
}

extern "js" fn DigitalCredentialGetRequest::to_js_ffi(self : DigitalCredentialGetRequest) -> JsValue =
  #| (self) => ({
  #|   protocol: self.protocol,
  #|   data: self.data
  #| })

/// Convert to JsValue
pub fn DigitalCredentialGetRequest::to_js(self : DigitalCredentialGetRequest) -> JsValue {
  DigitalCredentialGetRequest::to_js_ffi(self)
}

extern "js" fn DigitalCredentialGetRequest::from_js_ffi(value : JsValue) -> DigitalCredentialGetRequest =
  #| (v) => ({
  #|   protocol: v.protocol,
  #|   data: v.data
  #| })

/// Convert from JsValue
pub fn DigitalCredentialGetRequest::from_js(value : JsValue) -> DigitalCredentialGetRequest {
  DigitalCredentialGetRequest::from_js_ffi(value)
}

///|
/// DigitalCredentialCreationOptions dictionary
pub(all) struct DigitalCredentialCreationOptions {
  requests : FixedArray[DigitalCredentialCreateRequest]
}

/// Create a new DigitalCredentialCreationOptions with default values
pub fn DigitalCredentialCreationOptions::default() -> DigitalCredentialCreationOptions {
  DigitalCredentialCreationOptions::{
    requests: [],
  }
}

extern "js" fn DigitalCredentialCreationOptions::to_js_ffi(self : DigitalCredentialCreationOptions) -> JsValue =
  #| (self) => ({
  #|   requests: self.requests
  #| })

/// Convert to JsValue
pub fn DigitalCredentialCreationOptions::to_js(self : DigitalCredentialCreationOptions) -> JsValue {
  DigitalCredentialCreationOptions::to_js_ffi(self)
}

extern "js" fn DigitalCredentialCreationOptions::from_js_ffi(value : JsValue) -> DigitalCredentialCreationOptions =
  #| (v) => ({
  #|   requests: v.requests
  #| })

/// Convert from JsValue
pub fn DigitalCredentialCreationOptions::from_js(value : JsValue) -> DigitalCredentialCreationOptions {
  DigitalCredentialCreationOptions::from_js_ffi(value)
}

///|
/// DigitalCredentialCreateRequest dictionary
pub(all) struct DigitalCredentialCreateRequest {
  protocol : String
  data : JsValue
}

/// Create a new DigitalCredentialCreateRequest
pub fn DigitalCredentialCreateRequest::new(data~ : JsValue) -> DigitalCredentialCreateRequest {
  DigitalCredentialCreateRequest::{
    protocol: "",
    data: data,
  }
}

extern "js" fn DigitalCredentialCreateRequest::to_js_ffi(self : DigitalCredentialCreateRequest) -> JsValue =
  #| (self) => ({
  #|   protocol: self.protocol,
  #|   data: self.data
  #| })

/// Convert to JsValue
pub fn DigitalCredentialCreateRequest::to_js(self : DigitalCredentialCreateRequest) -> JsValue {
  DigitalCredentialCreateRequest::to_js_ffi(self)
}

extern "js" fn DigitalCredentialCreateRequest::from_js_ffi(value : JsValue) -> DigitalCredentialCreateRequest =
  #| (v) => ({
  #|   protocol: v.protocol,
  #|   data: v.data
  #| })

/// Convert from JsValue
pub fn DigitalCredentialCreateRequest::from_js(value : JsValue) -> DigitalCredentialCreateRequest {
  DigitalCredentialCreateRequest::from_js_ffi(value)
}

///|
/// DigitalCredential interface
pub type DigitalCredential

pub extern "js" fn DigitalCredential::to_js_value(self : DigitalCredential) -> JsValue =
  #| (self) => self

/// Cast JsValue to DigitalCredential (unchecked)
pub extern "js" fn DigitalCredential::from_js_value(v : JsValue) -> DigitalCredential =
  #| (v) => v

/// Safely cast JsValue to DigitalCredential (checked with instanceof)
pub extern "js" fn DigitalCredential::from_js_value_opt(v : JsValue) -> DigitalCredential? =
  #| (v) => (v instanceof DigitalCredential) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to DigitalCredential (checked with instanceof)
pub extern "js" fn JsValue::as_digital_credential(self : JsValue) -> DigitalCredential? =
  #| (self) => (self instanceof DigitalCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to DigitalCredential (unchecked)
pub extern "js" fn JsValue::to_digital_credential(self : JsValue) -> DigitalCredential =
  #| (self) => self

pub extern "js" fn DigitalCredential::to_credential(self : DigitalCredential) -> Credential =
  #| (self) => self

pub extern "js" fn DigitalCredential::to_json(self : DigitalCredential) -> JsValue =
  #| (self) => self.toJSON()

pub extern "js" fn DigitalCredential::get_protocol(self : DigitalCredential) -> DigitalCredentialProtocol =
  #| (self) => self.protocol

pub extern "js" fn DigitalCredential::get_data(self : DigitalCredential) -> JsValue =
  #| (self) => self.data

pub extern "js" fn DigitalCredential::user_agent_allows_protocol(protocol : String) -> Bool =
  #| (protocol) => DigitalCredential.userAgentAllowsProtocol(protocol)
