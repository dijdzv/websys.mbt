// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/keyboard-map

///|
/// KeyboardLayoutMap interface
pub type KeyboardLayoutMap

pub extern "js" fn KeyboardLayoutMap::to_js_value(self : KeyboardLayoutMap) -> JsValue =
  #| (self) => self

pub extern "js" fn KeyboardLayoutMap::get(self : KeyboardLayoutMap, key : String) -> String? =
  #| (self, key) => self.get(key)

pub extern "js" fn KeyboardLayoutMap::has(self : KeyboardLayoutMap, key : String) -> Bool =
  #| (self, key) => self.has(key)

