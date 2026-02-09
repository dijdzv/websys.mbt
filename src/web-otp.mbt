// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-otp

///|
/// OTPCredentialTransportType enum
pub(all) enum OTPCredentialTransportType {
  Sms
}

///|
/// Convert to string value
pub fn OTPCredentialTransportType::to_string(
  self : OTPCredentialTransportType,
) -> String {
  match self {
    OTPCredentialTransportType::Sms => "sms"
  }
}

///|
/// Parse from string value
pub fn OTPCredentialTransportType::from_string(
  s : String,
) -> OTPCredentialTransportType? {
  match s {
    "sms" => Some(OTPCredentialTransportType::Sms)
    _ => None
  }
}

///|
/// OTPCredentialRequestOptions dictionary
pub(all) struct OTPCredentialRequestOptions {
  transport : Array[OTPCredentialTransportType]?
}

///|
/// Create a new OTPCredentialRequestOptions with default values
pub fn OTPCredentialRequestOptions::default() -> OTPCredentialRequestOptions {
  OTPCredentialRequestOptions::{ transport: None }
}

///|
extern "js" fn OTPCredentialRequestOptions::to_js_ffi(
  self : OTPCredentialRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   transport: ((() => { const v = self.transport; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn OTPCredentialRequestOptions::to_js(
  self : OTPCredentialRequestOptions,
) -> JsValue {
  OTPCredentialRequestOptions::to_js_ffi(self)
}

///|
/// OTPCredential interface
pub type OTPCredential

///|
pub extern "js" fn OTPCredential::to_js_value(self : OTPCredential) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OTPCredential (unchecked)
pub extern "js" fn OTPCredential::from_js_value(v : JsValue) -> OTPCredential =
  #| (v) => v

///|
/// Safely cast JsValue to OTPCredential (checked with instanceof)
pub extern "js" fn OTPCredential::from_js_value_opt(
  v : JsValue,
) -> OTPCredential? =
  #| (v) => (v instanceof OTPCredential) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OTPCredential (checked with instanceof)
pub extern "js" fn JsValue::as_otp_credential(self : JsValue) -> OTPCredential? =
  #| (self) => (self instanceof OTPCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OTPCredential (unchecked)
pub extern "js" fn JsValue::to_otp_credential(self : JsValue) -> OTPCredential =
  #| (self) => self

///|
pub extern "js" fn OTPCredential::to_credential(
  self : OTPCredential,
) -> Credential =
  #| (self) => self

///|
pub extern "js" fn OTPCredential::get_code(self : OTPCredential) -> String =
  #| (self) => self.code
