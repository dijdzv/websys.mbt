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
    RTCErrorDetailTypeIdp::IdpBadScriptFailure => "idp-bad-script-failure"
    RTCErrorDetailTypeIdp::IdpExecutionFailure => "idp-execution-failure"
    RTCErrorDetailTypeIdp::IdpLoadFailure => "idp-load-failure"
    RTCErrorDetailTypeIdp::IdpNeedLogin => "idp-need-login"
    RTCErrorDetailTypeIdp::IdpTimeout => "idp-timeout"
    RTCErrorDetailTypeIdp::IdpTlsFailure => "idp-tls-failure"
    RTCErrorDetailTypeIdp::IdpTokenExpired => "idp-token-expired"
    RTCErrorDetailTypeIdp::IdpTokenInvalid => "idp-token-invalid"
  }
}

///|
/// Parse from string value
pub fn RTCErrorDetailTypeIdp::from_string(s : String) -> RTCErrorDetailTypeIdp? {
  match s {
    "idp-bad-script-failure" => Some(RTCErrorDetailTypeIdp::IdpBadScriptFailure)
    "idp-execution-failure" => Some(RTCErrorDetailTypeIdp::IdpExecutionFailure)
    "idp-load-failure" => Some(RTCErrorDetailTypeIdp::IdpLoadFailure)
    "idp-need-login" => Some(RTCErrorDetailTypeIdp::IdpNeedLogin)
    "idp-timeout" => Some(RTCErrorDetailTypeIdp::IdpTimeout)
    "idp-tls-failure" => Some(RTCErrorDetailTypeIdp::IdpTlsFailure)
    "idp-token-expired" => Some(RTCErrorDetailTypeIdp::IdpTokenExpired)
    "idp-token-invalid" => Some(RTCErrorDetailTypeIdp::IdpTokenInvalid)
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
  #| (handler) => (a0, a1, a2) => handler(a0, a1, a2)

///|
/// ValidateAssertionCallback callback interface
pub type ValidateAssertionCallback

///|
/// Create ValidateAssertionCallback from a MoonBit function
pub extern "js" fn ValidateAssertionCallback::from_fn(
  handler : (String, String) -> Promise[RTCIdentityValidationResult],
) -> ValidateAssertionCallback =
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// RTCIdentityProvider dictionary
pub(all) struct RTCIdentityProvider {
  generateAssertion : GenerateAssertionCallback
  validateAssertion : ValidateAssertionCallback
}

///|
/// Create a new RTCIdentityProvider
pub fn RTCIdentityProvider::new(
  generateAssertion~ : GenerateAssertionCallback,
  validateAssertion~ : ValidateAssertionCallback,
) -> RTCIdentityProvider {
  RTCIdentityProvider::{ generateAssertion, validateAssertion }
}

///|
extern "js" fn RTCIdentityProvider::to_js_ffi(
  self : RTCIdentityProvider,
) -> JsValue =
  #| (self) => ({
  #|   generateAssertion: self.generateAssertion,
  #|   validateAssertion: self.validateAssertion
  #| })

///|
/// Convert to JsValue
pub fn RTCIdentityProvider::to_js(self : RTCIdentityProvider) -> JsValue {
  RTCIdentityProvider::to_js_ffi(self)
}

///|
/// RTCIdentityAssertionResult dictionary
pub(all) struct RTCIdentityAssertionResult {
  idp : RTCIdentityProviderDetails
  assertion : String
}

///|
/// Create a new RTCIdentityAssertionResult
pub fn RTCIdentityAssertionResult::new(
  idp~ : RTCIdentityProviderDetails,
) -> RTCIdentityAssertionResult {
  RTCIdentityAssertionResult::{ idp, assertion: "" }
}

///|
extern "js" fn RTCIdentityAssertionResult::to_js_ffi(
  self : RTCIdentityAssertionResult,
) -> JsValue =
  #| (self) => ({
  #|   idp: self.idp,
  #|   assertion: self.assertion
  #| })

///|
/// Convert to JsValue
pub fn RTCIdentityAssertionResult::to_js(
  self : RTCIdentityAssertionResult,
) -> JsValue {
  RTCIdentityAssertionResult::to_js_ffi(self)
}

///|
/// RTCIdentityProviderDetails dictionary
pub(all) struct RTCIdentityProviderDetails {
  domain : String
  protocol : String?
}

///|
/// Create a new RTCIdentityProviderDetails with default values
pub fn RTCIdentityProviderDetails::default() -> RTCIdentityProviderDetails {
  RTCIdentityProviderDetails::{ domain: "", protocol: None }
}

///|
extern "js" fn RTCIdentityProviderDetails::to_js_ffi(
  self : RTCIdentityProviderDetails,
) -> JsValue =
  #| (self) => ({
  #|   domain: self.domain,
  #|   protocol: self.protocol
  #| })

///|
/// Convert to JsValue
pub fn RTCIdentityProviderDetails::to_js(
  self : RTCIdentityProviderDetails,
) -> JsValue {
  RTCIdentityProviderDetails::to_js_ffi(self)
}

///|
/// RTCIdentityValidationResult dictionary
pub(all) struct RTCIdentityValidationResult {
  identity : String
  contents : String
}

///|
/// Create a new RTCIdentityValidationResult with default values
pub fn RTCIdentityValidationResult::default() -> RTCIdentityValidationResult {
  RTCIdentityValidationResult::{ identity: "", contents: "" }
}

///|
extern "js" fn RTCIdentityValidationResult::to_js_ffi(
  self : RTCIdentityValidationResult,
) -> JsValue =
  #| (self) => ({
  #|   identity: self.identity,
  #|   contents: self.contents
  #| })

///|
/// Convert to JsValue
pub fn RTCIdentityValidationResult::to_js(
  self : RTCIdentityValidationResult,
) -> JsValue {
  RTCIdentityValidationResult::to_js_ffi(self)
}

///|
/// RTCConfiguration dictionary
pub(all) struct RTCConfiguration {
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
extern "js" fn RTCConfiguration::to_js_ffi(self : RTCConfiguration) -> JsValue =
  #| (self) => ({
  #|   peerIdentity: self.peerIdentity,
  #|   iceServers: ((() => { const v = self.iceServers; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   iceTransportPolicy: ((() => { const v = self.iceTransportPolicy; if (v === undefined) return undefined; return ['relay', 'all'][v]; })()),
  #|   bundlePolicy: ((() => { const v = self.bundlePolicy; if (v === undefined) return undefined; return ['balanced', 'max-compat', 'max-bundle'][v]; })()),
  #|   rtcpMuxPolicy: ((() => { const v = self.rtcpMuxPolicy; if (v === undefined) return undefined; return ['require'][v]; })()),
  #|   certificates: ((() => { const v = self.certificates; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   iceCandidatePoolSize: self.iceCandidatePoolSize
  #| })

///|
/// Convert to JsValue
pub fn RTCConfiguration::to_js(self : RTCConfiguration) -> JsValue {
  RTCConfiguration::to_js_ffi(self)
}

///|
/// RTCIdentityProviderOptions dictionary
pub(all) struct RTCIdentityProviderOptions {
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
extern "js" fn RTCIdentityProviderOptions::to_js_ffi(
  self : RTCIdentityProviderOptions,
) -> JsValue =
  #| (self) => ({
  #|   protocol: self.protocol,
  #|   usernameHint: self.usernameHint,
  #|   peerIdentity: self.peerIdentity
  #| })

///|
/// Convert to JsValue
pub fn RTCIdentityProviderOptions::to_js(
  self : RTCIdentityProviderOptions,
) -> JsValue {
  RTCIdentityProviderOptions::to_js_ffi(self)
}

///|
/// RTCErrorInit dictionary
pub(all) struct RTCErrorInit {
  httpRequestStatusCode : Int?
  errorDetail : RTCErrorDetailType
  sdpLineNumber : Int?
  sctpCauseCode : Int?
  receivedAlert : Int?
  sentAlert : Int?
}

///|
/// Create a new RTCErrorInit
pub fn RTCErrorInit::new(errorDetail~ : RTCErrorDetailType) -> RTCErrorInit {
  RTCErrorInit::{
    httpRequestStatusCode: None,
    errorDetail,
    sdpLineNumber: None,
    sctpCauseCode: None,
    receivedAlert: None,
    sentAlert: None,
  }
}

///|
extern "js" fn RTCErrorInit::to_js_ffi(self : RTCErrorInit) -> JsValue =
  #| (self) => ({
  #|   httpRequestStatusCode: self.httpRequestStatusCode,
  #|   errorDetail: ['data-channel-failure', 'dtls-failure', 'fingerprint-failure', 'sctp-failure', 'sdp-syntax-error', 'hardware-encoder-not-available', 'hardware-encoder-error'][self.errorDetail],
  #|   sdpLineNumber: self.sdpLineNumber,
  #|   sctpCauseCode: self.sctpCauseCode,
  #|   receivedAlert: self.receivedAlert,
  #|   sentAlert: self.sentAlert
  #| })

///|
/// Convert to JsValue
pub fn RTCErrorInit::to_js(self : RTCErrorInit) -> JsValue {
  RTCErrorInit::to_js_ffi(self)
}

///|
/// RTCIdentityProviderGlobalScope interface
pub type RTCIdentityProviderGlobalScope

///|
pub extern "js" fn RTCIdentityProviderGlobalScope::to_js_value(
  self : RTCIdentityProviderGlobalScope,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCIdentityProviderGlobalScope (unchecked)
pub extern "js" fn RTCIdentityProviderGlobalScope::from_js_value(
  v : JsValue,
) -> RTCIdentityProviderGlobalScope =
  #| (v) => v

///|
/// Safely cast JsValue to RTCIdentityProviderGlobalScope (checked with instanceof)
pub extern "js" fn RTCIdentityProviderGlobalScope::from_js_value_opt(
  v : JsValue,
) -> RTCIdentityProviderGlobalScope? =
  #| (v) => (v instanceof RTCIdentityProviderGlobalScope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCIdentityProviderGlobalScope (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_identity_provider_global_scope(
  self : JsValue,
) -> RTCIdentityProviderGlobalScope? =
  #| (self) => (self instanceof RTCIdentityProviderGlobalScope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCIdentityProviderGlobalScope (unchecked)
pub extern "js" fn JsValue::to_rtc_identity_provider_global_scope(
  self : JsValue,
) -> RTCIdentityProviderGlobalScope =
  #| (self) => self

///|
pub extern "js" fn RTCIdentityProviderGlobalScope::to_worker_global_scope(
  self : RTCIdentityProviderGlobalScope,
) -> WorkerGlobalScope =
  #| (self) => self

///|
pub extern "js" fn RTCIdentityProviderGlobalScope::to_event_target(
  self : RTCIdentityProviderGlobalScope,
) -> EventTarget =
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
/// Cast JsValue to RTCIdentityProviderRegistrar (unchecked)
pub extern "js" fn RTCIdentityProviderRegistrar::from_js_value(
  v : JsValue,
) -> RTCIdentityProviderRegistrar =
  #| (v) => v

///|
/// Safely cast JsValue to RTCIdentityProviderRegistrar (checked with instanceof)
pub extern "js" fn RTCIdentityProviderRegistrar::from_js_value_opt(
  v : JsValue,
) -> RTCIdentityProviderRegistrar? =
  #| (v) => (v instanceof RTCIdentityProviderRegistrar) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCIdentityProviderRegistrar (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_identity_provider_registrar(
  self : JsValue,
) -> RTCIdentityProviderRegistrar? =
  #| (self) => (self instanceof RTCIdentityProviderRegistrar) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCIdentityProviderRegistrar (unchecked)
pub extern "js" fn JsValue::to_rtc_identity_provider_registrar(
  self : JsValue,
) -> RTCIdentityProviderRegistrar =
  #| (self) => self

///|
extern "js" fn RTCIdentityProviderRegistrar::register_ffi(
  self : RTCIdentityProviderRegistrar,
  idp : JsValue,
) -> Unit =
  #| (self, idp) => self.register(idp)

///|
pub fn RTCIdentityProviderRegistrar::register(
  self : RTCIdentityProviderRegistrar,
  idp : RTCIdentityProvider,
) -> Unit {
  RTCIdentityProviderRegistrar::register_ffi(self, idp.to_js())
}

///|
/// RTCIdentityAssertion interface
pub type RTCIdentityAssertion

///|
pub extern "js" fn RTCIdentityAssertion::to_js_value(
  self : RTCIdentityAssertion,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RTCIdentityAssertion (unchecked)
pub extern "js" fn RTCIdentityAssertion::from_js_value(
  v : JsValue,
) -> RTCIdentityAssertion =
  #| (v) => v

///|
/// Safely cast JsValue to RTCIdentityAssertion (checked with instanceof)
pub extern "js" fn RTCIdentityAssertion::from_js_value_opt(
  v : JsValue,
) -> RTCIdentityAssertion? =
  #| (v) => (v instanceof RTCIdentityAssertion) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RTCIdentityAssertion (checked with instanceof)
pub extern "js" fn JsValue::as_rtc_identity_assertion(
  self : JsValue,
) -> RTCIdentityAssertion? =
  #| (self) => (self instanceof RTCIdentityAssertion) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RTCIdentityAssertion (unchecked)
pub extern "js" fn JsValue::to_rtc_identity_assertion(
  self : JsValue,
) -> RTCIdentityAssertion =
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
