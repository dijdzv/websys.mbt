// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/trust-token-api

///|
/// RefreshPolicy enum
pub(all) enum RefreshPolicy {
  None
  Refresh
}

///|
/// Convert to string value
pub fn RefreshPolicy::to_string(self : RefreshPolicy) -> String {
  match self {
    RefreshPolicy::None => "none"
    RefreshPolicy::Refresh => "refresh"
  }
}

///|
/// Parse from string value
pub fn RefreshPolicy::from_string(s : String) -> RefreshPolicy? {
  match s {
    "none" => Some(RefreshPolicy::None)
    "refresh" => Some(RefreshPolicy::Refresh)
    _ => None
  }
}

///|
/// TokenVersion enum
pub(all) enum TokenVersion {
  N1
}

///|
/// Convert to string value
pub fn TokenVersion::to_string(self : TokenVersion) -> String {
  match self {
    TokenVersion::N1 => "1"
  }
}

///|
/// Parse from string value
pub fn TokenVersion::from_string(s : String) -> TokenVersion? {
  match s {
    "1" => Some(TokenVersion::N1)
    _ => None
  }
}

///|
/// OperationType enum
pub(all) enum OperationType {
  TokenRequest
  SendRedemptionRecord
  TokenRedemption
}

///|
/// Convert to string value
pub fn OperationType::to_string(self : OperationType) -> String {
  match self {
    OperationType::TokenRequest => "token-request"
    OperationType::SendRedemptionRecord => "send-redemption-record"
    OperationType::TokenRedemption => "token-redemption"
  }
}

///|
/// Parse from string value
pub fn OperationType::from_string(s : String) -> OperationType? {
  match s {
    "token-request" => Some(OperationType::TokenRequest)
    "send-redemption-record" => Some(OperationType::SendRedemptionRecord)
    "token-redemption" => Some(OperationType::TokenRedemption)
    _ => None
  }
}

///|
/// PrivateToken dictionary
pub struct PrivateToken {
  version : TokenVersion
  operation : OperationType
  refreshPolicy : RefreshPolicy?
  issuers : Array[String]?
}

///|
/// Create a new PrivateToken with default values
pub fn PrivateToken::default() -> PrivateToken {
  PrivateToken::{
    version: panic(),
    operation: panic(),
    refreshPolicy: None,
    issuers: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PrivateToken::to_js(self : PrivateToken) -> JsValue =
  #| (self) => ({
  #|   version: ['1'][self.version],
  #|   operation: ['token-request', 'send-redemption-record', 'token-redemption'][self.operation],
  #|   refreshPolicy: ['none', 'refresh'][self.refreshPolicy],
  #|   issuers: self.issuers
  #| })
