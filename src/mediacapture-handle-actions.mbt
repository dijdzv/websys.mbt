// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediacapture-handle-actions

///|
/// CaptureAction enum
pub(all) enum CaptureAction {
  Next
  Previous
  First
  Last
} derive(Eq, Show)

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
pub(all) struct CaptureActionEventInit {
  action : String?
}

///|
/// Create a new CaptureActionEventInit with default values
pub fn CaptureActionEventInit::default() -> CaptureActionEventInit {
  CaptureActionEventInit::{ action: None }
}

///|
extern "js" fn CaptureActionEventInit::to_js_ffi(
  self : CaptureActionEventInit,
) -> JsValue =
  #| (self) => ({
  #|   action: self.action
  #| })

///|
/// Convert to JsValue
pub fn CaptureActionEventInit::to_js(self : CaptureActionEventInit) -> JsValue {
  CaptureActionEventInit::to_js_ffi(self)
}

///|
extern "js" fn CaptureActionEventInit::from_js_ffi(
  value : JsValue,
) -> CaptureActionEventInit =
  #| (v) => ({
  #|   action: v.action
  #| })

///|
/// Convert from JsValue
pub fn CaptureActionEventInit::from_js(
  value : JsValue,
) -> CaptureActionEventInit {
  CaptureActionEventInit::from_js_ffi(value)
}

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
pub extern "js" fn CaptureActionEvent::new() -> CaptureActionEvent =
  #| () => new CaptureActionEvent()

///|
extern "js" fn CaptureActionEvent::new_with_init_ffi(
  init_ : JsValue,
) -> CaptureActionEvent =
  #| (init_) => new CaptureActionEvent(init_)

///|
pub fn CaptureActionEvent::new_with_init(
  init_ : CaptureActionEventInit,
) -> CaptureActionEvent {
  CaptureActionEvent::new_with_init_ffi(init_.to_js())
}

///|
pub extern "js" fn CaptureActionEvent::get_action(
  self : CaptureActionEvent,
) -> CaptureAction =
  #| (self) => ['next', 'previous', 'first', 'last'].indexOf(self.action)
