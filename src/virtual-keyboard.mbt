// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/virtual-keyboard

///|
/// VirtualKeyboard interface
pub type VirtualKeyboard

pub extern "js" fn VirtualKeyboard::to_js_value(self : VirtualKeyboard) -> JsValue =
  #| (self) => self

pub extern "js" fn VirtualKeyboard::show(self : VirtualKeyboard) -> Unit =
  #| (self) => self.show()

pub extern "js" fn VirtualKeyboard::hide(self : VirtualKeyboard) -> Unit =
  #| (self) => self.hide()

pub extern "js" fn VirtualKeyboard::get_bounding_rect(self : VirtualKeyboard) -> DOMRect =
  #| (self) => self.boundingRect

pub extern "js" fn VirtualKeyboard::get_overlays_content(self : VirtualKeyboard) -> Bool =
  #| (self) => self.overlaysContent

pub extern "js" fn VirtualKeyboard::set_overlays_content(self : VirtualKeyboard, value : Bool) -> Unit =
  #| (self, value) => { self.overlaysContent = value }

pub extern "js" fn VirtualKeyboard::get_ongeometrychange(self : VirtualKeyboard) -> EventHandler =
  #| (self) => self.ongeometrychange

pub extern "js" fn VirtualKeyboard::set_ongeometrychange(self : VirtualKeyboard, value : EventHandler) -> Unit =
  #| (self, value) => { self.ongeometrychange = value }

