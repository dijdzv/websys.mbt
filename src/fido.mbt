// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/fido

///|
/// AuthenticationExtensionsClientInputs dictionary
pub struct AuthenticationExtensionsClientInputs {
  credentialProtectionPolicy : String?
  enforceCredentialProtectionPolicy : Bool?
  credBlob : ArrayBuffer?
  getCredBlob : Bool?
  minPinLength : Bool?
  hmacCreateSecret : Bool?
  hmacGetSecret : HMACGetSecretInput?
  payment : AuthenticationExtensionsPaymentInputs?
  appid : String?
  appidExclude : String?
  credProps : Bool?
  prf : AuthenticationExtensionsPRFInputs?
  largeBlob : AuthenticationExtensionsLargeBlobInputs?
}

///|
/// Create a new AuthenticationExtensionsClientInputs with default values
pub fn AuthenticationExtensionsClientInputs::default() -> AuthenticationExtensionsClientInputs {
  AuthenticationExtensionsClientInputs::{
    credentialProtectionPolicy: None,
    enforceCredentialProtectionPolicy: None,
    credBlob: None,
    getCredBlob: None,
    minPinLength: None,
    hmacCreateSecret: None,
    hmacGetSecret: None,
    payment: None,
    appid: None,
    appidExclude: None,
    credProps: None,
    prf: None,
    largeBlob: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsClientInputs::to_js(
  self : AuthenticationExtensionsClientInputs,
) -> JsValue =
  #| (self) => ({
  #|   credentialProtectionPolicy: self.credentialProtectionPolicy,
  #|   enforceCredentialProtectionPolicy: self.enforceCredentialProtectionPolicy,
  #|   credBlob: self.credBlob,
  #|   getCredBlob: self.getCredBlob,
  #|   minPinLength: self.minPinLength,
  #|   hmacCreateSecret: self.hmacCreateSecret,
  #|   hmacGetSecret: self.hmacGetSecret,
  #|   payment: self.payment,
  #|   appid: self.appid,
  #|   appidExclude: self.appidExclude,
  #|   credProps: self.credProps,
  #|   prf: self.prf,
  #|   largeBlob: self.largeBlob
  #| })

///|
/// HMACGetSecretInput dictionary
pub struct HMACGetSecretInput {
  salt1 : ArrayBuffer
  salt2 : ArrayBuffer?
}

///|
/// Create a new HMACGetSecretInput with default values
pub fn HMACGetSecretInput::default() -> HMACGetSecretInput {
  HMACGetSecretInput::{ salt1: panic(), salt2: None }
}

///|
/// Convert to JsValue
pub extern "js" fn HMACGetSecretInput::to_js(
  self : HMACGetSecretInput,
) -> JsValue =
  #| (self) => ({
  #|   salt1: self.salt1,
  #|   salt2: self.salt2
  #| })

///|
/// AuthenticationExtensionsClientOutputs dictionary
pub struct AuthenticationExtensionsClientOutputs {
  hmacCreateSecret : Bool?
  hmacGetSecret : HMACGetSecretOutput?
  payment : AuthenticationExtensionsPaymentOutputs?
  appid : Bool?
  appidExclude : Bool?
  credProps : CredentialPropertiesOutput?
  prf : AuthenticationExtensionsPRFOutputs?
  largeBlob : AuthenticationExtensionsLargeBlobOutputs?
}

///|
/// Create a new AuthenticationExtensionsClientOutputs with default values
pub fn AuthenticationExtensionsClientOutputs::default() -> AuthenticationExtensionsClientOutputs {
  AuthenticationExtensionsClientOutputs::{
    hmacCreateSecret: None,
    hmacGetSecret: None,
    payment: None,
    appid: None,
    appidExclude: None,
    credProps: None,
    prf: None,
    largeBlob: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn AuthenticationExtensionsClientOutputs::to_js(
  self : AuthenticationExtensionsClientOutputs,
) -> JsValue =
  #| (self) => ({
  #|   hmacCreateSecret: self.hmacCreateSecret,
  #|   hmacGetSecret: self.hmacGetSecret,
  #|   payment: self.payment,
  #|   appid: self.appid,
  #|   appidExclude: self.appidExclude,
  #|   credProps: self.credProps,
  #|   prf: self.prf,
  #|   largeBlob: self.largeBlob
  #| })

///|
/// HMACGetSecretOutput dictionary
pub struct HMACGetSecretOutput {
  output1 : ArrayBuffer
  output2 : ArrayBuffer?
}

///|
/// Create a new HMACGetSecretOutput with default values
pub fn HMACGetSecretOutput::default() -> HMACGetSecretOutput {
  HMACGetSecretOutput::{ output1: panic(), output2: None }
}

///|
/// Convert to JsValue
pub extern "js" fn HMACGetSecretOutput::to_js(
  self : HMACGetSecretOutput,
) -> JsValue =
  #| (self) => ({
  #|   output1: self.output1,
  #|   output2: self.output2
  #| })
