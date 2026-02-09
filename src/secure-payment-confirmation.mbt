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
    SecurePaymentConfirmationAvailability::Available => "available"
    SecurePaymentConfirmationAvailability::UnavailableUnknownReason =>
      "unavailable-unknown-reason"
    SecurePaymentConfirmationAvailability::UnavailableFeatureNotEnabled =>
      "unavailable-feature-not-enabled"
    SecurePaymentConfirmationAvailability::UnavailableNoPermissionPolicy =>
      "unavailable-no-permission-policy"
    SecurePaymentConfirmationAvailability::UnavailableNoUserVerifyingPlatformAuthenticator =>
      "unavailable-no-user-verifying-platform-authenticator"
  }
}

///|
/// Parse from string value
pub fn SecurePaymentConfirmationAvailability::from_string(
  s : String,
) -> SecurePaymentConfirmationAvailability? {
  match s {
    "available" => Some(SecurePaymentConfirmationAvailability::Available)
    "unavailable-unknown-reason" =>
      Some(SecurePaymentConfirmationAvailability::UnavailableUnknownReason)
    "unavailable-feature-not-enabled" =>
      Some(SecurePaymentConfirmationAvailability::UnavailableFeatureNotEnabled)
    "unavailable-no-permission-policy" =>
      Some(SecurePaymentConfirmationAvailability::UnavailableNoPermissionPolicy)
    "unavailable-no-user-verifying-platform-authenticator" =>
      Some(
        SecurePaymentConfirmationAvailability::UnavailableNoUserVerifyingPlatformAuthenticator,
      )
    _ => None
  }
}

///|
/// SecurePaymentConfirmationRequest dictionary
pub(all) struct SecurePaymentConfirmationRequest {
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
/// Create a new SecurePaymentConfirmationRequest
pub fn SecurePaymentConfirmationRequest::new(
  challenge~ : BufferSource,
  instrument~ : PaymentCredentialInstrument,
) -> SecurePaymentConfirmationRequest {
  SecurePaymentConfirmationRequest::{
    challenge,
    rpId: "",
    credentialIds: [],
    instrument,
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
extern "js" fn SecurePaymentConfirmationRequest::to_js_ffi(
  self : SecurePaymentConfirmationRequest,
) -> JsValue =
  #| (self) => ({
  #|   challenge: self.challenge.to_js_value(),
  #|   rpId: self.rpId,
  #|   credentialIds: self.credentialIds,
  #|   instrument: self.instrument,
  #|   timeout: self.timeout,
  #|   payeeName: self.payeeName,
  #|   payeeOrigin: self.payeeOrigin,
  #|   paymentEntitiesLogos: ((() => { const v = self.paymentEntitiesLogos; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   extensions: ((() => { const v = self.extensions; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   browserBoundPubKeyCredParams: ((() => { const v = self.browserBoundPubKeyCredParams; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   locale: ((() => { const v = self.locale; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   showOptOut: (self.showOptOut === -1 ? undefined : self.showOptOut)
  #| })

///|
/// Convert to JsValue
pub fn SecurePaymentConfirmationRequest::to_js(
  self : SecurePaymentConfirmationRequest,
) -> JsValue {
  SecurePaymentConfirmationRequest::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsPaymentInputs dictionary
pub(all) struct AuthenticationExtensionsPaymentInputs {
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
extern "js" fn AuthenticationExtensionsPaymentInputs::to_js_ffi(
  self : AuthenticationExtensionsPaymentInputs,
) -> JsValue =
  #| (self) => ({
  #|   isPayment: (self.isPayment === -1 ? undefined : self.isPayment),
  #|   browserBoundPubKeyCredParams: ((() => { const v = self.browserBoundPubKeyCredParams; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   rpId: self.rpId,
  #|   topOrigin: self.topOrigin,
  #|   payeeName: self.payeeName,
  #|   payeeOrigin: self.payeeOrigin,
  #|   paymentEntitiesLogos: ((() => { const v = self.paymentEntitiesLogos; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   total: ((() => { const v = self.total; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   instrument: ((() => { const v = self.instrument; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsPaymentInputs::to_js(
  self : AuthenticationExtensionsPaymentInputs,
) -> JsValue {
  AuthenticationExtensionsPaymentInputs::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsPaymentOutputs dictionary
pub(all) struct AuthenticationExtensionsPaymentOutputs {
  browserBoundSignature : BrowserBoundSignature?
}

///|
/// Create a new AuthenticationExtensionsPaymentOutputs with default values
pub fn AuthenticationExtensionsPaymentOutputs::default() -> AuthenticationExtensionsPaymentOutputs {
  AuthenticationExtensionsPaymentOutputs::{ browserBoundSignature: None }
}

///|
extern "js" fn AuthenticationExtensionsPaymentOutputs::to_js_ffi(
  self : AuthenticationExtensionsPaymentOutputs,
) -> JsValue =
  #| (self) => ({
  #|   browserBoundSignature: ((() => { const v = self.browserBoundSignature; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsPaymentOutputs::to_js(
  self : AuthenticationExtensionsPaymentOutputs,
) -> JsValue {
  AuthenticationExtensionsPaymentOutputs::to_js_ffi(self)
}

///|
/// BrowserBoundSignature dictionary
pub(all) struct BrowserBoundSignature {
  signature : ArrayBuffer
}

///|
/// Create a new BrowserBoundSignature
pub fn BrowserBoundSignature::new(
  signature~ : ArrayBuffer,
) -> BrowserBoundSignature {
  BrowserBoundSignature::{ signature, }
}

///|
extern "js" fn BrowserBoundSignature::to_js_ffi(
  self : BrowserBoundSignature,
) -> JsValue =
  #| (self) => ({
  #|   signature: self.signature
  #| })

///|
/// Convert to JsValue
pub fn BrowserBoundSignature::to_js(self : BrowserBoundSignature) -> JsValue {
  BrowserBoundSignature::to_js_ffi(self)
}

///|
/// CollectedClientPaymentData dictionary
pub(all) struct CollectedClientPaymentData {
  payment : CollectedClientAdditionalPaymentDataOrCollectedClientAdditionalPaymentRegistrationData
}

///|
/// Create a new CollectedClientPaymentData
pub fn CollectedClientPaymentData::new(
  payment~ : CollectedClientAdditionalPaymentDataOrCollectedClientAdditionalPaymentRegistrationData,
) -> CollectedClientPaymentData {
  CollectedClientPaymentData::{ payment, }
}

///|
extern "js" fn CollectedClientPaymentData::to_js_ffi(
  self : CollectedClientPaymentData,
) -> JsValue =
  #| (self) => ({
  #|   payment: self.payment
  #| })

///|
/// Convert to JsValue
pub fn CollectedClientPaymentData::to_js(
  self : CollectedClientPaymentData,
) -> JsValue {
  CollectedClientPaymentData::to_js_ffi(self)
}

///|
/// CollectedClientAdditionalPaymentData dictionary
pub(all) struct CollectedClientAdditionalPaymentData {
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
/// Create a new CollectedClientAdditionalPaymentData
pub fn CollectedClientAdditionalPaymentData::new(
  total~ : PaymentCurrencyAmount,
  instrument~ : PaymentCredentialInstrument,
) -> CollectedClientAdditionalPaymentData {
  CollectedClientAdditionalPaymentData::{
    rpId: "",
    topOrigin: "",
    payeeName: None,
    payeeOrigin: None,
    paymentEntitiesLogos: None,
    total,
    instrument,
    browserBoundPublicKey: None,
  }
}

///|
extern "js" fn CollectedClientAdditionalPaymentData::to_js_ffi(
  self : CollectedClientAdditionalPaymentData,
) -> JsValue =
  #| (self) => ({
  #|   rpId: self.rpId,
  #|   topOrigin: self.topOrigin,
  #|   payeeName: self.payeeName,
  #|   payeeOrigin: self.payeeOrigin,
  #|   paymentEntitiesLogos: ((() => { const v = self.paymentEntitiesLogos; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   total: self.total,
  #|   instrument: self.instrument,
  #|   browserBoundPublicKey: self.browserBoundPublicKey
  #| })

///|
/// Convert to JsValue
pub fn CollectedClientAdditionalPaymentData::to_js(
  self : CollectedClientAdditionalPaymentData,
) -> JsValue {
  CollectedClientAdditionalPaymentData::to_js_ffi(self)
}

///|
/// CollectedClientAdditionalPaymentRegistrationData dictionary
pub(all) struct CollectedClientAdditionalPaymentRegistrationData {
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
extern "js" fn CollectedClientAdditionalPaymentRegistrationData::to_js_ffi(
  self : CollectedClientAdditionalPaymentRegistrationData,
) -> JsValue =
  #| (self) => ({
  #|   browserBoundPublicKey: self.browserBoundPublicKey
  #| })

///|
/// Convert to JsValue
pub fn CollectedClientAdditionalPaymentRegistrationData::to_js(
  self : CollectedClientAdditionalPaymentRegistrationData,
) -> JsValue {
  CollectedClientAdditionalPaymentRegistrationData::to_js_ffi(self)
}

///|
/// PaymentCredentialInstrument dictionary
pub(all) struct PaymentCredentialInstrument {
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
extern "js" fn PaymentCredentialInstrument::to_js_ffi(
  self : PaymentCredentialInstrument,
) -> JsValue =
  #| (self) => ({
  #|   displayName: self.displayName,
  #|   icon: self.icon,
  #|   iconMustBeShown: (self.iconMustBeShown === -1 ? undefined : self.iconMustBeShown),
  #|   details: self.details
  #| })

///|
/// Convert to JsValue
pub fn PaymentCredentialInstrument::to_js(
  self : PaymentCredentialInstrument,
) -> JsValue {
  PaymentCredentialInstrument::to_js_ffi(self)
}

///|
/// PaymentEntityLogo dictionary
pub(all) struct PaymentEntityLogo {
  url : String
  label : String
}

///|
/// Create a new PaymentEntityLogo with default values
pub fn PaymentEntityLogo::default() -> PaymentEntityLogo {
  PaymentEntityLogo::{ url: "", label: "" }
}

///|
extern "js" fn PaymentEntityLogo::to_js_ffi(
  self : PaymentEntityLogo,
) -> JsValue =
  #| (self) => ({
  #|   url: self.url,
  #|   label: self.label
  #| })

///|
/// Convert to JsValue
pub fn PaymentEntityLogo::to_js(self : PaymentEntityLogo) -> JsValue {
  PaymentEntityLogo::to_js_ffi(self)
}
