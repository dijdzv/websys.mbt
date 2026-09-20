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
extern "js" fn AuthenticationExtensionsClientInputs::to_js_ffi(
  self : AuthenticationExtensionsClientInputs,
  convert_hmacGetSecret : (HMACGetSecretInput?) -> JsValue,
  convert_payment : (AuthenticationExtensionsPaymentInputs?) -> JsValue,
  convert_prf : (AuthenticationExtensionsPRFInputs?) -> JsValue,
  convert_largeBlob : (AuthenticationExtensionsLargeBlobInputs?) -> JsValue,
) -> JsValue =
  #| (self, convert_hmacGetSecret, convert_payment, convert_prf, convert_largeBlob) => ({
  #|   credentialProtectionPolicy: self.credentialProtectionPolicy,
  #|   enforceCredentialProtectionPolicy: (self.enforceCredentialProtectionPolicy === -1 ? undefined : self.enforceCredentialProtectionPolicy),
  #|   credBlob: ((() => { const v = self.credBlob; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   getCredBlob: (self.getCredBlob === -1 ? undefined : self.getCredBlob),
  #|   minPinLength: (self.minPinLength === -1 ? undefined : self.minPinLength),
  #|   hmacCreateSecret: (self.hmacCreateSecret === -1 ? undefined : self.hmacCreateSecret),
  #|   hmacGetSecret: convert_hmacGetSecret(self.hmacGetSecret),
  #|   payment: convert_payment(self.payment),
  #|   appid: self.appid,
  #|   appidExclude: self.appidExclude,
  #|   credProps: (self.credProps === -1 ? undefined : self.credProps),
  #|   prf: convert_prf(self.prf),
  #|   largeBlob: convert_largeBlob(self.largeBlob)
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsClientInputs::to_js(
  self : AuthenticationExtensionsClientInputs,
) -> JsValue {
  AuthenticationExtensionsClientInputs::to_js_ffi(
    self,
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
  )
}

///|
extern "js" fn AuthenticationExtensionsClientInputs::from_js_ffi(
  value : JsValue,
  convert_hmacGetSecret : (JsValue) -> HMACGetSecretInput?,
  convert_payment : (JsValue) -> AuthenticationExtensionsPaymentInputs?,
  convert_prf : (JsValue) -> AuthenticationExtensionsPRFInputs?,
  convert_largeBlob : (JsValue) -> AuthenticationExtensionsLargeBlobInputs?,
) -> AuthenticationExtensionsClientInputs =
  #| (v, convert_hmacGetSecret, convert_payment, convert_prf, convert_largeBlob) => ({
  #|   credentialProtectionPolicy: v.credentialProtectionPolicy,
  #|   enforceCredentialProtectionPolicy: (v.enforceCredentialProtectionPolicy === undefined ? -1 : v.enforceCredentialProtectionPolicy),
  #|   credBlob: (v.credBlob === undefined ? { $tag: 0 } : { $tag: 1, _0: v.credBlob }),
  #|   getCredBlob: (v.getCredBlob === undefined ? -1 : v.getCredBlob),
  #|   minPinLength: (v.minPinLength === undefined ? -1 : v.minPinLength),
  #|   hmacCreateSecret: (v.hmacCreateSecret === undefined ? -1 : v.hmacCreateSecret),
  #|   hmacGetSecret: convert_hmacGetSecret(v.hmacGetSecret),
  #|   payment: convert_payment(v.payment),
  #|   appid: v.appid,
  #|   appidExclude: v.appidExclude,
  #|   credProps: (v.credProps === undefined ? -1 : v.credProps),
  #|   prf: convert_prf(v.prf),
  #|   largeBlob: convert_largeBlob(v.largeBlob)
  #| })

