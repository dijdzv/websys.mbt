// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc-identity

///|
/// RTCErrorDetailTypeIdp enum
pub(all) enum RTCErrorDetailTypeIdp {
  IdpBadScriptFailure
  IdpExecutionFailure
  IdpLoadFailure
  IdpNeedLogin
  IdpTimeout
  IdpTlsFailure
  IdpTokenExpired
  IdpTokenInvalid
}

///|
/// Convert to string value
pub fn RTCErrorDetailTypeIdp::to_string(self : RTCErrorDetailTypeIdp) -> String {
  match self {
    IdpBadScriptFailure => "idp-bad-script-failure"
    IdpExecutionFailure => "idp-execution-failure"
    IdpLoadFailure => "idp-load-failure"
    IdpNeedLogin => "idp-need-login"
    IdpTimeout => "idp-timeout"
    IdpTlsFailure => "idp-tls-failure"
    IdpTokenExpired => "idp-token-expired"
    IdpTokenInvalid => "idp-token-invalid"
  }
}

///|
/// Parse from string value
pub fn RTCErrorDetailTypeIdp::from_string(s : String) -> RTCErrorDetailTypeIdp? {
  match s {
    "idp-bad-script-failure" => Some(IdpBadScriptFailure)
    "idp-execution-failure" => Some(IdpExecutionFailure)
    "idp-load-failure" => Some(IdpLoadFailure)
    "idp-need-login" => Some(IdpNeedLogin)
    "idp-timeout" => Some(IdpTimeout)
    "idp-tls-failure" => Some(IdpTlsFailure)
    "idp-token-expired" => Some(IdpTokenExpired)
    "idp-token-invalid" => Some(IdpTokenInvalid)
    _ => None
  }
}

///|
/// GenerateAssertionCallback callback interface
pub type GenerateAssertionCallback

///|
/// Create GenerateAssertionCallback from a MoonBit function
pub extern "js" fn GenerateAssertionCallback::from_fn(
  handler : (String, String, RTCIdentityProviderOptions) -> Promise[
    RTCIdentityAssertionResult,
  ],
) -> GenerateAssertionCallback =
  #| (handler) => handler

///|
/// ValidateAssertionCallback callback interface
pub type ValidateAssertionCallback

///|
/// Create ValidateAssertionCallback from a MoonBit function
pub extern "js" fn ValidateAssertionCallback::from_fn(
  handler : (String, String) -> Promise[RTCIdentityValidationResult],
) -> ValidateAssertionCallback =
  #| (handler) => handler

///|
/// RTCIdentityProvider dictionary
pub struct RTCIdentityProvider {
  generateAssertion : GenerateAssertionCallback
  validateAssertion : ValidateAssertionCallback
}

