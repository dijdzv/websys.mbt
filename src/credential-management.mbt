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
pub extern "js" fn PasswordCredentialInit::from_html_form_element(
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
pub extern "js" fn PasswordCredentialInit::is_html_form_element(
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
pub extern "js" fn PasswordCredentialInit::as_html_form_element(
  self : PasswordCredentialInit,
) -> HTMLFormElement? =
  #| (self) => (self instanceof HTMLFormElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[PasswordCredentialInit] to PasswordCredentialData?
pub fn PasswordCredentialInit::bind_as_password_credential_data(
  value : PasswordCredentialInit?,
) -> PasswordCredentialData? {
  match value {
    Some(v) => v.as_password_credential_data()
    None => None
  }
}

///|
/// Flatten Option[PasswordCredentialInit] to HTMLFormElement?
pub fn PasswordCredentialInit::bind_as_html_form_element(
  value : PasswordCredentialInit?,
) -> HTMLFormElement? {
  match value {
    Some(v) => v.as_html_form_element()
    None => None
  }
}

///|
/// CredentialMediationRequirement enum
pub(all) enum CredentialMediationRequirement {
  Silent
  Optional
  Conditional
  Required
} derive(Eq, Show)

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
pub(all) struct CredentialData {
  id : String
}

///|
/// Create a new CredentialData with default values
pub fn CredentialData::default() -> CredentialData {
  CredentialData::{ id: "" }
}

///|
extern "js" fn CredentialData::to_js_ffi(self : CredentialData) -> JsValue =
  #| (self) => ({
  #|   id: self.id
  #| })

///|
/// Convert to JsValue
pub fn CredentialData::to_js(self : CredentialData) -> JsValue {
  CredentialData::to_js_ffi(self)
}

///|
extern "js" fn CredentialData::from_js_ffi(value : JsValue) -> CredentialData =
  #| (v) => ({
  #|   id: v.id
  #| })

///|
/// Convert from JsValue
pub fn CredentialData::from_js(value : JsValue) -> CredentialData {
  CredentialData::from_js_ffi(value)
}

///|
/// PasswordCredentialData dictionary
pub(all) struct PasswordCredentialData {
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
extern "js" fn PasswordCredentialData::to_js_ffi(
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
/// Convert to JsValue
pub fn PasswordCredentialData::to_js(self : PasswordCredentialData) -> JsValue {
  PasswordCredentialData::to_js_ffi(self)
}

///|
extern "js" fn PasswordCredentialData::from_js_ffi(
  value : JsValue,
) -> PasswordCredentialData =
  #| (v) => ({
  #|   id: v.id,
  #|   name: v.name,
  #|   iconURL: v.iconURL,
  #|   origin: v.origin,
  #|   password: v.password
  #| })

///|
/// Convert from JsValue
pub fn PasswordCredentialData::from_js(
  value : JsValue,
) -> PasswordCredentialData {
  PasswordCredentialData::from_js_ffi(value)
}

///|
/// FederatedCredentialRequestOptions dictionary
pub(all) struct FederatedCredentialRequestOptions {
  providers : Array[String]?
  protocols : Array[String]?
}

///|
/// Create a new FederatedCredentialRequestOptions with default values
pub fn FederatedCredentialRequestOptions::default() -> FederatedCredentialRequestOptions {
  FederatedCredentialRequestOptions::{ providers: None, protocols: None }
}

///|
extern "js" fn FederatedCredentialRequestOptions::to_js_ffi(
  self : FederatedCredentialRequestOptions,
) -> JsValue =
  #| (self) => ({
  #|   providers: ((() => { const v = self.providers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   protocols: ((() => { const v = self.protocols; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn FederatedCredentialRequestOptions::to_js(
  self : FederatedCredentialRequestOptions,
) -> JsValue {
  FederatedCredentialRequestOptions::to_js_ffi(self)
}

///|
extern "js" fn FederatedCredentialRequestOptions::from_js_ffi(
  value : JsValue,
) -> FederatedCredentialRequestOptions =
  #| (v) => ({
  #|   providers: (v.providers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.providers }),
  #|   protocols: (v.protocols === undefined ? { $tag: 0 } : { $tag: 1, _0: v.protocols })
  #| })

///|
/// Convert from JsValue
pub fn FederatedCredentialRequestOptions::from_js(
  value : JsValue,
) -> FederatedCredentialRequestOptions {
  FederatedCredentialRequestOptions::from_js_ffi(value)
}

///|
/// FederatedCredentialInit dictionary
pub(all) struct FederatedCredentialInit {
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
extern "js" fn FederatedCredentialInit::to_js_ffi(
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
/// Convert to JsValue
pub fn FederatedCredentialInit::to_js(
  self : FederatedCredentialInit,
) -> JsValue {
  FederatedCredentialInit::to_js_ffi(self)
}

///|
extern "js" fn FederatedCredentialInit::from_js_ffi(
  value : JsValue,
) -> FederatedCredentialInit =
  #| (v) => ({
  #|   id: v.id,
  #|   name: v.name,
  #|   iconURL: v.iconURL,
  #|   origin: v.origin,
  #|   provider: v.provider,
  #|   protocol: v.protocol
  #| })

///|
/// Convert from JsValue
pub fn FederatedCredentialInit::from_js(
  value : JsValue,
) -> FederatedCredentialInit {
  FederatedCredentialInit::from_js_ffi(value)
}

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
  #| (self) => self.get()

///|
extern "js" fn CredentialsContainer::get_with_options_ffi(
  self : CredentialsContainer,
  options : JsValue,
) -> Promise[Credential?] =
  #| (self, options) => self.get(options)

///|
pub fn CredentialsContainer::get_with_options(
  self : CredentialsContainer,
  options : CredentialRequestOptions,
) -> Promise[Credential?] {
  CredentialsContainer::get_with_options_ffi(self, options.to_js())
}

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
extern "js" fn CredentialsContainer::create_with_options_ffi(
  self : CredentialsContainer,
  options : JsValue,
) -> Promise[Credential?] =
  #| (self, options) => self.create(options)

///|
pub fn CredentialsContainer::create_with_options(
  self : CredentialsContainer,
  options : CredentialCreationOptions,
) -> Promise[Credential?] {
  CredentialsContainer::create_with_options_ffi(self, options.to_js())
}

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
pub extern "js" fn PasswordCredential::new_with_html_form_element(
  form : HTMLFormElement,
) -> PasswordCredential =
  #| (form) => new PasswordCredential(form)

///|
extern "js" fn PasswordCredential::new_with_password_credential_data_ffi(
  data : JsValue,
) -> PasswordCredential =
  #| (data) => new PasswordCredential(data)

///|
pub fn PasswordCredential::new_with_password_credential_data(
  data : PasswordCredentialData,
) -> PasswordCredential {
  PasswordCredential::new_with_password_credential_data_ffi(data.to_js())
}

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
extern "js" fn FederatedCredential::new_ffi(
  data : JsValue,
) -> FederatedCredential =
  #| (data) => new FederatedCredential(data)

///|
pub fn FederatedCredential::new(
  data : FederatedCredentialInit,
) -> FederatedCredential {
  FederatedCredential::new_ffi(data.to_js())
}

///|
pub extern "js" fn FederatedCredential::get_provider(
  self : FederatedCredential,
) -> String =
  #| (self) => self.provider

///|
pub extern "js" fn FederatedCredential::get_protocol(
  self : FederatedCredential,
) -> String? =
  #| (self) => (self.protocol) ?? undefined

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
