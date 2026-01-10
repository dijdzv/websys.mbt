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
pub struct IdentityCredentialDisconnectOptions {
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
/// Convert to JsValue
pub extern "js" fn IdentityCredentialDisconnectOptions::to_js(
  self : IdentityCredentialDisconnectOptions,
) -> JsValue =
  #| (self) => ({
  #|   configURL: self.configURL,
  #|   clientId: self.clientId,
  #|   accountHint: self.accountHint
  #| })

///|
/// DisconnectedAccount dictionary
pub struct DisconnectedAccount {
  account_id : String
}

///|
/// Create a new DisconnectedAccount with default values
pub fn DisconnectedAccount::default() -> DisconnectedAccount {
  DisconnectedAccount::{ account_id: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn DisconnectedAccount::to_js(
  self : DisconnectedAccount,
) -> JsValue =
  #| (self) => ({
  #|   account_id: self.account_id
  #| })

///|
/// IdentityCredentialErrorInit dictionary
pub struct IdentityCredentialErrorInit {
  error : String?
  url : String?
}

///|
/// Create a new IdentityCredentialErrorInit with default values
pub fn IdentityCredentialErrorInit::default() -> IdentityCredentialErrorInit {
  IdentityCredentialErrorInit::{ error: None, url: None }
}

///|
/// Convert to JsValue
pub extern "js" fn IdentityCredentialErrorInit::to_js(
  self : IdentityCredentialErrorInit,
) -> JsValue =
  #| (self) => ({
  #|   error: self.error,
  #|   url: self.url
  #| })

///|
/// IdentityCredentialRequestOptions dictionary
pub struct IdentityCredentialRequestOptions {
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
/// Convert to JsValue
pub extern "js" fn IdentityCredentialRequestOptions::to_js(
  self : IdentityCredentialRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   providers: self.providers,
  #|   context: ['signin', 'signup', 'use', 'continue'][self.context],
  #|   mode: ['active', 'passive'][self.mode]
  #| })

///|
/// IdentityProviderConfig dictionary
pub struct IdentityProviderConfig {
  configURL : String
  clientId : String
}

///|
/// Create a new IdentityProviderConfig with default values
pub fn IdentityProviderConfig::default() -> IdentityProviderConfig {
  IdentityProviderConfig::{ configURL: "", clientId: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn IdentityProviderConfig::to_js(
  self : IdentityProviderConfig,
) -> JsValue =
  #| (self) => ({
  #|   configURL: self.configURL,
  #|   clientId: self.clientId
  #| })

///|
/// IdentityProviderRequestOptions dictionary
pub struct IdentityProviderRequestOptions {
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
/// Convert to JsValue
pub extern "js" fn IdentityProviderRequestOptions::to_js(
  self : IdentityProviderRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   configURL: self.configURL,
  #|   clientId: self.clientId,
  #|   loginHint: self.loginHint,
  #|   domainHint: self.domainHint,
  #|   fields: self.fields,
  #|   params: self.params
  #| })

///|
/// IdentityProviderWellKnown dictionary
pub struct IdentityProviderWellKnown {
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
/// Convert to JsValue
pub extern "js" fn IdentityProviderWellKnown::to_js(
  self : IdentityProviderWellKnown,
) -> JsValue =
  #| (self) => ({
  #|   provider_urls: self.provider_urls,
  #|   accounts_endpoint: self.accounts_endpoint,
  #|   login_url: self.login_url
  #| })

///|
/// IdentityProviderIcon dictionary
pub struct IdentityProviderIcon {
  url : String
  size : Int?
}

///|
/// Create a new IdentityProviderIcon with default values
pub fn IdentityProviderIcon::default() -> IdentityProviderIcon {
  IdentityProviderIcon::{ url: "", size: None }
}

///|
/// Convert to JsValue
pub extern "js" fn IdentityProviderIcon::to_js(
  self : IdentityProviderIcon,
) -> JsValue =
  #| (self) => ({
  #|   url: self.url,
  #|   size: self.size
  #| })

///|
/// IdentityProviderBranding dictionary
pub struct IdentityProviderBranding {
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
/// Convert to JsValue
pub extern "js" fn IdentityProviderBranding::to_js(
  self : IdentityProviderBranding,
) -> JsValue =
  #| (self) => ({
  #|   background_color: self.background_color,
  #|   color: self.color,
  #|   icons: self.icons,
  #|   name: self.name
  #| })

///|
/// IdentityProviderAPIConfig dictionary
pub struct IdentityProviderAPIConfig {
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
/// Convert to JsValue
pub extern "js" fn IdentityProviderAPIConfig::to_js(
  self : IdentityProviderAPIConfig,
) -> JsValue =
  #| (self) => ({
  #|   accounts_endpoint: self.accounts_endpoint,
  #|   client_metadata_endpoint: self.client_metadata_endpoint,
  #|   id_assertion_endpoint: self.id_assertion_endpoint,
  #|   login_url: self.login_url,
  #|   disconnect_endpoint: self.disconnect_endpoint,
  #|   branding: self.branding,
  #|   supports_use_other_account: self.supports_use_other_account,
  #|   account_label: self.account_label
  #| })

///|
/// IdentityProviderAccount dictionary
pub struct IdentityProviderAccount {
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
/// Convert to JsValue
pub extern "js" fn IdentityProviderAccount::to_js(
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
  #|   approved_clients: self.approved_clients,
  #|   login_hints: self.login_hints,
  #|   domain_hints: self.domain_hints,
  #|   label_hints: self.label_hints
  #| })

///|
/// IdentityProviderAccountList dictionary
pub struct IdentityProviderAccountList {
  accounts : Array[IdentityProviderAccount]?
}

///|
/// Create a new IdentityProviderAccountList with default values
pub fn IdentityProviderAccountList::default() -> IdentityProviderAccountList {
  IdentityProviderAccountList::{ accounts: None }
}

///|
/// Convert to JsValue
pub extern "js" fn IdentityProviderAccountList::to_js(
  self : IdentityProviderAccountList,
) -> JsValue =
  #| (self) => ({
  #|   accounts: self.accounts
  #| })

///|
/// IdentityAssertionResponse dictionary
pub struct IdentityAssertionResponse {
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
/// Convert to JsValue
pub extern "js" fn IdentityAssertionResponse::to_js(
  self : IdentityAssertionResponse,
) -> JsValue =
  #| (self) => ({
  #|   token: self.token,
  #|   continue_on: self.continue_on,
  #|   error: self.error
  #| })

///|
/// IdentityProviderClientMetadata dictionary
pub struct IdentityProviderClientMetadata {
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
/// Convert to JsValue
pub extern "js" fn IdentityProviderClientMetadata::to_js(
  self : IdentityProviderClientMetadata,
) -> JsValue =
  #| (self) => ({
  #|   privacy_policy_url: self.privacy_policy_url,
  #|   terms_of_service_url: self.terms_of_service_url,
  #|   client_is_third_party_to_top_frame_origin: self.client_is_third_party_to_top_frame_origin
  #| })

///|
/// IdentityUserInfo dictionary
pub struct IdentityUserInfo {
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
/// Convert to JsValue
pub extern "js" fn IdentityUserInfo::to_js(self : IdentityUserInfo) -> JsValue =
  #| (self) => ({
  #|   email: self.email,
  #|   name: self.name,
  #|   givenName: self.givenName,
  #|   picture: self.picture
  #| })

///|
/// IdentityResolveOptions dictionary
pub struct IdentityResolveOptions {
  accountId : String?
}

///|
/// Create a new IdentityResolveOptions with default values
pub fn IdentityResolveOptions::default() -> IdentityResolveOptions {
  IdentityResolveOptions::{ accountId: None }
}

///|
/// Convert to JsValue
pub extern "js" fn IdentityResolveOptions::to_js(
  self : IdentityResolveOptions,
) -> JsValue =
  #| (self) => ({
  #|   accountId: self.accountId
  #| })

///|
/// IdentityCredential interface
pub type IdentityCredential

///|
pub extern "js" fn IdentityCredential::to_js_value(
  self : IdentityCredential,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn IdentityCredential::disconnect(
  options : IdentityCredentialDisconnectOptions,
) -> Promise[Unit] =
  #| (options) => IdentityCredential.disconnect(options)

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
pub extern "js" fn IdentityCredential::get_config_u_r_l(
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
pub extern "js" fn IdentityCredentialError::new(
  message : String,
  options : IdentityCredentialErrorInit,
) -> IdentityCredentialError =
  #| (message, options) => new IdentityCredentialError(message, options)

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
pub extern "js" fn IdentityProvider::close() -> Unit =
  #| () => IdentityProvider.close()

///|
pub extern "js" fn IdentityProvider::resolve(
  token : JsValue,
  options : IdentityResolveOptions,
) -> Promise[Unit] =
  #| (token, options) => IdentityProvider.resolve(token, options)

///|
pub extern "js" fn IdentityProvider::get_user_info(
  config : IdentityProviderConfig,
) -> Promise[Unit] =
  #| (config) => IdentityProvider.getUserInfo(config)
