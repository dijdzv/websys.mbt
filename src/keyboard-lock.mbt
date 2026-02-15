// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/keyboard-lock

///|
/// Keyboard interface
pub type Keyboard

///|
pub extern "js" fn Keyboard::to_js_value(self : Keyboard) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Keyboard (unchecked)
pub extern "js" fn Keyboard::from_js_value(v : JsValue) -> Keyboard =
  #| (v) => v

///|
/// Safely cast JsValue to Keyboard (checked with instanceof)
pub extern "js" fn Keyboard::from_js_value_opt(v : JsValue) -> Keyboard? =
  #| (v) => (v instanceof Keyboard) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Keyboard (checked with instanceof)
pub extern "js" fn JsValue::as_keyboard(self : JsValue) -> Keyboard? =
  #| (self) => (self instanceof Keyboard) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Keyboard (unchecked)
pub extern "js" fn JsValue::to_keyboard(self : JsValue) -> Keyboard =
  #| (self) => self

///|
pub extern "js" fn Keyboard::to_event_target(self : Keyboard) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum KeyboardLockError {
  AbortError(JsError)
  InvalidStateError(JsError)
  InvalidAccessError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum KeyboardGetLayoutMapError {
  SecurityError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn Keyboard::lock(
  self : Keyboard,
) -> Promise[Result[Unit, KeyboardLockError]] =
  #| (self) => self.lock().then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'InvalidAccessError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
pub extern "js" fn Keyboard::lock_with_key_codes(
  self : Keyboard,
  key_codes : Array[String],
) -> Promise[Result[Unit, KeyboardLockError]] =
  #| (self, key_codes) => self.lock(key_codes).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'AbortError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'InvalidAccessError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
pub extern "js" fn Keyboard::unlock(self : Keyboard) -> Unit =
  #| (self) => self.unlock()

///|
pub extern "js" fn Keyboard::get_layout_map(
  self : Keyboard,
) -> Promise[Result[KeyboardLayoutMap, KeyboardGetLayoutMapError]] =
  #| (self) => self.getLayoutMap().then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }))

///|
pub extern "js" fn Keyboard::set_onlayoutchange(
  self : Keyboard,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onlayoutchange = (e) => handler(e) }

///|
pub extern "js" fn Keyboard::clear_onlayoutchange(self : Keyboard) -> Unit =
  #| (self) => { self.onlayoutchange = null }
