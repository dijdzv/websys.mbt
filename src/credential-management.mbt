// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/credential-management

///|
/// PasswordCredentialInit typedef
pub type PasswordCredentialInit = JsValue

///|
/// Create PasswordCredentialInit from PasswordCredentialData
pub extern "js" fn PasswordCredentialInit::from_password_credential_data(
  v : PasswordCredentialData,
) -> PasswordCredentialInit =
  #| (v) => v

///|
/// Create PasswordCredentialInit from HTMLFormElement
pub extern "js" fn PasswordCredentialInit::from_h_t_m_l_form_element(
  v : HTMLFormElement,
) -> PasswordCredentialInit =
  #| (v) => v

///|
/// CredentialMediationRequirement enum
pub(all) enum CredentialMediationRequirement {
  Silent
  Optional
  Conditional
  Required
}

///|
/// Convert to string value
pub fn CredentialMediationRequirement::to_string(
  self : CredentialMediationRequirement,
) -> String {
  match self {
    Silent => "silent"
    Optional => "optional"
    Conditional => "conditional"
    Required => "required"
  }
}

///|
/// Parse from string value
pub fn CredentialMediationRequirement::from_string(
  s : String,
) -> CredentialMediationRequirement? {
  match s {
    "silent" => Some(Silent)
    "optional" => Some(Optional)
    "conditional" => Some(Conditional)
    "required" => Some(Required)
    _ => None
  }
}

///|
/// CredentialData dictionary
pub struct CredentialData {
  id : String
}

///|
/// Create a new CredentialData with default values
pub fn CredentialData::default() -> CredentialData {
  CredentialData::{ id: "" }
}

///|
/// Convert to JsValue
pub extern "js" fn CredentialData::to_js(self : CredentialData) -> JsValue =
  #| (self) => ({
  #|   id: self.id
  #| })

///|
/// CredentialRequestOptions dictionary
pub struct CredentialRequestOptions {
  mediation : CredentialMediationRequirement?
  signal : AbortSignal?
  password : Bool?
  federated : FederatedCredentialRequestOptions?
  digital : DigitalCredentialRequestOptions?
  identity : IdentityCredentialRequestOptions?
  otp : OTPCredentialRequestOptions?
  publicKey : PublicKeyCredentialRequestOptions?
}

