// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/notifications

///|
/// NotificationPermission enum
pub(all) enum NotificationPermission {
  Default
  Denied
  Granted
}

///|
/// Convert to string value
pub fn NotificationPermission::to_string(
  self : NotificationPermission,
) -> String {
  match self {
    NotificationPermission::Default => "default"
    NotificationPermission::Denied => "denied"
    NotificationPermission::Granted => "granted"
  }
}

///|
/// Parse from string value
pub fn NotificationPermission::from_string(
  s : String,
) -> NotificationPermission? {
  match s {
    "default" => Some(NotificationPermission::Default)
    "denied" => Some(NotificationPermission::Denied)
    "granted" => Some(NotificationPermission::Granted)
    _ => None
  }
}

///|
/// NotificationDirection enum
pub(all) enum NotificationDirection {
  Auto
  Ltr
  Rtl
}

///|
/// Convert to string value
pub fn NotificationDirection::to_string(self : NotificationDirection) -> String {
  match self {
    NotificationDirection::Auto => "auto"
    NotificationDirection::Ltr => "ltr"
    NotificationDirection::Rtl => "rtl"
  }
}

///|
/// Parse from string value
pub fn NotificationDirection::from_string(s : String) -> NotificationDirection? {
  match s {
    "auto" => Some(NotificationDirection::Auto)
    "ltr" => Some(NotificationDirection::Ltr)
    "rtl" => Some(NotificationDirection::Rtl)
    _ => None
  }
}

///|
/// NotificationPermissionCallback callback interface
pub type NotificationPermissionCallback

///|
/// Create NotificationPermissionCallback from a MoonBit function
pub extern "js" fn NotificationPermissionCallback::from_fn(
  handler : (NotificationPermission) -> Unit,
) -> NotificationPermissionCallback =
  #| (handler) => handler

///|
/// NotificationOptions dictionary
pub struct NotificationOptions {
  dir : NotificationDirection?
  lang : String?
  body : String?
  navigate : String?
  tag : String?
  image : String?
  icon : String?
  badge : String?
  vibrate : VibratePattern?
  timestamp : EpochTimeStamp?
  renotify : Bool?
  silent : Nullable[Bool]
  requireInteraction : Bool?
  data : JsValue?
  actions : Array[NotificationAction]?
}

