// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/permissions

///|
/// PermissionState enum
pub(all) enum PermissionState {
  Granted
  Denied
  Prompt
} derive(Eq, Show)

///|
/// Convert to string value
pub fn PermissionState::to_string(self : PermissionState) -> String {
  match self {
    PermissionState::Granted => "granted"
    PermissionState::Denied => "denied"
    PermissionState::Prompt => "prompt"
  }
}

///|
/// Parse from string value
pub fn PermissionState::from_string(s : String) -> PermissionState? {
  match s {
    "granted" => Some(PermissionState::Granted)
    "denied" => Some(PermissionState::Denied)
    "prompt" => Some(PermissionState::Prompt)
    _ => None
  }
}

///|
/// PermissionDescriptor dictionary
pub(all) struct PermissionDescriptor {
  name : String
}

///|
/// Create a new PermissionDescriptor with default values
pub fn PermissionDescriptor::default() -> PermissionDescriptor {
  PermissionDescriptor::{ name: "" }
}

///|
extern "js" fn PermissionDescriptor::to_js_ffi(
  self : PermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   name: self.name
  #| })

///|
/// Convert to JsValue
pub fn PermissionDescriptor::to_js(self : PermissionDescriptor) -> JsValue {
  PermissionDescriptor::to_js_ffi(self)
}

///|
extern "js" fn PermissionDescriptor::from_js_ffi(
  value : JsValue,
) -> PermissionDescriptor =
  #| (v) => ({
  #|   name: v.name
  #| })

///|
/// Convert from JsValue
pub fn PermissionDescriptor::from_js(value : JsValue) -> PermissionDescriptor {
  PermissionDescriptor::from_js_ffi(value)
}

///|
/// PermissionSetParameters dictionary
pub(all) struct PermissionSetParameters {
  descriptor : JsValue
  state : PermissionState
}

///|
/// Create a new PermissionSetParameters
pub fn PermissionSetParameters::new(
  descriptor~ : JsValue,
  state~ : PermissionState,
) -> PermissionSetParameters {
  PermissionSetParameters::{ descriptor, state }
}

///|
extern "js" fn PermissionSetParameters::to_js_ffi(
  self : PermissionSetParameters,
) -> JsValue =
  #| (self) => ({
  #|   descriptor: self.descriptor,
  #|   state: ['granted', 'denied', 'prompt'][self.state]
  #| })

///|
/// Convert to JsValue
pub fn PermissionSetParameters::to_js(
  self : PermissionSetParameters,
) -> JsValue {
  PermissionSetParameters::to_js_ffi(self)
}

///|
extern "js" fn PermissionSetParameters::from_js_ffi(
  value : JsValue,
) -> PermissionSetParameters =
  #| (v) => ({
  #|   descriptor: v.descriptor,
  #|   state: ['granted', 'denied', 'prompt'].indexOf(v.state)
  #| })

///|
/// Convert from JsValue
pub fn PermissionSetParameters::from_js(
  value : JsValue,
) -> PermissionSetParameters {
  PermissionSetParameters::from_js_ffi(value)
}

///|
/// Permissions interface
pub type Permissions

///|
pub extern "js" fn Permissions::to_js_value(self : Permissions) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Permissions (unchecked)
pub extern "js" fn Permissions::from_js_value(v : JsValue) -> Permissions =
  #| (v) => v

///|
/// Safely cast JsValue to Permissions (checked with instanceof)
pub extern "js" fn Permissions::from_js_value_opt(v : JsValue) -> Permissions? =
  #| (v) => (v instanceof Permissions) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Permissions (checked with instanceof)
pub extern "js" fn JsValue::as_permissions(self : JsValue) -> Permissions? =
  #| (self) => (self instanceof Permissions) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Permissions (unchecked)
pub extern "js" fn JsValue::to_permissions(self : JsValue) -> Permissions =
  #| (self) => self

///|
pub extern "js" fn Permissions::query(
  self : Permissions,
  permission_desc : JsValue,
) -> Promise[PermissionStatus] =
  #| (self, permission_desc) => self.query(permission_desc)

///|
pub extern "js" fn Permissions::request(
  self : Permissions,
  permission_desc : JsValue,
) -> Promise[PermissionStatus] =
  #| (self, permission_desc) => self.request(permission_desc)

///|
pub extern "js" fn Permissions::revoke(
  self : Permissions,
  permission_desc : JsValue,
) -> Promise[PermissionStatus] =
  #| (self, permission_desc) => self.revoke(permission_desc)

///|
/// PermissionStatus interface
pub type PermissionStatus

///|
pub extern "js" fn PermissionStatus::to_js_value(
  self : PermissionStatus,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PermissionStatus (unchecked)
pub extern "js" fn PermissionStatus::from_js_value(
  v : JsValue,
) -> PermissionStatus =
  #| (v) => v

///|
/// Safely cast JsValue to PermissionStatus (checked with instanceof)
pub extern "js" fn PermissionStatus::from_js_value_opt(
  v : JsValue,
) -> PermissionStatus? =
  #| (v) => (v instanceof PermissionStatus) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PermissionStatus (checked with instanceof)
pub extern "js" fn JsValue::as_permission_status(
  self : JsValue,
) -> PermissionStatus? =
  #| (self) => (self instanceof PermissionStatus) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PermissionStatus (unchecked)
pub extern "js" fn JsValue::to_permission_status(
  self : JsValue,
) -> PermissionStatus =
  #| (self) => self

///|
pub extern "js" fn PermissionStatus::to_event_target(
  self : PermissionStatus,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn PermissionStatus::as_bluetooth_permission_result(
  self : PermissionStatus,
) -> BluetoothPermissionResult? =
  #| (self) => (self instanceof BluetoothPermissionResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PermissionStatus::as_bluetooth_le_scan_permission_result(
  self : PermissionStatus,
) -> BluetoothLEScanPermissionResult? =
  #| (self) => (self instanceof BluetoothLEScanPermissionResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PermissionStatus::as_usb_permission_result(
  self : PermissionStatus,
) -> USBPermissionResult? =
  #| (self) => (self instanceof USBPermissionResult) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PermissionStatus::as_xr_permission_status(
  self : PermissionStatus,
) -> XRPermissionStatus? =
  #| (self) => (self instanceof XRPermissionStatus) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn PermissionStatus::get_state(
  self : PermissionStatus,
) -> PermissionState =
  #| (self) => ['granted', 'denied', 'prompt'].indexOf(self.state)

///|
pub extern "js" fn PermissionStatus::get_name(
  self : PermissionStatus,
) -> String =
  #| (self) => self.name

///|
pub extern "js" fn PermissionStatus::get_onchange(
  self : PermissionStatus,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn PermissionStatus::set_onchange(
  self : PermissionStatus,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }
