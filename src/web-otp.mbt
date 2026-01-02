// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/web-otp

///|
/// OTPCredentialTransportType enum
pub(all) enum OTPCredentialTransportType {
  Sms
}

/// Convert to string value
pub fn OTPCredentialTransportType::to_string(self : OTPCredentialTransportType) -> String {
  match self {
    Sms => "sms"
  }
}

/// Parse from string value
pub fn OTPCredentialTransportType::from_string(s : String) -> OTPCredentialTransportType? {
  match s {
    "sms" => Some(Sms)
    _ => None
  }
}

///|
/// OTPCredentialRequestOptions dictionary
pub struct OTPCredentialRequestOptions {
  transport : JsValue?
}

/// Create a new OTPCredentialRequestOptions with default values
pub fn OTPCredentialRequestOptions::default() -> OTPCredentialRequestOptions {
  OTPCredentialRequestOptions::{
    transport: None,
  }
}

/// Convert to JsValue
pub extern "js" fn OTPCredentialRequestOptions::to_js(self : OTPCredentialRequestOptions) -> JsValue =
  #| (self) => ({
  #|   transport: self.transport
  #| })

///|
/// OTPCredential interface
pub type OTPCredential

pub extern "js" fn OTPCredential::to_js_value(self : OTPCredential) -> JsValue =
  #| (self) => self

pub extern "js" fn OTPCredential::get_code(self : OTPCredential) -> String =
  #| (self) => self.code

