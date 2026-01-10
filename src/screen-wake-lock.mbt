// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/screen-wake-lock

///|
/// WakeLockType enum
pub(all) enum WakeLockType {
  Screen
}

///|
/// Convert to string value
pub fn WakeLockType::to_string(self : WakeLockType) -> String {
  match self {
    WakeLockType::Screen => "screen"
  }
}

///|
/// Parse from string value
pub fn WakeLockType::from_string(s : String) -> WakeLockType? {
  match s {
    "screen" => Some(WakeLockType::Screen)
    _ => None
  }
}

///|
/// WakeLock interface
pub type WakeLock

///|
pub extern "js" fn WakeLock::to_js_value(self : WakeLock) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn WakeLock::request(
  self : WakeLock,
) -> Promise[WakeLockSentinel] =
  #| (self) => self.request()

///|
pub extern "js" fn WakeLock::request_with_type(
  self : WakeLock,
  type_ : WakeLockType,
) -> Promise[WakeLockSentinel] =
  #| (self, type_) => self.request(['screen'][type_])

///|
/// WakeLockSentinel interface
pub type WakeLockSentinel

///|
pub extern "js" fn WakeLockSentinel::to_js_value(
  self : WakeLockSentinel,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn WakeLockSentinel::get_released(
  self : WakeLockSentinel,
) -> Bool =
  #| (self) => self.released

///|
pub extern "js" fn WakeLockSentinel::get_type(
  self : WakeLockSentinel,
) -> WakeLockType =
  #| (self) => self.type

///|
pub extern "js" fn WakeLockSentinel::release(
  self : WakeLockSentinel,
) -> Promise[Unit] =
  #| (self) => self.release()

///|
pub extern "js" fn WakeLockSentinel::get_onrelease(
  self : WakeLockSentinel,
) -> EventHandler =
  #| (self) => self.onrelease

///|
pub extern "js" fn WakeLockSentinel::set_onrelease(
  self : WakeLockSentinel,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onrelease = value }
