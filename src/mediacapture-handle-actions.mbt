// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediacapture-handle-actions

///|
/// CaptureAction enum
pub(all) enum CaptureAction {
  Next
  Previous
  First
  Last
}

///|
/// Convert to string value
pub fn CaptureAction::to_string(self : CaptureAction) -> String {
  match self {
    CaptureAction::Next => "next"
    CaptureAction::Previous => "previous"
    CaptureAction::First => "first"
    CaptureAction::Last => "last"
  }
}

///|
/// Parse from string value
pub fn CaptureAction::from_string(s : String) -> CaptureAction? {
  match s {
    "next" => Some(CaptureAction::Next)
    "previous" => Some(CaptureAction::Previous)
    "first" => Some(CaptureAction::First)
    "last" => Some(CaptureAction::Last)
    _ => None
  }
}

///|
/// CaptureActionEventInit dictionary
pub struct CaptureActionEventInit {
  action : String?
}

///|
/// Create a new CaptureActionEventInit with default values
pub fn CaptureActionEventInit::default() -> CaptureActionEventInit {
  CaptureActionEventInit::{ action: None }
}

///|
/// Convert to JsValue
pub extern "js" fn CaptureActionEventInit::to_js(
  self : CaptureActionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   action: self.action
  #| })

///|
/// CaptureActionEvent interface
pub type CaptureActionEvent

///|
pub extern "js" fn CaptureActionEvent::to_js_value(
  self : CaptureActionEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to CaptureActionEvent (unchecked)
pub extern "js" fn CaptureActionEvent::from_js_value(
  v : JsValue,
) -> CaptureActionEvent =
  #| (v) => v

///|
/// Safely cast JsValue to CaptureActionEvent (checked with instanceof)
pub extern "js" fn CaptureActionEvent::from_js_value_opt(
  v : JsValue,
) -> CaptureActionEvent? =
  #| (v) => (v instanceof CaptureActionEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to CaptureActionEvent (checked with instanceof)
pub extern "js" fn JsValue::as_capture_action_event(
  self : JsValue,
) -> CaptureActionEvent? =
  #| (self) => (self instanceof CaptureActionEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to CaptureActionEvent (unchecked)
pub extern "js" fn JsValue::to_capture_action_event(
  self : JsValue,
) -> CaptureActionEvent =
  #| (self) => self

///|
pub extern "js" fn CaptureActionEvent::to_event(
  self : CaptureActionEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn CaptureActionEvent::new(
  init_ : CaptureActionEventInit,
) -> CaptureActionEvent =
  #| (init_) => new CaptureActionEvent(init_)

///|
pub extern "js" fn CaptureActionEvent::get_action(
  self : CaptureActionEvent,
) -> CaptureAction =
  #| (self) => self.action
