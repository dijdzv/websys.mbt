// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/portals

///|
/// PortalActivateOptions dictionary
pub(all) struct PortalActivateOptions {
  data : JsValue?
}

///|
/// Create a new PortalActivateOptions with default values
pub fn PortalActivateOptions::default() -> PortalActivateOptions {
  PortalActivateOptions::{ data: None }
}

///|
extern "js" fn PortalActivateOptions::to_js_ffi(
  self : PortalActivateOptions,
) -> JsValue =
  #| (self) => ({
  #|   data: ((() => { const v = self.data; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PortalActivateOptions::to_js(self : PortalActivateOptions) -> JsValue {
  PortalActivateOptions::to_js_ffi(self)
}

///|
extern "js" fn PortalActivateOptions::from_js_ffi(
  value : JsValue,
) -> PortalActivateOptions =
  #| (v) => ({
  #|   data: (v.data === undefined ? { $tag: 0 } : { $tag: 1, _0: v.data })
  #| })

///|
/// Convert from JsValue
pub fn PortalActivateOptions::from_js(value : JsValue) -> PortalActivateOptions {
  PortalActivateOptions::from_js_ffi(value)
}

///|
/// PortalActivateEventInit dictionary
pub(all) struct PortalActivateEventInit {
  data : JsValue?
}

///|
/// Create a new PortalActivateEventInit with default values
pub fn PortalActivateEventInit::default() -> PortalActivateEventInit {
  PortalActivateEventInit::{ data: None }
}

///|
extern "js" fn PortalActivateEventInit::to_js_ffi(
  self : PortalActivateEventInit,
) -> JsValue =
  #| (self) => ({
  #|   data: ((() => { const v = self.data; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PortalActivateEventInit::to_js(
  self : PortalActivateEventInit,
) -> JsValue {
  PortalActivateEventInit::to_js_ffi(self)
}

///|
extern "js" fn PortalActivateEventInit::from_js_ffi(
  value : JsValue,
) -> PortalActivateEventInit =
  #| (v) => ({
  #|   data: (v.data === undefined ? { $tag: 0 } : { $tag: 1, _0: v.data })
  #| })

///|
/// Convert from JsValue
pub fn PortalActivateEventInit::from_js(
  value : JsValue,
) -> PortalActivateEventInit {
  PortalActivateEventInit::from_js_ffi(value)
}

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
extern "js" fn HTMLPortalElement::activate_with_options_ffi(
  self : HTMLPortalElement,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.activate(options)

///|
pub fn HTMLPortalElement::activate_with_options(
  self : HTMLPortalElement,
  options : PortalActivateOptions,
) -> Promise[Unit] {
  HTMLPortalElement::activate_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn HTMLPortalElement::post_message(
  self : HTMLPortalElement,
  message : JsValue,
) -> Unit =
  #| (self, message) => self.postMessage(message)

///|
extern "js" fn HTMLPortalElement::post_message_with_options_ffi(
  self : HTMLPortalElement,
  message : JsValue,
  options : JsValue,
) -> Unit =
  #| (self, message, options) => self.postMessage(message, options)

///|
pub fn HTMLPortalElement::post_message_with_options(
  self : HTMLPortalElement,
  message : JsValue,
  options : StructuredSerializeOptions,
) -> Unit {
  HTMLPortalElement::post_message_with_options_ffi(
    self,
    message,
    options.to_js(),
  )
}

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
extern "js" fn PortalHost::post_message_with_options_ffi(
  self : PortalHost,
  message : JsValue,
  options : JsValue,
) -> Unit =
  #| (self, message, options) => self.postMessage(message, options)

///|
pub fn PortalHost::post_message_with_options(
  self : PortalHost,
  message : JsValue,
  options : StructuredSerializeOptions,
) -> Unit {
  PortalHost::post_message_with_options_ffi(self, message, options.to_js())
}

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
) -> PortalActivateEvent =
  #| (type_) => new PortalActivateEvent(type_)

///|
extern "js" fn PortalActivateEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PortalActivateEvent =
  #| (type_, event_init_dict) => new PortalActivateEvent(type_, event_init_dict)

///|
pub fn PortalActivateEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : PortalActivateEventInit,
) -> PortalActivateEvent {
  PortalActivateEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

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
