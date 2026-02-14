// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/trust-token-api

///|
/// RefreshPolicy enum
pub(all) enum RefreshPolicy {
  None
  Refresh
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
pub(all) struct PrivateToken {
  version : TokenVersion
  operation : OperationType
  refreshPolicy : RefreshPolicy?
  issuers : Array[String]?
}

///|
/// Create a new PrivateToken
pub fn PrivateToken::new(
  version~ : TokenVersion,
  operation~ : OperationType,
) -> PrivateToken {
  PrivateToken::{ version, operation, refreshPolicy: None, issuers: None }
}

///|
extern "js" fn PrivateToken::to_js_ffi(self : PrivateToken) -> JsValue =
  #| (self) => ({
  #|   version: ['1'][self.version],
  #|   operation: ['token-request', 'send-redemption-record', 'token-redemption'][self.operation],
  #|   refreshPolicy: ((() => { const v = self.refreshPolicy; if (v === undefined) return undefined; return ['none', 'refresh'][v]; })()),
  #|   issuers: ((() => { const v = self.issuers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PrivateToken::to_js(self : PrivateToken) -> JsValue {
  PrivateToken::to_js_ffi(self)
}

///|
extern "js" fn PrivateToken::from_js_ffi(value : JsValue) -> PrivateToken =
  #| (v) => ({
  #|   version: ['1'].indexOf(v.version),
  #|   operation: ['token-request', 'send-redemption-record', 'token-redemption'].indexOf(v.operation),
  #|   refreshPolicy: (v.refreshPolicy === undefined ? undefined : ['none', 'refresh'].indexOf(v.refreshPolicy)),
  #|   issuers: (v.issuers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.issuers })
  #| })

///|
/// Convert from JsValue
pub fn PrivateToken::from_js(value : JsValue) -> PrivateToken {
  PrivateToken::from_js_ffi(value)
}