///|
/// Create a new CredentialRequestOptions with default values
pub fn CredentialRequestOptions::default() -> CredentialRequestOptions {
  CredentialRequestOptions::{
    mediation: None,
    signal: None,
    password: None,
    federated: None,
    digital: None,
    identity: None,
    otp: None,
    publicKey: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn CredentialRequestOptions::to_js(
  self : CredentialRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   mediation: ['silent', 'optional', 'conditional', 'required'][self.mediation],
  #|   signal: self.signal,
  #|   password: self.password,
  #|   federated: self.federated,
  #|   digital: self.digital,
  #|   identity: self.identity,
  #|   otp: self.otp,
  #|   publicKey: self.publicKey
  #| })

///|
/// CredentialCreationOptions dictionary
pub struct CredentialCreationOptions {
  mediation : CredentialMediationRequirement?
  signal : AbortSignal?
  password : PasswordCredentialInit?
  federated : FederatedCredentialInit?
  digital : DigitalCredentialCreationOptions?
  publicKey : PublicKeyCredentialCreationOptions?
}

///|
/// Create a new CredentialCreationOptions with default values
pub fn CredentialCreationOptions::default() -> CredentialCreationOptions {
  CredentialCreationOptions::{
    mediation: None,
    signal: None,
    password: None,
    federated: None,
    digital: None,
    publicKey: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn CredentialCreationOptions::to_js(
  self : CredentialCreationOptions,
) -> JsValue =
  #| (self) => ({
  #|   mediation: ['silent', 'optional', 'conditional', 'required'][self.mediation],
  #|   signal: self.signal,
  #|   password: self.password,
  #|   federated: self.federated,
  #|   digital: self.digital,
  #|   publicKey: self.publicKey
  #| })

///|
/// PasswordCredentialData dictionary
pub struct PasswordCredentialData {
  id : String
  name : String?
  iconURL : String?
  origin : String
  password : String
}

///|
/// Create a new PasswordCredentialData with default values
pub fn PasswordCredentialData::default() -> PasswordCredentialData {
  PasswordCredentialData::{
    id: "",
    name: None,
    iconURL: None,
    origin: "",
    password: "",
  }
}

///|
/// Convert to JsValue
pub extern "js" fn PasswordCredentialData::to_js(
  self : PasswordCredentialData,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   name: self.name,
  #|   iconURL: self.iconURL,
  #|   origin: self.origin,
  #|   password: self.password
  #| })

///|
/// FederatedCredentialRequestOptions dictionary
pub struct FederatedCredentialRequestOptions {
  providers : Array[String]?
  protocols : Array[String]?
}

///|
/// Create a new FederatedCredentialRequestOptions with default values
pub fn FederatedCredentialRequestOptions::default() -> FederatedCredentialRequestOptions {
  FederatedCredentialRequestOptions::{ providers: None, protocols: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FederatedCredentialRequestOptions::to_js(
  self : FederatedCredentialRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   providers: self.providers,
  #|   protocols: self.protocols
  #| })

///|
/// FederatedCredentialInit dictionary
pub struct FederatedCredentialInit {
  id : String
  name : String?
  iconURL : String?
  origin : String
  provider : String
  protocol : String?
}

///|
/// Create a new FederatedCredentialInit with default values
pub fn FederatedCredentialInit::default() -> FederatedCredentialInit {
  FederatedCredentialInit::{
    id: "",
    name: None,
    iconURL: None,
    origin: "",
    provider: "",
    protocol: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn FederatedCredentialInit::to_js(
  self : FederatedCredentialInit,
) -> JsValue =
  #| (self) => ({
  #|   id: self.id,
  #|   name: self.name,
  #|   iconURL: self.iconURL,
  #|   origin: self.origin,
  #|   provider: self.provider,
  #|   protocol: self.protocol
  #| })

///|
/// Credential interface
pub type Credential

///|
pub extern "js" fn Credential::to_js_value(self : Credential) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Credential::get_id(self : Credential) -> String =
  #| (self) => self.id

///|
pub extern "js" fn Credential::get_type(self : Credential) -> String =
  #| (self) => self.type

///|
pub extern "js" fn Credential::is_conditional_mediation_available() -> Promise[
  Bool,
] =
  #| () => Credential.isConditionalMediationAvailable()

///|
pub extern "js" fn Credential::will_request_conditional_creation() -> Promise[
  Unit,
] =
  #| () => Credential.willRequestConditionalCreation()

///|
/// CredentialsContainer interface
pub type CredentialsContainer

///|
pub extern "js" fn CredentialsContainer::to_js_value(
  self : CredentialsContainer,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn CredentialsContainer::get(
  self : CredentialsContainer,
) -> Promise[Credential?] =
  #| (self) => self.get()

///|
pub extern "js" fn CredentialsContainer::get_with_options(
  self : CredentialsContainer,
  options : CredentialRequestOptions,
) -> Promise[Credential?] =
  #| (self, options) => self.get(options)

///|
pub extern "js" fn CredentialsContainer::store(
  self : CredentialsContainer,
  credential : Credential,
) -> Promise[Unit] =
  #| (self, credential) => self.store(credential)

///|
pub extern "js" fn CredentialsContainer::create(
  self : CredentialsContainer,
) -> Promise[Credential?] =
  #| (self) => self.create()

///|
pub extern "js" fn CredentialsContainer::create_with_options(
  self : CredentialsContainer,
  options : CredentialCreationOptions,
) -> Promise[Credential?] =
  #| (self, options) => self.create(options)

///|
pub extern "js" fn CredentialsContainer::prevent_silent_access(
  self : CredentialsContainer,
) -> Promise[Unit] =
  #| (self) => self.preventSilentAccess()

///|
/// PasswordCredential interface
pub type PasswordCredential

///|
pub extern "js" fn PasswordCredential::to_js_value(
  self : PasswordCredential,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PasswordCredential::get_id(
  self : PasswordCredential,
) -> String =
  #| (self) => self.id

///|
pub extern "js" fn PasswordCredential::get_type(
  self : PasswordCredential,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn PasswordCredential::is_conditional_mediation_available() -> Promise[
  Bool,
] =
  #| () => PasswordCredential.isConditionalMediationAvailable()

///|
pub extern "js" fn PasswordCredential::will_request_conditional_creation() -> Promise[
  Unit,
] =
  #| () => PasswordCredential.willRequestConditionalCreation()

///|
pub extern "js" fn PasswordCredential::new(
  form : HTMLFormElement,
) -> PasswordCredential =
  #| (form) => new PasswordCredential(form)

///|
pub extern "js" fn PasswordCredential::get_password(
  self : PasswordCredential,
) -> String =
  #| (self) => self.password

///|
pub extern "js" fn PasswordCredential::get_name(
  self : PasswordCredential,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn PasswordCredential::get_icon_u_r_l(
  self : PasswordCredential,
) -> String =
  #| (self) => self.iconURL

///|
/// FederatedCredential interface
pub type FederatedCredential

///|
pub extern "js" fn FederatedCredential::to_js_value(
  self : FederatedCredential,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn FederatedCredential::get_id(
  self : FederatedCredential,
) -> String =
  #| (self) => self.id

///|
pub extern "js" fn FederatedCredential::get_type(
  self : FederatedCredential,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn FederatedCredential::is_conditional_mediation_available() -> Promise[
  Bool,
] =
  #| () => FederatedCredential.isConditionalMediationAvailable()

///|
pub extern "js" fn FederatedCredential::will_request_conditional_creation() -> Promise[
  Unit,
] =
  #| () => FederatedCredential.willRequestConditionalCreation()

///|
pub extern "js" fn FederatedCredential::new(
  data : FederatedCredentialInit,
) -> FederatedCredential =
  #| (data) => new FederatedCredential(data)

///|
pub extern "js" fn FederatedCredential::get_provider(
  self : FederatedCredential,
) -> String =
  #| (self) => self.provider

///|
pub extern "js" fn FederatedCredential::get_protocol(
  self : FederatedCredential,
) -> String? =
  #| (self) => self.protocol

///|
pub extern "js" fn FederatedCredential::get_name(
  self : FederatedCredential,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn FederatedCredential::get_icon_u_r_l(
  self : FederatedCredential,
) -> String =
  #| (self) => self.iconURL
