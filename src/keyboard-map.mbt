// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/keyboard-map

///|
/// KeyboardLayoutMap interface
pub type KeyboardLayoutMap

///|
pub extern "js" fn KeyboardLayoutMap::to_js_value(
  self : KeyboardLayoutMap,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to KeyboardLayoutMap (unchecked)
pub extern "js" fn KeyboardLayoutMap::from_js_value(
  v : JsValue,
) -> KeyboardLayoutMap =
  #| (v) => v

///|
/// Safely cast JsValue to KeyboardLayoutMap (checked with instanceof)
pub extern "js" fn KeyboardLayoutMap::from_js_value_opt(
  v : JsValue,
) -> KeyboardLayoutMap? =
  #| (v) => (v instanceof KeyboardLayoutMap) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to KeyboardLayoutMap (checked with instanceof)
pub extern "js" fn JsValue::as_keyboard_layout_map(
  self : JsValue,
) -> KeyboardLayoutMap? =
  #| (self) => (self instanceof KeyboardLayoutMap) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to KeyboardLayoutMap (unchecked)
pub extern "js" fn JsValue::to_keyboard_layout_map(
  self : JsValue,
) -> KeyboardLayoutMap =
  #| (self) => self

///|
pub extern "js" fn KeyboardLayoutMap::get(
  self : KeyboardLayoutMap,
  key : String,
) -> String? =
  #| (self, key) => { const v = self.get(key); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn KeyboardLayoutMap::has(
  self : KeyboardLayoutMap,
  key : String,
) -> Bool =
  #| (self, key) => self.has(key)
