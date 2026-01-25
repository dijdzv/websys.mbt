// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/manifest-incubations

///|
/// AppBannerPromptOutcome enum
pub(all) enum AppBannerPromptOutcome {
  Accepted
  Dismissed
}

///|
/// Convert to string value
pub fn AppBannerPromptOutcome::to_string(
  self : AppBannerPromptOutcome,
) -> String {
  match self {
    AppBannerPromptOutcome::Accepted => "accepted"
    AppBannerPromptOutcome::Dismissed => "dismissed"
  }
}

///|
/// Parse from string value
pub fn AppBannerPromptOutcome::from_string(
  s : String,
) -> AppBannerPromptOutcome? {
  match s {
    "accepted" => Some(AppBannerPromptOutcome::Accepted)
    "dismissed" => Some(AppBannerPromptOutcome::Dismissed)
    _ => None
  }
}

///|
/// PromptResponseObject dictionary
pub struct PromptResponseObject {
  userChoice : AppBannerPromptOutcome?
}

///|
/// Create a new PromptResponseObject with default values
pub fn PromptResponseObject::default() -> PromptResponseObject {
  PromptResponseObject::{ userChoice: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PromptResponseObject::to_js(
  self : PromptResponseObject,
) -> JsValue =
  #| (self) => ({
  #|   userChoice: ['accepted', 'dismissed'][self.userChoice]
  #| })

///|
/// BeforeInstallPromptEvent interface
pub type BeforeInstallPromptEvent

///|
pub extern "js" fn BeforeInstallPromptEvent::to_js_value(
  self : BeforeInstallPromptEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BeforeInstallPromptEvent (unchecked)
pub extern "js" fn BeforeInstallPromptEvent::from_js_value(
  v : JsValue,
) -> BeforeInstallPromptEvent =
  #| (v) => v

///|
/// Safely cast JsValue to BeforeInstallPromptEvent (checked with instanceof)
pub extern "js" fn BeforeInstallPromptEvent::from_js_value_opt(
  v : JsValue,
) -> BeforeInstallPromptEvent? =
  #| (v) => (v instanceof BeforeInstallPromptEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BeforeInstallPromptEvent (checked with instanceof)
pub extern "js" fn JsValue::as_before_install_prompt_event(
  self : JsValue,
) -> BeforeInstallPromptEvent? =
  #| (self) => (self instanceof BeforeInstallPromptEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BeforeInstallPromptEvent (unchecked)
pub extern "js" fn JsValue::to_before_install_prompt_event(
  self : JsValue,
) -> BeforeInstallPromptEvent =
  #| (self) => self

///|
pub extern "js" fn BeforeInstallPromptEvent::to_event(
  self : BeforeInstallPromptEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn BeforeInstallPromptEvent::new(
  type_ : String,
  event_init_dict : EventInit,
) -> BeforeInstallPromptEvent =
  #| (type_, event_init_dict) => new BeforeInstallPromptEvent(type_, event_init_dict)

///|
pub extern "js" fn BeforeInstallPromptEvent::prompt(
  self : BeforeInstallPromptEvent,
) -> Promise[PromptResponseObject] =
  #| (self) => self.prompt()
