// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/pointerlock

///|
/// PointerLockOptions dictionary
pub(all) struct PointerLockOptions {
  unadjustedMovement : Bool?
}

///|
/// Create a new PointerLockOptions with default values
pub fn PointerLockOptions::default() -> PointerLockOptions {
  PointerLockOptions::{ unadjustedMovement: None }
}

///|
extern "js" fn PointerLockOptions::to_js_ffi(
  self : PointerLockOptions,
) -> JsValue =
  #| (self) => ({
  #|   unadjustedMovement: (self.unadjustedMovement === -1 ? undefined : self.unadjustedMovement)
  #| })

///|
/// Convert to JsValue
pub fn PointerLockOptions::to_js(self : PointerLockOptions) -> JsValue {
  PointerLockOptions::to_js_ffi(self)
}
