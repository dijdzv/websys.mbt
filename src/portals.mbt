// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/portals

///|
/// PortalActivateOptions dictionary
pub struct PortalActivateOptions {
  data : JsValue?
}

///|
/// Create a new PortalActivateOptions with default values
pub fn PortalActivateOptions::default() -> PortalActivateOptions {
  PortalActivateOptions::{ data: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PortalActivateOptions::to_js(
  self : PortalActivateOptions,
) -> JsValue =
  #| (self) => ({
  #|   data: self.data
  #| })

///|
/// PortalActivateEventInit dictionary
pub struct PortalActivateEventInit {
  data : JsValue?
}

///|
/// Create a new PortalActivateEventInit with default values
pub fn PortalActivateEventInit::default() -> PortalActivateEventInit {
  PortalActivateEventInit::{ data: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PortalActivateEventInit::to_js(
  self : PortalActivateEventInit,
) -> JsValue =
  #| (self) => ({
  #|   data: self.data
  #| })

///|
/// HTMLPortalElement interface
pub type HTMLPortalElement

///|
pub extern "js" fn HTMLPortalElement::to_js_value(
  self : HTMLPortalElement,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HTMLPortalElement (unchecked)
pub extern "js" fn HTMLPortalElement::from_js_value(
  v : JsValue,
) -> HTMLPortalElement =
  #| (v) => v

///|
/// Safely cast JsValue to HTMLPortalElement (checked with instanceof)
pub extern "js" fn HTMLPortalElement::from_js_value_opt(
  v : JsValue,
) -> HTMLPortalElement? =
  #| (v) => (v instanceof HTMLPortalElement) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HTMLPortalElement (checked with instanceof)
pub extern "js" fn JsValue::as_html_portal_element(
  self : JsValue,
) -> HTMLPortalElement? =
  #| (self) => (self instanceof HTMLPortalElement) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HTMLPortalElement (unchecked)
pub extern "js" fn JsValue::to_html_portal_element(
  self : JsValue,
) -> HTMLPortalElement =
  #| (self) => self

///|
pub extern "js" fn HTMLPortalElement::to_html_element(
  self : HTMLPortalElement,
) -> HTMLElement =
  #| (self) => self

///|
pub extern "js" fn HTMLPortalElement::to_element(
  self : HTMLPortalElement,
) -> Element =
  #| (self) => self

///|
pub extern "js" fn HTMLPortalElement::to_node(self : HTMLPortalElement) -> Node =
  #| (self) => self

///|
pub extern "js" fn HTMLPortalElement::to_event_target(
  self : HTMLPortalElement,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn HTMLPortalElement::new() -> HTMLPortalElement =
  #| () => new HTMLPortalElement()

///|
pub extern "js" fn HTMLPortalElement::get_src(
  self : HTMLPortalElement,
) -> String =
  #| (self) => self.src

///|
pub extern "js" fn HTMLPortalElement::set_src(
  self : HTMLPortalElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.src = value }

///|
pub extern "js" fn HTMLPortalElement::get_referrer_policy(
  self : HTMLPortalElement,
) -> String =
  #| (self) => self.referrerPolicy

///|
pub extern "js" fn HTMLPortalElement::set_referrer_policy(
  self : HTMLPortalElement,
  value : String,
) -> Unit =
  #| (self, value) => { self.referrerPolicy = value }

///|
pub extern "js" fn HTMLPortalElement::activate(
  self : HTMLPortalElement,
) -> Promise[Unit] =
  #| (self) => self.activate()

///|
pub extern "js" fn HTMLPortalElement::activate_with_options(
  self : HTMLPortalElement,
  options : PortalActivateOptions,
) -> Promise[Unit] =
  #| (self, options) => self.activate(options)

///|
pub extern "js" fn HTMLPortalElement::post_message(
  self : HTMLPortalElement,
  message : JsValue,
) -> Unit =
  #| (self, message) => self.postMessage(message)

///|
pub extern "js" fn HTMLPortalElement::post_message_with_options(
  self : HTMLPortalElement,
  message : JsValue,
  options : StructuredSerializeOptions,
) -> Unit =
  #| (self, message, options) => self.postMessage(message, options)

///|
pub extern "js" fn HTMLPortalElement::get_onmessage(
  self : HTMLPortalElement,
) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn HTMLPortalElement::set_onmessage(
  self : HTMLPortalElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn HTMLPortalElement::get_onmessageerror(
  self : HTMLPortalElement,
) -> EventHandler =
  #| (self) => self.onmessageerror

///|
pub extern "js" fn HTMLPortalElement::set_onmessageerror(
  self : HTMLPortalElement,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessageerror = value }

///|
/// PortalHost interface
pub type PortalHost

///|
pub extern "js" fn PortalHost::to_js_value(self : PortalHost) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PortalHost (unchecked)
pub extern "js" fn PortalHost::from_js_value(v : JsValue) -> PortalHost =
  #| (v) => v

///|
/// Safely cast JsValue to PortalHost (checked with instanceof)
pub extern "js" fn PortalHost::from_js_value_opt(v : JsValue) -> PortalHost? =
  #| (v) => (v instanceof PortalHost) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PortalHost (checked with instanceof)
pub extern "js" fn JsValue::as_portal_host(self : JsValue) -> PortalHost? =
  #| (self) => (self instanceof PortalHost) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PortalHost (unchecked)
pub extern "js" fn JsValue::to_portal_host(self : JsValue) -> PortalHost =
  #| (self) => self

///|
pub extern "js" fn PortalHost::to_event_target(
  self : PortalHost,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn PortalHost::post_message(
  self : PortalHost,
  message : JsValue,
) -> Unit =
  #| (self, message) => self.postMessage(message)

///|
pub extern "js" fn PortalHost::post_message_with_options(
  self : PortalHost,
  message : JsValue,
  options : StructuredSerializeOptions,
) -> Unit =
  #| (self, message, options) => self.postMessage(message, options)

///|
pub extern "js" fn PortalHost::get_onmessage(self : PortalHost) -> EventHandler =
  #| (self) => self.onmessage

///|
pub extern "js" fn PortalHost::set_onmessage(
  self : PortalHost,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessage = value }

///|
pub extern "js" fn PortalHost::get_onmessageerror(
  self : PortalHost,
) -> EventHandler =
  #| (self) => self.onmessageerror

///|
pub extern "js" fn PortalHost::set_onmessageerror(
  self : PortalHost,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmessageerror = value }

///|
/// PortalActivateEvent interface
pub type PortalActivateEvent

///|
pub extern "js" fn PortalActivateEvent::to_js_value(
  self : PortalActivateEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PortalActivateEvent (unchecked)
pub extern "js" fn PortalActivateEvent::from_js_value(
  v : JsValue,
) -> PortalActivateEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PortalActivateEvent (checked with instanceof)
pub extern "js" fn PortalActivateEvent::from_js_value_opt(
  v : JsValue,
) -> PortalActivateEvent? =
  #| (v) => (v instanceof PortalActivateEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PortalActivateEvent (checked with instanceof)
pub extern "js" fn JsValue::as_portal_activate_event(
  self : JsValue,
) -> PortalActivateEvent? =
  #| (self) => (self instanceof PortalActivateEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PortalActivateEvent (unchecked)
pub extern "js" fn JsValue::to_portal_activate_event(
  self : JsValue,
) -> PortalActivateEvent =
  #| (self) => self

///|
pub extern "js" fn PortalActivateEvent::to_event(
  self : PortalActivateEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn PortalActivateEvent::new(
  type_ : String,
  event_init_dict : PortalActivateEventInit,
) -> PortalActivateEvent =
  #| (type_, event_init_dict) => new PortalActivateEvent(type_, event_init_dict)

///|
pub extern "js" fn PortalActivateEvent::get_data(
  self : PortalActivateEvent,
) -> JsValue =
  #| (self) => self.data

///|
pub extern "js" fn PortalActivateEvent::adopt_predecessor(
  self : PortalActivateEvent,
) -> HTMLPortalElement =
  #| (self) => self.adoptPredecessor()
