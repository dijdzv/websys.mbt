// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/credential-management

///|
/// PasswordCredentialInit typedef
pub type PasswordCredentialInit

///|
pub extern "js" fn PasswordCredentialInit::to_js_value(
  self : PasswordCredentialInit,
) -> JsValue =
  #| (self) => self

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
/// Check if this PasswordCredentialInit is PasswordCredentialData
pub extern "js" fn PasswordCredentialInit::is_password_credential_data(
  self : PasswordCredentialInit,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Check if this PasswordCredentialInit is HTMLFormElement
pub extern "js" fn PasswordCredentialInit::is_h_t_m_l_form_element(
  self : PasswordCredentialInit,
) -> Bool =
  #| (self) => self instanceof HTMLFormElement

///|
/// Try to get PasswordCredentialInit as PasswordCredentialData
pub extern "js" fn PasswordCredentialInit::as_password_credential_data(
  self : PasswordCredentialInit,
) -> PasswordCredentialData? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get PasswordCredentialInit as HTMLFormElement
pub extern "js" fn PasswordCredentialInit::as_h_t_m_l_form_element(
  self : PasswordCredentialInit,
) -> HTMLFormElement? =
  #| (self) => (self instanceof HTMLFormElement) ? { $tag: 1, _0: self } : { $tag: 0 }

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
    CredentialMediationRequirement::Silent => "silent"
    CredentialMediationRequirement::Optional => "optional"
    CredentialMediationRequirement::Conditional => "conditional"
    CredentialMediationRequirement::Required => "required"
  }
}

///|
/// Parse from string value
pub fn CredentialMediationRequirement::from_string(
  s : String,
) -> CredentialMediationRequirement? {
  match s {
    "silent" => Some(CredentialMediationRequirement::Silent)
    "optional" => Some(CredentialMediationRequirement::Optional)
    "conditional" => Some(CredentialMediationRequirement::Conditional)
    "required" => Some(CredentialMediationRequirement::Required)
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
/// Cast JsValue to Credential (unchecked)
pub extern "js" fn Credential::from_js_value(v : JsValue) -> Credential =
  #| (v) => v

///|
/// Safely cast JsValue to Credential (checked with instanceof)
pub extern "js" fn Credential::from_js_value_opt(v : JsValue) -> Credential? =
  #| (v) => (v instanceof Credential) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Credential (checked with instanceof)
pub extern "js" fn JsValue::as_credential(self : JsValue) -> Credential? =
  #| (self) => (self instanceof Credential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Credential (unchecked)
pub extern "js" fn JsValue::to_credential(self : JsValue) -> Credential =
  #| (self) => self

///|
pub extern "js" fn Credential::as_identity_credential(
  self : Credential,
) -> IdentityCredential? =
  #| (self) => (self instanceof IdentityCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Credential::as_digital_credential(
  self : Credential,
) -> DigitalCredential? =
  #| (self) => (self instanceof DigitalCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Credential::as_otp_credential(
  self : Credential,
) -> OTPCredential? =
  #| (self) => (self instanceof OTPCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Credential::as_public_key_credential(
  self : Credential,
) -> PublicKeyCredential? =
  #| (self) => (self instanceof PublicKeyCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Credential::as_password_credential(
  self : Credential,
) -> PasswordCredential? =
  #| (self) => (self instanceof PasswordCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Credential::as_federated_credential(
  self : Credential,
) -> FederatedCredential? =
  #| (self) => (self instanceof FederatedCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

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
/// Cast JsValue to CredentialsContainer (unchecked)
pub extern "js" fn CredentialsContainer::from_js_value(
  v : JsValue,
) -> CredentialsContainer =
  #| (v) => v

///|
/// Safely cast JsValue to CredentialsContainer (checked with instanceof)
pub extern "js" fn CredentialsContainer::from_js_value_opt(
  v : JsValue,
) -> CredentialsContainer? =
  #| (v) => (v instanceof CredentialsContainer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CredentialsContainer (checked with instanceof)
pub extern "js" fn JsValue::as_credentials_container(
  self : JsValue,
) -> CredentialsContainer? =
  #| (self) => (self instanceof CredentialsContainer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CredentialsContainer (unchecked)
pub extern "js" fn JsValue::to_credentials_container(
  self : JsValue,
) -> CredentialsContainer =
  #| (self) => self

///|
pub extern "js" fn CredentialsContainer::get(
  self : CredentialsContainer,
) -> Promise[Credential?] =
  #| (self) => self.get().then(v => v == null ? { $tag: 0 } : { $tag: 1, _0: v })

///|
pub extern "js" fn CredentialsContainer::get_with_options(
  self : CredentialsContainer,
  options : CredentialRequestOptions,
) -> Promise[Credential?] =
  #| (self, options) => self.get(options).then(v => v == null ? { $tag: 0 } : { $tag: 1, _0: v })

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
  #| (self) => self.create().then(v => v == null ? { $tag: 0 } : { $tag: 1, _0: v })

///|
pub extern "js" fn CredentialsContainer::create_with_options(
  self : CredentialsContainer,
  options : CredentialCreationOptions,
) -> Promise[Credential?] =
  #| (self, options) => self.create(options).then(v => v == null ? { $tag: 0 } : { $tag: 1, _0: v })

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
/// Cast JsValue to PasswordCredential (unchecked)
pub extern "js" fn PasswordCredential::from_js_value(
  v : JsValue,
) -> PasswordCredential =
  #| (v) => v

///|
/// Safely cast JsValue to PasswordCredential (checked with instanceof)
pub extern "js" fn PasswordCredential::from_js_value_opt(
  v : JsValue,
) -> PasswordCredential? =
  #| (v) => (v instanceof PasswordCredential) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PasswordCredential (checked with instanceof)
pub extern "js" fn JsValue::as_password_credential(
  self : JsValue,
) -> PasswordCredential? =
  #| (self) => (self instanceof PasswordCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PasswordCredential (unchecked)
pub extern "js" fn JsValue::to_password_credential(
  self : JsValue,
) -> PasswordCredential =
  #| (self) => self

///|
pub extern "js" fn PasswordCredential::to_credential(
  self : PasswordCredential,
) -> Credential =
  #| (self) => self

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
pub extern "js" fn PasswordCredential::get_icon_url(
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
/// Cast JsValue to FederatedCredential (unchecked)
pub extern "js" fn FederatedCredential::from_js_value(
  v : JsValue,
) -> FederatedCredential =
  #| (v) => v

///|
/// Safely cast JsValue to FederatedCredential (checked with instanceof)
pub extern "js" fn FederatedCredential::from_js_value_opt(
  v : JsValue,
) -> FederatedCredential? =
  #| (v) => (v instanceof FederatedCredential) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FederatedCredential (checked with instanceof)
pub extern "js" fn JsValue::as_federated_credential(
  self : JsValue,
) -> FederatedCredential? =
  #| (self) => (self instanceof FederatedCredential) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FederatedCredential (unchecked)
pub extern "js" fn JsValue::to_federated_credential(
  self : JsValue,
) -> FederatedCredential =
  #| (self) => self

///|
pub extern "js" fn FederatedCredential::to_credential(
  self : FederatedCredential,
) -> Credential =
  #| (self) => self

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
  #| (self) => { const v = self.protocol; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn FederatedCredential::get_name(
  self : FederatedCredential,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn FederatedCredential::get_icon_url(
  self : FederatedCredential,
) -> String =
  #| (self) => self.iconURL
