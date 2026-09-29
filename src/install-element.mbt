// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/install-element

///|
/// InstallResult enum
pub(all) enum InstallResult {
  Success
  Aborted
  InvalidData
} derive(Eq, Debug)

pub extend InstallResult with Eq::{equal, not_equal}
pub extend InstallResult with @debug.Debug::{to_repr}

/// Convert to string value
pub fn InstallResult::to_string(self : InstallResult) -> String {
  match self {
    InstallResult::Success => "success"
    InstallResult::Aborted => "aborted"
    InstallResult::InvalidData => "invalid_data"
  }
}

/// Parse from string value
pub fn InstallResult::from_string(s : String) -> InstallResult? {
  match s {
    "success" => Some(InstallResult::Success)
    "aborted" => Some(InstallResult::Aborted)
    "invalid_data" => Some(InstallResult::InvalidData)
    _ => None
  }
}

///|
/// InstallParams dictionary
pub(all) struct InstallParams {
  manifest : String
  manifestId : Nullable[String]
}

/// Create a new InstallParams with default values
pub fn InstallParams::default() -> InstallParams {
  InstallParams::{
    manifest: "",
    manifestId: Nullable::Undefined,
  }
}

extern "js" fn InstallParams::to_js_ffi(self : InstallParams) -> JsValue =
  #| (self) => ({
  #|   manifest: self.manifest,
  #|   manifestId: ((() => { const v = self.manifestId; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

/// Convert to JsValue
pub fn InstallParams::to_js(self : InstallParams) -> JsValue {
  InstallParams::to_js_ffi(self)
}

extern "js" fn InstallParams::from_js_ffi(value : JsValue) -> InstallParams =
  #| (v) => ({
  #|   manifest: v.manifest,
  #|   manifestId: (v.manifestId === undefined ? { $tag: 0 } : v.manifestId === null ? { $tag: 1 } : { $tag: 2, _0: v.manifestId })
  #| })

/// Convert from JsValue
pub fn InstallParams::from_js(value : JsValue) -> InstallParams {
  InstallParams::from_js_ffi(value)
}

///|
/// WebInstallResult dictionary
pub(all) struct WebInstallResult {
}

/// Create a new WebInstallResult with default values
pub fn WebInstallResult::default() -> WebInstallResult {
  WebInstallResult::{
  }
}

extern "js" fn WebInstallResult::to_js_ffi(self : WebInstallResult) -> JsValue =
  #| (self) => ({
  #| })

/// Convert to JsValue
pub fn WebInstallResult::to_js(self : WebInstallResult) -> JsValue {
  WebInstallResult::to_js_ffi(self)
}

extern "js" fn WebInstallResult::from_js_ffi(value : JsValue) -> WebInstallResult =
  #| (v) => ({
  #| })

/// Convert from JsValue
pub fn WebInstallResult::from_js(value : JsValue) -> WebInstallResult {
  WebInstallResult::from_js_ffi(value)
}

///|
/// InstallResultEventInit dictionary
pub(all) struct InstallResultEventInit {
  result : InstallResult?
}

/// Create a new InstallResultEventInit with default values
pub fn InstallResultEventInit::default() -> InstallResultEventInit {
  InstallResultEventInit::{
    result: None,
  }
}

extern "js" fn InstallResultEventInit::to_js_ffi(self : InstallResultEventInit) -> JsValue =
  #| (self) => ({
  #|   result: ((() => { const v = self.result; if (v === undefined) return undefined; return ['success', 'aborted', 'invalid_data'][v]; })())
  #| })

/// Convert to JsValue
pub fn InstallResultEventInit::to_js(self : InstallResultEventInit) -> JsValue {
  InstallResultEventInit::to_js_ffi(self)
}

extern "js" fn InstallResultEventInit::from_js_ffi(value : JsValue) -> InstallResultEventInit =
  #| (v) => ({
  #|   result: (v.result === undefined ? undefined : ['success', 'aborted', 'invalid_data'].indexOf(v.result))
  #| })

/// Convert from JsValue
pub fn InstallResultEventInit::from_js(value : JsValue) -> InstallResultEventInit {
  InstallResultEventInit::from_js_ffi(value)
}

///|
/// HTMLInstallElement interface
pub type HTMLInstallElement

pub extern "js" fn HTMLInstallElement::to_js_value(self : HTMLInstallElement) -> JsValue =
  #| (self) => self

/// Cast JsValue to HTMLInstallElement (unchecked)
pub extern "js" fn HTMLInstallElement::from_js_value(v : JsValue) -> HTMLInstallElement =
  #| (v) => v

/// Safely cast JsValue to HTMLInstallElement (checked with instanceof)
pub extern "js" fn HTMLInstallElement::from_js_value_opt(v : JsValue) -> HTMLInstallElement? =
  #| (v) => (v instanceof HTMLInstallElement) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to HTMLInstallElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_install_element(self : JsValue) -> HTMLInstallElement? =
  #| (self) => (self instanceof HTMLInstallElement) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to HTMLInstallElement (unchecked)
pub extern "js" fn JsValue::to_html_install_element(self : JsValue) -> HTMLInstallElement =
  #| (self) => self

pub extern "js" fn HTMLInstallElement::to_html_element(self : HTMLInstallElement) -> HTMLElement =
  #| (self) => self

pub extern "js" fn HTMLInstallElement::to_element(self : HTMLInstallElement) -> Element =
  #| (self) => self

pub extern "js" fn HTMLInstallElement::to_node(self : HTMLInstallElement) -> Node =
  #| (self) => self

pub extern "js" fn HTMLInstallElement::to_event_target(self : HTMLInstallElement) -> EventTarget =
  #| (self) => self

pub extern "js" fn HTMLInstallElement::new() -> HTMLInstallElement =
  #| () => new HTMLInstallElement()

pub extern "js" fn HTMLInstallElement::get_manifest(self : HTMLInstallElement) -> String? =
  #| (self) => (self.manifest) ?? undefined

pub extern "js" fn HTMLInstallElement::set_manifest(self : HTMLInstallElement, value : String?) -> Unit =
  #| (self, value) => { self.manifest = value }

pub extern "js" fn HTMLInstallElement::get_manifest_id(self : HTMLInstallElement) -> String? =
  #| (self) => (self.manifestId) ?? undefined

pub extern "js" fn HTMLInstallElement::set_manifest_id(self : HTMLInstallElement, value : String?) -> Unit =
  #| (self, value) => { self.manifestId = value }

pub extern "js" fn HTMLInstallElement::set_oninstallresult(self : HTMLInstallElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.oninstallresult = (e) => handler(e) }

pub extern "js" fn HTMLInstallElement::clear_oninstallresult(self : HTMLInstallElement) -> Unit =
  #| (self) => { self.oninstallresult = null }

pub extern "js" fn HTMLInstallElement::get_is_valid(self : HTMLInstallElement) -> Bool =
  #| (self) => self.isValid

pub extern "js" fn HTMLInstallElement::get_invalid_reason(self : HTMLInstallElement) -> ActivationBlockersMixinBlockerReason =
  #| (self) => ['', 'illegal_subframe', 'unsuccessful_registration', 'recently_attached', 'intersection_changed', 'intersection_out_of_viewport_or_clipped', 'intersection_occluded_or_distorted', 'style_invalid', 'type_invalid'].indexOf(self.invalidReason)

pub extern "js" fn HTMLInstallElement::set_onvalidationstatuschange(self : HTMLInstallElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onvalidationstatuschange = (e) => handler(e) }

pub extern "js" fn HTMLInstallElement::clear_onvalidationstatuschange(self : HTMLInstallElement) -> Unit =
  #| (self) => { self.onvalidationstatuschange = null }

///|
/// InstallResultEvent interface
pub type InstallResultEvent

pub extern "js" fn InstallResultEvent::to_js_value(self : InstallResultEvent) -> JsValue =
  #| (self) => self

/// Cast JsValue to InstallResultEvent (unchecked)
pub extern "js" fn InstallResultEvent::from_js_value(v : JsValue) -> InstallResultEvent =
  #| (v) => v

/// Safely cast JsValue to InstallResultEvent (checked with instanceof)
pub extern "js" fn InstallResultEvent::from_js_value_opt(v : JsValue) -> InstallResultEvent? =
  #| (v) => (v instanceof InstallResultEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to InstallResultEvent (checked with instanceof)
pub extern "js" fn JsValue::as_install_result_event(self : JsValue) -> InstallResultEvent? =
  #| (self) => (self instanceof InstallResultEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to InstallResultEvent (unchecked)
pub extern "js" fn JsValue::to_install_result_event(self : JsValue) -> InstallResultEvent =
  #| (self) => self

pub extern "js" fn InstallResultEvent::to_event(self : InstallResultEvent) -> Event =
  #| (self) => self

pub extern "js" fn InstallResultEvent::new(type_ : String) -> InstallResultEvent =
  #| (type_) => new InstallResultEvent(type_)

extern "js" fn InstallResultEvent::new_with_event_init_dict_ffi(type_ : String, event_init_dict : JsValue) -> InstallResultEvent =
  #| (type_, event_init_dict) => new InstallResultEvent(type_, event_init_dict)

pub fn InstallResultEvent::new_with_event_init_dict(type_ : String, event_init_dict : InstallResultEventInit) -> InstallResultEvent {
  InstallResultEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

pub extern "js" fn InstallResultEvent::get_result(self : InstallResultEvent) -> InstallResult =
  #| (self) => ['success', 'aborted', 'invalid_data'].indexOf(self.result)
