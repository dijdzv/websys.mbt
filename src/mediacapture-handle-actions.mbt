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
    Next => "next"
    Previous => "previous"
    First => "first"
    Last => "last"
  }
}

///|
/// Parse from string value
pub fn CaptureAction::from_string(s : String) -> CaptureAction? {
  match s {
    "next" => Some(Next)
    "previous" => Some(Previous)
    "first" => Some(First)
    "last" => Some(Last)
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
pub extern "js" fn CaptureActionEvent::new(
  init_ : CaptureActionEventInit,
) -> CaptureActionEvent =
  #| (init_) => new CaptureActionEvent(init_)

///|
pub extern "js" fn CaptureActionEvent::get_action(
  self : CaptureActionEvent,
) -> CaptureAction =
  #| (self) => self.action
