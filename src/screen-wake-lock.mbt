// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/screen-wake-lock

///|
/// WakeLockType enum
pub(all) enum WakeLockType {
  Screen
} derive(Eq, Show)

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
/// Cast JsValue to WakeLock (unchecked)
pub extern "js" fn WakeLock::from_js_value(v : JsValue) -> WakeLock =
  #| (v) => v

///|
/// Safely cast JsValue to WakeLock (checked with instanceof)
pub extern "js" fn WakeLock::from_js_value_opt(v : JsValue) -> WakeLock? =
  #| (v) => (v instanceof WakeLock) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WakeLock (checked with instanceof)
pub extern "js" fn JsValue::as_wake_lock(self : JsValue) -> WakeLock? =
  #| (self) => (self instanceof WakeLock) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WakeLock (unchecked)
pub extern "js" fn JsValue::to_wake_lock(self : JsValue) -> WakeLock =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum WakeLockRequestError {
  NotAllowedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn WakeLock::request(
  self : WakeLock,
) -> Promise[Result[WakeLockSentinel, WakeLockRequestError]] =
  #| (self) => self.request().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn WakeLock::request_with_type(
  self : WakeLock,
  type_ : WakeLockType,
) -> Promise[Result[WakeLockSentinel, WakeLockRequestError]] =
  #| (self, type_) => self.request(['screen'][type_]).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotAllowedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
/// WakeLockSentinel interface
pub type WakeLockSentinel

///|
pub extern "js" fn WakeLockSentinel::to_js_value(
  self : WakeLockSentinel,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WakeLockSentinel (unchecked)
pub extern "js" fn WakeLockSentinel::from_js_value(
  v : JsValue,
) -> WakeLockSentinel =
  #| (v) => v

///|
/// Safely cast JsValue to WakeLockSentinel (checked with instanceof)
pub extern "js" fn WakeLockSentinel::from_js_value_opt(
  v : JsValue,
) -> WakeLockSentinel? =
  #| (v) => (v instanceof WakeLockSentinel) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WakeLockSentinel (checked with instanceof)
pub extern "js" fn JsValue::as_wake_lock_sentinel(
  self : JsValue,
) -> WakeLockSentinel? =
  #| (self) => (self instanceof WakeLockSentinel) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WakeLockSentinel (unchecked)
pub extern "js" fn JsValue::to_wake_lock_sentinel(
  self : JsValue,
) -> WakeLockSentinel =
  #| (self) => self

///|
pub extern "js" fn WakeLockSentinel::to_event_target(
  self : WakeLockSentinel,
) -> EventTarget =
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
  #| (self) => ['screen'].indexOf(self.type)

///|
pub extern "js" fn WakeLockSentinel::release(
  self : WakeLockSentinel,
) -> Promise[Unit] =
  #| (self) => self.release()

///|
pub extern "js" fn WakeLockSentinel::set_onrelease(
  self : WakeLockSentinel,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onrelease = (e) => handler(e) }

///|
pub extern "js" fn WakeLockSentinel::clear_onrelease(
  self : WakeLockSentinel,
) -> Unit =
  #| (self) => { self.onrelease = null }
