// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webauthn

///|
/// Base64URLString typedef
pub type Base64URLString = String

///|
/// PublicKeyCredentialJSON typedef
pub type PublicKeyCredentialJSON = JsValue

///|
/// PublicKeyCredentialClientCapabilities typedef
pub type PublicKeyCredentialClientCapabilities = JsValue

///|
/// COSEAlgorithmIdentifier typedef
pub type COSEAlgorithmIdentifier = Int

///|
/// AuthenticatorAttachment enum
pub(all) enum AuthenticatorAttachment {
  Platform
  CrossPlatform
}

///|
/// Convert to string value
pub fn AuthenticatorAttachment::to_string(
  self : AuthenticatorAttachment,
) -> String {
  match self {
    AuthenticatorAttachment::Platform => "platform"
    AuthenticatorAttachment::CrossPlatform => "cross-platform"
  }
}

///|
/// Parse from string value
pub fn AuthenticatorAttachment::from_string(
  s : String,
) -> AuthenticatorAttachment? {
  match s {
    "platform" => Some(AuthenticatorAttachment::Platform)
    "cross-platform" => Some(AuthenticatorAttachment::CrossPlatform)
    _ => None
  }
}

///|
/// ResidentKeyRequirement enum
pub(all) enum ResidentKeyRequirement {
  Discouraged
  Preferred
  Required
}

///|
/// Convert to string value
pub fn ResidentKeyRequirement::to_string(
  self : ResidentKeyRequirement,
) -> String {
  match self {
    ResidentKeyRequirement::Discouraged => "discouraged"
    ResidentKeyRequirement::Preferred => "preferred"
    ResidentKeyRequirement::Required => "required"
  }
}

///|
/// Parse from string value
pub fn ResidentKeyRequirement::from_string(
  s : String,
) -> ResidentKeyRequirement? {
  match s {
    "discouraged" => Some(ResidentKeyRequirement::Discouraged)
    "preferred" => Some(ResidentKeyRequirement::Preferred)
    "required" => Some(ResidentKeyRequirement::Required)
    _ => None
  }
}

///|
/// AttestationConveyancePreference enum
pub(all) enum AttestationConveyancePreference {
  None
  Indirect
  Direct
  Enterprise
}

///|
/// Convert to string value
pub fn AttestationConveyancePreference::to_string(
  self : AttestationConveyancePreference,
) -> String {
  match self {
    AttestationConveyancePreference::None => "none"
    AttestationConveyancePreference::Indirect => "indirect"
    AttestationConveyancePreference::Direct => "direct"
    AttestationConveyancePreference::Enterprise => "enterprise"
  }
}

///|
/// Parse from string value
pub fn AttestationConveyancePreference::from_string(
  s : String,
) -> AttestationConveyancePreference? {
  match s {
    "none" => Some(AttestationConveyancePreference::None)
    "indirect" => Some(AttestationConveyancePreference::Indirect)
    "direct" => Some(AttestationConveyancePreference::Direct)
    "enterprise" => Some(AttestationConveyancePreference::Enterprise)
    _ => None
  }
}

///|
/// TokenBindingStatus enum
pub(all) enum TokenBindingStatus {
  Present
  Supported
}

///|
/// Convert to string value
pub fn TokenBindingStatus::to_string(self : TokenBindingStatus) -> String {
  match self {
    TokenBindingStatus::Present => "present"
    TokenBindingStatus::Supported => "supported"
  }
}

///|
/// Parse from string value
pub fn TokenBindingStatus::from_string(s : String) -> TokenBindingStatus? {
  match s {
    "present" => Some(TokenBindingStatus::Present)
    "supported" => Some(TokenBindingStatus::Supported)
    _ => None
  }
}

///|
/// PublicKeyCredentialType enum
pub(all) enum PublicKeyCredentialType {
  PublicKey
}

///|
/// Convert to string value
pub fn PublicKeyCredentialType::to_string(
  self : PublicKeyCredentialType,
) -> String {
  match self {
    PublicKeyCredentialType::PublicKey => "public-key"
  }
}

///|
/// Parse from string value
pub fn PublicKeyCredentialType::from_string(
  s : String,
) -> PublicKeyCredentialType? {
  match s {
    "public-key" => Some(PublicKeyCredentialType::PublicKey)
    _ => None
  }
}

///|
/// AuthenticatorTransport enum
pub(all) enum AuthenticatorTransport {
  Usb
  Nfc
  Ble
  SmartCard
  Hybrid
  Internal
}

///|
/// Convert to string value
pub fn AuthenticatorTransport::to_string(
  self : AuthenticatorTransport,
) -> String {
  match self {
    AuthenticatorTransport::Usb => "usb"
    AuthenticatorTransport::Nfc => "nfc"
    AuthenticatorTransport::Ble => "ble"
    AuthenticatorTransport::SmartCard => "smart-card"
    AuthenticatorTransport::Hybrid => "hybrid"
    AuthenticatorTransport::Internal => "internal"
  }
}

///|
/// Parse from string value
pub fn AuthenticatorTransport::from_string(
  s : String,
) -> AuthenticatorTransport? {
  match s {
    "usb" => Some(AuthenticatorTransport::Usb)
    "nfc" => Some(AuthenticatorTransport::Nfc)
    "ble" => Some(AuthenticatorTransport::Ble)
    "smart-card" => Some(AuthenticatorTransport::SmartCard)
    "hybrid" => Some(AuthenticatorTransport::Hybrid)
    "internal" => Some(AuthenticatorTransport::Internal)
    _ => None
  }
}

///|
/// UserVerificationRequirement enum
pub(all) enum UserVerificationRequirement {
  Required
  Preferred
  Discouraged
}

///|
/// Convert to string value
pub fn UserVerificationRequirement::to_string(
  self : UserVerificationRequirement,
) -> String {
  match self {
    UserVerificationRequirement::Required => "required"
    UserVerificationRequirement::Preferred => "preferred"
    UserVerificationRequirement::Discouraged => "discouraged"
  }
}

///|
/// Parse from string value
pub fn UserVerificationRequirement::from_string(
  s : String,
) -> UserVerificationRequirement? {
  match s {
    "required" => Some(UserVerificationRequirement::Required)
    "preferred" => Some(UserVerificationRequirement::Preferred)
    "discouraged" => Some(UserVerificationRequirement::Discouraged)
    _ => None
  }
}

///|
/// ClientCapability enum
pub(all) enum ClientCapability {
  ConditionalCreate
  ConditionalGet
  HybridTransport
  PasskeyPlatformAuthenticator
  UserVerifyingPlatformAuthenticator
  RelatedOrigins
  SignalAllAcceptedCredentials
  SignalCurrentUserDetails
  SignalUnknownCredential
}

///|
/// Convert to string value
pub fn ClientCapability::to_string(self : ClientCapability) -> String {
  match self {
    ClientCapability::ConditionalCreate => "conditionalCreate"
    ClientCapability::ConditionalGet => "conditionalGet"
    ClientCapability::HybridTransport => "hybridTransport"
    ClientCapability::PasskeyPlatformAuthenticator =>
      "passkeyPlatformAuthenticator"
    ClientCapability::UserVerifyingPlatformAuthenticator =>
      "userVerifyingPlatformAuthenticator"
    ClientCapability::RelatedOrigins => "relatedOrigins"
    ClientCapability::SignalAllAcceptedCredentials =>
      "signalAllAcceptedCredentials"
    ClientCapability::SignalCurrentUserDetails => "signalCurrentUserDetails"
    ClientCapability::SignalUnknownCredential => "signalUnknownCredential"
  }
}

///|
/// Parse from string value
pub fn ClientCapability::from_string(s : String) -> ClientCapability? {
  match s {
    "conditionalCreate" => Some(ClientCapability::ConditionalCreate)
    "conditionalGet" => Some(ClientCapability::ConditionalGet)
    "hybridTransport" => Some(ClientCapability::HybridTransport)
    "passkeyPlatformAuthenticator" =>
      Some(ClientCapability::PasskeyPlatformAuthenticator)
    "userVerifyingPlatformAuthenticator" =>
      Some(ClientCapability::UserVerifyingPlatformAuthenticator)
    "relatedOrigins" => Some(ClientCapability::RelatedOrigins)
    "signalAllAcceptedCredentials" =>
      Some(ClientCapability::SignalAllAcceptedCredentials)
    "signalCurrentUserDetails" =>
      Some(ClientCapability::SignalCurrentUserDetails)
    "signalUnknownCredential" => Some(ClientCapability::SignalUnknownCredential)
    _ => None
  }
}

///|
/// PublicKeyCredentialHint enum
pub(all) enum PublicKeyCredentialHint {
  SecurityKey
  ClientDevice
  Hybrid
}

///|
/// Convert to string value
pub fn PublicKeyCredentialHint::to_string(
  self : PublicKeyCredentialHint,
) -> String {
  match self {
    PublicKeyCredentialHint::SecurityKey => "security-key"
    PublicKeyCredentialHint::ClientDevice => "client-device"
    PublicKeyCredentialHint::Hybrid => "hybrid"
  }
}

///|
/// Parse from string value
pub fn PublicKeyCredentialHint::from_string(
  s : String,
) -> PublicKeyCredentialHint? {
  match s {
    "security-key" => Some(PublicKeyCredentialHint::SecurityKey)
    "client-device" => Some(PublicKeyCredentialHint::ClientDevice)
    "hybrid" => Some(PublicKeyCredentialHint::Hybrid)
    _ => None
  }
}

///|
/// LargeBlobSupport enum
pub(all) enum LargeBlobSupport {
  Required
  Preferred
}

///|
/// Convert to string value
pub fn LargeBlobSupport::to_string(self : LargeBlobSupport) -> String {
  match self {
    LargeBlobSupport::Required => "required"
    LargeBlobSupport::Preferred => "preferred"
  }
}

///|
/// Parse from string value
pub fn LargeBlobSupport::from_string(s : String) -> LargeBlobSupport? {
  match s {
    "required" => Some(LargeBlobSupport::Required)
    "preferred" => Some(LargeBlobSupport::Preferred)
    _ => None
  }
}

///|
/// RegistrationResponseJSON dictionary
pub(all) struct RegistrationResponseJSON {
  id : String
  rawId : Base64URLString
  response : AuthenticatorAttestationResponseJSON
  authenticatorAttachment : String?
  clientExtensionResults : AuthenticationExtensionsClientOutputsJSON
  type_ : String
}

///|
/// Create a new RegistrationResponseJSON
pub fn RegistrationResponseJSON::new(
  rawId~ : Base64URLString,
  response~ : AuthenticatorAttestationResponseJSON,
  clientExtensionResults~ : AuthenticationExtensionsClientOutputsJSON,
) -> RegistrationResponseJSON {
  RegistrationResponseJSON::{
    id: "",
    rawId,
    response,
    authenticatorAttachment: None,
    clientExtensionResults,
    type_: "",
  }
}

///|
extern "js" fn RegistrationResponseJSON::to_js_ffi(
  self : RegistrationResponseJSON,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   rawId: self.rawId,
  #|   response: self.response,
  #|   authenticatorAttachment: self.authenticatorAttachment,
  #|   clientExtensionResults: self.clientExtensionResults,
  #|   type: self.type_
  #| })

///|
/// Convert to JsValue
pub fn RegistrationResponseJSON::to_js(
  self : RegistrationResponseJSON,
) -> JsValue {
  RegistrationResponseJSON::to_js_ffi(self)
}

///|
/// AuthenticatorAttestationResponseJSON dictionary
pub(all) struct AuthenticatorAttestationResponseJSON {
  clientDataJSON : Base64URLString
  authenticatorData : Base64URLString
  transports : Array[String]
  publicKey : Base64URLString?
  publicKeyAlgorithm : COSEAlgorithmIdentifier
  attestationObject : Base64URLString
}

///|
/// Create a new AuthenticatorAttestationResponseJSON
pub fn AuthenticatorAttestationResponseJSON::new(
  clientDataJSON~ : Base64URLString,
  authenticatorData~ : Base64URLString,
  publicKeyAlgorithm~ : COSEAlgorithmIdentifier,
  attestationObject~ : Base64URLString,
) -> AuthenticatorAttestationResponseJSON {
  AuthenticatorAttestationResponseJSON::{
    clientDataJSON,
    authenticatorData,
    transports: [],
    publicKey: None,
    publicKeyAlgorithm,
    attestationObject,
  }
}

///|
extern "js" fn AuthenticatorAttestationResponseJSON::to_js_ffi(
  self : AuthenticatorAttestationResponseJSON,
) -> JsValue =
  #| (self) => ({
  #|   clientDataJSON: self.clientDataJSON,
  #|   authenticatorData: self.authenticatorData,
  #|   transports: self.transports,
  #|   publicKey: ((() => { const v = self.publicKey; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   publicKeyAlgorithm: self.publicKeyAlgorithm,
  #|   attestationObject: self.attestationObject
  #| })

///|
/// Convert to JsValue
pub fn AuthenticatorAttestationResponseJSON::to_js(
  self : AuthenticatorAttestationResponseJSON,
) -> JsValue {
  AuthenticatorAttestationResponseJSON::to_js_ffi(self)
}

///|
/// AuthenticationResponseJSON dictionary
pub(all) struct AuthenticationResponseJSON {
  id : String
  rawId : Base64URLString
  response : AuthenticatorAssertionResponseJSON
  authenticatorAttachment : String?
  clientExtensionResults : AuthenticationExtensionsClientOutputsJSON
  type_ : String
}

///|
/// Create a new AuthenticationResponseJSON
pub fn AuthenticationResponseJSON::new(
  rawId~ : Base64URLString,
  response~ : AuthenticatorAssertionResponseJSON,
  clientExtensionResults~ : AuthenticationExtensionsClientOutputsJSON,
) -> AuthenticationResponseJSON {
  AuthenticationResponseJSON::{
    id: "",
    rawId,
    response,
    authenticatorAttachment: None,
    clientExtensionResults,
    type_: "",
  }
}

///|
extern "js" fn AuthenticationResponseJSON::to_js_ffi(
  self : AuthenticationResponseJSON,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   rawId: self.rawId,
  #|   response: self.response,
  #|   authenticatorAttachment: self.authenticatorAttachment,
  #|   clientExtensionResults: self.clientExtensionResults,
  #|   type: self.type_
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationResponseJSON::to_js(
  self : AuthenticationResponseJSON,
) -> JsValue {
  AuthenticationResponseJSON::to_js_ffi(self)
}

///|
/// AuthenticatorAssertionResponseJSON dictionary
pub(all) struct AuthenticatorAssertionResponseJSON {
  clientDataJSON : Base64URLString
  authenticatorData : Base64URLString
  signature : Base64URLString
  userHandle : Base64URLString?
}

///|
/// Create a new AuthenticatorAssertionResponseJSON
pub fn AuthenticatorAssertionResponseJSON::new(
  clientDataJSON~ : Base64URLString,
  authenticatorData~ : Base64URLString,
  signature~ : Base64URLString,
) -> AuthenticatorAssertionResponseJSON {
  AuthenticatorAssertionResponseJSON::{
    clientDataJSON,
    authenticatorData,
    signature,
    userHandle: None,
  }
}

///|
extern "js" fn AuthenticatorAssertionResponseJSON::to_js_ffi(
  self : AuthenticatorAssertionResponseJSON,
) -> JsValue =
  #| (self) => ({
  #|   clientDataJSON: self.clientDataJSON,
  #|   authenticatorData: self.authenticatorData,
  #|   signature: self.signature,
  #|   userHandle: ((() => { const v = self.userHandle; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticatorAssertionResponseJSON::to_js(
  self : AuthenticatorAssertionResponseJSON,
) -> JsValue {
  AuthenticatorAssertionResponseJSON::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsClientOutputsJSON dictionary
pub(all) struct AuthenticationExtensionsClientOutputsJSON {
  appid : Bool?
  appidExclude : Bool?
  credProps : CredentialPropertiesOutput?
  prf : AuthenticationExtensionsPRFOutputsJSON?
  largeBlob : AuthenticationExtensionsLargeBlobOutputsJSON?
}

///|
/// Create a new AuthenticationExtensionsClientOutputsJSON with default values
pub fn AuthenticationExtensionsClientOutputsJSON::default() -> AuthenticationExtensionsClientOutputsJSON {
  AuthenticationExtensionsClientOutputsJSON::{
    appid: None,
    appidExclude: None,
    credProps: None,
    prf: None,
    largeBlob: None,
  }
}

///|
extern "js" fn AuthenticationExtensionsClientOutputsJSON::to_js_ffi(
  self : AuthenticationExtensionsClientOutputsJSON,
) -> JsValue =
  #| (self) => ({
  #|   appid: (self.appid === -1 ? undefined : self.appid),
  #|   appidExclude: (self.appidExclude === -1 ? undefined : self.appidExclude),
  #|   credProps: ((() => { const v = self.credProps; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   prf: ((() => { const v = self.prf; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   largeBlob: ((() => { const v = self.largeBlob; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsClientOutputsJSON::to_js(
  self : AuthenticationExtensionsClientOutputsJSON,
) -> JsValue {
  AuthenticationExtensionsClientOutputsJSON::to_js_ffi(self)
}

///|
/// PublicKeyCredentialCreationOptionsJSON dictionary
pub(all) struct PublicKeyCredentialCreationOptionsJSON {
  rp : PublicKeyCredentialRpEntity
  user : PublicKeyCredentialUserEntityJSON
  challenge : Base64URLString
  pubKeyCredParams : Array[PublicKeyCredentialParameters]
  timeout : Int?
  excludeCredentials : Array[PublicKeyCredentialDescriptorJSON]?
  authenticatorSelection : AuthenticatorSelectionCriteria?
  hints : Array[String]?
  attestation : String?
  attestationFormats : Array[String]?
  extensions : AuthenticationExtensionsClientInputsJSON?
}

///|
/// Create a new PublicKeyCredentialCreationOptionsJSON
pub fn PublicKeyCredentialCreationOptionsJSON::new(
  rp~ : PublicKeyCredentialRpEntity,
  user~ : PublicKeyCredentialUserEntityJSON,
  challenge~ : Base64URLString,
) -> PublicKeyCredentialCreationOptionsJSON {
  PublicKeyCredentialCreationOptionsJSON::{
    rp,
    user,
    challenge,
    pubKeyCredParams: [],
    timeout: None,
    excludeCredentials: None,
    authenticatorSelection: None,
    hints: None,
    attestation: None,
    attestationFormats: None,
    extensions: None,
  }
}

///|
extern "js" fn PublicKeyCredentialCreationOptionsJSON::to_js_ffi(
  self : PublicKeyCredentialCreationOptionsJSON,
) -> JsValue =
  #| (self) => ({
  #|   rp: self.rp,
  #|   user: self.user,
  #|   challenge: self.challenge,
  #|   pubKeyCredParams: self.pubKeyCredParams,
  #|   timeout: self.timeout,
  #|   excludeCredentials: ((() => { const v = self.excludeCredentials; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   authenticatorSelection: ((() => { const v = self.authenticatorSelection; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   hints: ((() => { const v = self.hints; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   attestation: self.attestation,
  #|   attestationFormats: ((() => { const v = self.attestationFormats; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   extensions: ((() => { const v = self.extensions; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PublicKeyCredentialCreationOptionsJSON::to_js(
  self : PublicKeyCredentialCreationOptionsJSON,
) -> JsValue {
  PublicKeyCredentialCreationOptionsJSON::to_js_ffi(self)
}

///|
/// PublicKeyCredentialUserEntityJSON dictionary
pub(all) struct PublicKeyCredentialUserEntityJSON {
  id : Base64URLString
  name : String
  displayName : String
}

///|
/// Create a new PublicKeyCredentialUserEntityJSON
pub fn PublicKeyCredentialUserEntityJSON::new(
  id~ : Base64URLString,
) -> PublicKeyCredentialUserEntityJSON {
  PublicKeyCredentialUserEntityJSON::{ id, name: "", displayName: "" }
}

///|
extern "js" fn PublicKeyCredentialUserEntityJSON::to_js_ffi(
  self : PublicKeyCredentialUserEntityJSON,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   name: self.name,
  #|   displayName: self.displayName
  #| })

///|
/// Convert to JsValue
pub fn PublicKeyCredentialUserEntityJSON::to_js(
  self : PublicKeyCredentialUserEntityJSON,
) -> JsValue {
  PublicKeyCredentialUserEntityJSON::to_js_ffi(self)
}

///|
/// PublicKeyCredentialDescriptorJSON dictionary
pub(all) struct PublicKeyCredentialDescriptorJSON {
  type_ : String
  id : Base64URLString
  transports : Array[String]?
}

///|
/// Create a new PublicKeyCredentialDescriptorJSON
pub fn PublicKeyCredentialDescriptorJSON::new(
  id~ : Base64URLString,
) -> PublicKeyCredentialDescriptorJSON {
  PublicKeyCredentialDescriptorJSON::{ type_: "", id, transports: None }
}

///|
extern "js" fn PublicKeyCredentialDescriptorJSON::to_js_ffi(
  self : PublicKeyCredentialDescriptorJSON,
) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   id: self.id,
  #|   transports: ((() => { const v = self.transports; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PublicKeyCredentialDescriptorJSON::to_js(
  self : PublicKeyCredentialDescriptorJSON,
) -> JsValue {
  PublicKeyCredentialDescriptorJSON::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsClientInputsJSON dictionary
pub(all) struct AuthenticationExtensionsClientInputsJSON {
  appid : String?
  appidExclude : String?
  credProps : Bool?
  prf : AuthenticationExtensionsPRFInputsJSON?
  largeBlob : AuthenticationExtensionsLargeBlobInputsJSON?
}

///|
/// Create a new AuthenticationExtensionsClientInputsJSON with default values
pub fn AuthenticationExtensionsClientInputsJSON::default() -> AuthenticationExtensionsClientInputsJSON {
  AuthenticationExtensionsClientInputsJSON::{
    appid: None,
    appidExclude: None,
    credProps: None,
    prf: None,
    largeBlob: None,
  }
}

///|
extern "js" fn AuthenticationExtensionsClientInputsJSON::to_js_ffi(
  self : AuthenticationExtensionsClientInputsJSON,
) -> JsValue =
  #| (self) => ({
  #|   appid: self.appid,
  #|   appidExclude: self.appidExclude,
  #|   credProps: (self.credProps === -1 ? undefined : self.credProps),
  #|   prf: ((() => { const v = self.prf; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   largeBlob: ((() => { const v = self.largeBlob; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsClientInputsJSON::to_js(
  self : AuthenticationExtensionsClientInputsJSON,
) -> JsValue {
  AuthenticationExtensionsClientInputsJSON::to_js_ffi(self)
}

///|
/// PublicKeyCredentialRequestOptionsJSON dictionary
pub(all) struct PublicKeyCredentialRequestOptionsJSON {
  challenge : Base64URLString
  timeout : Int?
  rpId : String?
  allowCredentials : Array[PublicKeyCredentialDescriptorJSON]?
  userVerification : String?
  hints : Array[String]?
  extensions : AuthenticationExtensionsClientInputsJSON?
}

///|
/// Create a new PublicKeyCredentialRequestOptionsJSON
pub fn PublicKeyCredentialRequestOptionsJSON::new(
  challenge~ : Base64URLString,
) -> PublicKeyCredentialRequestOptionsJSON {
  PublicKeyCredentialRequestOptionsJSON::{
    challenge,
    timeout: None,
    rpId: None,
    allowCredentials: None,
    userVerification: None,
    hints: None,
    extensions: None,
  }
}

///|
extern "js" fn PublicKeyCredentialRequestOptionsJSON::to_js_ffi(
  self : PublicKeyCredentialRequestOptionsJSON,
) -> JsValue =
  #| (self) => ({
  #|   challenge: self.challenge,
  #|   timeout: self.timeout,
  #|   rpId: self.rpId,
  #|   allowCredentials: ((() => { const v = self.allowCredentials; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   userVerification: self.userVerification,
  #|   hints: ((() => { const v = self.hints; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   extensions: ((() => { const v = self.extensions; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PublicKeyCredentialRequestOptionsJSON::to_js(
  self : PublicKeyCredentialRequestOptionsJSON,
) -> JsValue {
  PublicKeyCredentialRequestOptionsJSON::to_js_ffi(self)
}

///|
/// UnknownCredentialOptions dictionary
pub(all) struct UnknownCredentialOptions {
  rpId : String
  credentialId : Base64URLString
}

///|
/// Create a new UnknownCredentialOptions
pub fn UnknownCredentialOptions::new(
  credentialId~ : Base64URLString,
) -> UnknownCredentialOptions {
  UnknownCredentialOptions::{ rpId: "", credentialId }
}

///|
extern "js" fn UnknownCredentialOptions::to_js_ffi(
  self : UnknownCredentialOptions,
) -> JsValue =
  #| (self) => ({
  #|   rpId: self.rpId,
  #|   credentialId: self.credentialId
  #| })

///|
/// Convert to JsValue
pub fn UnknownCredentialOptions::to_js(
  self : UnknownCredentialOptions,
) -> JsValue {
  UnknownCredentialOptions::to_js_ffi(self)
}

///|
/// AllAcceptedCredentialsOptions dictionary
pub(all) struct AllAcceptedCredentialsOptions {
  rpId : String
  userId : Base64URLString
  allAcceptedCredentialIds : Array[Base64URLString]
}

///|
/// Create a new AllAcceptedCredentialsOptions
pub fn AllAcceptedCredentialsOptions::new(
  userId~ : Base64URLString,
) -> AllAcceptedCredentialsOptions {
  AllAcceptedCredentialsOptions::{
    rpId: "",
    userId,
    allAcceptedCredentialIds: [],
  }
}

///|
extern "js" fn AllAcceptedCredentialsOptions::to_js_ffi(
  self : AllAcceptedCredentialsOptions,
) -> JsValue =
  #| (self) => ({
  #|   rpId: self.rpId,
  #|   userId: self.userId,
  #|   allAcceptedCredentialIds: self.allAcceptedCredentialIds
  #| })

///|
/// Convert to JsValue
pub fn AllAcceptedCredentialsOptions::to_js(
  self : AllAcceptedCredentialsOptions,
) -> JsValue {
  AllAcceptedCredentialsOptions::to_js_ffi(self)
}

///|
/// CurrentUserDetailsOptions dictionary
pub(all) struct CurrentUserDetailsOptions {
  rpId : String
  userId : Base64URLString
  name : String
  displayName : String
}

///|
/// Create a new CurrentUserDetailsOptions
pub fn CurrentUserDetailsOptions::new(
  userId~ : Base64URLString,
) -> CurrentUserDetailsOptions {
  CurrentUserDetailsOptions::{ rpId: "", userId, name: "", displayName: "" }
}

///|
extern "js" fn CurrentUserDetailsOptions::to_js_ffi(
  self : CurrentUserDetailsOptions,
) -> JsValue =
  #| (self) => ({
  #|   rpId: self.rpId,
  #|   userId: self.userId,
  #|   name: self.name,
  #|   displayName: self.displayName
  #| })

///|
/// Convert to JsValue
pub fn CurrentUserDetailsOptions::to_js(
  self : CurrentUserDetailsOptions,
) -> JsValue {
  CurrentUserDetailsOptions::to_js_ffi(self)
}

///|
/// PublicKeyCredentialParameters dictionary
pub(all) struct PublicKeyCredentialParameters {
  type_ : String
  alg : COSEAlgorithmIdentifier
}

///|
/// Create a new PublicKeyCredentialParameters
pub fn PublicKeyCredentialParameters::new(
  alg~ : COSEAlgorithmIdentifier,
) -> PublicKeyCredentialParameters {
  PublicKeyCredentialParameters::{ type_: "", alg }
}

///|
extern "js" fn PublicKeyCredentialParameters::to_js_ffi(
  self : PublicKeyCredentialParameters,
) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   alg: self.alg
  #| })

///|
/// Convert to JsValue
pub fn PublicKeyCredentialParameters::to_js(
  self : PublicKeyCredentialParameters,
) -> JsValue {
  PublicKeyCredentialParameters::to_js_ffi(self)
}

///|
/// PublicKeyCredentialCreationOptions dictionary
pub(all) struct PublicKeyCredentialCreationOptions {
  rp : PublicKeyCredentialRpEntity
  user : PublicKeyCredentialUserEntity
  challenge : BufferSource
  pubKeyCredParams : Array[PublicKeyCredentialParameters]
  timeout : Int?
  excludeCredentials : Array[PublicKeyCredentialDescriptor]?
  authenticatorSelection : AuthenticatorSelectionCriteria?
  hints : Array[String]?
  attestation : String?
  attestationFormats : Array[String]?
  extensions : AuthenticationExtensionsClientInputs?
}

///|
/// Create a new PublicKeyCredentialCreationOptions
pub fn PublicKeyCredentialCreationOptions::new(
  rp~ : PublicKeyCredentialRpEntity,
  user~ : PublicKeyCredentialUserEntity,
  challenge~ : BufferSource,
) -> PublicKeyCredentialCreationOptions {
  PublicKeyCredentialCreationOptions::{
    rp,
    user,
    challenge,
    pubKeyCredParams: [],
    timeout: None,
    excludeCredentials: None,
    authenticatorSelection: None,
    hints: None,
    attestation: None,
    attestationFormats: None,
    extensions: None,
  }
}

///|
extern "js" fn PublicKeyCredentialCreationOptions::to_js_ffi(
  self : PublicKeyCredentialCreationOptions,
) -> JsValue =
  #| (self) => ({
  #|   rp: self.rp,
  #|   user: self.user,
  #|   challenge: self.challenge.to_js_value(),
  #|   pubKeyCredParams: self.pubKeyCredParams,
  #|   timeout: self.timeout,
  #|   excludeCredentials: ((() => { const v = self.excludeCredentials; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   authenticatorSelection: ((() => { const v = self.authenticatorSelection; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   hints: ((() => { const v = self.hints; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   attestation: self.attestation,
  #|   attestationFormats: ((() => { const v = self.attestationFormats; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   extensions: ((() => { const v = self.extensions; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PublicKeyCredentialCreationOptions::to_js(
  self : PublicKeyCredentialCreationOptions,
) -> JsValue {
  PublicKeyCredentialCreationOptions::to_js_ffi(self)
}

///|
/// PublicKeyCredentialEntity dictionary
pub(all) struct PublicKeyCredentialEntity {
  name : String
}

///|
/// Create a new PublicKeyCredentialEntity with default values
pub fn PublicKeyCredentialEntity::default() -> PublicKeyCredentialEntity {
  PublicKeyCredentialEntity::{ name: "" }
}

///|
extern "js" fn PublicKeyCredentialEntity::to_js_ffi(
  self : PublicKeyCredentialEntity,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name
  #| })

///|
/// Convert to JsValue
pub fn PublicKeyCredentialEntity::to_js(
  self : PublicKeyCredentialEntity,
) -> JsValue {
  PublicKeyCredentialEntity::to_js_ffi(self)
}

///|
/// PublicKeyCredentialRpEntity dictionary
pub(all) struct PublicKeyCredentialRpEntity {
  name : String
  id : String?
}

///|
/// Create a new PublicKeyCredentialRpEntity with default values
pub fn PublicKeyCredentialRpEntity::default() -> PublicKeyCredentialRpEntity {
  PublicKeyCredentialRpEntity::{ name: "", id: None }
}

///|
extern "js" fn PublicKeyCredentialRpEntity::to_js_ffi(
  self : PublicKeyCredentialRpEntity,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   id: self.id
  #| })

///|
/// Convert to JsValue
pub fn PublicKeyCredentialRpEntity::to_js(
  self : PublicKeyCredentialRpEntity,
) -> JsValue {
  PublicKeyCredentialRpEntity::to_js_ffi(self)
}

///|
/// PublicKeyCredentialUserEntity dictionary
pub(all) struct PublicKeyCredentialUserEntity {
  name : String
  id : BufferSource
  displayName : String
}

///|
/// Create a new PublicKeyCredentialUserEntity
pub fn PublicKeyCredentialUserEntity::new(
  id~ : BufferSource,
) -> PublicKeyCredentialUserEntity {
  PublicKeyCredentialUserEntity::{ name: "", id, displayName: "" }
}

///|
extern "js" fn PublicKeyCredentialUserEntity::to_js_ffi(
  self : PublicKeyCredentialUserEntity,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   id: self.id.to_js_value(),
  #|   displayName: self.displayName
  #| })

///|
/// Convert to JsValue
pub fn PublicKeyCredentialUserEntity::to_js(
  self : PublicKeyCredentialUserEntity,
) -> JsValue {
  PublicKeyCredentialUserEntity::to_js_ffi(self)
}

///|
/// AuthenticatorSelectionCriteria dictionary
pub(all) struct AuthenticatorSelectionCriteria {
  authenticatorAttachment : String?
  residentKey : String?
  requireResidentKey : Bool?
  userVerification : String?
}

///|
/// Create a new AuthenticatorSelectionCriteria with default values
pub fn AuthenticatorSelectionCriteria::default() -> AuthenticatorSelectionCriteria {
  AuthenticatorSelectionCriteria::{
    authenticatorAttachment: None,
    residentKey: None,
    requireResidentKey: None,
    userVerification: None,
  }
}

///|
extern "js" fn AuthenticatorSelectionCriteria::to_js_ffi(
  self : AuthenticatorSelectionCriteria,
) -> JsValue =
  #| (self) => ({
  #|   authenticatorAttachment: self.authenticatorAttachment,
  #|   residentKey: self.residentKey,
  #|   requireResidentKey: (self.requireResidentKey === -1 ? undefined : self.requireResidentKey),
  #|   userVerification: self.userVerification
  #| })

///|
/// Convert to JsValue
pub fn AuthenticatorSelectionCriteria::to_js(
  self : AuthenticatorSelectionCriteria,
) -> JsValue {
  AuthenticatorSelectionCriteria::to_js_ffi(self)
}

///|
/// PublicKeyCredentialRequestOptions dictionary
pub(all) struct PublicKeyCredentialRequestOptions {
  challenge : BufferSource
  timeout : Int?
  rpId : String?
  allowCredentials : Array[PublicKeyCredentialDescriptor]?
  userVerification : String?
  hints : Array[String]?
  extensions : AuthenticationExtensionsClientInputs?
}

///|
/// Create a new PublicKeyCredentialRequestOptions
pub fn PublicKeyCredentialRequestOptions::new(
  challenge~ : BufferSource,
) -> PublicKeyCredentialRequestOptions {
  PublicKeyCredentialRequestOptions::{
    challenge,
    timeout: None,
    rpId: None,
    allowCredentials: None,
    userVerification: None,
    hints: None,
    extensions: None,
  }
}

///|
extern "js" fn PublicKeyCredentialRequestOptions::to_js_ffi(
  self : PublicKeyCredentialRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   challenge: self.challenge.to_js_value(),
  #|   timeout: self.timeout,
  #|   rpId: self.rpId,
  #|   allowCredentials: ((() => { const v = self.allowCredentials; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   userVerification: self.userVerification,
  #|   hints: ((() => { const v = self.hints; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   extensions: ((() => { const v = self.extensions; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PublicKeyCredentialRequestOptions::to_js(
  self : PublicKeyCredentialRequestOptions,
) -> JsValue {
  PublicKeyCredentialRequestOptions::to_js_ffi(self)
}

///|
/// CollectedClientData dictionary
pub(all) struct CollectedClientData {
  type_ : String
  challenge : String
  origin : String
  crossOrigin : Bool?
  topOrigin : String?
}

///|
/// Create a new CollectedClientData with default values
pub fn CollectedClientData::default() -> CollectedClientData {
  CollectedClientData::{
    type_: "",
    challenge: "",
    origin: "",
    crossOrigin: None,
    topOrigin: None,
  }
}

///|
extern "js" fn CollectedClientData::to_js_ffi(
  self : CollectedClientData,
) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   challenge: self.challenge,
  #|   origin: self.origin,
  #|   crossOrigin: (self.crossOrigin === -1 ? undefined : self.crossOrigin),
  #|   topOrigin: self.topOrigin
  #| })

///|
/// Convert to JsValue
pub fn CollectedClientData::to_js(self : CollectedClientData) -> JsValue {
  CollectedClientData::to_js_ffi(self)
}

///|
/// TokenBinding dictionary
pub(all) struct TokenBinding {
  status : String
  id : String?
}

///|
/// Create a new TokenBinding with default values
pub fn TokenBinding::default() -> TokenBinding {
  TokenBinding::{ status: "", id: None }
}

///|
extern "js" fn TokenBinding::to_js_ffi(self : TokenBinding) -> JsValue =
  #| (self) => ({
  #|   status: self.status,
  #|   id: self.id
  #| })

///|
/// Convert to JsValue
pub fn TokenBinding::to_js(self : TokenBinding) -> JsValue {
  TokenBinding::to_js_ffi(self)
}

///|
/// PublicKeyCredentialDescriptor dictionary
pub(all) struct PublicKeyCredentialDescriptor {
  type_ : String
  id : BufferSource
  transports : Array[String]?
}

///|
/// Create a new PublicKeyCredentialDescriptor
pub fn PublicKeyCredentialDescriptor::new(
  id~ : BufferSource,
) -> PublicKeyCredentialDescriptor {
  PublicKeyCredentialDescriptor::{ type_: "", id, transports: None }
}

///|
extern "js" fn PublicKeyCredentialDescriptor::to_js_ffi(
  self : PublicKeyCredentialDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   id: self.id.to_js_value(),
  #|   transports: ((() => { const v = self.transports; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PublicKeyCredentialDescriptor::to_js(
  self : PublicKeyCredentialDescriptor,
) -> JsValue {
  PublicKeyCredentialDescriptor::to_js_ffi(self)
}

///|
/// CredentialPropertiesOutput dictionary
pub(all) struct CredentialPropertiesOutput {
  rk : Bool?
}

///|
/// Create a new CredentialPropertiesOutput with default values
pub fn CredentialPropertiesOutput::default() -> CredentialPropertiesOutput {
  CredentialPropertiesOutput::{ rk: None }
}

///|
extern "js" fn CredentialPropertiesOutput::to_js_ffi(
  self : CredentialPropertiesOutput,
) -> JsValue =
  #| (self) => ({
  #|   rk: (self.rk === -1 ? undefined : self.rk)
  #| })

///|
/// Convert to JsValue
pub fn CredentialPropertiesOutput::to_js(
  self : CredentialPropertiesOutput,
) -> JsValue {
  CredentialPropertiesOutput::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsPRFValues dictionary
pub(all) struct AuthenticationExtensionsPRFValues {
  first : BufferSource
  second : BufferSource?
}

///|
/// Create a new AuthenticationExtensionsPRFValues
pub fn AuthenticationExtensionsPRFValues::new(
  first~ : BufferSource,
) -> AuthenticationExtensionsPRFValues {
  AuthenticationExtensionsPRFValues::{ first, second: None }
}

///|
extern "js" fn AuthenticationExtensionsPRFValues::to_js_ffi(
  self : AuthenticationExtensionsPRFValues,
) -> JsValue =
  #| (self) => ({
  #|   first: self.first.to_js_value(),
  #|   second: ((() => { const v = self.second; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsPRFValues::to_js(
  self : AuthenticationExtensionsPRFValues,
) -> JsValue {
  AuthenticationExtensionsPRFValues::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsPRFValuesJSON dictionary
pub(all) struct AuthenticationExtensionsPRFValuesJSON {
  first : Base64URLString
  second : Base64URLString?
}

///|
/// Create a new AuthenticationExtensionsPRFValuesJSON
pub fn AuthenticationExtensionsPRFValuesJSON::new(
  first~ : Base64URLString,
) -> AuthenticationExtensionsPRFValuesJSON {
  AuthenticationExtensionsPRFValuesJSON::{ first, second: None }
}

///|
extern "js" fn AuthenticationExtensionsPRFValuesJSON::to_js_ffi(
  self : AuthenticationExtensionsPRFValuesJSON,
) -> JsValue =
  #| (self) => ({
  #|   first: self.first,
  #|   second: ((() => { const v = self.second; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsPRFValuesJSON::to_js(
  self : AuthenticationExtensionsPRFValuesJSON,
) -> JsValue {
  AuthenticationExtensionsPRFValuesJSON::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsPRFInputs dictionary
pub(all) struct AuthenticationExtensionsPRFInputs {
  eval : AuthenticationExtensionsPRFValues?
  evalByCredential : JsValue?
}

///|
/// Create a new AuthenticationExtensionsPRFInputs with default values
pub fn AuthenticationExtensionsPRFInputs::default() -> AuthenticationExtensionsPRFInputs {
  AuthenticationExtensionsPRFInputs::{ eval: None, evalByCredential: None }
}

///|
extern "js" fn AuthenticationExtensionsPRFInputs::to_js_ffi(
  self : AuthenticationExtensionsPRFInputs,
) -> JsValue =
  #| (self) => ({
  #|   eval: ((() => { const v = self.eval; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   evalByCredential: ((() => { const v = self.evalByCredential; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsPRFInputs::to_js(
  self : AuthenticationExtensionsPRFInputs,
) -> JsValue {
  AuthenticationExtensionsPRFInputs::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsPRFInputsJSON dictionary
pub(all) struct AuthenticationExtensionsPRFInputsJSON {
  eval : AuthenticationExtensionsPRFValuesJSON?
  evalByCredential : JsValue?
}

///|
/// Create a new AuthenticationExtensionsPRFInputsJSON with default values
pub fn AuthenticationExtensionsPRFInputsJSON::default() -> AuthenticationExtensionsPRFInputsJSON {
  AuthenticationExtensionsPRFInputsJSON::{ eval: None, evalByCredential: None }
}

///|
extern "js" fn AuthenticationExtensionsPRFInputsJSON::to_js_ffi(
  self : AuthenticationExtensionsPRFInputsJSON,
) -> JsValue =
  #| (self) => ({
  #|   eval: ((() => { const v = self.eval; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   evalByCredential: ((() => { const v = self.evalByCredential; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsPRFInputsJSON::to_js(
  self : AuthenticationExtensionsPRFInputsJSON,
) -> JsValue {
  AuthenticationExtensionsPRFInputsJSON::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsPRFOutputs dictionary
pub(all) struct AuthenticationExtensionsPRFOutputs {
  enabled : Bool?
  results : AuthenticationExtensionsPRFValues?
}

///|
/// Create a new AuthenticationExtensionsPRFOutputs with default values
pub fn AuthenticationExtensionsPRFOutputs::default() -> AuthenticationExtensionsPRFOutputs {
  AuthenticationExtensionsPRFOutputs::{ enabled: None, results: None }
}

///|
extern "js" fn AuthenticationExtensionsPRFOutputs::to_js_ffi(
  self : AuthenticationExtensionsPRFOutputs,
) -> JsValue =
  #| (self) => ({
  #|   enabled: (self.enabled === -1 ? undefined : self.enabled),
  #|   results: ((() => { const v = self.results; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsPRFOutputs::to_js(
  self : AuthenticationExtensionsPRFOutputs,
) -> JsValue {
  AuthenticationExtensionsPRFOutputs::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsPRFOutputsJSON dictionary
pub(all) struct AuthenticationExtensionsPRFOutputsJSON {
  enabled : Bool?
  results : AuthenticationExtensionsPRFValuesJSON?
}

///|
/// Create a new AuthenticationExtensionsPRFOutputsJSON with default values
pub fn AuthenticationExtensionsPRFOutputsJSON::default() -> AuthenticationExtensionsPRFOutputsJSON {
  AuthenticationExtensionsPRFOutputsJSON::{ enabled: None, results: None }
}

///|
extern "js" fn AuthenticationExtensionsPRFOutputsJSON::to_js_ffi(
  self : AuthenticationExtensionsPRFOutputsJSON,
) -> JsValue =
  #| (self) => ({
  #|   enabled: (self.enabled === -1 ? undefined : self.enabled),
  #|   results: ((() => { const v = self.results; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsPRFOutputsJSON::to_js(
  self : AuthenticationExtensionsPRFOutputsJSON,
) -> JsValue {
  AuthenticationExtensionsPRFOutputsJSON::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsLargeBlobInputs dictionary
pub(all) struct AuthenticationExtensionsLargeBlobInputs {
  support : String?
  read : Bool?
  write : BufferSource?
}

///|
/// Create a new AuthenticationExtensionsLargeBlobInputs with default values
pub fn AuthenticationExtensionsLargeBlobInputs::default() -> AuthenticationExtensionsLargeBlobInputs {
  AuthenticationExtensionsLargeBlobInputs::{
    support: None,
    read: None,
    write: None,
  }
}

///|
extern "js" fn AuthenticationExtensionsLargeBlobInputs::to_js_ffi(
  self : AuthenticationExtensionsLargeBlobInputs,
) -> JsValue =
  #| (self) => ({
  #|   support: self.support,
  #|   read: (self.read === -1 ? undefined : self.read),
  #|   write: ((() => { const v = self.write; if (v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsLargeBlobInputs::to_js(
  self : AuthenticationExtensionsLargeBlobInputs,
) -> JsValue {
  AuthenticationExtensionsLargeBlobInputs::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsLargeBlobInputsJSON dictionary
pub(all) struct AuthenticationExtensionsLargeBlobInputsJSON {
  support : String?
  read : Bool?
  write : Base64URLString?
}

///|
/// Create a new AuthenticationExtensionsLargeBlobInputsJSON with default values
pub fn AuthenticationExtensionsLargeBlobInputsJSON::default() -> AuthenticationExtensionsLargeBlobInputsJSON {
  AuthenticationExtensionsLargeBlobInputsJSON::{
    support: None,
    read: None,
    write: None,
  }
}

///|
extern "js" fn AuthenticationExtensionsLargeBlobInputsJSON::to_js_ffi(
  self : AuthenticationExtensionsLargeBlobInputsJSON,
) -> JsValue =
  #| (self) => ({
  #|   support: self.support,
  #|   read: (self.read === -1 ? undefined : self.read),
  #|   write: ((() => { const v = self.write; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsLargeBlobInputsJSON::to_js(
  self : AuthenticationExtensionsLargeBlobInputsJSON,
) -> JsValue {
  AuthenticationExtensionsLargeBlobInputsJSON::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsLargeBlobOutputs dictionary
pub(all) struct AuthenticationExtensionsLargeBlobOutputs {
  supported : Bool?
  blob : ArrayBuffer?
  written : Bool?
}

///|
/// Create a new AuthenticationExtensionsLargeBlobOutputs with default values
pub fn AuthenticationExtensionsLargeBlobOutputs::default() -> AuthenticationExtensionsLargeBlobOutputs {
  AuthenticationExtensionsLargeBlobOutputs::{
    supported: None,
    blob: None,
    written: None,
  }
}

///|
extern "js" fn AuthenticationExtensionsLargeBlobOutputs::to_js_ffi(
  self : AuthenticationExtensionsLargeBlobOutputs,
) -> JsValue =
  #| (self) => ({
  #|   supported: (self.supported === -1 ? undefined : self.supported),
  #|   blob: ((() => { const v = self.blob; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   written: (self.written === -1 ? undefined : self.written)
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsLargeBlobOutputs::to_js(
  self : AuthenticationExtensionsLargeBlobOutputs,
) -> JsValue {
  AuthenticationExtensionsLargeBlobOutputs::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsLargeBlobOutputsJSON dictionary
pub(all) struct AuthenticationExtensionsLargeBlobOutputsJSON {
  supported : Bool?
  blob : Base64URLString?
  written : Bool?
}

///|
/// Create a new AuthenticationExtensionsLargeBlobOutputsJSON with default values
pub fn AuthenticationExtensionsLargeBlobOutputsJSON::default() -> AuthenticationExtensionsLargeBlobOutputsJSON {
  AuthenticationExtensionsLargeBlobOutputsJSON::{
    supported: None,
    blob: None,
    written: None,
  }
}

///|
extern "js" fn AuthenticationExtensionsLargeBlobOutputsJSON::to_js_ffi(
  self : AuthenticationExtensionsLargeBlobOutputsJSON,
) -> JsValue =
  #| (self) => ({
  #|   supported: (self.supported === -1 ? undefined : self.supported),
  #|   blob: ((() => { const v = self.blob; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   written: (self.written === -1 ? undefined : self.written)
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsLargeBlobOutputsJSON::to_js(
  self : AuthenticationExtensionsLargeBlobOutputsJSON,
) -> JsValue {
  AuthenticationExtensionsLargeBlobOutputsJSON::to_js_ffi(self)
}

///|
/// PublicKeyCredential interface
pub type PublicKeyCredential

///|
pub extern "js" fn PublicKeyCredential::to_js_value(
  self : PublicKeyCredential,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PublicKeyCredential (unchecked)
pub extern "js" fn PublicKeyCredential::from_js_value(
  v : JsValue,
) -> PublicKeyCredential =
  #| (v) => v

///|
/// Safely cast JsValue to PublicKeyCredential (checked with instanceof)
pub extern "js" fn PublicKeyCredential::from_js_value_opt(
  v : JsValue,
) -> PublicKeyCredential? =
  #| (v) => (v instanceof PublicKeyCredential) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PublicKeyCredential (checked with instanceof)
pub extern "js" fn JsValue::as_public_key_credential(
  self : JsValue,
) -> PublicKeyCredential? =
  #| (self) => (self instanceof PublicKeyCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PublicKeyCredential (unchecked)
pub extern "js" fn JsValue::to_public_key_credential(
  self : JsValue,
) -> PublicKeyCredential =
  #| (self) => self

///|
pub extern "js" fn PublicKeyCredential::to_credential(
  self : PublicKeyCredential,
) -> Credential =
  #| (self) => self

///|
pub extern "js" fn PublicKeyCredential::get_raw_id(
  self : PublicKeyCredential,
) -> ArrayBuffer =
  #| (self) => self.rawId

///|
pub extern "js" fn PublicKeyCredential::get_response(
  self : PublicKeyCredential,
) -> AuthenticatorResponse =
  #| (self) => self.response

///|
pub extern "js" fn PublicKeyCredential::get_authenticator_attachment(
  self : PublicKeyCredential,
) -> String? =
  #| (self) => (self.authenticatorAttachment) ?? undefined

///|
pub extern "js" fn PublicKeyCredential::get_client_extension_results(
  self : PublicKeyCredential,
) -> AuthenticationExtensionsClientOutputs =
  #| (self) => self.getClientExtensionResults()

///|
pub extern "js" fn PublicKeyCredential::is_conditional_mediation_available() -> Promise[
  Bool,
] =
  #| () => PublicKeyCredential.isConditionalMediationAvailable()

///|
pub extern "js" fn PublicKeyCredential::to_json(
  self : PublicKeyCredential,
) -> PublicKeyCredentialJSON =
  #| (self) => self.toJSON()

///|
pub extern "js" fn PublicKeyCredential::is_user_verifying_platform_authenticator_available() -> Promise[
  Bool,
] =
  #| () => PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable()

///|
pub extern "js" fn PublicKeyCredential::get_client_capabilities() -> Promise[
  PublicKeyCredentialClientCapabilities,
] =
  #| () => PublicKeyCredential.getClientCapabilities()

///|
extern "js" fn PublicKeyCredential::parse_creation_options_from_json_ffi(
  options : JsValue,
) -> PublicKeyCredentialCreationOptions =
  #| (options) => PublicKeyCredential.parseCreationOptionsFromJSON(options)

///|
pub fn PublicKeyCredential::parse_creation_options_from_json(
  options : PublicKeyCredentialCreationOptionsJSON,
) -> PublicKeyCredentialCreationOptions {
  PublicKeyCredential::parse_creation_options_from_json_ffi(options.to_js())
}

///|
extern "js" fn PublicKeyCredential::parse_request_options_from_json_ffi(
  options : JsValue,
) -> PublicKeyCredentialRequestOptions =
  #| (options) => PublicKeyCredential.parseRequestOptionsFromJSON(options)

///|
pub fn PublicKeyCredential::parse_request_options_from_json(
  options : PublicKeyCredentialRequestOptionsJSON,
) -> PublicKeyCredentialRequestOptions {
  PublicKeyCredential::parse_request_options_from_json_ffi(options.to_js())
}

///|
extern "js" fn PublicKeyCredential::signal_unknown_credential_ffi(
  options : JsValue,
) -> Promise[Unit] =
  #| (options) => PublicKeyCredential.signalUnknownCredential(options)

///|
pub fn PublicKeyCredential::signal_unknown_credential(
  options : UnknownCredentialOptions,
) -> Promise[Unit] {
  PublicKeyCredential::signal_unknown_credential_ffi(options.to_js())
}

///|
extern "js" fn PublicKeyCredential::signal_all_accepted_credentials_ffi(
  options : JsValue,
) -> Promise[Unit] =
  #| (options) => PublicKeyCredential.signalAllAcceptedCredentials(options)

///|
pub fn PublicKeyCredential::signal_all_accepted_credentials(
  options : AllAcceptedCredentialsOptions,
) -> Promise[Unit] {
  PublicKeyCredential::signal_all_accepted_credentials_ffi(options.to_js())
}

///|
extern "js" fn PublicKeyCredential::signal_current_user_details_ffi(
  options : JsValue,
) -> Promise[Unit] =
  #| (options) => PublicKeyCredential.signalCurrentUserDetails(options)

///|
pub fn PublicKeyCredential::signal_current_user_details(
  options : CurrentUserDetailsOptions,
) -> Promise[Unit] {
  PublicKeyCredential::signal_current_user_details_ffi(options.to_js())
}

///|
/// AuthenticatorResponse interface
pub type AuthenticatorResponse

///|
pub extern "js" fn AuthenticatorResponse::to_js_value(
  self : AuthenticatorResponse,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AuthenticatorResponse (unchecked)
pub extern "js" fn AuthenticatorResponse::from_js_value(
  v : JsValue,
) -> AuthenticatorResponse =
  #| (v) => v

///|
/// Safely cast JsValue to AuthenticatorResponse (checked with instanceof)
pub extern "js" fn AuthenticatorResponse::from_js_value_opt(
  v : JsValue,
) -> AuthenticatorResponse? =
  #| (v) => (v instanceof AuthenticatorResponse) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AuthenticatorResponse (checked with instanceof)
pub extern "js" fn JsValue::as_authenticator_response(
  self : JsValue,
) -> AuthenticatorResponse? =
  #| (self) => (self instanceof AuthenticatorResponse) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AuthenticatorResponse (unchecked)
pub extern "js" fn JsValue::to_authenticator_response(
  self : JsValue,
) -> AuthenticatorResponse =
  #| (self) => self

///|
pub extern "js" fn AuthenticatorResponse::as_authenticator_attestation_response(
  self : AuthenticatorResponse,
) -> AuthenticatorAttestationResponse? =
  #| (self) => (self instanceof AuthenticatorAttestationResponse) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AuthenticatorResponse::as_authenticator_assertion_response(
  self : AuthenticatorResponse,
) -> AuthenticatorAssertionResponse? =
  #| (self) => (self instanceof AuthenticatorAssertionResponse) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn AuthenticatorResponse::get_client_data_json(
  self : AuthenticatorResponse,
) -> ArrayBuffer =
  #| (self) => self.clientDataJSON

///|
/// AuthenticatorAttestationResponse interface
pub type AuthenticatorAttestationResponse

///|
pub extern "js" fn AuthenticatorAttestationResponse::to_js_value(
  self : AuthenticatorAttestationResponse,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AuthenticatorAttestationResponse (unchecked)
pub extern "js" fn AuthenticatorAttestationResponse::from_js_value(
  v : JsValue,
) -> AuthenticatorAttestationResponse =
  #| (v) => v

///|
/// Safely cast JsValue to AuthenticatorAttestationResponse (checked with instanceof)
pub extern "js" fn AuthenticatorAttestationResponse::from_js_value_opt(
  v : JsValue,
) -> AuthenticatorAttestationResponse? =
  #| (v) => (v instanceof AuthenticatorAttestationResponse) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AuthenticatorAttestationResponse (checked with instanceof)
pub extern "js" fn JsValue::as_authenticator_attestation_response(
  self : JsValue,
) -> AuthenticatorAttestationResponse? =
  #| (self) => (self instanceof AuthenticatorAttestationResponse) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AuthenticatorAttestationResponse (unchecked)
pub extern "js" fn JsValue::to_authenticator_attestation_response(
  self : JsValue,
) -> AuthenticatorAttestationResponse =
  #| (self) => self

///|
pub extern "js" fn AuthenticatorAttestationResponse::to_authenticator_response(
  self : AuthenticatorAttestationResponse,
) -> AuthenticatorResponse =
  #| (self) => self

///|
pub extern "js" fn AuthenticatorAttestationResponse::get_attestation_object(
  self : AuthenticatorAttestationResponse,
) -> ArrayBuffer =
  #| (self) => self.attestationObject

///|
pub extern "js" fn AuthenticatorAttestationResponse::get_transports(
  self : AuthenticatorAttestationResponse,
) -> Array[String] =
  #| (self) => self.getTransports()

///|
pub extern "js" fn AuthenticatorAttestationResponse::get_authenticator_data(
  self : AuthenticatorAttestationResponse,
) -> ArrayBuffer =
  #| (self) => self.getAuthenticatorData()

///|
pub extern "js" fn AuthenticatorAttestationResponse::get_public_key(
  self : AuthenticatorAttestationResponse,
) -> ArrayBuffer? =
  #| (self) => (() => { const v = self.getPublicKey(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn AuthenticatorAttestationResponse::get_public_key_algorithm(
  self : AuthenticatorAttestationResponse,
) -> COSEAlgorithmIdentifier =
  #| (self) => self.getPublicKeyAlgorithm()

///|
/// AuthenticatorAssertionResponse interface
pub type AuthenticatorAssertionResponse

///|
pub extern "js" fn AuthenticatorAssertionResponse::to_js_value(
  self : AuthenticatorAssertionResponse,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AuthenticatorAssertionResponse (unchecked)
pub extern "js" fn AuthenticatorAssertionResponse::from_js_value(
  v : JsValue,
) -> AuthenticatorAssertionResponse =
  #| (v) => v

///|
/// Safely cast JsValue to AuthenticatorAssertionResponse (checked with instanceof)
pub extern "js" fn AuthenticatorAssertionResponse::from_js_value_opt(
  v : JsValue,
) -> AuthenticatorAssertionResponse? =
  #| (v) => (v instanceof AuthenticatorAssertionResponse) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AuthenticatorAssertionResponse (checked with instanceof)
pub extern "js" fn JsValue::as_authenticator_assertion_response(
  self : JsValue,
) -> AuthenticatorAssertionResponse? =
  #| (self) => (self instanceof AuthenticatorAssertionResponse) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AuthenticatorAssertionResponse (unchecked)
pub extern "js" fn JsValue::to_authenticator_assertion_response(
  self : JsValue,
) -> AuthenticatorAssertionResponse =
  #| (self) => self

///|
pub extern "js" fn AuthenticatorAssertionResponse::to_authenticator_response(
  self : AuthenticatorAssertionResponse,
) -> AuthenticatorResponse =
  #| (self) => self

///|
pub extern "js" fn AuthenticatorAssertionResponse::get_authenticator_data(
  self : AuthenticatorAssertionResponse,
) -> ArrayBuffer =
  #| (self) => self.authenticatorData

///|
pub extern "js" fn AuthenticatorAssertionResponse::get_signature(
  self : AuthenticatorAssertionResponse,
) -> ArrayBuffer =
  #| (self) => self.signature

///|
pub extern "js" fn AuthenticatorAssertionResponse::get_user_handle(
  self : AuthenticatorAssertionResponse,
) -> ArrayBuffer? =
  #| (self) => (() => { const v = self.userHandle; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()
