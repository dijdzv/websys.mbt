// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/idle-detection

///|
/// UserIdleState enum
pub(all) enum UserIdleState {
  Active
  Idle
}

/// Convert to string value
pub fn UserIdleState::to_string(self : UserIdleState) -> String {
  match self {
    Active => "active"
    Idle => "idle"
  }
}

/// Parse from string value
pub fn UserIdleState::from_string(s : String) -> UserIdleState? {
  match s {
    "active" => Some(Active)
    "idle" => Some(Idle)
    _ => None
  }
}

///|
/// ScreenIdleState enum
pub(all) enum ScreenIdleState {
  Locked
  Unlocked
}

/// Convert to string value
pub fn ScreenIdleState::to_string(self : ScreenIdleState) -> String {
  match self {
    Locked => "locked"
    Unlocked => "unlocked"
  }
}

/// Parse from string value
pub fn ScreenIdleState::from_string(s : String) -> ScreenIdleState? {
  match s {
    "locked" => Some(Locked)
    "unlocked" => Some(Unlocked)
    _ => None
  }
}

///|
/// IdleOptions dictionary
pub struct IdleOptions {
  threshold : Int64?
  signal : AbortSignal?
}

/// Create a new IdleOptions with default values
pub fn IdleOptions::default() -> IdleOptions {
  IdleOptions::{
    threshold: None,
    signal: None,
  }
}

/// Convert to JsValue
pub extern "js" fn IdleOptions::to_js(self : IdleOptions) -> JsValue =
  #| (self) => ({
  #|   threshold: self.threshold,
  #|   signal: self.signal
  #| })

///|
/// IdleDetector interface
pub type IdleDetector

pub extern "js" fn IdleDetector::to_js_value(self : IdleDetector) -> JsValue =
  #| (self) => self

pub extern "js" fn IdleDetector::new() -> IdleDetector =
  #| () => new IdleDetector()

pub extern "js" fn IdleDetector::get_user_state(self : IdleDetector) -> UserIdleState? =
  #| (self) => self.userState

pub extern "js" fn IdleDetector::get_screen_state(self : IdleDetector) -> ScreenIdleState? =
  #| (self) => self.screenState

pub extern "js" fn IdleDetector::get_onchange(self : IdleDetector) -> EventHandler =
  #| (self) => self.onchange

pub extern "js" fn IdleDetector::set_onchange(self : IdleDetector, value : EventHandler) -> Unit =
  #| (self, value) => { self.onchange = value }

pub extern "js" fn IdleDetector::request_permission() -> JsValue =
  #| () => IdleDetector.requestPermission()

pub extern "js" fn IdleDetector::start(self : IdleDetector, options : IdleOptions) -> JsValue =
  #| (self, options) => self.start(options)

