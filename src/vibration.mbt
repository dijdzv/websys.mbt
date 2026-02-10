// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/vibration

///|
/// VibratePattern typedef
pub type VibratePattern

///|
pub extern "js" fn VibratePattern::to_js_value(
  self : VibratePattern,
) -> JsValue =
  #| (self) => self

///|
/// Create VibratePattern from Int
pub extern "js" fn VibratePattern::from_int(v : Int) -> VibratePattern =
  #| (v) => v

///|
/// Create VibratePattern from Array[Int]
pub extern "js" fn VibratePattern::from_array_of_int(
  v : Array[Int],
) -> VibratePattern =
  #| (v) => v

///|
/// Check if this VibratePattern is Int
pub extern "js" fn VibratePattern::is_int(self : VibratePattern) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Check if this VibratePattern is Array[Int]
pub extern "js" fn VibratePattern::is_array_of_int(
  self : VibratePattern,
) -> Bool =
  #| (self) => Array.isArray(self)

///|
/// Try to get VibratePattern as Int
pub extern "js" fn VibratePattern::as_int(self : VibratePattern) -> Int? =
  #| (self) => (typeof self === 'number') ? self : undefined

///|
/// Try to get VibratePattern as Array[Int]
pub extern "js" fn VibratePattern::as_array_of_int(
  self : VibratePattern,
) -> Array[Int]? =
  #| (self) => (Array.isArray(self)) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[VibratePattern] to Int?
pub fn VibratePattern::bind_as_int(value : VibratePattern?) -> Int? {
  match value {
    Some(v) => v.as_int()
    None => None
  }
}

///|
/// Flatten Option[VibratePattern] to Array[Int]?
pub fn VibratePattern::bind_as_array_of_int(
  value : VibratePattern?,
) -> Array[Int]? {
  match value {
    Some(v) => v.as_array_of_int()
    None => None
  }
}
