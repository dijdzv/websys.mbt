// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/permission-elements

///|
/// InPagePermissionMixinBlockerReason enum
pub(all) enum InPagePermissionMixinBlockerReason {
  Empty
  IllegalSubframe
  UnsuccesfulRegistration
  RecentlyAttached
  IntersectionChanged
  IntersectionOutOfViewportOrClipped
  IntersectionOccludedOrDistorted
  StyleInvalid
  TypeInvalid
} derive(Eq, Show)

///|
/// Convert to string value
pub fn InPagePermissionMixinBlockerReason::to_string(
  self : InPagePermissionMixinBlockerReason,
) -> String {
  match self {
    InPagePermissionMixinBlockerReason::Empty => ""
    InPagePermissionMixinBlockerReason::IllegalSubframe => "illegal_subframe"
    InPagePermissionMixinBlockerReason::UnsuccesfulRegistration =>
      "unsuccesful_registration"
    InPagePermissionMixinBlockerReason::RecentlyAttached => "recently_attached"
    InPagePermissionMixinBlockerReason::IntersectionChanged =>
      "intersection_changed"
    InPagePermissionMixinBlockerReason::IntersectionOutOfViewportOrClipped =>
      "intersection_out_of_viewport_or_clipped"
    InPagePermissionMixinBlockerReason::IntersectionOccludedOrDistorted =>
      "intersection_occluded_or_distorted"
    InPagePermissionMixinBlockerReason::StyleInvalid => "style_invalid"
    InPagePermissionMixinBlockerReason::TypeInvalid => "type_invalid"
  }
}

///|
/// Parse from string value
pub fn InPagePermissionMixinBlockerReason::from_string(
  s : String,
) -> InPagePermissionMixinBlockerReason? {
  match s {
    "" => Some(InPagePermissionMixinBlockerReason::Empty)
    "illegal_subframe" =>
      Some(InPagePermissionMixinBlockerReason::IllegalSubframe)
    "unsuccesful_registration" =>
      Some(InPagePermissionMixinBlockerReason::UnsuccesfulRegistration)
    "recently_attached" =>
      Some(InPagePermissionMixinBlockerReason::RecentlyAttached)
    "intersection_changed" =>
      Some(InPagePermissionMixinBlockerReason::IntersectionChanged)
    "intersection_out_of_viewport_or_clipped" =>
      Some(
        InPagePermissionMixinBlockerReason::IntersectionOutOfViewportOrClipped,
      )
    "intersection_occluded_or_distorted" =>
      Some(InPagePermissionMixinBlockerReason::IntersectionOccludedOrDistorted)
    "style_invalid" => Some(InPagePermissionMixinBlockerReason::StyleInvalid)
    "type_invalid" => Some(InPagePermissionMixinBlockerReason::TypeInvalid)
    _ => None
  }
}

///|
/// HTMLPermissionElement interface
pub type HTMLPermissionElement

///|
pub extern "js" fn HTMLPermissionElement::to_js_value(
  self : HTMLPermissionElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLPermissionElement (unchecked)
pub extern "js" fn HTMLPermissionElement::from_js_value(
  v : JsValue,
) -> HTMLPermissionElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLPermissionElement (checked with instanceof)
pub extern "js" fn HTMLPermissionElement::from_js_value_opt(
  v : JsValue,
) -> HTMLPermissionElement? =
  #| (v) => (v instanceof HTMLPermissionElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLPermissionElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_permission_element(
  self : JsValue,
) -> HTMLPermissionElement? =
  #| (self) => (self instanceof HTMLPermissionElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLPermissionElement (unchecked)
pub extern "js" fn JsValue::to_html_permission_element(
  self : JsValue,
) -> HTMLPermissionElement =
  #| (self) => self

