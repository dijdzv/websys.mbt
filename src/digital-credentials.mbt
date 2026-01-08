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
pub extern "js" fn DigitalCredential::to_j_s_o_n(
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