///|
/// Convert from JsValue
pub fn AuthenticationExtensionsClientInputs::from_js(
  value : JsValue,
) -> AuthenticationExtensionsClientInputs {
  AuthenticationExtensionsClientInputs::from_js_ffi(
    value,
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(HMACGetSecretInput::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(AuthenticationExtensionsPaymentInputs::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(AuthenticationExtensionsPRFInputs::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(AuthenticationExtensionsLargeBlobInputs::from_js(value))
      }
    },
  )
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
  HMACGetSecretInput::{ salt1, salt2: None, }
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
extern "js" fn AuthenticationExtensionsClientOutputs::to_js_ffi(
  self : AuthenticationExtensionsClientOutputs,
  convert_hmacGetSecret : (HMACGetSecretOutput?) -> JsValue,
  convert_payment : (AuthenticationExtensionsPaymentOutputs?) -> JsValue,
  convert_credProps : (CredentialPropertiesOutput?) -> JsValue,
  convert_prf : (AuthenticationExtensionsPRFOutputs?) -> JsValue,
  convert_largeBlob : (AuthenticationExtensionsLargeBlobOutputs?) -> JsValue,
) -> JsValue =
  #| (self, convert_hmacGetSecret, convert_payment, convert_credProps, convert_prf, convert_largeBlob) => ({
  #|   hmacCreateSecret: (self.hmacCreateSecret === -1 ? undefined : self.hmacCreateSecret),
  #|   hmacGetSecret: convert_hmacGetSecret(self.hmacGetSecret),
  #|   payment: convert_payment(self.payment),
  #|   appid: (self.appid === -1 ? undefined : self.appid),
  #|   appidExclude: (self.appidExclude === -1 ? undefined : self.appidExclude),
  #|   credProps: convert_credProps(self.credProps),
  #|   prf: convert_prf(self.prf),
  #|   largeBlob: convert_largeBlob(self.largeBlob)
  #| })

///|
/// Convert to JsValue
pub fn AuthenticationExtensionsClientOutputs::to_js(
  self : AuthenticationExtensionsClientOutputs,
) -> JsValue {
  AuthenticationExtensionsClientOutputs::to_js_ffi(
    self,
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
    fn(value) {
      match value {
        Some(value) => value.to_js()
        None => dictionary_undefined()
      }
    },
  )
}

///|
extern "js" fn AuthenticationExtensionsClientOutputs::from_js_ffi(
  value : JsValue,
  convert_hmacGetSecret : (JsValue) -> HMACGetSecretOutput?,
  convert_payment : (JsValue) -> AuthenticationExtensionsPaymentOutputs?,
  convert_credProps : (JsValue) -> CredentialPropertiesOutput?,
  convert_prf : (JsValue) -> AuthenticationExtensionsPRFOutputs?,
  convert_largeBlob : (JsValue) -> AuthenticationExtensionsLargeBlobOutputs?,
) -> AuthenticationExtensionsClientOutputs =
  #| (v, convert_hmacGetSecret, convert_payment, convert_credProps, convert_prf, convert_largeBlob) => ({
  #|   hmacCreateSecret: (v.hmacCreateSecret === undefined ? -1 : v.hmacCreateSecret),
  #|   hmacGetSecret: convert_hmacGetSecret(v.hmacGetSecret),
  #|   payment: convert_payment(v.payment),
  #|   appid: (v.appid === undefined ? -1 : v.appid),
  #|   appidExclude: (v.appidExclude === undefined ? -1 : v.appidExclude),
  #|   credProps: convert_credProps(v.credProps),
  #|   prf: convert_prf(v.prf),
  #|   largeBlob: convert_largeBlob(v.largeBlob)
  #| })

///|
/// Convert from JsValue
pub fn AuthenticationExtensionsClientOutputs::from_js(
  value : JsValue,
) -> AuthenticationExtensionsClientOutputs {
  AuthenticationExtensionsClientOutputs::from_js_ffi(
    value,
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(HMACGetSecretOutput::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(AuthenticationExtensionsPaymentOutputs::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(CredentialPropertiesOutput::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(AuthenticationExtensionsPRFOutputs::from_js(value))
      }
    },
    fn(value) {
      if value.is_undefined() {
        None
      } else {
        Some(AuthenticationExtensionsLargeBlobOutputs::from_js(value))
      }
    },
  )
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
  HMACGetSecretOutput::{ output1, output2: None, }
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