///|
pub extern "js" fn HTMLPermissionElement::to_html_element(
  self : HTMLPermissionElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLPermissionElement::to_element(
  self : HTMLPermissionElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLPermissionElement::to_node(
  self : HTMLPermissionElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLPermissionElement::to_event_target(
  self : HTMLPermissionElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLPermissionElement::new() -> HTMLPermissionElement =
  #| () => new HTMLPermissionElement()

///|
pub extern "js" fn HTMLPermissionElement::get_type(
  self : HTMLPermissionElement,
) -> String =
  #| (self) => self.type

///|
pub extern "js" fn HTMLPermissionElement::set_type(
  self : HTMLPermissionElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.type = value }

///|
pub extern "js" fn HTMLPermissionElement::is_type_supported(
  type_ : String,
) -> Bool =
  #| (type_) => HTMLPermissionElement.isTypeSupported(type_)

///|
pub extern "js" fn HTMLPermissionElement::get_is_valid(
  self : HTMLPermissionElement,
) -> Bool =
  #| (self) => self.isValid

///|
pub extern "js" fn HTMLPermissionElement::get_invalid_reason(
  self : HTMLPermissionElement,
) -> InPagePermissionMixinBlockerReason =
  #| (self) => ['', 'illegal_subframe', 'unsuccesful_registration', 'recently_attached', 'intersection_changed', 'intersection_out_of_viewport_or_clipped', 'intersection_occluded_or_distorted', 'style_invalid', 'type_invalid'].indexOf(self.invalidReason)

///|
pub extern "js" fn HTMLPermissionElement::get_initial_permission_status(
  self : HTMLPermissionElement,
) -> PermissionState =
  #| (self) => ['granted', 'denied', 'prompt'].indexOf(self.initialPermissionStatus)

///|
pub extern "js" fn HTMLPermissionElement::get_permission_status(
  self : HTMLPermissionElement,
) -> PermissionState =
  #| (self) => ['granted', 'denied', 'prompt'].indexOf(self.permissionStatus)

///|
pub extern "js" fn HTMLPermissionElement::set_onpromptaction(
  self : HTMLPermissionElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpromptaction = (e) => handler(e) }

///|
pub extern "js" fn HTMLPermissionElement::clear_onpromptaction(
  self : HTMLPermissionElement,
) -> Unit =
  #| (self) => { self.onpromptaction = null }

///|
pub extern "js" fn HTMLPermissionElement::set_onpromptdismiss(
  self : HTMLPermissionElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpromptdismiss = (e) => handler(e) }

///|
pub extern "js" fn HTMLPermissionElement::clear_onpromptdismiss(
  self : HTMLPermissionElement,
) -> Unit =
  #| (self) => { self.onpromptdismiss = null }

///|
pub extern "js" fn HTMLPermissionElement::set_onvalidationstatuschange(
  self : HTMLPermissionElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onvalidationstatuschange = (e) => handler(e) }

///|
pub extern "js" fn HTMLPermissionElement::clear_onvalidationstatuschange(
  self : HTMLPermissionElement,
) -> Unit =
  #| (self) => { self.onvalidationstatuschange = null }

///|
/// HTMLGeolocationElement interface
pub type HTMLGeolocationElement

///|
pub extern "js" fn HTMLGeolocationElement::to_js_value(
  self : HTMLGeolocationElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLGeolocationElement (unchecked)
pub extern "js" fn HTMLGeolocationElement::from_js_value(
  v : JsValue,
) -> HTMLGeolocationElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLGeolocationElement (checked with instanceof)
pub extern "js" fn HTMLGeolocationElement::from_js_value_opt(
  v : JsValue,
) -> HTMLGeolocationElement? =
  #| (v) => (v instanceof HTMLGeolocationElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLGeolocationElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_geolocation_element(
  self : JsValue,
) -> HTMLGeolocationElement? =
  #| (self) => (self instanceof HTMLGeolocationElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLGeolocationElement (unchecked)
pub extern "js" fn JsValue::to_html_geolocation_element(
  self : JsValue,
) -> HTMLGeolocationElement =
  #| (self) => self

///|
pub extern "js" fn HTMLGeolocationElement::to_html_element(
  self : HTMLGeolocationElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLGeolocationElement::to_element(
  self : HTMLGeolocationElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLGeolocationElement::to_node(
  self : HTMLGeolocationElement,
) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLGeolocationElement::to_event_target(
  self : HTMLGeolocationElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLGeolocationElement::new() -> HTMLGeolocationElement =
  #| () => new HTMLGeolocationElement()

///|
pub extern "js" fn HTMLGeolocationElement::get_position(
  self : HTMLGeolocationElement,
) -> GeolocationPosition? =
  #| (self) => (() => { const v = self.position; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLGeolocationElement::get_error(
  self : HTMLGeolocationElement,
) -> GeolocationPositionError? =
  #| (self) => (() => { const v = self.error; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn HTMLGeolocationElement::get_autolocate(
  self : HTMLGeolocationElement,
) -> Bool =
  #| (self) => self.autolocate

///|
pub extern "js" fn HTMLGeolocationElement::set_autolocate(
  self : HTMLGeolocationElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.autolocate = value }

///|
pub extern "js" fn HTMLGeolocationElement::get_watch(
  self : HTMLGeolocationElement,
) -> Bool =
  #| (self) => self.watch

///|
pub extern "js" fn HTMLGeolocationElement::set_watch(
  self : HTMLGeolocationElement,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.watch = value }

///|
pub extern "js" fn HTMLGeolocationElement::set_onlocation(
  self : HTMLGeolocationElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onlocation = (e) => handler(e) }

///|
pub extern "js" fn HTMLGeolocationElement::clear_onlocation(
  self : HTMLGeolocationElement,
) -> Unit =
  #| (self) => { self.onlocation = null }

///|
pub extern "js" fn HTMLGeolocationElement::get_is_valid(
  self : HTMLGeolocationElement,
) -> Bool =
  #| (self) => self.isValid

///|
pub extern "js" fn HTMLGeolocationElement::get_invalid_reason(
  self : HTMLGeolocationElement,
) -> InPagePermissionMixinBlockerReason =
  #| (self) => ['', 'illegal_subframe', 'unsuccesful_registration', 'recently_attached', 'intersection_changed', 'intersection_out_of_viewport_or_clipped', 'intersection_occluded_or_distorted', 'style_invalid', 'type_invalid'].indexOf(self.invalidReason)

///|
pub extern "js" fn HTMLGeolocationElement::get_initial_permission_status(
  self : HTMLGeolocationElement,
) -> PermissionState =
  #| (self) => ['granted', 'denied', 'prompt'].indexOf(self.initialPermissionStatus)

///|
pub extern "js" fn HTMLGeolocationElement::get_permission_status(
  self : HTMLGeolocationElement,
) -> PermissionState =
  #| (self) => ['granted', 'denied', 'prompt'].indexOf(self.permissionStatus)

///|
pub extern "js" fn HTMLGeolocationElement::set_onpromptaction(
  self : HTMLGeolocationElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpromptaction = (e) => handler(e) }

///|
pub extern "js" fn HTMLGeolocationElement::clear_onpromptaction(
  self : HTMLGeolocationElement,
) -> Unit =
  #| (self) => { self.onpromptaction = null }

///|
pub extern "js" fn HTMLGeolocationElement::set_onpromptdismiss(
  self : HTMLGeolocationElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpromptdismiss = (e) => handler(e) }

///|
pub extern "js" fn HTMLGeolocationElement::clear_onpromptdismiss(
  self : HTMLGeolocationElement,
) -> Unit =
  #| (self) => { self.onpromptdismiss = null }

///|
pub extern "js" fn HTMLGeolocationElement::set_onvalidationstatuschange(
  self : HTMLGeolocationElement,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onvalidationstatuschange = (e) => handler(e) }

///|
pub extern "js" fn HTMLGeolocationElement::clear_onvalidationstatuschange(
  self : HTMLGeolocationElement,
) -> Unit =
  #| (self) => { self.onvalidationstatuschange = null }