///|
/// Create a new RTCIdentityProvider with default values
pub fn RTCIdentityProvider::default() -> RTCIdentityProvider {
  RTCIdentityProvider::{
    generateAssertion: panic(),
    validateAssertion: panic(),
  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCIdentityProvider::to_js(
  self : RTCIdentityProvider,
) -> JsValue =
  #| (self) => ({
  #|   generateAssertion: self.generateAssertion,
  #|   validateAssertion: self.validateAssertion
  #| })

///|
/// RTCIdentityAssertionResult dictionary
pub struct RTCIdentityAssertionResult {
  idp : RTCIdentityProviderDetails
  assertion : String
}

///|
/// Create a new RTCIdentityAssertionResult with default values
pub fn RTCIdentityAssertionResult::default() -> RTCIdentityAssertionResult {
  RTCIdentityAssertionResult::{ idp: panic(), assertion: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCIdentityAssertionResult::to_js(
  self : RTCIdentityAssertionResult,
) -> JsValue =
  #| (self) => ({
  #|   idp: self.idp,
  #|   assertion: self.assertion
  #| })

///|
/// RTCIdentityProviderDetails dictionary
pub struct RTCIdentityProviderDetails {
  domain : String
  protocol : String?
}

///|
/// Create a new RTCIdentityProviderDetails with default values
pub fn RTCIdentityProviderDetails::default() -> RTCIdentityProviderDetails {
  RTCIdentityProviderDetails::{ domain: "", protocol: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCIdentityProviderDetails::to_js(
  self : RTCIdentityProviderDetails,
) -> JsValue =
  #| (self) => ({
  #|   domain: self.domain,
  #|   protocol: self.protocol
  #| })

///|
/// RTCIdentityValidationResult dictionary
pub struct RTCIdentityValidationResult {
  identity : String
  contents : String
}

///|
/// Create a new RTCIdentityValidationResult with default values
pub fn RTCIdentityValidationResult::default() -> RTCIdentityValidationResult {
  RTCIdentityValidationResult::{ identity: "", contents: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCIdentityValidationResult::to_js(
  self : RTCIdentityValidationResult,
) -> JsValue =
  #| (self) => ({
  #|   identity: self.identity,
  #|   contents: self.contents
  #| })

///|
/// RTCConfiguration dictionary
pub struct RTCConfiguration {
  peerIdentity : String?
  iceServers : Array[RTCIceServer]?
  iceTransportPolicy : RTCIceTransportPolicy?
  bundlePolicy : RTCBundlePolicy?
  rtcpMuxPolicy : RTCRtcpMuxPolicy?
  certificates : Array[RTCCertificate]?
  iceCandidatePoolSize : Int?
}

///|
/// Create a new RTCConfiguration with default values
pub fn RTCConfiguration::default() -> RTCConfiguration {
  RTCConfiguration::{
    peerIdentity: None,
    iceServers: None,
    iceTransportPolicy: None,
    bundlePolicy: None,
    rtcpMuxPolicy: None,
    certificates: None,
    iceCandidatePoolSize: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCConfiguration::to_js(self : RTCConfiguration) -> JsValue =
  #| (self) => ({
  #|   peerIdentity: self.peerIdentity,
  #|   iceServers: self.iceServers,
  #|   iceTransportPolicy: ['relay', 'all'][self.iceTransportPolicy],
  #|   bundlePolicy: ['balanced', 'max-compat', 'max-bundle'][self.bundlePolicy],
  #|   rtcpMuxPolicy: ['require'][self.rtcpMuxPolicy],
  #|   certificates: self.certificates,
  #|   iceCandidatePoolSize: self.iceCandidatePoolSize
  #| })

///|
/// RTCIdentityProviderOptions dictionary
pub struct RTCIdentityProviderOptions {
  protocol : String?
  usernameHint : String?
  peerIdentity : String?
}

///|
/// Create a new RTCIdentityProviderOptions with default values
pub fn RTCIdentityProviderOptions::default() -> RTCIdentityProviderOptions {
  RTCIdentityProviderOptions::{
    protocol: None,
    usernameHint: None,
    peerIdentity: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCIdentityProviderOptions::to_js(
  self : RTCIdentityProviderOptions,
) -> JsValue =
  #| (self) => ({
  #|   protocol: self.protocol,
  #|   usernameHint: self.usernameHint,
  #|   peerIdentity: self.peerIdentity
  #| })

///|
/// RTCErrorInit dictionary
pub struct RTCErrorInit {
  httpRequestStatusCode : Int?
  errorDetail : RTCErrorDetailType
  sdpLineNumber : Int?
  sctpCauseCode : Int?
  receivedAlert : Int?
  sentAlert : Int?
}

///|
/// Create a new RTCErrorInit with default values
pub fn RTCErrorInit::default() -> RTCErrorInit {
  RTCErrorInit::{
    httpRequestStatusCode: None,
    errorDetail: panic(),
    sdpLineNumber: None,
    sctpCauseCode: None,
    receivedAlert: None,
    sentAlert: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCErrorInit::to_js(self : RTCErrorInit) -> JsValue =
  #| (self) => ({
  #|   httpRequestStatusCode: self.httpRequestStatusCode,
  #|   errorDetail: ['data-channel-failure', 'dtls-failure', 'fingerprint-failure', 'sctp-failure', 'sdp-syntax-error', 'hardware-encoder-not-available', 'hardware-encoder-error'][self.errorDetail],
  #|   sdpLineNumber: self.sdpLineNumber,
  #|   sctpCauseCode: self.sctpCauseCode,
  #|   receivedAlert: self.receivedAlert,
  #|   sentAlert: self.sentAlert
  #| })

///|
/// RTCIdentityProviderGlobalScope interface
pub type RTCIdentityProviderGlobalScope

///|
pub extern "js" fn RTCIdentityProviderGlobalScope::to_js_value(
  self : RTCIdentityProviderGlobalScope,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn RTCIdentityProviderGlobalScope::get_rtc_identity_provider(
  self : RTCIdentityProviderGlobalScope,
) -> RTCIdentityProviderRegistrar =
  #| (self) => self.rtcIdentityProvider

///|
/// RTCIdentityProviderRegistrar interface
pub type RTCIdentityProviderRegistrar

///|
pub extern "js" fn RTCIdentityProviderRegistrar::to_js_value(
  self : RTCIdentityProviderRegistrar,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn RTCIdentityProviderRegistrar::register(
  self : RTCIdentityProviderRegistrar,
  idp : RTCIdentityProvider,
) -> Unit =
  #| (self, idp) => self.register(idp)

///|
/// RTCIdentityAssertion interface
pub type RTCIdentityAssertion

///|
pub extern "js" fn RTCIdentityAssertion::to_js_value(
  self : RTCIdentityAssertion,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn RTCIdentityAssertion::new(
  idp : String,
  name : String,
) -> RTCIdentityAssertion =
  #| (idp, name) => new RTCIdentityAssertion(idp, name)

///|
pub extern "js" fn RTCIdentityAssertion::get_idp(
  self : RTCIdentityAssertion,
) -> String =
  #| (self) => self.idp

///|
pub extern "js" fn RTCIdentityAssertion::set_idp(
  self : RTCIdentityAssertion,
  value : String,
) -> Unit =
  #| (self, value) => { self.idp = value }

///|
pub extern "js" fn RTCIdentityAssertion::get_name(
  self : RTCIdentityAssertion,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn RTCIdentityAssertion::set_name(
  self : RTCIdentityAssertion,
  value : String,
) -> Unit =
  #| (self, value) => { self.name = value }
