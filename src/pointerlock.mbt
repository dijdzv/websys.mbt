// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/pointerlock

///|
/// PointerLockOptions dictionary
pub struct PointerLockOptions {
  unadjustedMovement : Bool?
}

///|
/// Create a new PointerLockOptions with default values
pub fn PointerLockOptions::default() -> PointerLockOptions {
  PointerLockOptions::{ unadjustedMovement: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PointerLockOptions::to_js(
  self : PointerLockOptions,
) -> JsValue =
  #| (self) => ({
  #|   unadjustedMovement: self.unadjustedMovement
  #| })
