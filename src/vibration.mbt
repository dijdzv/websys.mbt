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
