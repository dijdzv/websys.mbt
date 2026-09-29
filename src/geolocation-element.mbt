// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/geolocation-element

///|
/// ActivationBlockersMixinBlockerReason enum
pub(all) enum ActivationBlockersMixinBlockerReason {
  Empty
  IllegalSubframe
  UnsuccessfulRegistration
  RecentlyAttached
  IntersectionChanged
  IntersectionOutOfViewportOrClipped
  IntersectionOccludedOrDistorted
  StyleInvalid
  TypeInvalid
} derive(Eq, Debug)

pub extend ActivationBlockersMixinBlockerReason with Eq::{equal, not_equal}
pub extend ActivationBlockersMixinBlockerReason with @debug.Debug::{to_repr}

/// Convert to string value
pub fn ActivationBlockersMixinBlockerReason::to_string(self : ActivationBlockersMixinBlockerReason) -> String {
  match self {
    ActivationBlockersMixinBlockerReason::Empty => ""
    ActivationBlockersMixinBlockerReason::IllegalSubframe => "illegal_subframe"
    ActivationBlockersMixinBlockerReason::UnsuccessfulRegistration => "unsuccessful_registration"
    ActivationBlockersMixinBlockerReason::RecentlyAttached => "recently_attached"
    ActivationBlockersMixinBlockerReason::IntersectionChanged => "intersection_changed"
    ActivationBlockersMixinBlockerReason::IntersectionOutOfViewportOrClipped => "intersection_out_of_viewport_or_clipped"
    ActivationBlockersMixinBlockerReason::IntersectionOccludedOrDistorted => "intersection_occluded_or_distorted"
    ActivationBlockersMixinBlockerReason::StyleInvalid => "style_invalid"
    ActivationBlockersMixinBlockerReason::TypeInvalid => "type_invalid"
  }
}

/// Parse from string value
pub fn ActivationBlockersMixinBlockerReason::from_string(s : String) -> ActivationBlockersMixinBlockerReason? {
  match s {
    "" => Some(ActivationBlockersMixinBlockerReason::Empty)
    "illegal_subframe" => Some(ActivationBlockersMixinBlockerReason::IllegalSubframe)
    "unsuccessful_registration" => Some(ActivationBlockersMixinBlockerReason::UnsuccessfulRegistration)
    "recently_attached" => Some(ActivationBlockersMixinBlockerReason::RecentlyAttached)
    "intersection_changed" => Some(ActivationBlockersMixinBlockerReason::IntersectionChanged)
    "intersection_out_of_viewport_or_clipped" => Some(ActivationBlockersMixinBlockerReason::IntersectionOutOfViewportOrClipped)
    "intersection_occluded_or_distorted" => Some(ActivationBlockersMixinBlockerReason::IntersectionOccludedOrDistorted)
    "style_invalid" => Some(ActivationBlockersMixinBlockerReason::StyleInvalid)
    "type_invalid" => Some(ActivationBlockersMixinBlockerReason::TypeInvalid)
    _ => None
  }
}

///|
/// HTMLGeolocationElement interface
pub type HTMLGeolocationElement

pub extern "js" fn HTMLGeolocationElement::to_js_value(self : HTMLGeolocationElement) -> JsValue =
  #| (self) => self

/// Cast JsValue to HTMLGeolocationElement (unchecked)
pub extern "js" fn HTMLGeolocationElement::from_js_value(v : JsValue) -> HTMLGeolocationElement =
  #| (v) => v

/// Safely cast JsValue to HTMLGeolocationElement (checked with instanceof)
pub extern "js" fn HTMLGeolocationElement::from_js_value_opt(v : JsValue) -> HTMLGeolocationElement? =
  #| (v) => (v instanceof HTMLGeolocationElement) ? { $tag: 1, _0: v } : { $tag: 0 }

/// Safely cast JsValue to HTMLGeolocationElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_geolocation_element(self : JsValue) -> HTMLGeolocationElement? =
  #| (self) => (self instanceof HTMLGeolocationElement) ? { $tag: 1, _0: self } : { $tag: 0 }

/// Cast JsValue to HTMLGeolocationElement (unchecked)
pub extern "js" fn JsValue::to_html_geolocation_element(self : JsValue) -> HTMLGeolocationElement =
  #| (self) => self

