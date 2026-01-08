// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/secure-payment-confirmation

///|
/// SecurePaymentConfirmationAvailability enum
pub(all) enum SecurePaymentConfirmationAvailability {
  Available
  UnavailableUnknownReason
  UnavailableFeatureNotEnabled
  UnavailableNoPermissionPolicy
  UnavailableNoUserVerifyingPlatformAuthenticator
}

///|
/// Convert to string value
pub fn SecurePaymentConfirmationAvailability::to_string(
  self : SecurePaymentConfirmationAvailability,
) -> String {
  match self {
    Available => "available"
    UnavailableUnknownReason => "unavailable-unknown-reason"
    UnavailableFeatureNotEnabled => "unavailable-feature-not-enabled"
    UnavailableNoPermissionPolicy => "unavailable-no-permission-policy"
    UnavailableNoUserVerifyingPlatformAuthenticator =>
      "unavailable-no-user-verifying-platform-authenticator"
  }
}

///|
/// Parse from string value
pub fn SecurePaymentConfirmationAvailability::from_string(
  s : String,
) -> SecurePaymentConfirmationAvailability? {
  match s {
    "available" => Some(Available)
    "unavailable-unknown-reason" => Some(UnavailableUnknownReason)
    "unavailable-feature-not-enabled" => Some(UnavailableFeatureNotEnabled)
    "unavailable-no-permission-policy" => Some(UnavailableNoPermissionPolicy)
    "unavailable-no-user-verifying-platform-authenticator" =>
      Some(UnavailableNoUserVerifyingPlatformAuthenticator)
    _ => None
  }
}

///|
/// SecurePaymentConfirmationRequest dictionary
pub struct SecurePaymentConfirmationRequest {
  challenge : BufferSource
  rpId : String
  credentialIds : Array[BufferSource]
  instrument : PaymentCredentialInstrument
  timeout : Int?
  payeeName : String?
  payeeOrigin : String?
  paymentEntitiesLogos : Array[PaymentEntityLogo]?
  extensions : AuthenticationExtensionsClientInputs?
  browserBoundPubKeyCredParams : Array[PublicKeyCredentialParameters]?
  locale : Array[String]?
  showOptOut : Bool?
}

///|
/// Create a new SecurePaymentConfirmationRequest with default values
pub fn SecurePaymentConfirmationRequest::default() -> SecurePaymentConfirmationRequest {
  SecurePaymentConfirmationRequest::{
    challenge: panic(),
    rpId: "",
    credentialIds: [],
    instrument: panic(),
    timeout: None,
    payeeName: None,
    payeeOrigin: None,
    paymentEntitiesLogos: None,
    extensions: None,
    browserBoundPubKeyCredParams: None,
    locale: None,
    showOptOut: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn SecurePaymentConfirmationRequest::to_js(
  self : SecurePaymentConfirmationRequest,
) -> JsValue =
  #| (self) => ({
  #|   challenge: self.challenge,
  #|   rpId: self.rpId,
  #|   credentialIds: self.credentialIds,
  #|   instrument: self.instrument,
  #|   timeout: self.timeout,
  #|   payeeName: self.payeeName,
  #|   payeeOrigin: self.payeeOrigin,
  #|   paymentEntitiesLogos: self.paymentEntitiesLogos,
  #|   extensions: self.extensions,
  #|   browserBoundPubKeyCredParams: self.browserBoundPubKeyCredParams,
  #|   locale: self.locale,
  #|   showOptOut: self.showOptOut
  #| })

///|
/// AuthenticationExtensionsPaymentInputs dictionary
pub struct AuthenticationExtensionsPaymentInputs {
  isPayment : Bool?
  browserBoundPubKeyCredParams : Array[PublicKeyCredentialParameters]?
  rpId : String?
  topOrigin : String?
  payeeName : String?
  payeeOrigin : String?
  paymentEntitiesLogos : Array[PaymentEntityLogo]?
  total : PaymentCurrencyAmount?
  instrument : PaymentCredentialInstrument?
}

///|
/// Create a new AuthenticationExtensionsPaymentInputs with default values
pub fn AuthenticationExtensionsPaymentInputs::default() -> AuthenticationExtensionsPaymentInputs {
  AuthenticationExtensionsPaymentInputs::{
    isPayment: None,
    browserBoundPubKeyCredParams: None,
    rpId: None,
    topOrigin: None,
    payeeName: None,
    payeeOrigin: None,
    paymentEntitiesLogos: None,
    total: None,
    instrument: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsPaymentInputs::to_js(
  self : AuthenticationExtensionsPaymentInputs,
) -> JsValue =
  #| (self) => ({
  #|   isPayment: self.isPayment,
  #|   browserBoundPubKeyCredParams: self.browserBoundPubKeyCredParams,
  #|   rpId: self.rpId,
  #|   topOrigin: self.topOrigin,
  #|   payeeName: self.payeeName,
  #|   payeeOrigin: self.payeeOrigin,
  #|   paymentEntitiesLogos: self.paymentEntitiesLogos,
  #|   total: self.total,
  #|   instrument: self.instrument
  #| })

///|
/// AuthenticationExtensionsPaymentOutputs dictionary
pub struct AuthenticationExtensionsPaymentOutputs {
  browserBoundSignature : BrowserBoundSignature?
}

///|
/// Create a new AuthenticationExtensionsPaymentOutputs with default values
pub fn AuthenticationExtensionsPaymentOutputs::default() -> AuthenticationExtensionsPaymentOutputs {
  AuthenticationExtensionsPaymentOutputs::{ browserBoundSignature: None }
}

///|
/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsPaymentOutputs::to_js(
  self : AuthenticationExtensionsPaymentOutputs,
) -> JsValue =
  #| (self) => ({
  #|   browserBoundSignature: self.browserBoundSignature
  #| })

///|
/// BrowserBoundSignature dictionary
pub struct BrowserBoundSignature {
  signature : ArrayBuffer
}

///|
/// Create a new BrowserBoundSignature with default values
pub fn BrowserBoundSignature::default() -> BrowserBoundSignature {
  BrowserBoundSignature::{ signature: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn BrowserBoundSignature::to_js(
  self : BrowserBoundSignature,
) -> JsValue =
  #| (self) => ({
  #|   signature: self.signature
  #| })

///|
/// CollectedClientPaymentData dictionary
pub struct CollectedClientPaymentData {
  payment : JsValue
}

///|
/// Create a new CollectedClientPaymentData with default values
pub fn CollectedClientPaymentData::default() -> CollectedClientPaymentData {
  CollectedClientPaymentData::{ payment: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn CollectedClientPaymentData::to_js(
  self : CollectedClientPaymentData,
) -> JsValue =
  #| (self) => ({
  #|   payment: self.payment
  #| })

///|
/// CollectedClientAdditionalPaymentData dictionary
pub struct CollectedClientAdditionalPaymentData {
  rpId : String
  topOrigin : String
  payeeName : String?
  payeeOrigin : String?
  paymentEntitiesLogos : Array[PaymentEntityLogo]?
  total : PaymentCurrencyAmount
  instrument : PaymentCredentialInstrument
  browserBoundPublicKey : String?
}

///|
/// Create a new CollectedClientAdditionalPaymentData with default values
pub fn CollectedClientAdditionalPaymentData::default() -> CollectedClientAdditionalPaymentData {
  CollectedClientAdditionalPaymentData::{
    rpId: "",
    topOrigin: "",
    payeeName: None,
    payeeOrigin: None,
    paymentEntitiesLogos: None,
    total: panic(),
    instrument: panic(),
    browserBoundPublicKey: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn CollectedClientAdditionalPaymentData::to_js(
  self : CollectedClientAdditionalPaymentData,
) -> JsValue =
  #| (self) => ({
  #|   rpId: self.rpId,
  #|   topOrigin: self.topOrigin,
  #|   payeeName: self.payeeName,
  #|   payeeOrigin: self.payeeOrigin,
  #|   paymentEntitiesLogos: self.paymentEntitiesLogos,
  #|   total: self.total,
  #|   instrument: self.instrument,
  #|   browserBoundPublicKey: self.browserBoundPublicKey
  #| })

///|
/// CollectedClientAdditionalPaymentRegistrationData dictionary
pub struct CollectedClientAdditionalPaymentRegistrationData {
  browserBoundPublicKey : String?
}

///|
/// Create a new CollectedClientAdditionalPaymentRegistrationData with default values
pub fn CollectedClientAdditionalPaymentRegistrationData::default() -> CollectedClientAdditionalPaymentRegistrationData {
  CollectedClientAdditionalPaymentRegistrationData::{
    browserBoundPublicKey: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn CollectedClientAdditionalPaymentRegistrationData::to_js(
  self : CollectedClientAdditionalPaymentRegistrationData,
) -> JsValue =
  #| (self) => ({
  #|   browserBoundPublicKey: self.browserBoundPublicKey
  #| })

///|
/// PaymentCredentialInstrument dictionary
pub struct PaymentCredentialInstrument {
  displayName : String
  icon : String
  iconMustBeShown : Bool?
  details : String?
}

///|
/// Create a new PaymentCredentialInstrument with default values
pub fn PaymentCredentialInstrument::default() -> PaymentCredentialInstrument {
  PaymentCredentialInstrument::{
    displayName: "",
    icon: "",
    iconMustBeShown: None,
    details: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentCredentialInstrument::to_js(
  self : PaymentCredentialInstrument,
) -> JsValue =
  #| (self) => ({
  #|   displayName: self.displayName,
  #|   icon: self.icon,
  #|   iconMustBeShown: self.iconMustBeShown,
  #|   details: self.details
  #| })

///|
/// PaymentEntityLogo dictionary
pub struct PaymentEntityLogo {
  url : String
  label : String
}

///|
/// Create a new PaymentEntityLogo with default values
pub fn PaymentEntityLogo::default() -> PaymentEntityLogo {
  PaymentEntityLogo::{ url: "", label: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn PaymentEntityLogo::to_js(
  self : PaymentEntityLogo,
) -> JsValue =
  #| (self) => ({
  #|   url: self.url,
  #|   label: self.label
  #| })
