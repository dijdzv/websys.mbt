// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/fedcm

///|
/// IdentityCredentialRequestOptionsContext enum
pub(all) enum IdentityCredentialRequestOptionsContext {
  Signin
  Signup
  Use
  Continue
}

///|
/// Convert to string value
pub fn IdentityCredentialRequestOptionsContext::to_string(
  self : IdentityCredentialRequestOptionsContext,
) -> String {
  match self {
    IdentityCredentialRequestOptionsContext::Signin => "signin"
    IdentityCredentialRequestOptionsContext::Signup => "signup"
    IdentityCredentialRequestOptionsContext::Use => "use"
    IdentityCredentialRequestOptionsContext::Continue => "continue"
  }
}

///|
/// Parse from string value
pub fn IdentityCredentialRequestOptionsContext::from_string(
  s : String,
) -> IdentityCredentialRequestOptionsContext? {
  match s {
    "signin" => Some(IdentityCredentialRequestOptionsContext::Signin)
    "signup" => Some(IdentityCredentialRequestOptionsContext::Signup)
    "use" => Some(IdentityCredentialRequestOptionsContext::Use)
    "continue" => Some(IdentityCredentialRequestOptionsContext::Continue)
    _ => None
  }
}

///|
/// IdentityCredentialRequestOptionsMode enum
pub(all) enum IdentityCredentialRequestOptionsMode {
  Active
  Passive
}

///|
/// Convert to string value
pub fn IdentityCredentialRequestOptionsMode::to_string(
  self : IdentityCredentialRequestOptionsMode,
) -> String {
  match self {
    IdentityCredentialRequestOptionsMode::Active => "active"
    IdentityCredentialRequestOptionsMode::Passive => "passive"
  }
}

///|
/// Parse from string value
pub fn IdentityCredentialRequestOptionsMode::from_string(
  s : String,
) -> IdentityCredentialRequestOptionsMode? {
  match s {
    "active" => Some(IdentityCredentialRequestOptionsMode::Active)
    "passive" => Some(IdentityCredentialRequestOptionsMode::Passive)
    _ => None
  }
}

///|
/// IdentityCredentialDisconnectOptions dictionary
pub(all) struct IdentityCredentialDisconnectOptions {
  configURL : String
  clientId : String
  accountHint : String
}

///|
/// Create a new IdentityCredentialDisconnectOptions with default values
pub fn IdentityCredentialDisconnectOptions::default() -> IdentityCredentialDisconnectOptions {
  IdentityCredentialDisconnectOptions::{
    configURL: "",
    clientId: "",
    accountHint: "",
  }
}

///|
extern "js" fn IdentityCredentialDisconnectOptions::to_js_ffi(
  self : IdentityCredentialDisconnectOptions,
) -> JsValue =
  #| (self) => ({
  #|   configURL: self.configURL,
  #|   clientId: self.clientId,
  #|   accountHint: self.accountHint
  #| })

///|
/// Convert to JsValue
pub fn IdentityCredentialDisconnectOptions::to_js(
  self : IdentityCredentialDisconnectOptions,
) -> JsValue {
  IdentityCredentialDisconnectOptions::to_js_ffi(self)
}

///|
/// DisconnectedAccount dictionary
pub(all) struct DisconnectedAccount {
  account_id : String
}

///|
/// Create a new DisconnectedAccount with default values
pub fn DisconnectedAccount::default() -> DisconnectedAccount {
  DisconnectedAccount::{ account_id: "" }
}

///|
extern "js" fn DisconnectedAccount::to_js_ffi(
  self : DisconnectedAccount,
) -> JsValue =
  #| (self) => ({
  #|   account_id: self.account_id
  #| })

///|
/// Convert to JsValue
pub fn DisconnectedAccount::to_js(self : DisconnectedAccount) -> JsValue {
  DisconnectedAccount::to_js_ffi(self)
}

///|
/// IdentityCredentialErrorInit dictionary
pub(all) struct IdentityCredentialErrorInit {
  error : String?
  url : String?
}

///|
/// Create a new IdentityCredentialErrorInit with default values
pub fn IdentityCredentialErrorInit::default() -> IdentityCredentialErrorInit {
  IdentityCredentialErrorInit::{ error: None, url: None }
}

