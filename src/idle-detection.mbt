// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/idle-detection

///|
/// UserIdleState enum
pub(all) enum UserIdleState {
  Active
  Idle
} derive(Eq, Show)

///|
/// Convert to string value
pub fn UserIdleState::to_string(self : UserIdleState) -> String {
  match self {
    UserIdleState::Active => "active"
    UserIdleState::Idle => "idle"
  }
}

///|
/// Parse from string value
pub fn UserIdleState::from_string(s : String) -> UserIdleState? {
  match s {
    "active" => Some(UserIdleState::Active)
    "idle" => Some(UserIdleState::Idle)
    _ => None
  }
}

///|
/// ScreenIdleState enum
pub(all) enum ScreenIdleState {
  Locked
  Unlocked
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ScreenIdleState::to_string(self : ScreenIdleState) -> String {
  match self {
    ScreenIdleState::Locked => "locked"
    ScreenIdleState::Unlocked => "unlocked"
  }
}

///|
/// Parse from string value
pub fn ScreenIdleState::from_string(s : String) -> ScreenIdleState? {
  match s {
    "locked" => Some(ScreenIdleState::Locked)
    "unlocked" => Some(ScreenIdleState::Unlocked)
    _ => None
  }
}

///|
/// IdleOptions dictionary
pub(all) struct IdleOptions {
  threshold : Int64?
  signal : AbortSignal?
}

///|
/// Create a new IdleOptions with default values
pub fn IdleOptions::default() -> IdleOptions {
  IdleOptions::{ threshold: None, signal: None }
}

///|
extern "js" fn IdleOptions::to_js_ffi(self : IdleOptions) -> JsValue =
  #| (self) => ({
  #|   threshold: self.threshold,
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn IdleOptions::to_js(self : IdleOptions) -> JsValue {
  IdleOptions::to_js_ffi(self)
}

///|
extern "js" fn IdleOptions::from_js_ffi(value : JsValue) -> IdleOptions =
  #| (v) => ({
  #|   threshold: v.threshold,
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn IdleOptions::from_js(value : JsValue) -> IdleOptions {
  IdleOptions::from_js_ffi(value)
}

///|
/// IdleDetector interface
pub type IdleDetector

///|
pub extern "js" fn IdleDetector::to_js_value(self : IdleDetector) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to IdleDetector (unchecked)
pub extern "js" fn IdleDetector::from_js_value(v : JsValue) -> IdleDetector =
  #| (v) => v

///|
/// Safely cast JsValue to IdleDetector (checked with instanceof)
pub extern "js" fn IdleDetector::from_js_value_opt(
  v : JsValue,
) -> IdleDetector? =
  #| (v) => (v instanceof IdleDetector) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to IdleDetector (checked with instanceof)
pub extern "js" fn JsValue::as_idle_detector(self : JsValue) -> IdleDetector? =
  #| (self) => (self instanceof IdleDetector) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to IdleDetector (unchecked)
pub extern "js" fn JsValue::to_idle_detector(self : JsValue) -> IdleDetector =
  #| (self) => self

///|
pub extern "js" fn IdleDetector::to_event_target(
  self : IdleDetector,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn IdleDetector::new() -> IdleDetector =
  #| () => new IdleDetector()

///|
pub extern "js" fn IdleDetector::get_user_state(
  self : IdleDetector,
) -> UserIdleState? =
  #| (self) => (() => { const v = self.userState; return v == null ? undefined : ['active', 'idle'].indexOf(v); })()

///|
pub extern "js" fn IdleDetector::get_screen_state(
  self : IdleDetector,
) -> ScreenIdleState? =
  #| (self) => (() => { const v = self.screenState; return v == null ? undefined : ['locked', 'unlocked'].indexOf(v); })()

///|
pub extern "js" fn IdleDetector::get_onchange(
  self : IdleDetector,
) -> EventHandler =
  #| (self) => self.onchange

///|
pub extern "js" fn IdleDetector::set_onchange(
  self : IdleDetector,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onchange = value }

///|
pub extern "js" fn IdleDetector::request_permission() -> Promise[
  PermissionState,
] =
  #| () => IdleDetector.requestPermission()

///|
pub extern "js" fn IdleDetector::start(self : IdleDetector) -> Promise[Unit] =
  #| (self) => self.start()

///|
extern "js" fn IdleDetector::start_with_options_ffi(
  self : IdleDetector,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, options) => self.start(options)

///|
pub fn IdleDetector::start_with_options(
  self : IdleDetector,
  options : IdleOptions,
) -> Promise[Unit] {
  IdleDetector::start_with_options_ffi(self, options.to_js())
}
