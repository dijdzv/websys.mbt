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

///|
extern "js" fn PointerLockOptions::from_js_ffi(
  value : JsValue,
) -> PointerLockOptions =
  #| (v) => ({
  #|   unadjustedMovement: (v.unadjustedMovement === undefined ? -1 : v.unadjustedMovement)
  #| })

///|
/// Convert from JsValue
pub fn PointerLockOptions::from_js(value : JsValue) -> PointerLockOptions {
  PointerLockOptions::from_js_ffi(value)
}

///|
/// MouseEventInit dictionary
pub(all) struct MouseEventInit {
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
extern "js" fn MouseEventInit::to_js_ffi(self : MouseEventInit) -> JsValue =
  #| (self) => ({
  #|   movementX: ((() => { const v = self.movementX; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   movementY: ((() => { const v = self.movementY; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   screenX: self.screenX,
  #|   screenY: self.screenY,
  #|   clientX: self.clientX,
  #|   clientY: self.clientY,
  #|   button: self.button,
  #|   buttons: self.buttons,
  #|   relatedTarget: ((() => { const v = self.relatedTarget; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MouseEventInit::to_js(self : MouseEventInit) -> JsValue {
  MouseEventInit::to_js_ffi(self)
}

///|
extern "js" fn MouseEventInit::from_js_ffi(value : JsValue) -> MouseEventInit =
  #| (v) => ({
  #|   movementX: (v.movementX === undefined ? { $tag: 0 } : { $tag: 1, _0: v.movementX }),
  #|   movementY: (v.movementY === undefined ? { $tag: 0 } : { $tag: 1, _0: v.movementY }),
  #|   screenX: v.screenX,
  #|   screenY: v.screenY,
  #|   clientX: v.clientX,
  #|   clientY: v.clientY,
  #|   button: v.button,
  #|   buttons: v.buttons,
  #|   relatedTarget: (v.relatedTarget === undefined ? { $tag: 0 } : v.relatedTarget === null ? { $tag: 1 } : { $tag: 2, _0: v.relatedTarget })
  #| })

///|
/// Convert from JsValue
pub fn MouseEventInit::from_js(value : JsValue) -> MouseEventInit {
  MouseEventInit::from_js_ffi(value)
}
