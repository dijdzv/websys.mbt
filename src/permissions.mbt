// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/permissions

///|
/// PermissionState enum
pub(all) enum PermissionState {
  Granted
  Denied
  Prompt
}

/// Convert to string value
pub fn PermissionState::to_string(self : PermissionState) -> String {
  match self {
    Granted => "granted"
    Denied => "denied"
    Prompt => "prompt"
  }
}

/// Parse from string value
pub fn PermissionState::from_string(s : String) -> PermissionState? {
  match s {
    "granted" => Some(Granted)
    "denied" => Some(Denied)
    "prompt" => Some(Prompt)
    _ => None
  }
}

///|
/// PermissionDescriptor dictionary
pub struct PermissionDescriptor {
  name : String
}

/// Create a new PermissionDescriptor with default values
pub fn PermissionDescriptor::default() -> PermissionDescriptor {
  PermissionDescriptor::{
    name: "",
  }
}

/// Convert to JsValue
pub extern "js" fn PermissionDescriptor::to_js(self : PermissionDescriptor) -> JsValue =
  #| (self) => ({
  #|   name: self.name
  #| })

///|
/// PermissionSetParameters dictionary
pub struct PermissionSetParameters {
  descriptor : JsValue
  state : PermissionState
}

/// Create a new PermissionSetParameters with default values
pub fn PermissionSetParameters::default() -> PermissionSetParameters {
  PermissionSetParameters::{
    descriptor: panic(),
    state: panic(),
  }
}

/// Convert to JsValue
pub extern "js" fn PermissionSetParameters::to_js(self : PermissionSetParameters) -> JsValue =
  #| (self) => ({
  #|   descriptor: self.descriptor,
  #|   state: self.state
  #| })

///|
/// Permissions interface
pub type Permissions

pub extern "js" fn Permissions::to_js_value(self : Permissions) -> JsValue =
  #| (self) => self

pub extern "js" fn Permissions::query(self : Permissions, permission_desc : JsValue) -> Promise[PermissionStatus] =
  #| (self, permission_desc) => self.query(permission_desc)

pub extern "js" fn Permissions::request(self : Permissions, permission_desc : JsValue) -> Promise[PermissionStatus] =
  #| (self, permission_desc) => self.request(permission_desc)

pub extern "js" fn Permissions::revoke(self : Permissions, permission_desc : JsValue) -> Promise[PermissionStatus] =
  #| (self, permission_desc) => self.revoke(permission_desc)

///|
/// PermissionStatus interface
pub type PermissionStatus

pub extern "js" fn PermissionStatus::to_js_value(self : PermissionStatus) -> JsValue =
  #| (self) => self

pub extern "js" fn PermissionStatus::get_state(self : PermissionStatus) -> PermissionState =
  #| (self) => self.state

pub extern "js" fn PermissionStatus::get_name(self : PermissionStatus) -> String =
  #| (self) => self.name

pub extern "js" fn PermissionStatus::get_onchange(self : PermissionStatus) -> EventHandler =
  #| (self) => self.onchange

pub extern "js" fn PermissionStatus::set_onchange(self : PermissionStatus, value : EventHandler) -> Unit =
  #| (self, value) => { self.onchange = value }

