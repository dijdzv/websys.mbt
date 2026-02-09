// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/fido

///|
/// AuthenticationExtensionsClientInputs dictionary
pub(all) struct AuthenticationExtensionsClientInputs {
  credentialProtectionPolicy : String?
  enforceCredentialProtectionPolicy : Bool?
  credBlob : ArrayBuffer?
  getCredBlob : Bool?
  minPinLength : Bool?
  hmacCreateSecret : Bool?
  hmacGetSecret : HMACGetSecretInput?
  appid : String?
  appidExclude : String?
  credProps : Bool?
  prf : AuthenticationExtensionsPRFInputs?
  largeBlob : AuthenticationExtensionsLargeBlobInputs?
  payment : AuthenticationExtensionsPaymentInputs?
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
    appid: None,
    appidExclude: None,
    credProps: None,
    prf: None,
    largeBlob: None,
    payment: None,
  }
}

///|
extern "js" fn AuthenticationExtensionsClientInputs::to_js_ffi(
  self : AuthenticationExtensionsClientInputs,
) -> JsValue =
  #| (self) => ({
  #|   credentialProtectionPolicy: self.credentialProtectionPolicy,
  #|   enforceCredentialProtectionPolicy: (self.enforceCredentialProtectionPolicy === -1 ? undefined : self.enforceCredentialProtectionPolicy),
  #|   credBlob: ((() => { const v = self.credBlob; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   getCredBlob: (self.getCredBlob === -1 ? undefined : self.getCredBlob),
  #|   minPinLength: (self.minPinLength === -1 ? undefined : self.minPinLength),
  #|   hmacCreateSecret: (self.hmacCreateSecret === -1 ? undefined : self.hmacCreateSecret),
  #|   hmacGetSecret: ((() => { const v = self.hmacGetSecret; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   appid: self.appid,
  #|   appidExclude: self.appidExclude,
  #|   credProps: (self.credProps === -1 ? undefined : self.credProps),
  #|   prf: ((() => { const v = self.prf; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   largeBlob: ((() => { const v = self.largeBlob; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   payment: ((() => { const v = self.payment; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsClientInputs::to_js(
  self : AuthenticationExtensionsClientInputs,
) -> JsValue {
  AuthenticationExtensionsClientInputs::to_js_ffi(self)
}

///|
/// HMACGetSecretInput dictionary
pub(all) struct HMACGetSecretInput {
  salt1 : ArrayBuffer
  salt2 : ArrayBuffer?
}

///|
/// Create a new HMACGetSecretInput
pub fn HMACGetSecretInput::new(salt1~ : ArrayBuffer) -> HMACGetSecretInput {
  HMACGetSecretInput::{ salt1, salt2: None }
}

///|
extern "js" fn HMACGetSecretInput::to_js_ffi(
  self : HMACGetSecretInput,
) -> JsValue =
  #| (self) => ({
  #|   salt1: self.salt1,
  #|   salt2: ((() => { const v = self.salt2; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn HMACGetSecretInput::to_js(self : HMACGetSecretInput) -> JsValue {
  HMACGetSecretInput::to_js_ffi(self)
}

///|
/// AuthenticationExtensionsClientOutputs dictionary
pub(all) struct AuthenticationExtensionsClientOutputs {
  hmacCreateSecret : Bool?
  hmacGetSecret : HMACGetSecretOutput?
  appid : Bool?
  appidExclude : Bool?
  credProps : CredentialPropertiesOutput?
  prf : AuthenticationExtensionsPRFOutputs?
  largeBlob : AuthenticationExtensionsLargeBlobOutputs?
  payment : AuthenticationExtensionsPaymentOutputs?
}

///|
/// Create a new AuthenticationExtensionsClientOutputs with default values
pub fn AuthenticationExtensionsClientOutputs::default() -> AuthenticationExtensionsClientOutputs {
  AuthenticationExtensionsClientOutputs::{
    hmacCreateSecret: None,
    hmacGetSecret: None,
    appid: None,
    appidExclude: None,
    credProps: None,
    prf: None,
    largeBlob: None,
    payment: None,
  }
}

///|
extern "js" fn AuthenticationExtensionsClientOutputs::to_js_ffi(
  self : AuthenticationExtensionsClientOutputs,
) -> JsValue =
  #| (self) => ({
  #|   hmacCreateSecret: (self.hmacCreateSecret === -1 ? undefined : self.hmacCreateSecret),
  #|   hmacGetSecret: ((() => { const v = self.hmacGetSecret; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   appid: (self.appid === -1 ? undefined : self.appid),
  #|   appidExclude: (self.appidExclude === -1 ? undefined : self.appidExclude),
  #|   credProps: ((() => { const v = self.credProps; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   prf: ((() => { const v = self.prf; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   largeBlob: ((() => { const v = self.largeBlob; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   payment: ((() => { const v = self.payment; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsClientOutputs::to_js(
  self : AuthenticationExtensionsClientOutputs,
) -> JsValue {
  AuthenticationExtensionsClientOutputs::to_js_ffi(self)
}

///|
/// HMACGetSecretOutput dictionary
pub(all) struct HMACGetSecretOutput {
  output1 : ArrayBuffer
  output2 : ArrayBuffer?
}

///|
/// Create a new HMACGetSecretOutput
pub fn HMACGetSecretOutput::new(output1~ : ArrayBuffer) -> HMACGetSecretOutput {
  HMACGetSecretOutput::{ output1, output2: None }
}

///|
extern "js" fn HMACGetSecretOutput::to_js_ffi(
  self : HMACGetSecretOutput,
) -> JsValue =
  #| (self) => ({
  #|   output1: self.output1,
  #|   output2: ((() => { const v = self.output2; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn HMACGetSecretOutput::to_js(self : HMACGetSecretOutput) -> JsValue {
  HMACGetSecretOutput::to_js_ffi(self)
}