///|
/// Create a new NotificationOptions with default values
pub fn NotificationOptions::default() -> NotificationOptions {
  NotificationOptions::{
    dir: None,
    lang: None,
    body: None,
    navigate: None,
    tag: None,
    image: None,
    icon: None,
    badge: None,
    vibrate: None,
    timestamp: None,
    renotify: None,
    silent: Nullable::Undefined,
    requireInteraction: None,
    data: None,
    actions: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn NotificationOptions::to_js(
  self : NotificationOptions,
) -> JsValue =
  #| (self) => ({
  #|   dir: ['auto', 'ltr', 'rtl'][self.dir],
  #|   lang: self.lang,
  #|   body: self.body,
  #|   navigate: self.navigate,
  #|   tag: self.tag,
  #|   image: self.image,
  #|   icon: self.icon,
  #|   badge: self.badge,
  #|   vibrate: self.vibrate.to_js_value(),
  #|   timestamp: self.timestamp,
  #|   renotify: self.renotify,
  #|   silent: ((() => { const v = self.silent; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   requireInteraction: self.requireInteraction,
  #|   data: self.data,
  #|   actions: self.actions
  #| })

///|
/// NotificationAction dictionary
pub struct NotificationAction {
  action : String
  title : String
  navigate : String?
  icon : String?
}

///|
/// Create a new NotificationAction with default values
pub fn NotificationAction::default() -> NotificationAction {
  NotificationAction::{ action: "", title: "", navigate: None, icon: None }
}

///|
/// Convert to JsValue
pub extern "js" fn NotificationAction::to_js(
  self : NotificationAction,
) -> JsValue =
  #| (self) => ({
  #|   action: self.action,
  #|   title: self.title,
  #|   navigate: self.navigate,
  #|   icon: self.icon
  #| })

///|
/// GetNotificationOptions dictionary
pub struct GetNotificationOptions {
  tag : String?
}

///|
/// Create a new GetNotificationOptions with default values
pub fn GetNotificationOptions::default() -> GetNotificationOptions {
  GetNotificationOptions::{ tag: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GetNotificationOptions::to_js(
  self : GetNotificationOptions,
) -> JsValue =
  #| (self) => ({
  #|   tag: self.tag
  #| })

///|
/// NotificationEventInit dictionary
pub struct NotificationEventInit {
  notification : Notification
  action : String?
}

///|
/// Create a new NotificationEventInit with default values
pub fn NotificationEventInit::default() -> NotificationEventInit {
  NotificationEventInit::{ notification: panic(), action: None }
}

///|
/// Convert to JsValue
pub extern "js" fn NotificationEventInit::to_js(
  self : NotificationEventInit,
) -> JsValue =
  #| (self) => ({
  #|   notification: self.notification,
  #|   action: self.action
  #| })

///|
/// Notification interface
pub type Notification

///|
pub extern "js" fn Notification::to_js_value(self : Notification) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Notification (unchecked)
pub extern "js" fn Notification::from_js_value(v : JsValue) -> Notification =
  #| (v) => v

///|
/// Safely cast JsValue to Notification (checked with instanceof)
pub extern "js" fn Notification::from_js_value_opt(
  v : JsValue,
) -> Notification? =
  #| (v) => (v instanceof Notification) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Notification (checked with instanceof)
pub extern "js" fn JsValue::as_notification(self : JsValue) -> Notification? =
  #| (self) => (self instanceof Notification) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Notification (unchecked)
pub extern "js" fn JsValue::to_notification(self : JsValue) -> Notification =
  #| (self) => self

///|
pub extern "js" fn Notification::to_event_target(
  self : Notification,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Notification::new(
  title : String,
  options : NotificationOptions,
) -> Notification =
  #| (title, options) => new Notification(title, options)

///|
pub extern "js" fn Notification::get_permission(
  self : Notification,
) -> NotificationPermission =
  #| (self) => self.permission

///|
pub extern "js" fn Notification::request_permission(
  deprecated_callback : NotificationPermissionCallback,
) -> Promise[NotificationPermission] =
  #| (deprecated_callback) => Notification.requestPermission(deprecated_callback)

///|
pub extern "js" fn Notification::get_max_actions(self : Notification) -> Int =
  #| (self) => self.maxActions

///|
pub extern "js" fn Notification::get_onclick(
  self : Notification,
) -> EventHandler =
  #| (self) => self.onclick

///|
pub extern "js" fn Notification::set_onclick(
  self : Notification,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclick = value }

///|
pub extern "js" fn Notification::get_onshow(
  self : Notification,
) -> EventHandler =
  #| (self) => self.onshow

///|
pub extern "js" fn Notification::set_onshow(
  self : Notification,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onshow = value }

///|
pub extern "js" fn Notification::get_onerror(
  self : Notification,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn Notification::set_onerror(
  self : Notification,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn Notification::get_onclose(
  self : Notification,
) -> EventHandler =
  #| (self) => self.onclose

///|
pub extern "js" fn Notification::set_onclose(
  self : Notification,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onclose = value }

///|
pub extern "js" fn Notification::get_title(self : Notification) -> String =
  #| (self) => self.title

///|
pub extern "js" fn Notification::get_dir(
  self : Notification,
) -> NotificationDirection =
  #| (self) => self.dir

///|
pub extern "js" fn Notification::get_lang(self : Notification) -> String =
  #| (self) => self.lang

///|
pub extern "js" fn Notification::get_body(self : Notification) -> String =
  #| (self) => self.body

///|
pub extern "js" fn Notification::get_navigate(self : Notification) -> String =
  #| (self) => self.navigate

///|
pub extern "js" fn Notification::get_tag(self : Notification) -> String =
  #| (self) => self.tag

///|
pub extern "js" fn Notification::get_image(self : Notification) -> String =
  #| (self) => self.image

///|
pub extern "js" fn Notification::get_icon(self : Notification) -> String =
  #| (self) => self.icon

///|
pub extern "js" fn Notification::get_badge(self : Notification) -> String =
  #| (self) => self.badge

///|
pub extern "js" fn Notification::get_vibrate(self : Notification) -> JsValue =
  #| (self) => self.vibrate

///|
pub extern "js" fn Notification::get_timestamp(
  self : Notification,
) -> EpochTimeStamp =
  #| (self) => self.timestamp

///|
pub extern "js" fn Notification::get_renotify(self : Notification) -> Bool =
  #| (self) => self.renotify

///|
pub extern "js" fn Notification::get_silent(self : Notification) -> Bool? =
  #| (self) => { const v = self.silent; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn Notification::get_require_interaction(
  self : Notification,
) -> Bool =
  #| (self) => self.requireInteraction

///|
pub extern "js" fn Notification::get_data(self : Notification) -> JsValue =
  #| (self) => self.data

///|
pub extern "js" fn Notification::get_actions(self : Notification) -> JsValue =
  #| (self) => self.actions

///|
pub extern "js" fn Notification::close(self : Notification) -> Unit =
  #| (self) => self.close()

///|
/// NotificationEvent interface
pub type NotificationEvent

///|
pub extern "js" fn NotificationEvent::to_js_value(
  self : NotificationEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to NotificationEvent (unchecked)
pub extern "js" fn NotificationEvent::from_js_value(
  v : JsValue,
) -> NotificationEvent =
  #| (v) => v

///|
/// Safely cast JsValue to NotificationEvent (checked with instanceof)
pub extern "js" fn NotificationEvent::from_js_value_opt(
  v : JsValue,
) -> NotificationEvent? =
  #| (v) => (v instanceof NotificationEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to NotificationEvent (checked with instanceof)
pub extern "js" fn JsValue::as_notification_event(
  self : JsValue,
) -> NotificationEvent? =
  #| (self) => (self instanceof NotificationEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to NotificationEvent (unchecked)
pub extern "js" fn JsValue::to_notification_event(
  self : JsValue,
) -> NotificationEvent =
  #| (self) => self

///|
pub extern "js" fn NotificationEvent::to_extendable_event(
  self : NotificationEvent,
) -> ExtendableEvent =
  #| (self) => self

///|
pub extern "js" fn NotificationEvent::to_event(
  self : NotificationEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn NotificationEvent::new(
  type_ : String,
  event_init_dict : NotificationEventInit,
) -> NotificationEvent =
  #| (type_, event_init_dict) => new NotificationEvent(type_, event_init_dict)

///|
pub extern "js" fn NotificationEvent::get_notification(
  self : NotificationEvent,
) -> Notification =
  #| (self) => self.notification

///|
pub extern "js" fn NotificationEvent::get_action(
  self : NotificationEvent,
) -> String =
  #| (self) => self.action
