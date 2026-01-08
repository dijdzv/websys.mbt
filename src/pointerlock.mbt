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

///|
/// MouseEventInit dictionary
pub struct MouseEventInit {
  movementX : Double?
  movementY : Double?
  screenX : Int?
  screenY : Int?
  clientX : Int?
  clientY : Int?
  button : Int?
  buttons : Int?
  relatedTarget : Nullable[EventTarget]
}

///|
/// Create a new MouseEventInit with default values
pub fn MouseEventInit::default() -> MouseEventInit {
  MouseEventInit::{
    movementX: None,
    movementY: None,
    screenX: None,
    screenY: None,
    clientX: None,
    clientY: None,
    button: None,
    buttons: None,
    relatedTarget: Nullable::Undefined,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MouseEventInit::to_js(self : MouseEventInit) -> JsValue =
  #| (self) => ({
  #|   movementX: self.movementX,
  #|   movementY: self.movementY,
  #|   screenX: self.screenX,
  #|   screenY: self.screenY,
  #|   clientX: self.clientX,
  #|   clientY: self.clientY,
  #|   button: self.button,
  #|   buttons: self.buttons,
  #|   relatedTarget: ((() => { const v = self.relatedTarget; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })
