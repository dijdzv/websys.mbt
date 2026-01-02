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

/// Convert to string value
pub fn AuthenticatorAttachment::to_string(self : AuthenticatorAttachment) -> String {
  match self {
    Platform => "platform"
    CrossPlatform => "cross-platform"
  }
}

/// Parse from string value
pub fn AuthenticatorAttachment::from_string(s : String) -> AuthenticatorAttachment? {
  match s {
    "platform" => Some(Platform)
    "cross-platform" => Some(CrossPlatform)
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

/// Convert to string value
pub fn ResidentKeyRequirement::to_string(self : ResidentKeyRequirement) -> String {
  match self {
    Discouraged => "discouraged"
    Preferred => "preferred"
    Required => "required"
  }
}

/// Parse from string value
pub fn ResidentKeyRequirement::from_string(s : String) -> ResidentKeyRequirement? {
  match s {
    "discouraged" => Some(Discouraged)
    "preferred" => Some(Preferred)
    "required" => Some(Required)
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

/// Convert to string value
pub fn AttestationConveyancePreference::to_string(self : AttestationConveyancePreference) -> String {
  match self {
    None => "none"
    Indirect => "indirect"
    Direct => "direct"
    Enterprise => "enterprise"
  }
}

/// Parse from string value
pub fn AttestationConveyancePreference::from_string(s : String) -> AttestationConveyancePreference? {
  match s {
    "none" => Some(None)
    "indirect" => Some(Indirect)
    "direct" => Some(Direct)
    "enterprise" => Some(Enterprise)
    _ => None
  }
}

///|
/// TokenBindingStatus enum
pub(all) enum TokenBindingStatus {
  Present
  Supported
}

/// Convert to string value
pub fn TokenBindingStatus::to_string(self : TokenBindingStatus) -> String {
  match self {
    Present => "present"
    Supported => "supported"
  }
}

/// Parse from string value
pub fn TokenBindingStatus::from_string(s : String) -> TokenBindingStatus? {
  match s {
    "present" => Some(Present)
    "supported" => Some(Supported)
    _ => None
  }
}

///|
/// PublicKeyCredentialType enum
pub(all) enum PublicKeyCredentialType {
  PublicKey
}

/// Convert to string value
pub fn PublicKeyCredentialType::to_string(self : PublicKeyCredentialType) -> String {
  match self {
    PublicKey => "public-key"
  }
}

/// Parse from string value
pub fn PublicKeyCredentialType::from_string(s : String) -> PublicKeyCredentialType? {
  match s {
    "public-key" => Some(PublicKey)
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

/// Convert to string value
pub fn AuthenticatorTransport::to_string(self : AuthenticatorTransport) -> String {
  match self {
    Usb => "usb"
    Nfc => "nfc"
    Ble => "ble"
    SmartCard => "smart-card"
    Hybrid => "hybrid"
    Internal => "internal"
  }
}

/// Parse from string value
pub fn AuthenticatorTransport::from_string(s : String) -> AuthenticatorTransport? {
  match s {
    "usb" => Some(Usb)
    "nfc" => Some(Nfc)
    "ble" => Some(Ble)
    "smart-card" => Some(SmartCard)
    "hybrid" => Some(Hybrid)
    "internal" => Some(Internal)
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

/// Convert to string value
pub fn UserVerificationRequirement::to_string(self : UserVerificationRequirement) -> String {
  match self {
    Required => "required"
    Preferred => "preferred"
    Discouraged => "discouraged"
  }
}

/// Parse from string value
pub fn UserVerificationRequirement::from_string(s : String) -> UserVerificationRequirement? {
  match s {
    "required" => Some(Required)
    "preferred" => Some(Preferred)
    "discouraged" => Some(Discouraged)
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

/// Convert to string value
pub fn ClientCapability::to_string(self : ClientCapability) -> String {
  match self {
    ConditionalCreate => "conditionalCreate"
    ConditionalGet => "conditionalGet"
    HybridTransport => "hybridTransport"
    PasskeyPlatformAuthenticator => "passkeyPlatformAuthenticator"
    UserVerifyingPlatformAuthenticator => "userVerifyingPlatformAuthenticator"
    RelatedOrigins => "relatedOrigins"
    SignalAllAcceptedCredentials => "signalAllAcceptedCredentials"
    SignalCurrentUserDetails => "signalCurrentUserDetails"
    SignalUnknownCredential => "signalUnknownCredential"
  }
}

/// Parse from string value
pub fn ClientCapability::from_string(s : String) -> ClientCapability? {
  match s {
    "conditionalCreate" => Some(ConditionalCreate)
    "conditionalGet" => Some(ConditionalGet)
    "hybridTransport" => Some(HybridTransport)
    "passkeyPlatformAuthenticator" => Some(PasskeyPlatformAuthenticator)
    "userVerifyingPlatformAuthenticator" => Some(UserVerifyingPlatformAuthenticator)
    "relatedOrigins" => Some(RelatedOrigins)
    "signalAllAcceptedCredentials" => Some(SignalAllAcceptedCredentials)
    "signalCurrentUserDetails" => Some(SignalCurrentUserDetails)
    "signalUnknownCredential" => Some(SignalUnknownCredential)
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

/// Convert to string value
pub fn PublicKeyCredentialHint::to_string(self : PublicKeyCredentialHint) -> String {
  match self {
    SecurityKey => "security-key"
    ClientDevice => "client-device"
    Hybrid => "hybrid"
  }
}

/// Parse from string value
pub fn PublicKeyCredentialHint::from_string(s : String) -> PublicKeyCredentialHint? {
  match s {
    "security-key" => Some(SecurityKey)
    "client-device" => Some(ClientDevice)
    "hybrid" => Some(Hybrid)
    _ => None
  }
}

///|
/// LargeBlobSupport enum
pub(all) enum LargeBlobSupport {
  Required
  Preferred
}

/// Convert to string value
pub fn LargeBlobSupport::to_string(self : LargeBlobSupport) -> String {
  match self {
    Required => "required"
    Preferred => "preferred"
  }
}

/// Parse from string value
pub fn LargeBlobSupport::from_string(s : String) -> LargeBlobSupport? {
  match s {
    "required" => Some(Required)
    "preferred" => Some(Preferred)
    _ => None
  }
}

///|
/// RegistrationResponseJSON dictionary
pub struct RegistrationResponseJSON {
  id : String
  rawId : Base64URLString
  response : AuthenticatorAttestationResponseJSON
  authenticatorAttachment : String?
  clientExtensionResults : AuthenticationExtensionsClientOutputsJSON
  type_ : String
}

/// Create a new RegistrationResponseJSON with default values
pub fn RegistrationResponseJSON::default() -> RegistrationResponseJSON {
  RegistrationResponseJSON::{
    id: "",
    rawId: panic(),
    response: panic(),
    authenticatorAttachment: None,
    clientExtensionResults: panic(),
    type_: "",
  }
}

/// Convert to JsValue
pub extern "js" fn RegistrationResponseJSON::to_js(self : RegistrationResponseJSON) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   rawId: self.rawId,
  #|   response: self.response,
  #|   authenticatorAttachment: self.authenticatorAttachment,
  #|   clientExtensionResults: self.clientExtensionResults,
  #|   type: self.type_
  #| })

///|
/// AuthenticatorAttestationResponseJSON dictionary
pub struct AuthenticatorAttestationResponseJSON {
  clientDataJSON : Base64URLString
  authenticatorData : Base64URLString
  transports : Array[String]
  publicKey : Base64URLString?
  publicKeyAlgorithm : COSEAlgorithmIdentifier
  attestationObject : Base64URLString
}

/// Create a new AuthenticatorAttestationResponseJSON with default values
pub fn AuthenticatorAttestationResponseJSON::default() -> AuthenticatorAttestationResponseJSON {
  AuthenticatorAttestationResponseJSON::{
    clientDataJSON: panic(),
    authenticatorData: panic(),
    transports: [],
    publicKey: None,
    publicKeyAlgorithm: panic(),
    attestationObject: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticatorAttestationResponseJSON::to_js(self : AuthenticatorAttestationResponseJSON) -> JsValue =
  #| (self) => ({
  #|   clientDataJSON: self.clientDataJSON,
  #|   authenticatorData: self.authenticatorData,
  #|   transports: self.transports,
  #|   publicKey: self.publicKey,
  #|   publicKeyAlgorithm: self.publicKeyAlgorithm,
  #|   attestationObject: self.attestationObject
  #| })

///|
/// AuthenticationResponseJSON dictionary
pub struct AuthenticationResponseJSON {
  id : String
  rawId : Base64URLString
  response : AuthenticatorAssertionResponseJSON
  authenticatorAttachment : String?
  clientExtensionResults : AuthenticationExtensionsClientOutputsJSON
  type_ : String
}

/// Create a new AuthenticationResponseJSON with default values
pub fn AuthenticationResponseJSON::default() -> AuthenticationResponseJSON {
  AuthenticationResponseJSON::{
    id: "",
    rawId: panic(),
    response: panic(),
    authenticatorAttachment: None,
    clientExtensionResults: panic(),
    type_: "",
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticationResponseJSON::to_js(self : AuthenticationResponseJSON) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   rawId: self.rawId,
  #|   response: self.response,
  #|   authenticatorAttachment: self.authenticatorAttachment,
  #|   clientExtensionResults: self.clientExtensionResults,
  #|   type: self.type_
  #| })

///|
/// AuthenticatorAssertionResponseJSON dictionary
pub struct AuthenticatorAssertionResponseJSON {
  clientDataJSON : Base64URLString
  authenticatorData : Base64URLString
  signature : Base64URLString
  userHandle : Base64URLString?
}

/// Create a new AuthenticatorAssertionResponseJSON with default values
pub fn AuthenticatorAssertionResponseJSON::default() -> AuthenticatorAssertionResponseJSON {
  AuthenticatorAssertionResponseJSON::{
    clientDataJSON: panic(),
    authenticatorData: panic(),
    signature: panic(),
    userHandle: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticatorAssertionResponseJSON::to_js(self : AuthenticatorAssertionResponseJSON) -> JsValue =
  #| (self) => ({
  #|   clientDataJSON: self.clientDataJSON,
  #|   authenticatorData: self.authenticatorData,
  #|   signature: self.signature,
  #|   userHandle: self.userHandle
  #| })

///|
/// AuthenticationExtensionsClientOutputsJSON dictionary
pub struct AuthenticationExtensionsClientOutputsJSON {
  appid : Bool?
  appidExclude : Bool?
  credProps : CredentialPropertiesOutput?
  prf : AuthenticationExtensionsPRFOutputsJSON?
  largeBlob : AuthenticationExtensionsLargeBlobOutputsJSON?
}

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

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsClientOutputsJSON::to_js(self : AuthenticationExtensionsClientOutputsJSON) -> JsValue =
  #| (self) => ({
  #|   appid: self.appid,
  #|   appidExclude: self.appidExclude,
  #|   credProps: self.credProps,
  #|   prf: self.prf,
  #|   largeBlob: self.largeBlob
  #| })

///|
/// PublicKeyCredentialCreationOptionsJSON dictionary
pub struct PublicKeyCredentialCreationOptionsJSON {
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

/// Create a new PublicKeyCredentialCreationOptionsJSON with default values
pub fn PublicKeyCredentialCreationOptionsJSON::default() -> PublicKeyCredentialCreationOptionsJSON {
  PublicKeyCredentialCreationOptionsJSON::{
    rp: panic(),
    user: panic(),
    challenge: panic(),
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

/// Convert to JsValue
pub extern "js" fn PublicKeyCredentialCreationOptionsJSON::to_js(self : PublicKeyCredentialCreationOptionsJSON) -> JsValue =
  #| (self) => ({
  #|   rp: self.rp,
  #|   user: self.user,
  #|   challenge: self.challenge,
  #|   pubKeyCredParams: self.pubKeyCredParams,
  #|   timeout: self.timeout,
  #|   excludeCredentials: self.excludeCredentials,
  #|   authenticatorSelection: self.authenticatorSelection,
  #|   hints: self.hints,
  #|   attestation: self.attestation,
  #|   attestationFormats: self.attestationFormats,
  #|   extensions: self.extensions
  #| })

///|
/// PublicKeyCredentialUserEntityJSON dictionary
pub struct PublicKeyCredentialUserEntityJSON {
  id : Base64URLString
  name : String
  displayName : String
}

/// Create a new PublicKeyCredentialUserEntityJSON with default values
pub fn PublicKeyCredentialUserEntityJSON::default() -> PublicKeyCredentialUserEntityJSON {
  PublicKeyCredentialUserEntityJSON::{
    id: panic(),
    name: "",
    displayName: "",
  }
}

/// Convert to JsValue
pub extern "js" fn PublicKeyCredentialUserEntityJSON::to_js(self : PublicKeyCredentialUserEntityJSON) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   name: self.name,
  #|   displayName: self.displayName
  #| })

///|
/// PublicKeyCredentialDescriptorJSON dictionary
pub struct PublicKeyCredentialDescriptorJSON {
  type_ : String
  id : Base64URLString
  transports : Array[String]?
}

/// Create a new PublicKeyCredentialDescriptorJSON with default values
pub fn PublicKeyCredentialDescriptorJSON::default() -> PublicKeyCredentialDescriptorJSON {
  PublicKeyCredentialDescriptorJSON::{
    type_: "",
    id: panic(),
    transports: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PublicKeyCredentialDescriptorJSON::to_js(self : PublicKeyCredentialDescriptorJSON) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   id: self.id,
  #|   transports: self.transports
  #| })

///|
/// AuthenticationExtensionsClientInputsJSON dictionary
pub struct AuthenticationExtensionsClientInputsJSON {
  appid : String?
  appidExclude : String?
  credProps : Bool?
  prf : AuthenticationExtensionsPRFInputsJSON?
  largeBlob : AuthenticationExtensionsLargeBlobInputsJSON?
}

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

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsClientInputsJSON::to_js(self : AuthenticationExtensionsClientInputsJSON) -> JsValue =
  #| (self) => ({
  #|   appid: self.appid,
  #|   appidExclude: self.appidExclude,
  #|   credProps: self.credProps,
  #|   prf: self.prf,
  #|   largeBlob: self.largeBlob
  #| })

///|
/// PublicKeyCredentialRequestOptionsJSON dictionary
pub struct PublicKeyCredentialRequestOptionsJSON {
  challenge : Base64URLString
  timeout : Int?
  rpId : String?
  allowCredentials : Array[PublicKeyCredentialDescriptorJSON]?
  userVerification : String?
  hints : Array[String]?
  extensions : AuthenticationExtensionsClientInputsJSON?
}

/// Create a new PublicKeyCredentialRequestOptionsJSON with default values
pub fn PublicKeyCredentialRequestOptionsJSON::default() -> PublicKeyCredentialRequestOptionsJSON {
  PublicKeyCredentialRequestOptionsJSON::{
    challenge: panic(),
    timeout: None,
    rpId: None,
    allowCredentials: None,
    userVerification: None,
    hints: None,
    extensions: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PublicKeyCredentialRequestOptionsJSON::to_js(self : PublicKeyCredentialRequestOptionsJSON) -> JsValue =
  #| (self) => ({
  #|   challenge: self.challenge,
  #|   timeout: self.timeout,
  #|   rpId: self.rpId,
  #|   allowCredentials: self.allowCredentials,
  #|   userVerification: self.userVerification,
  #|   hints: self.hints,
  #|   extensions: self.extensions
  #| })

///|
/// UnknownCredentialOptions dictionary
pub struct UnknownCredentialOptions {
  rpId : String
  credentialId : Base64URLString
}

/// Create a new UnknownCredentialOptions with default values
pub fn UnknownCredentialOptions::default() -> UnknownCredentialOptions {
  UnknownCredentialOptions::{
    rpId: "",
    credentialId: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn UnknownCredentialOptions::to_js(self : UnknownCredentialOptions) -> JsValue =
  #| (self) => ({
  #|   rpId: self.rpId,
  #|   credentialId: self.credentialId
  #| })

///|
/// AllAcceptedCredentialsOptions dictionary
pub struct AllAcceptedCredentialsOptions {
  rpId : String
  userId : Base64URLString
  allAcceptedCredentialIds : Array[Base64URLString]
}

/// Create a new AllAcceptedCredentialsOptions with default values
pub fn AllAcceptedCredentialsOptions::default() -> AllAcceptedCredentialsOptions {
  AllAcceptedCredentialsOptions::{
    rpId: "",
    userId: panic(),
    allAcceptedCredentialIds: [],
  }
}

/// Convert to JsValue
pub extern "js" fn AllAcceptedCredentialsOptions::to_js(self : AllAcceptedCredentialsOptions) -> JsValue =
  #| (self) => ({
  #|   rpId: self.rpId,
  #|   userId: self.userId,
  #|   allAcceptedCredentialIds: self.allAcceptedCredentialIds
  #| })

///|
/// CurrentUserDetailsOptions dictionary
pub struct CurrentUserDetailsOptions {
  rpId : String
  userId : Base64URLString
  name : String
  displayName : String
}

/// Create a new CurrentUserDetailsOptions with default values
pub fn CurrentUserDetailsOptions::default() -> CurrentUserDetailsOptions {
  CurrentUserDetailsOptions::{
    rpId: "",
    userId: panic(),
    name: "",
    displayName: "",
  }
}

/// Convert to JsValue
pub extern "js" fn CurrentUserDetailsOptions::to_js(self : CurrentUserDetailsOptions) -> JsValue =
  #| (self) => ({
  #|   rpId: self.rpId,
  #|   userId: self.userId,
  #|   name: self.name,
  #|   displayName: self.displayName
  #| })

///|
/// PublicKeyCredentialParameters dictionary
pub struct PublicKeyCredentialParameters {
  type_ : String
  alg : COSEAlgorithmIdentifier
}

/// Create a new PublicKeyCredentialParameters with default values
pub fn PublicKeyCredentialParameters::default() -> PublicKeyCredentialParameters {
  PublicKeyCredentialParameters::{
    type_: "",
    alg: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn PublicKeyCredentialParameters::to_js(self : PublicKeyCredentialParameters) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   alg: self.alg
  #| })

///|
/// PublicKeyCredentialCreationOptions dictionary
pub struct PublicKeyCredentialCreationOptions {
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

/// Create a new PublicKeyCredentialCreationOptions with default values
pub fn PublicKeyCredentialCreationOptions::default() -> PublicKeyCredentialCreationOptions {
  PublicKeyCredentialCreationOptions::{
    rp: panic(),
    user: panic(),
    challenge: panic(),
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

/// Convert to JsValue
pub extern "js" fn PublicKeyCredentialCreationOptions::to_js(self : PublicKeyCredentialCreationOptions) -> JsValue =
  #| (self) => ({
  #|   rp: self.rp,
  #|   user: self.user,
  #|   challenge: self.challenge,
  #|   pubKeyCredParams: self.pubKeyCredParams,
  #|   timeout: self.timeout,
  #|   excludeCredentials: self.excludeCredentials,
  #|   authenticatorSelection: self.authenticatorSelection,
  #|   hints: self.hints,
  #|   attestation: self.attestation,
  #|   attestationFormats: self.attestationFormats,
  #|   extensions: self.extensions
  #| })

///|
/// PublicKeyCredentialEntity dictionary
pub struct PublicKeyCredentialEntity {
  name : String
}

/// Create a new PublicKeyCredentialEntity with default values
pub fn PublicKeyCredentialEntity::default() -> PublicKeyCredentialEntity {
  PublicKeyCredentialEntity::{
    name: "",
  }
}

/// Convert to JsValue
pub extern "js" fn PublicKeyCredentialEntity::to_js(self : PublicKeyCredentialEntity) -> JsValue =
  #| (self) => ({
  #|   name: self.name
  #| })

///|
/// PublicKeyCredentialRpEntity dictionary
pub struct PublicKeyCredentialRpEntity {
  name : String
  id : String?
}

/// Create a new PublicKeyCredentialRpEntity with default values
pub fn PublicKeyCredentialRpEntity::default() -> PublicKeyCredentialRpEntity {
  PublicKeyCredentialRpEntity::{
    name: "",
    id: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PublicKeyCredentialRpEntity::to_js(self : PublicKeyCredentialRpEntity) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   id: self.id
  #| })

///|
/// PublicKeyCredentialUserEntity dictionary
pub struct PublicKeyCredentialUserEntity {
  name : String
  id : BufferSource
  displayName : String
}

/// Create a new PublicKeyCredentialUserEntity with default values
pub fn PublicKeyCredentialUserEntity::default() -> PublicKeyCredentialUserEntity {
  PublicKeyCredentialUserEntity::{
    name: "",
    id: panic(),
    displayName: "",
  }
}

/// Convert to JsValue
pub extern "js" fn PublicKeyCredentialUserEntity::to_js(self : PublicKeyCredentialUserEntity) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   id: self.id,
  #|   displayName: self.displayName
  #| })

///|
/// AuthenticatorSelectionCriteria dictionary
pub struct AuthenticatorSelectionCriteria {
  authenticatorAttachment : String?
  residentKey : String?
  requireResidentKey : Bool?
  userVerification : String?
}

/// Create a new AuthenticatorSelectionCriteria with default values
pub fn AuthenticatorSelectionCriteria::default() -> AuthenticatorSelectionCriteria {
  AuthenticatorSelectionCriteria::{
    authenticatorAttachment: None,
    residentKey: None,
    requireResidentKey: None,
    userVerification: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticatorSelectionCriteria::to_js(self : AuthenticatorSelectionCriteria) -> JsValue =
  #| (self) => ({
  #|   authenticatorAttachment: self.authenticatorAttachment,
  #|   residentKey: self.residentKey,
  #|   requireResidentKey: self.requireResidentKey,
  #|   userVerification: self.userVerification
  #| })

///|
/// PublicKeyCredentialRequestOptions dictionary
pub struct PublicKeyCredentialRequestOptions {
  challenge : BufferSource
  timeout : Int?
  rpId : String?
  allowCredentials : Array[PublicKeyCredentialDescriptor]?
  userVerification : String?
  hints : Array[String]?
  extensions : AuthenticationExtensionsClientInputs?
}

/// Create a new PublicKeyCredentialRequestOptions with default values
pub fn PublicKeyCredentialRequestOptions::default() -> PublicKeyCredentialRequestOptions {
  PublicKeyCredentialRequestOptions::{
    challenge: panic(),
    timeout: None,
    rpId: None,
    allowCredentials: None,
    userVerification: None,
    hints: None,
    extensions: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PublicKeyCredentialRequestOptions::to_js(self : PublicKeyCredentialRequestOptions) -> JsValue =
  #| (self) => ({
  #|   challenge: self.challenge,
  #|   timeout: self.timeout,
  #|   rpId: self.rpId,
  #|   allowCredentials: self.allowCredentials,
  #|   userVerification: self.userVerification,
  #|   hints: self.hints,
  #|   extensions: self.extensions
  #| })

///|
/// CollectedClientData dictionary
pub struct CollectedClientData {
  type_ : String
  challenge : String
  origin : String
  crossOrigin : Bool?
  topOrigin : String?
}

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

/// Convert to JsValue
pub extern "js" fn CollectedClientData::to_js(self : CollectedClientData) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   challenge: self.challenge,
  #|   origin: self.origin,
  #|   crossOrigin: self.crossOrigin,
  #|   topOrigin: self.topOrigin
  #| })

///|
/// TokenBinding dictionary
pub struct TokenBinding {
  status : String
  id : String?
}

/// Create a new TokenBinding with default values
pub fn TokenBinding::default() -> TokenBinding {
  TokenBinding::{
    status: "",
    id: None,
  }
}

/// Convert to JsValue
pub extern "js" fn TokenBinding::to_js(self : TokenBinding) -> JsValue =
  #| (self) => ({
  #|   status: self.status,
  #|   id: self.id
  #| })

///|
/// PublicKeyCredentialDescriptor dictionary
pub struct PublicKeyCredentialDescriptor {
  type_ : String
  id : BufferSource
  transports : Array[String]?
}

/// Create a new PublicKeyCredentialDescriptor with default values
pub fn PublicKeyCredentialDescriptor::default() -> PublicKeyCredentialDescriptor {
  PublicKeyCredentialDescriptor::{
    type_: "",
    id: panic(),
    transports: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PublicKeyCredentialDescriptor::to_js(self : PublicKeyCredentialDescriptor) -> JsValue =
  #| (self) => ({
  #|   type: self.type_,
  #|   id: self.id,
  #|   transports: self.transports
  #| })

///|
/// CredentialPropertiesOutput dictionary
pub struct CredentialPropertiesOutput {
  rk : Bool?
}

/// Create a new CredentialPropertiesOutput with default values
pub fn CredentialPropertiesOutput::default() -> CredentialPropertiesOutput {
  CredentialPropertiesOutput::{
    rk: None,
  }
}

/// Convert to JsValue
pub extern "js" fn CredentialPropertiesOutput::to_js(self : CredentialPropertiesOutput) -> JsValue =
  #| (self) => ({
  #|   rk: self.rk
  #| })

///|
/// AuthenticationExtensionsPRFValues dictionary
pub struct AuthenticationExtensionsPRFValues {
  first : BufferSource
  second : BufferSource?
}

/// Create a new AuthenticationExtensionsPRFValues with default values
pub fn AuthenticationExtensionsPRFValues::default() -> AuthenticationExtensionsPRFValues {
  AuthenticationExtensionsPRFValues::{
    first: panic(),
    second: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsPRFValues::to_js(self : AuthenticationExtensionsPRFValues) -> JsValue =
  #| (self) => ({
  #|   first: self.first,
  #|   second: self.second
  #| })

///|
/// AuthenticationExtensionsPRFValuesJSON dictionary
pub struct AuthenticationExtensionsPRFValuesJSON {
  first : Base64URLString
  second : Base64URLString?
}

/// Create a new AuthenticationExtensionsPRFValuesJSON with default values
pub fn AuthenticationExtensionsPRFValuesJSON::default() -> AuthenticationExtensionsPRFValuesJSON {
  AuthenticationExtensionsPRFValuesJSON::{
    first: panic(),
    second: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsPRFValuesJSON::to_js(self : AuthenticationExtensionsPRFValuesJSON) -> JsValue =
  #| (self) => ({
  #|   first: self.first,
  #|   second: self.second
  #| })

///|
/// AuthenticationExtensionsPRFInputs dictionary
pub struct AuthenticationExtensionsPRFInputs {
  eval : AuthenticationExtensionsPRFValues?
  evalByCredential : JsValue?
}

/// Create a new AuthenticationExtensionsPRFInputs with default values
pub fn AuthenticationExtensionsPRFInputs::default() -> AuthenticationExtensionsPRFInputs {
  AuthenticationExtensionsPRFInputs::{
    eval: None,
    evalByCredential: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsPRFInputs::to_js(self : AuthenticationExtensionsPRFInputs) -> JsValue =
  #| (self) => ({
  #|   eval: self.eval,
  #|   evalByCredential: self.evalByCredential
  #| })

///|
/// AuthenticationExtensionsPRFInputsJSON dictionary
pub struct AuthenticationExtensionsPRFInputsJSON {
  eval : AuthenticationExtensionsPRFValuesJSON?
  evalByCredential : JsValue?
}

/// Create a new AuthenticationExtensionsPRFInputsJSON with default values
pub fn AuthenticationExtensionsPRFInputsJSON::default() -> AuthenticationExtensionsPRFInputsJSON {
  AuthenticationExtensionsPRFInputsJSON::{
    eval: None,
    evalByCredential: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsPRFInputsJSON::to_js(self : AuthenticationExtensionsPRFInputsJSON) -> JsValue =
  #| (self) => ({
  #|   eval: self.eval,
  #|   evalByCredential: self.evalByCredential
  #| })

///|
/// AuthenticationExtensionsPRFOutputs dictionary
pub struct AuthenticationExtensionsPRFOutputs {
  enabled : Bool?
  results : AuthenticationExtensionsPRFValues?
}

/// Create a new AuthenticationExtensionsPRFOutputs with default values
pub fn AuthenticationExtensionsPRFOutputs::default() -> AuthenticationExtensionsPRFOutputs {
  AuthenticationExtensionsPRFOutputs::{
    enabled: None,
    results: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsPRFOutputs::to_js(self : AuthenticationExtensionsPRFOutputs) -> JsValue =
  #| (self) => ({
  #|   enabled: self.enabled,
  #|   results: self.results
  #| })

///|
/// AuthenticationExtensionsPRFOutputsJSON dictionary
pub struct AuthenticationExtensionsPRFOutputsJSON {
  enabled : Bool?
  results : AuthenticationExtensionsPRFValuesJSON?
}

/// Create a new AuthenticationExtensionsPRFOutputsJSON with default values
pub fn AuthenticationExtensionsPRFOutputsJSON::default() -> AuthenticationExtensionsPRFOutputsJSON {
  AuthenticationExtensionsPRFOutputsJSON::{
    enabled: None,
    results: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsPRFOutputsJSON::to_js(self : AuthenticationExtensionsPRFOutputsJSON) -> JsValue =
  #| (self) => ({
  #|   enabled: self.enabled,
  #|   results: self.results
  #| })

///|
/// AuthenticationExtensionsLargeBlobInputs dictionary
pub struct AuthenticationExtensionsLargeBlobInputs {
  support : String?
  read : Bool?
  write : BufferSource?
}

/// Create a new AuthenticationExtensionsLargeBlobInputs with default values
pub fn AuthenticationExtensionsLargeBlobInputs::default() -> AuthenticationExtensionsLargeBlobInputs {
  AuthenticationExtensionsLargeBlobInputs::{
    support: None,
    read: None,
    write: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsLargeBlobInputs::to_js(self : AuthenticationExtensionsLargeBlobInputs) -> JsValue =
  #| (self) => ({
  #|   support: self.support,
  #|   read: self.read,
  #|   write: self.write
  #| })

///|
/// AuthenticationExtensionsLargeBlobInputsJSON dictionary
pub struct AuthenticationExtensionsLargeBlobInputsJSON {
  support : String?
  read : Bool?
  write : Base64URLString?
}

/// Create a new AuthenticationExtensionsLargeBlobInputsJSON with default values
pub fn AuthenticationExtensionsLargeBlobInputsJSON::default() -> AuthenticationExtensionsLargeBlobInputsJSON {
  AuthenticationExtensionsLargeBlobInputsJSON::{
    support: None,
    read: None,
    write: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsLargeBlobInputsJSON::to_js(self : AuthenticationExtensionsLargeBlobInputsJSON) -> JsValue =
  #| (self) => ({
  #|   support: self.support,
  #|   read: self.read,
  #|   write: self.write
  #| })

///|
/// AuthenticationExtensionsLargeBlobOutputs dictionary
pub struct AuthenticationExtensionsLargeBlobOutputs {
  supported : Bool?
  blob : ArrayBuffer?
  written : Bool?
}

/// Create a new AuthenticationExtensionsLargeBlobOutputs with default values
pub fn AuthenticationExtensionsLargeBlobOutputs::default() -> AuthenticationExtensionsLargeBlobOutputs {
  AuthenticationExtensionsLargeBlobOutputs::{
    supported: None,
    blob: None,
    written: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsLargeBlobOutputs::to_js(self : AuthenticationExtensionsLargeBlobOutputs) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   blob: self.blob,
  #|   written: self.written
  #| })

///|
/// AuthenticationExtensionsLargeBlobOutputsJSON dictionary
pub struct AuthenticationExtensionsLargeBlobOutputsJSON {
  supported : Bool?
  blob : Base64URLString?
  written : Bool?
}

/// Create a new AuthenticationExtensionsLargeBlobOutputsJSON with default values
pub fn AuthenticationExtensionsLargeBlobOutputsJSON::default() -> AuthenticationExtensionsLargeBlobOutputsJSON {
  AuthenticationExtensionsLargeBlobOutputsJSON::{
    supported: None,
    blob: None,
    written: None,
  }
}

/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsLargeBlobOutputsJSON::to_js(self : AuthenticationExtensionsLargeBlobOutputsJSON) -> JsValue =
  #| (self) => ({
  #|   supported: self.supported,
  #|   blob: self.blob,
  #|   written: self.written
  #| })

///|
/// PublicKeyCredential interface
pub type PublicKeyCredential

pub extern "js" fn PublicKeyCredential::to_js_value(self : PublicKeyCredential) -> JsValue =
  #| (self) => self

pub extern "js" fn PublicKeyCredential::get_raw_id(self : PublicKeyCredential) -> ArrayBuffer =
  #| (self) => self.rawId

pub extern "js" fn PublicKeyCredential::get_response(self : PublicKeyCredential) -> AuthenticatorResponse =
  #| (self) => self.response

pub extern "js" fn PublicKeyCredential::get_authenticator_attachment(self : PublicKeyCredential) -> String? =
  #| (self) => self.authenticatorAttachment

pub extern "js" fn PublicKeyCredential::get_client_extension_results(self : PublicKeyCredential) -> AuthenticationExtensionsClientOutputs =
  #| (self) => self.getClientExtensionResults()

pub extern "js" fn PublicKeyCredential::is_conditional_mediation_available() -> Promise[Bool] =
  #| () => PublicKeyCredential.isConditionalMediationAvailable()

pub extern "js" fn PublicKeyCredential::to_j_s_o_n(self : PublicKeyCredential) -> PublicKeyCredentialJSON =
  #| (self) => self.toJSON()

pub extern "js" fn PublicKeyCredential::is_user_verifying_platform_authenticator_available() -> Promise[Bool] =
  #| () => PublicKeyCredential.isUserVerifyingPlatformAuthenticatorAvailable()

pub extern "js" fn PublicKeyCredential::get_client_capabilities() -> Promise[PublicKeyCredentialClientCapabilities] =
  #| () => PublicKeyCredential.getClientCapabilities()

pub extern "js" fn PublicKeyCredential::parse_creation_options_from_j_s_o_n(options : PublicKeyCredentialCreationOptionsJSON) -> PublicKeyCredentialCreationOptions =
  #| (options) => PublicKeyCredential.parseCreationOptionsFromJSON(options)

pub extern "js" fn PublicKeyCredential::parse_request_options_from_j_s_o_n(options : PublicKeyCredentialRequestOptionsJSON) -> PublicKeyCredentialRequestOptions =
  #| (options) => PublicKeyCredential.parseRequestOptionsFromJSON(options)

pub extern "js" fn PublicKeyCredential::signal_unknown_credential(options : UnknownCredentialOptions) -> Promise[Unit] =
  #| (options) => PublicKeyCredential.signalUnknownCredential(options)

pub extern "js" fn PublicKeyCredential::signal_all_accepted_credentials(options : AllAcceptedCredentialsOptions) -> Promise[Unit] =
  #| (options) => PublicKeyCredential.signalAllAcceptedCredentials(options)

pub extern "js" fn PublicKeyCredential::signal_current_user_details(options : CurrentUserDetailsOptions) -> Promise[Unit] =
  #| (options) => PublicKeyCredential.signalCurrentUserDetails(options)

///|
/// AuthenticatorResponse interface
pub type AuthenticatorResponse

pub extern "js" fn AuthenticatorResponse::to_js_value(self : AuthenticatorResponse) -> JsValue =
  #| (self) => self

pub extern "js" fn AuthenticatorResponse::get_client_data_j_s_o_n(self : AuthenticatorResponse) -> ArrayBuffer =
  #| (self) => self.clientDataJSON

///|
/// AuthenticatorAttestationResponse interface
pub type AuthenticatorAttestationResponse

pub extern "js" fn AuthenticatorAttestationResponse::to_js_value(self : AuthenticatorAttestationResponse) -> JsValue =
  #| (self) => self

pub extern "js" fn AuthenticatorAttestationResponse::get_client_data_j_s_o_n(self : AuthenticatorAttestationResponse) -> ArrayBuffer =
  #| (self) => self.clientDataJSON

pub extern "js" fn AuthenticatorAttestationResponse::get_attestation_object(self : AuthenticatorAttestationResponse) -> ArrayBuffer =
  #| (self) => self.attestationObject

pub extern "js" fn AuthenticatorAttestationResponse::get_transports(self : AuthenticatorAttestationResponse) -> Array[String] =
  #| (self) => self.getTransports()

pub extern "js" fn AuthenticatorAttestationResponse::get_authenticator_data(self : AuthenticatorAttestationResponse) -> ArrayBuffer =
  #| (self) => self.getAuthenticatorData()

pub extern "js" fn AuthenticatorAttestationResponse::get_public_key(self : AuthenticatorAttestationResponse) -> ArrayBuffer? =
  #| (self) => self.getPublicKey()

pub extern "js" fn AuthenticatorAttestationResponse::get_public_key_algorithm(self : AuthenticatorAttestationResponse) -> COSEAlgorithmIdentifier =
  #| (self) => self.getPublicKeyAlgorithm()

///|
/// AuthenticatorAssertionResponse interface
pub type AuthenticatorAssertionResponse

pub extern "js" fn AuthenticatorAssertionResponse::to_js_value(self : AuthenticatorAssertionResponse) -> JsValue =
  #| (self) => self

pub extern "js" fn AuthenticatorAssertionResponse::get_client_data_j_s_o_n(self : AuthenticatorAssertionResponse) -> ArrayBuffer =
  #| (self) => self.clientDataJSON

pub extern "js" fn AuthenticatorAssertionResponse::get_authenticator_data(self : AuthenticatorAssertionResponse) -> ArrayBuffer =
  #| (self) => self.authenticatorData

pub extern "js" fn AuthenticatorAssertionResponse::get_signature(self : AuthenticatorAssertionResponse) -> ArrayBuffer =
  #| (self) => self.signature

pub extern "js" fn AuthenticatorAssertionResponse::get_user_handle(self : AuthenticatorAssertionResponse) -> ArrayBuffer? =
  #| (self) => self.userHandle