pub extern "js" fn HTMLGeolocationElement::to_html_element(self : HTMLGeolocationElement) -> HTMLElement =
  #| (self) => self

pub extern "js" fn HTMLGeolocationElement::to_element(self : HTMLGeolocationElement) -> Element =
  #| (self) => self

pub extern "js" fn HTMLGeolocationElement::to_node(self : HTMLGeolocationElement) -> Node =
  #| (self) => self

pub extern "js" fn HTMLGeolocationElement::to_event_target(self : HTMLGeolocationElement) -> EventTarget =
  #| (self) => self

pub extern "js" fn HTMLGeolocationElement::new() -> HTMLGeolocationElement =
  #| () => new HTMLGeolocationElement()

pub extern "js" fn HTMLGeolocationElement::get_position(self : HTMLGeolocationElement) -> GeolocationPosition? =
  #| (self) => (() => { const v = self.position; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn HTMLGeolocationElement::get_error(self : HTMLGeolocationElement) -> GeolocationPositionError? =
  #| (self) => (() => { const v = self.error; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

pub extern "js" fn HTMLGeolocationElement::get_autolocate(self : HTMLGeolocationElement) -> Bool =
  #| (self) => self.autolocate

pub extern "js" fn HTMLGeolocationElement::set_autolocate(self : HTMLGeolocationElement, value : Bool) -> Unit =
  #| (self, value) => { self.autolocate = value }

pub extern "js" fn HTMLGeolocationElement::get_watch(self : HTMLGeolocationElement) -> Bool =
  #| (self) => self.watch

pub extern "js" fn HTMLGeolocationElement::set_watch(self : HTMLGeolocationElement, value : Bool) -> Unit =
  #| (self, value) => { self.watch = value }

pub extern "js" fn HTMLGeolocationElement::set_onlocation(self : HTMLGeolocationElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onlocation = (e) => handler(e) }

pub extern "js" fn HTMLGeolocationElement::clear_onlocation(self : HTMLGeolocationElement) -> Unit =
  #| (self) => { self.onlocation = null }

pub extern "js" fn HTMLGeolocationElement::get_is_valid(self : HTMLGeolocationElement) -> Bool =
  #| (self) => self.isValid

pub extern "js" fn HTMLGeolocationElement::get_invalid_reason(self : HTMLGeolocationElement) -> ActivationBlockersMixinBlockerReason =
  #| (self) => ['', 'illegal_subframe', 'unsuccessful_registration', 'recently_attached', 'intersection_changed', 'intersection_out_of_viewport_or_clipped', 'intersection_occluded_or_distorted', 'style_invalid', 'type_invalid'].indexOf(self.invalidReason)

pub extern "js" fn HTMLGeolocationElement::set_onvalidationstatuschange(self : HTMLGeolocationElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onvalidationstatuschange = (e) => handler(e) }

pub extern "js" fn HTMLGeolocationElement::clear_onvalidationstatuschange(self : HTMLGeolocationElement) -> Unit =
  #| (self) => { self.onvalidationstatuschange = null }

pub extern "js" fn HTMLGeolocationElement::get_initial_permission_status(self : HTMLGeolocationElement) -> PermissionState =
  #| (self) => ['granted', 'denied', 'prompt'].indexOf(self.initialPermissionStatus)

pub extern "js" fn HTMLGeolocationElement::get_permission_status(self : HTMLGeolocationElement) -> PermissionState =
  #| (self) => ['granted', 'denied', 'prompt'].indexOf(self.permissionStatus)

pub extern "js" fn HTMLGeolocationElement::set_onpromptaction(self : HTMLGeolocationElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onpromptaction = (e) => handler(e) }

pub extern "js" fn HTMLGeolocationElement::clear_onpromptaction(self : HTMLGeolocationElement) -> Unit =
  #| (self) => { self.onpromptaction = null }

pub extern "js" fn HTMLGeolocationElement::set_onpromptdismiss(self : HTMLGeolocationElement, handler : (Event) -> Unit) -> Unit =
  #| (self, handler) => { self.onpromptdismiss = (e) => handler(e) }

pub extern "js" fn HTMLGeolocationElement::clear_onpromptdismiss(self : HTMLGeolocationElement) -> Unit =
  #| (self) => { self.onpromptdismiss = null }