///|
extern "js" fn IdentityCredentialErrorInit::to_js_ffi(
  self : IdentityCredentialErrorInit,
) -> JsValue =
  #| (self) => ({
  #|   error: self.error,
  #|   url: self.url
  #| })

///|
/// Convert to JsValue
pub fn IdentityCredentialErrorInit::to_js(
  self : IdentityCredentialErrorInit,
) -> JsValue {
  IdentityCredentialErrorInit::to_js_ffi(self)
}

///|
/// CredentialRequestOptions dictionary
pub(all) struct CredentialRequestOptions {
  identity : IdentityCredentialRequestOptions?
  digital : DigitalCredentialRequestOptions?
  otp : OTPCredentialRequestOptions?
  publicKey : PublicKeyCredentialRequestOptions?
  mediation : CredentialMediationRequirement?
  signal : AbortSignal?
  password : Bool?
  federated : FederatedCredentialRequestOptions?
}

///|
/// Create a new CredentialRequestOptions with default values
pub fn CredentialRequestOptions::default() -> CredentialRequestOptions {
  CredentialRequestOptions::{
    identity: None,
    digital: None,
    otp: None,
    publicKey: None,
    mediation: None,
    signal: None,
    password: None,
    federated: None,
  }
}

///|
extern "js" fn CredentialRequestOptions::to_js_ffi(
  self : CredentialRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   identity: ((() => { const v = self.identity; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   digital: ((() => { const v = self.digital; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   otp: ((() => { const v = self.otp; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   publicKey: ((() => { const v = self.publicKey; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   mediation: ((() => { const v = self.mediation; if (v === undefined) return undefined; return ['silent', 'optional', 'conditional', 'required'][v]; })()),
  #|   signal: ((() => { const v = self.signal; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   password: (self.password === -1 ? undefined : self.password),
  #|   federated: ((() => { const v = self.federated; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn CredentialRequestOptions::to_js(
  self : CredentialRequestOptions,
) -> JsValue {
  CredentialRequestOptions::to_js_ffi(self)
}

///|
/// IdentityCredentialRequestOptions dictionary
pub(all) struct IdentityCredentialRequestOptions {
  providers : Array[IdentityProviderRequestOptions]
  context : IdentityCredentialRequestOptionsContext?
  mode : IdentityCredentialRequestOptionsMode?
}

///|
/// Create a new IdentityCredentialRequestOptions with default values
pub fn IdentityCredentialRequestOptions::default() -> IdentityCredentialRequestOptions {
  IdentityCredentialRequestOptions::{ providers: [], context: None, mode: None }
}

///|
extern "js" fn IdentityCredentialRequestOptions::to_js_ffi(
  self : IdentityCredentialRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   providers: self.providers,
  #|   context: ((() => { const v = self.context; if (v === undefined) return undefined; return ['signin', 'signup', 'use', 'continue'][v]; })()),
  #|   mode: ((() => { const v = self.mode; if (v === undefined) return undefined; return ['active', 'passive'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn IdentityCredentialRequestOptions::to_js(
  self : IdentityCredentialRequestOptions,
) -> JsValue {
  IdentityCredentialRequestOptions::to_js_ffi(self)
}

///|
/// IdentityProviderConfig dictionary
pub(all) struct IdentityProviderConfig {
  configURL : String
  clientId : String
}

///|
/// Create a new IdentityProviderConfig with default values
pub fn IdentityProviderConfig::default() -> IdentityProviderConfig {
  IdentityProviderConfig::{ configURL: "", clientId: "" }
}

///|
extern "js" fn IdentityProviderConfig::to_js_ffi(
  self : IdentityProviderConfig,
) -> JsValue =
  #| (self) => ({
  #|   configURL: self.configURL,
  #|   clientId: self.clientId
  #| })

///|
/// Convert to JsValue
pub fn IdentityProviderConfig::to_js(self : IdentityProviderConfig) -> JsValue {
  IdentityProviderConfig::to_js_ffi(self)
}

///|
/// IdentityProviderRequestOptions dictionary
pub(all) struct IdentityProviderRequestOptions {
  configURL : String
  clientId : String
  loginHint : String?
  domainHint : String?
  fields : Array[String]?
  params : JsValue?
}

///|
/// Create a new IdentityProviderRequestOptions with default values
pub fn IdentityProviderRequestOptions::default() -> IdentityProviderRequestOptions {
  IdentityProviderRequestOptions::{
    configURL: "",
    clientId: "",
    loginHint: None,
    domainHint: None,
    fields: None,
    params: None,
  }
}

///|
extern "js" fn IdentityProviderRequestOptions::to_js_ffi(
  self : IdentityProviderRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   configURL: self.configURL,
  #|   clientId: self.clientId,
  #|   loginHint: self.loginHint,
  #|   domainHint: self.domainHint,
  #|   fields: ((() => { const v = self.fields; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   params: ((() => { const v = self.params; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn IdentityProviderRequestOptions::to_js(
  self : IdentityProviderRequestOptions,
) -> JsValue {
  IdentityProviderRequestOptions::to_js_ffi(self)
}

///|
/// IdentityProviderWellKnown dictionary
pub(all) struct IdentityProviderWellKnown {
  provider_urls : Array[String]?
  accounts_endpoint : String?
  login_url : String?
}

///|
/// Create a new IdentityProviderWellKnown with default values
pub fn IdentityProviderWellKnown::default() -> IdentityProviderWellKnown {
  IdentityProviderWellKnown::{
    provider_urls: None,
    accounts_endpoint: None,
    login_url: None,
  }
}

///|
extern "js" fn IdentityProviderWellKnown::to_js_ffi(
  self : IdentityProviderWellKnown,
) -> JsValue =
  #| (self) => ({
  #|   provider_urls: ((() => { const v = self.provider_urls; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   accounts_endpoint: self.accounts_endpoint,
  #|   login_url: self.login_url
  #| })

///|
/// Convert to JsValue
pub fn IdentityProviderWellKnown::to_js(
  self : IdentityProviderWellKnown,
) -> JsValue {
  IdentityProviderWellKnown::to_js_ffi(self)
}

///|
/// IdentityProviderIcon dictionary
pub(all) struct IdentityProviderIcon {
  url : String
  size : Int?
}

///|
/// Create a new IdentityProviderIcon with default values
pub fn IdentityProviderIcon::default() -> IdentityProviderIcon {
  IdentityProviderIcon::{ url: "", size: None }
}

///|
extern "js" fn IdentityProviderIcon::to_js_ffi(
  self : IdentityProviderIcon,
) -> JsValue =
  #| (self) => ({
  #|   url: self.url,
  #|   size: self.size
  #| })

///|
/// Convert to JsValue
pub fn IdentityProviderIcon::to_js(self : IdentityProviderIcon) -> JsValue {
  IdentityProviderIcon::to_js_ffi(self)
}

///|
/// IdentityProviderBranding dictionary
pub(all) struct IdentityProviderBranding {
  background_color : String?
  color : String?
  icons : Array[IdentityProviderIcon]?
  name : String?
}

///|
/// Create a new IdentityProviderBranding with default values
pub fn IdentityProviderBranding::default() -> IdentityProviderBranding {
  IdentityProviderBranding::{
    background_color: None,
    color: None,
    icons: None,
    name: None,
  }
}

///|
extern "js" fn IdentityProviderBranding::to_js_ffi(
  self : IdentityProviderBranding,
) -> JsValue =
  #| (self) => ({
  #|   background_color: self.background_color,
  #|   color: self.color,
  #|   icons: ((() => { const v = self.icons; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   name: self.name
  #| })

///|
/// Convert to JsValue
pub fn IdentityProviderBranding::to_js(
  self : IdentityProviderBranding,
) -> JsValue {
  IdentityProviderBranding::to_js_ffi(self)
}

///|
/// IdentityProviderAPIConfig dictionary
pub(all) struct IdentityProviderAPIConfig {
  accounts_endpoint : String
  client_metadata_endpoint : String?
  id_assertion_endpoint : String
  login_url : String
  disconnect_endpoint : String?
  branding : IdentityProviderBranding?
  supports_use_other_account : Bool?
  account_label : String?
}

///|
/// Create a new IdentityProviderAPIConfig with default values
pub fn IdentityProviderAPIConfig::default() -> IdentityProviderAPIConfig {
  IdentityProviderAPIConfig::{
    accounts_endpoint: "",
    client_metadata_endpoint: None,
    id_assertion_endpoint: "",
    login_url: "",
    disconnect_endpoint: None,
    branding: None,
    supports_use_other_account: None,
    account_label: None,
  }
}

///|
extern "js" fn IdentityProviderAPIConfig::to_js_ffi(
  self : IdentityProviderAPIConfig,
) -> JsValue =
  #| (self) => ({
  #|   accounts_endpoint: self.accounts_endpoint,
  #|   client_metadata_endpoint: self.client_metadata_endpoint,
  #|   id_assertion_endpoint: self.id_assertion_endpoint,
  #|   login_url: self.login_url,
  #|   disconnect_endpoint: self.disconnect_endpoint,
  #|   branding: ((() => { const v = self.branding; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   supports_use_other_account: (self.supports_use_other_account === -1 ? undefined : self.supports_use_other_account),
  #|   account_label: self.account_label
  #| })

///|
/// Convert to JsValue
pub fn IdentityProviderAPIConfig::to_js(
  self : IdentityProviderAPIConfig,
) -> JsValue {
  IdentityProviderAPIConfig::to_js_ffi(self)
}

///|
/// IdentityProviderAccount dictionary
pub(all) struct IdentityProviderAccount {
  id : String
  name : String?
  email : String?
  tel : String?
  username : String?
  given_name : String?
  picture : String?
  approved_clients : Array[String]?
  login_hints : Array[String]?
  domain_hints : Array[String]?
  label_hints : Array[String]?
}

///|
/// Create a new IdentityProviderAccount with default values
pub fn IdentityProviderAccount::default() -> IdentityProviderAccount {
  IdentityProviderAccount::{
    id: "",
    name: None,
    email: None,
    tel: None,
    username: None,
    given_name: None,
    picture: None,
    approved_clients: None,
    login_hints: None,
    domain_hints: None,
    label_hints: None,
  }
}

///|
extern "js" fn IdentityProviderAccount::to_js_ffi(
  self : IdentityProviderAccount,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   name: self.name,
  #|   email: self.email,
  #|   tel: self.tel,
  #|   username: self.username,
  #|   given_name: self.given_name,
  #|   picture: self.picture,
  #|   approved_clients: ((() => { const v = self.approved_clients; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   login_hints: ((() => { const v = self.login_hints; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   domain_hints: ((() => { const v = self.domain_hints; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   label_hints: ((() => { const v = self.label_hints; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn IdentityProviderAccount::to_js(
  self : IdentityProviderAccount,
) -> JsValue {
  IdentityProviderAccount::to_js_ffi(self)
}

///|
/// IdentityProviderAccountList dictionary
pub(all) struct IdentityProviderAccountList {
  accounts : Array[IdentityProviderAccount]?
}

///|
/// Create a new IdentityProviderAccountList with default values
pub fn IdentityProviderAccountList::default() -> IdentityProviderAccountList {
  IdentityProviderAccountList::{ accounts: None }
}

///|
extern "js" fn IdentityProviderAccountList::to_js_ffi(
  self : IdentityProviderAccountList,
) -> JsValue =
  #| (self) => ({
  #|   accounts: ((() => { const v = self.accounts; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn IdentityProviderAccountList::to_js(
  self : IdentityProviderAccountList,
) -> JsValue {
  IdentityProviderAccountList::to_js_ffi(self)
}

///|
/// IdentityAssertionResponse dictionary
pub(all) struct IdentityAssertionResponse {
  token : JsValue?
  continue_on : String?
  error : IdentityCredentialErrorInit?
}

///|
/// Create a new IdentityAssertionResponse with default values
pub fn IdentityAssertionResponse::default() -> IdentityAssertionResponse {
  IdentityAssertionResponse::{ token: None, continue_on: None, error: None }
}

///|
extern "js" fn IdentityAssertionResponse::to_js_ffi(
  self : IdentityAssertionResponse,
) -> JsValue =
  #| (self) => ({
  #|   token: ((() => { const v = self.token; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   continue_on: self.continue_on,
  #|   error: ((() => { const v = self.error; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn IdentityAssertionResponse::to_js(
  self : IdentityAssertionResponse,
) -> JsValue {
  IdentityAssertionResponse::to_js_ffi(self)
}

///|
/// IdentityProviderClientMetadata dictionary
pub(all) struct IdentityProviderClientMetadata {
  privacy_policy_url : String?
  terms_of_service_url : String?
  client_is_third_party_to_top_frame_origin : Bool?
}

///|
/// Create a new IdentityProviderClientMetadata with default values
pub fn IdentityProviderClientMetadata::default() -> IdentityProviderClientMetadata {
  IdentityProviderClientMetadata::{
    privacy_policy_url: None,
    terms_of_service_url: None,
    client_is_third_party_to_top_frame_origin: None,
  }
}

///|
extern "js" fn IdentityProviderClientMetadata::to_js_ffi(
  self : IdentityProviderClientMetadata,
) -> JsValue =
  #| (self) => ({
  #|   privacy_policy_url: self.privacy_policy_url,
  #|   terms_of_service_url: self.terms_of_service_url,
  #|   client_is_third_party_to_top_frame_origin: (self.client_is_third_party_to_top_frame_origin === -1 ? undefined : self.client_is_third_party_to_top_frame_origin)
  #| })

///|
/// Convert to JsValue
pub fn IdentityProviderClientMetadata::to_js(
  self : IdentityProviderClientMetadata,
) -> JsValue {
  IdentityProviderClientMetadata::to_js_ffi(self)
}

///|
/// IdentityUserInfo dictionary
pub(all) struct IdentityUserInfo {
  email : String?
  name : String?
  givenName : String?
  picture : String?
}

///|
/// Create a new IdentityUserInfo with default values
pub fn IdentityUserInfo::default() -> IdentityUserInfo {
  IdentityUserInfo::{ email: None, name: None, givenName: None, picture: None }
}

///|
extern "js" fn IdentityUserInfo::to_js_ffi(self : IdentityUserInfo) -> JsValue =
  #| (self) => ({
  #|   email: self.email,
  #|   name: self.name,
  #|   givenName: self.givenName,
  #|   picture: self.picture
  #| })

///|
/// Convert to JsValue
pub fn IdentityUserInfo::to_js(self : IdentityUserInfo) -> JsValue {
  IdentityUserInfo::to_js_ffi(self)
}

///|
/// IdentityResolveOptions dictionary
pub(all) struct IdentityResolveOptions {
  accountId : String?
}

///|
/// Create a new IdentityResolveOptions with default values
pub fn IdentityResolveOptions::default() -> IdentityResolveOptions {
  IdentityResolveOptions::{ accountId: None }
}

///|
extern "js" fn IdentityResolveOptions::to_js_ffi(
  self : IdentityResolveOptions,
) -> JsValue =
  #| (self) => ({
  #|   accountId: self.accountId
  #| })

///|
/// Convert to JsValue
pub fn IdentityResolveOptions::to_js(self : IdentityResolveOptions) -> JsValue {
  IdentityResolveOptions::to_js_ffi(self)
}

///|
/// IdentityCredential interface
pub type IdentityCredential

///|
pub extern "js" fn IdentityCredential::to_js_value(
  self : IdentityCredential,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IdentityCredential (unchecked)
pub extern "js" fn IdentityCredential::from_js_value(
  v : JsValue,
) -> IdentityCredential =
  #| (v) => v

///|
/// Safely cast JsValue to IdentityCredential (checked with instanceof)
pub extern "js" fn IdentityCredential::from_js_value_opt(
  v : JsValue,
) -> IdentityCredential? =
  #| (v) => (v instanceof IdentityCredential) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IdentityCredential (checked with instanceof)
pub extern "js" fn JsValue::as_identity_credential(
  self : JsValue,
) -> IdentityCredential? =
  #| (self) => (self instanceof IdentityCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IdentityCredential (unchecked)
pub extern "js" fn JsValue::to_identity_credential(
  self : JsValue,
) -> IdentityCredential =
  #| (self) => self

///|
pub extern "js" fn IdentityCredential::to_credential(
  self : IdentityCredential,
) -> Credential =
  #| (self) => self

///|
extern "js" fn IdentityCredential::disconnect_ffi(
  options : JsValue,
) -> Promise[Unit] =
  #| (options) => IdentityCredential.disconnect(options)

///|
pub fn IdentityCredential::disconnect(
  options : IdentityCredentialDisconnectOptions,
) -> Promise[Unit] {
  IdentityCredential::disconnect_ffi(options.to_js())
}

///|
pub extern "js" fn IdentityCredential::get_token(
  self : IdentityCredential,
) -> JsValue =
  #| (self) => self.token

///|
pub extern "js" fn IdentityCredential::get_is_auto_selected(
  self : IdentityCredential,
) -> Bool =
  #| (self) => self.isAutoSelected

///|
pub extern "js" fn IdentityCredential::get_config_url(
  self : IdentityCredential,
) -> String =
  #| (self) => self.configURL

///|
/// IdentityCredentialError interface
pub type IdentityCredentialError

///|
pub extern "js" fn IdentityCredentialError::to_js_value(
  self : IdentityCredentialError,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IdentityCredentialError (unchecked)
pub extern "js" fn IdentityCredentialError::from_js_value(
  v : JsValue,
) -> IdentityCredentialError =
  #| (v) => v

///|
/// Safely cast JsValue to IdentityCredentialError (checked with instanceof)
pub extern "js" fn IdentityCredentialError::from_js_value_opt(
  v : JsValue,
) -> IdentityCredentialError? =
  #| (v) => (v instanceof IdentityCredentialError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IdentityCredentialError (checked with instanceof)
pub extern "js" fn JsValue::as_identity_credential_error(
  self : JsValue,
) -> IdentityCredentialError? =
  #| (self) => (self instanceof IdentityCredentialError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IdentityCredentialError (unchecked)
pub extern "js" fn JsValue::to_identity_credential_error(
  self : JsValue,
) -> IdentityCredentialError =
  #| (self) => self

///|
pub extern "js" fn IdentityCredentialError::to_dom_exception(
  self : IdentityCredentialError,
) -> DOMException =
  #| (self) => self

///|
pub extern "js" fn IdentityCredentialError::new() -> IdentityCredentialError =
  #| () => new IdentityCredentialError()

///|
extern "js" fn IdentityCredentialError::new_with_options_ffi(
  message : String,
  options : JsValue,
) -> IdentityCredentialError =
  #| (message, options) => new IdentityCredentialError(message, options)

///|
pub fn IdentityCredentialError::new_with_options(
  message : String,
  options : IdentityCredentialErrorInit,
) -> IdentityCredentialError {
  IdentityCredentialError::new_with_options_ffi(message, options.to_js())
}

///|
pub extern "js" fn IdentityCredentialError::get_error(
  self : IdentityCredentialError,
) -> String =
  #| (self) => self.error

///|
pub extern "js" fn IdentityCredentialError::get_url(
  self : IdentityCredentialError,
) -> String =
  #| (self) => self.url

///|
/// IdentityProvider interface
pub type IdentityProvider

///|
pub extern "js" fn IdentityProvider::to_js_value(
  self : IdentityProvider,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IdentityProvider (unchecked)
pub extern "js" fn IdentityProvider::from_js_value(
  v : JsValue,
) -> IdentityProvider =
  #| (v) => v

///|
/// Safely cast JsValue to IdentityProvider (checked with instanceof)
pub extern "js" fn IdentityProvider::from_js_value_opt(
  v : JsValue,
) -> IdentityProvider? =
  #| (v) => (v instanceof IdentityProvider) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IdentityProvider (checked with instanceof)
pub extern "js" fn JsValue::as_identity_provider(
  self : JsValue,
) -> IdentityProvider? =
  #| (self) => (self instanceof IdentityProvider) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IdentityProvider (unchecked)
pub extern "js" fn JsValue::to_identity_provider(
  self : JsValue,
) -> IdentityProvider =
  #| (self) => self

///|
pub extern "js" fn IdentityProvider::close() -> Unit =
  #| () => IdentityProvider.close()

///|
pub extern "js" fn IdentityProvider::resolve(token : JsValue) -> Promise[Unit] =
  #| (token) => IdentityProvider.resolve(token)

///|
extern "js" fn IdentityProvider::resolve_with_options_ffi(
  token : JsValue,
  options : JsValue,
) -> Promise[Unit] =
  #| (token, options) => IdentityProvider.resolve(token, options)

///|
pub fn IdentityProvider::resolve_with_options(
  token : JsValue,
  options : IdentityResolveOptions,
) -> Promise[Unit] {
  IdentityProvider::resolve_with_options_ffi(token, options.to_js())
}

///|
extern "js" fn IdentityProvider::get_user_info_ffi(
  config : JsValue,
) -> Promise[Array[IdentityUserInfo]] =
  #| (config) => IdentityProvider.getUserInfo(config)

///|
pub fn IdentityProvider::get_user_info(
  config : IdentityProviderConfig,
) -> Promise[Array[IdentityUserInfo]] {
  IdentityProvider::get_user_info_ffi(config.to_js())
}
