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
  #|   credBlob: ((() => { const v = self.credBlob; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   getCredBlob: (self.getCredBlob === -1 ? undefined : self.getCredBlob),
  #|   minPinLength: (self.minPinLength === -1 ? undefined : self.minPinLength),
  #|   hmacCreateSecret: (self.hmacCreateSecret === -1 ? undefined : self.hmacCreateSecret),
  #|   hmacGetSecret: ((() => { const v = self.hmacGetSecret; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   appid: self.appid,
  #|   appidExclude: self.appidExclude,
  #|   credProps: (self.credProps === -1 ? undefined : self.credProps),
  #|   prf: ((() => { const v = self.prf; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   largeBlob: ((() => { const v = self.largeBlob; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   payment: ((() => { const v = self.payment; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsClientInputs::to_js(
  self : AuthenticationExtensionsClientInputs,
) -> JsValue {
  AuthenticationExtensionsClientInputs::to_js_ffi(self)
}

///|
extern "js" fn AuthenticationExtensionsClientInputs::from_js_ffi(
  value : JsValue,
) -> AuthenticationExtensionsClientInputs =
  #| (v) => ({
  #|   credentialProtectionPolicy: v.credentialProtectionPolicy,
  #|   enforceCredentialProtectionPolicy: (v.enforceCredentialProtectionPolicy === undefined ? -1 : v.enforceCredentialProtectionPolicy),
  #|   credBlob: (v.credBlob === undefined ? { $tag: 0 } : { $tag: 1, _0: v.credBlob }),
  #|   getCredBlob: (v.getCredBlob === undefined ? -1 : v.getCredBlob),
  #|   minPinLength: (v.minPinLength === undefined ? -1 : v.minPinLength),
  #|   hmacCreateSecret: (v.hmacCreateSecret === undefined ? -1 : v.hmacCreateSecret),
  #|   hmacGetSecret: (v.hmacGetSecret === undefined ? { $tag: 0 } : { $tag: 1, _0: v.hmacGetSecret }),
  #|   appid: v.appid,
  #|   appidExclude: v.appidExclude,
  #|   credProps: (v.credProps === undefined ? -1 : v.credProps),
  #|   prf: (v.prf === undefined ? { $tag: 0 } : { $tag: 1, _0: v.prf }),
  #|   largeBlob: (v.largeBlob === undefined ? { $tag: 0 } : { $tag: 1, _0: v.largeBlob }),
  #|   payment: (v.payment === undefined ? { $tag: 0 } : { $tag: 1, _0: v.payment })
  #| })

///|
/// Convert from JsValue
pub fn AuthenticationExtensionsClientInputs::from_js(
  value : JsValue,
) -> AuthenticationExtensionsClientInputs {
  AuthenticationExtensionsClientInputs::from_js_ffi(value)
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
  #|   salt2: ((() => { const v = self.salt2; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn HMACGetSecretInput::to_js(self : HMACGetSecretInput) -> JsValue {
  HMACGetSecretInput::to_js_ffi(self)
}

///|
extern "js" fn HMACGetSecretInput::from_js_ffi(
  value : JsValue,
) -> HMACGetSecretInput =
  #| (v) => ({
  #|   salt1: v.salt1,
  #|   salt2: (v.salt2 === undefined ? { $tag: 0 } : { $tag: 1, _0: v.salt2 })
  #| })

///|
/// Convert from JsValue
pub fn HMACGetSecretInput::from_js(value : JsValue) -> HMACGetSecretInput {
  HMACGetSecretInput::from_js_ffi(value)
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
  #|   hmacGetSecret: ((() => { const v = self.hmacGetSecret; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   appid: (self.appid === -1 ? undefined : self.appid),
  #|   appidExclude: (self.appidExclude === -1 ? undefined : self.appidExclude),
  #|   credProps: ((() => { const v = self.credProps; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   prf: ((() => { const v = self.prf; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   largeBlob: ((() => { const v = self.largeBlob; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   payment: ((() => { const v = self.payment; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsClientOutputs::to_js(
  self : AuthenticationExtensionsClientOutputs,
) -> JsValue {
  AuthenticationExtensionsClientOutputs::to_js_ffi(self)
}

///|
extern "js" fn AuthenticationExtensionsClientOutputs::from_js_ffi(
  value : JsValue,
) -> AuthenticationExtensionsClientOutputs =
  #| (v) => ({
  #|   hmacCreateSecret: (v.hmacCreateSecret === undefined ? -1 : v.hmacCreateSecret),
  #|   hmacGetSecret: (v.hmacGetSecret === undefined ? { $tag: 0 } : { $tag: 1, _0: v.hmacGetSecret }),
  #|   appid: (v.appid === undefined ? -1 : v.appid),
  #|   appidExclude: (v.appidExclude === undefined ? -1 : v.appidExclude),
  #|   credProps: (v.credProps === undefined ? { $tag: 0 } : { $tag: 1, _0: v.credProps }),
  #|   prf: (v.prf === undefined ? { $tag: 0 } : { $tag: 1, _0: v.prf }),
  #|   largeBlob: (v.largeBlob === undefined ? { $tag: 0 } : { $tag: 1, _0: v.largeBlob }),
  #|   payment: (v.payment === undefined ? { $tag: 0 } : { $tag: 1, _0: v.payment })
  #| })

///|
/// Convert from JsValue
pub fn AuthenticationExtensionsClientOutputs::from_js(
  value : JsValue,
) -> AuthenticationExtensionsClientOutputs {
  AuthenticationExtensionsClientOutputs::from_js_ffi(value)
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
  #|   output2: ((() => { const v = self.output2; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn HMACGetSecretOutput::to_js(self : HMACGetSecretOutput) -> JsValue {
  HMACGetSecretOutput::to_js_ffi(self)
}

///|
extern "js" fn HMACGetSecretOutput::from_js_ffi(
  value : JsValue,
) -> HMACGetSecretOutput =
  #| (v) => ({
  #|   output1: v.output1,
  #|   output2: (v.output2 === undefined ? { $tag: 0 } : { $tag: 1, _0: v.output2 })
  #| })

///|
/// Convert from JsValue
pub fn HMACGetSecretOutput::from_js(value : JsValue) -> HMACGetSecretOutput {
  HMACGetSecretOutput::from_js_ffi(value)
}
