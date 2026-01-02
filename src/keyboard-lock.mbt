// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/keyboard-lock

///|
/// Keyboard interface
pub type Keyboard

pub extern "js" fn Keyboard::to_js_value(self : Keyboard) -> JsValue =
  #| (self) => self

pub extern "js" fn Keyboard::lock(self : Keyboard) -> Promise[Unit] =
  #| (self) => self.lock()

pub extern "js" fn Keyboard::lock_with_key_codes(self : Keyboard, key_codes : Array[String]) -> Promise[Unit] =
  #| (self, key_codes) => self.lock(key_codes)

pub extern "js" fn Keyboard::unlock(self : Keyboard) -> Unit =
  #| (self) => self.unlock()

pub extern "js" fn Keyboard::get_layout_map(self : Keyboard) -> Promise[KeyboardLayoutMap] =
  #| (self) => self.getLayoutMap()

pub extern "js" fn Keyboard::get_onlayoutchange(self : Keyboard) -> EventHandler =
  #| (self) => self.onlayoutchange

pub extern "js" fn Keyboard::set_onlayoutchange(self : Keyboard, value : EventHandler) -> Unit =
  #| (self, value) => { self.onlayoutchange = value }

