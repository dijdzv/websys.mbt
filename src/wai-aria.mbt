// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/wai-aria

///|
/// AriaNotifyPriority enum
pub(all) enum AriaNotifyPriority {
  Normal
  High
} derive(Eq, Debug)

///|
/// Convert to string value
pub fn AriaNotifyPriority::to_string(self : AriaNotifyPriority) -> String {
  match self {
    AriaNotifyPriority::Normal => "normal"
    AriaNotifyPriority::High => "high"
  }
}

///|
/// Parse from string value
pub fn AriaNotifyPriority::from_string(s : String) -> AriaNotifyPriority? {
  match s {
    "normal" => Some(AriaNotifyPriority::Normal)
    "high" => Some(AriaNotifyPriority::High)
    _ => None
  }
}

///|
/// AriaNotificationOptions dictionary
pub(all) struct AriaNotificationOptions {
  priority : AriaNotifyPriority?
}

///|
/// Create a new AriaNotificationOptions with default values
pub fn AriaNotificationOptions::default() -> AriaNotificationOptions {
  AriaNotificationOptions::{ priority: None, }
}

///|
extern "js" fn AriaNotificationOptions::to_js_ffi(
  self : AriaNotificationOptions,
) -> JsValue =
  #| (self) => ({
  #|   priority: ((() => { const v = self.priority; if (v === undefined) return undefined; return ['normal', 'high'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn AriaNotificationOptions::to_js(
  self : AriaNotificationOptions,
) -> JsValue {
  AriaNotificationOptions::to_js_ffi(self)
}

///|
extern "js" fn AriaNotificationOptions::from_js_ffi(
  value : JsValue,
) -> AriaNotificationOptions =
  #| (v) => ({
  #|   priority: (v.priority === undefined ? undefined : ['normal', 'high'].indexOf(v.priority))
  #| })

///|
/// Convert from JsValue
pub fn AriaNotificationOptions::from_js(
  value : JsValue,
) -> AriaNotificationOptions {
  AriaNotificationOptions::from_js_ffi(value)
}
