// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/pointerevents

///|
/// MouseEventInit dictionary
pub(all) struct MouseEventInit {
  screenX : Int?
  screenY : Int?
  clientX : Int?
  clientY : Int?
  button : Int?
  buttons : Int?
  relatedTarget : Nullable[EventTarget]
  movementX : Double?
  movementY : Double?
}

///|
/// Create a new MouseEventInit with default values
pub fn MouseEventInit::default() -> MouseEventInit {
  MouseEventInit::{
    screenX: None,
    screenY: None,
    clientX: None,
    clientY: None,
    button: None,
    buttons: None,
    relatedTarget: Nullable::Undefined,
    movementX: None,
    movementY: None,
  }
}

///|
extern "js" fn MouseEventInit::to_js_ffi(self : MouseEventInit) -> JsValue =
  #| (self) => ({
  #|   screenX: self.screenX,
  #|   screenY: self.screenY,
  #|   clientX: self.clientX,
  #|   clientY: self.clientY,
  #|   button: self.button,
  #|   buttons: self.buttons,
  #|   relatedTarget: ((() => { const v = self.relatedTarget; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   movementX: ((() => { const v = self.movementX; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   movementY: ((() => { const v = self.movementY; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MouseEventInit::to_js(self : MouseEventInit) -> JsValue {
  MouseEventInit::to_js_ffi(self)
}

///|
extern "js" fn MouseEventInit::from_js_ffi(value : JsValue) -> MouseEventInit =
  #| (v) => ({
  #|   screenX: v.screenX,
  #|   screenY: v.screenY,
  #|   clientX: v.clientX,
  #|   clientY: v.clientY,
  #|   button: v.button,
  #|   buttons: v.buttons,
  #|   relatedTarget: (v.relatedTarget === undefined ? { $tag: 0 } : v.relatedTarget === null ? { $tag: 1 } : { $tag: 2, _0: v.relatedTarget }),
  #|   movementX: (v.movementX === undefined ? { $tag: 0 } : { $tag: 1, _0: v.movementX }),
  #|   movementY: (v.movementY === undefined ? { $tag: 0 } : { $tag: 1, _0: v.movementY })
  #| })

///|
/// Convert from JsValue
pub fn MouseEventInit::from_js(value : JsValue) -> MouseEventInit {
  MouseEventInit::from_js_ffi(value)
}

///|
/// PointerEventInit dictionary
pub(all) struct PointerEventInit {
  screenX : Int?
  screenY : Int?
  clientX : Int?
  clientY : Int?
  button : Int?
  buttons : Int?
  relatedTarget : Nullable[EventTarget]
  movementX : Double?
  movementY : Double?
  pointerId : Int?
  width : Double?
  height : Double?
  pressure : Double?
  tangentialPressure : Double?
  tiltX : Int?
  tiltY : Int?
  twist : Int?
  altitudeAngle : Double?
  azimuthAngle : Double?
  pointerType : String?
  isPrimary : Bool?
  persistentDeviceId : Int?
  coalescedEvents : FixedArray[PointerEvent]?
  predictedEvents : FixedArray[PointerEvent]?
}

///|
/// Create a new PointerEventInit with default values
pub fn PointerEventInit::default() -> PointerEventInit {
  PointerEventInit::{
    screenX: None,
    screenY: None,
    clientX: None,
    clientY: None,
    button: None,
    buttons: None,
    relatedTarget: Nullable::Undefined,
    movementX: None,
    movementY: None,
    pointerId: None,
    width: None,
    height: None,
    pressure: None,
    tangentialPressure: None,
    tiltX: None,
    tiltY: None,
    twist: None,
    altitudeAngle: None,
    azimuthAngle: None,
    pointerType: None,
    isPrimary: None,
    persistentDeviceId: None,
    coalescedEvents: None,
    predictedEvents: None,
  }
}

///|
extern "js" fn PointerEventInit::to_js_ffi(self : PointerEventInit) -> JsValue =
  #| (self) => ({
  #|   screenX: self.screenX,
  #|   screenY: self.screenY,
  #|   clientX: self.clientX,
  #|   clientY: self.clientY,
  #|   button: self.button,
  #|   buttons: self.buttons,
  #|   relatedTarget: ((() => { const v = self.relatedTarget; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   movementX: ((() => { const v = self.movementX; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   movementY: ((() => { const v = self.movementY; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   pointerId: self.pointerId,
  #|   width: ((() => { const v = self.width; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   height: ((() => { const v = self.height; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   pressure: ((() => { const v = self.pressure; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   tangentialPressure: ((() => { const v = self.tangentialPressure; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   tiltX: self.tiltX,
  #|   tiltY: self.tiltY,
  #|   twist: self.twist,
  #|   altitudeAngle: ((() => { const v = self.altitudeAngle; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   azimuthAngle: ((() => { const v = self.azimuthAngle; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   pointerType: self.pointerType,
  #|   isPrimary: (self.isPrimary === -1 ? undefined : self.isPrimary),
  #|   persistentDeviceId: self.persistentDeviceId,
  #|   coalescedEvents: self.coalescedEvents,
  #|   predictedEvents: self.predictedEvents
  #| })

///|
/// Convert to JsValue
pub fn PointerEventInit::to_js(self : PointerEventInit) -> JsValue {
  PointerEventInit::to_js_ffi(self)
}

///|
extern "js" fn PointerEventInit::from_js_ffi(
  value : JsValue,
) -> PointerEventInit =
  #| (v) => ({
  #|   screenX: v.screenX,
  #|   screenY: v.screenY,
  #|   clientX: v.clientX,
  #|   clientY: v.clientY,
  #|   button: v.button,
  #|   buttons: v.buttons,
  #|   relatedTarget: (v.relatedTarget === undefined ? { $tag: 0 } : v.relatedTarget === null ? { $tag: 1 } : { $tag: 2, _0: v.relatedTarget }),
  #|   movementX: (v.movementX === undefined ? { $tag: 0 } : { $tag: 1, _0: v.movementX }),
  #|   movementY: (v.movementY === undefined ? { $tag: 0 } : { $tag: 1, _0: v.movementY }),
  #|   pointerId: v.pointerId,
  #|   width: (v.width === undefined ? { $tag: 0 } : { $tag: 1, _0: v.width }),
  #|   height: (v.height === undefined ? { $tag: 0 } : { $tag: 1, _0: v.height }),
  #|   pressure: (v.pressure === undefined ? { $tag: 0 } : { $tag: 1, _0: v.pressure }),
  #|   tangentialPressure: (v.tangentialPressure === undefined ? { $tag: 0 } : { $tag: 1, _0: v.tangentialPressure }),
  #|   tiltX: v.tiltX,
  #|   tiltY: v.tiltY,
  #|   twist: v.twist,
  #|   altitudeAngle: (v.altitudeAngle === undefined ? { $tag: 0 } : { $tag: 1, _0: v.altitudeAngle }),
  #|   azimuthAngle: (v.azimuthAngle === undefined ? { $tag: 0 } : { $tag: 1, _0: v.azimuthAngle }),
  #|   pointerType: v.pointerType,
  #|   isPrimary: (v.isPrimary === undefined ? -1 : v.isPrimary),
  #|   persistentDeviceId: v.persistentDeviceId,
  #|   coalescedEvents: v.coalescedEvents,
  #|   predictedEvents: v.predictedEvents
  #| })

///|
/// Convert from JsValue
pub fn PointerEventInit::from_js(value : JsValue) -> PointerEventInit {
  PointerEventInit::from_js_ffi(value)
}

///|
/// WheelEventInit dictionary
pub(all) struct WheelEventInit {
  screenX : Int?
  screenY : Int?
  clientX : Int?
  clientY : Int?
  button : Int?
  buttons : Int?
  relatedTarget : Nullable[EventTarget]
  movementX : Double?
  movementY : Double?
  deltaX : Double?
  deltaY : Double?
  deltaZ : Double?
  deltaMode : Int?
}

///|
/// Create a new WheelEventInit with default values
pub fn WheelEventInit::default() -> WheelEventInit {
  WheelEventInit::{
    screenX: None,
    screenY: None,
    clientX: None,
    clientY: None,
    button: None,
    buttons: None,
    relatedTarget: Nullable::Undefined,
    movementX: None,
    movementY: None,
    deltaX: None,
    deltaY: None,
    deltaZ: None,
    deltaMode: None,
  }
}

///|
extern "js" fn WheelEventInit::to_js_ffi(self : WheelEventInit) -> JsValue =
  #| (self) => ({
  #|   screenX: self.screenX,
  #|   screenY: self.screenY,
  #|   clientX: self.clientX,
  #|   clientY: self.clientY,
  #|   button: self.button,
  #|   buttons: self.buttons,
  #|   relatedTarget: ((() => { const v = self.relatedTarget; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   movementX: ((() => { const v = self.movementX; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   movementY: ((() => { const v = self.movementY; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   deltaX: ((() => { const v = self.deltaX; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   deltaY: ((() => { const v = self.deltaY; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   deltaZ: ((() => { const v = self.deltaZ; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   deltaMode: self.deltaMode
  #| })

///|
/// Convert to JsValue
pub fn WheelEventInit::to_js(self : WheelEventInit) -> JsValue {
  WheelEventInit::to_js_ffi(self)
}

///|
extern "js" fn WheelEventInit::from_js_ffi(value : JsValue) -> WheelEventInit =
  #| (v) => ({
  #|   screenX: v.screenX,
  #|   screenY: v.screenY,
  #|   clientX: v.clientX,
  #|   clientY: v.clientY,
  #|   button: v.button,
  #|   buttons: v.buttons,
  #|   relatedTarget: (v.relatedTarget === undefined ? { $tag: 0 } : v.relatedTarget === null ? { $tag: 1 } : { $tag: 2, _0: v.relatedTarget }),
  #|   movementX: (v.movementX === undefined ? { $tag: 0 } : { $tag: 1, _0: v.movementX }),
  #|   movementY: (v.movementY === undefined ? { $tag: 0 } : { $tag: 1, _0: v.movementY }),
  #|   deltaX: (v.deltaX === undefined ? { $tag: 0 } : { $tag: 1, _0: v.deltaX }),
  #|   deltaY: (v.deltaY === undefined ? { $tag: 0 } : { $tag: 1, _0: v.deltaY }),
  #|   deltaZ: (v.deltaZ === undefined ? { $tag: 0 } : { $tag: 1, _0: v.deltaZ }),
  #|   deltaMode: v.deltaMode
  #| })

///|
/// Convert from JsValue
pub fn WheelEventInit::from_js(value : JsValue) -> WheelEventInit {
  WheelEventInit::from_js_ffi(value)
}

///|
/// MouseEvent interface
pub type MouseEvent

///|
pub extern "js" fn MouseEvent::to_js_value(self : MouseEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MouseEvent (unchecked)
pub extern "js" fn MouseEvent::from_js_value(v : JsValue) -> MouseEvent =
  #| (v) => v

///|
/// Safely cast JsValue to MouseEvent (checked with instanceof)
pub extern "js" fn MouseEvent::from_js_value_opt(v : JsValue) -> MouseEvent? =
  #| (v) => (v instanceof MouseEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MouseEvent (checked with instanceof)
pub extern "js" fn JsValue::as_mouse_event(self : JsValue) -> MouseEvent? =
  #| (self) => (self instanceof MouseEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MouseEvent (unchecked)
pub extern "js" fn JsValue::to_mouse_event(self : JsValue) -> MouseEvent =
  #| (self) => self

///|
pub extern "js" fn MouseEvent::to_ui_event(self : MouseEvent) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn MouseEvent::to_event(self : MouseEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn MouseEvent::as_drag_event(self : MouseEvent) -> DragEvent? =
  #| (self) => (self instanceof DragEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn MouseEvent::as_pointer_event(
  self : MouseEvent,
) -> PointerEvent? =
  #| (self) => (self instanceof PointerEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn MouseEvent::as_wheel_event(self : MouseEvent) -> WheelEvent? =
  #| (self) => (self instanceof WheelEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn MouseEvent::new(type_ : String) -> MouseEvent =
  #| (type_) => new MouseEvent(type_)

///|
extern "js" fn MouseEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> MouseEvent =
  #| (type_, event_init_dict) => new MouseEvent(type_, event_init_dict)

///|
pub fn MouseEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : MouseEventInit,
) -> MouseEvent {
  MouseEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn MouseEvent::get_screen_x(self : MouseEvent) -> Int =
  #| (self) => self.screenX

///|
pub extern "js" fn MouseEvent::get_screen_y(self : MouseEvent) -> Int =
  #| (self) => self.screenY

///|
pub extern "js" fn MouseEvent::get_client_x(self : MouseEvent) -> Int =
  #| (self) => self.clientX

///|
pub extern "js" fn MouseEvent::get_client_y(self : MouseEvent) -> Int =
  #| (self) => self.clientY

///|
pub extern "js" fn MouseEvent::get_layer_x(self : MouseEvent) -> Int =
  #| (self) => self.layerX

///|
pub extern "js" fn MouseEvent::get_layer_y(self : MouseEvent) -> Int =
  #| (self) => self.layerY

///|
pub extern "js" fn MouseEvent::get_ctrl_key(self : MouseEvent) -> Bool =
  #| (self) => self.ctrlKey

///|
pub extern "js" fn MouseEvent::get_shift_key(self : MouseEvent) -> Bool =
  #| (self) => self.shiftKey

///|
pub extern "js" fn MouseEvent::get_alt_key(self : MouseEvent) -> Bool =
  #| (self) => self.altKey

///|
pub extern "js" fn MouseEvent::get_meta_key(self : MouseEvent) -> Bool =
  #| (self) => self.metaKey

///|
pub extern "js" fn MouseEvent::get_button(self : MouseEvent) -> Int =
  #| (self) => self.button

///|
pub extern "js" fn MouseEvent::get_buttons(self : MouseEvent) -> Int =
  #| (self) => self.buttons

///|
pub extern "js" fn MouseEvent::get_related_target(
  self : MouseEvent,
) -> EventTarget? =
  #| (self) => (() => { const v = self.relatedTarget; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn MouseEvent::get_modifier_state(
  self : MouseEvent,
  key_arg : String,
) -> Bool =
  #| (self, key_arg) => self.getModifierState(key_arg)

///|
pub extern "js" fn MouseEvent::get_page_x(self : MouseEvent) -> Double =
  #| (self) => self.pageX

///|
pub extern "js" fn MouseEvent::get_page_y(self : MouseEvent) -> Double =
  #| (self) => self.pageY

///|
pub extern "js" fn MouseEvent::get_x(self : MouseEvent) -> Double =
  #| (self) => self.x

///|
pub extern "js" fn MouseEvent::get_y(self : MouseEvent) -> Double =
  #| (self) => self.y

///|
pub extern "js" fn MouseEvent::get_offset_x(self : MouseEvent) -> Double =
  #| (self) => self.offsetX

///|
pub extern "js" fn MouseEvent::get_offset_y(self : MouseEvent) -> Double =
  #| (self) => self.offsetY

///|
/// @alert deprecated "initMouseEvent is deprecated"
pub extern "js" fn MouseEvent::init_mouse_event(
  self : MouseEvent,
  type_arg : String,
) -> Unit =
  #| (self, type_arg) => self.initMouseEvent(type_arg)

///|
pub extern "js" fn MouseEvent::init_mouse_event_with_related_target_arg(
  self : MouseEvent,
  type_arg : String,
  bubbles_arg : Bool,
  cancelable_arg : Bool,
  view_arg : Window?,
  detail_arg : Int,
  screen_x_arg : Int,
  screen_y_arg : Int,
  client_x_arg : Int,
  client_y_arg : Int,
  ctrl_key_arg : Bool,
  alt_key_arg : Bool,
  shift_key_arg : Bool,
  meta_key_arg : Bool,
  button_arg : Int,
  related_target_arg : EventTarget?,
) -> Unit =
  #| (self, type_arg, bubbles_arg, cancelable_arg, view_arg, detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, related_target_arg) => self.initMouseEvent(type_arg, bubbles_arg, cancelable_arg, (view_arg.$tag === 1 ? view_arg._0 : null), detail_arg, screen_x_arg, screen_y_arg, client_x_arg, client_y_arg, ctrl_key_arg, alt_key_arg, shift_key_arg, meta_key_arg, button_arg, (related_target_arg.$tag === 1 ? related_target_arg._0 : null))

///|
pub extern "js" fn MouseEvent::get_movement_x(self : MouseEvent) -> Double =
  #| (self) => self.movementX

///|
pub extern "js" fn MouseEvent::get_movement_y(self : MouseEvent) -> Double =
  #| (self) => self.movementY

///|
/// PointerEvent interface
pub type PointerEvent

///|
pub extern "js" fn PointerEvent::to_js_value(self : PointerEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PointerEvent (unchecked)
pub extern "js" fn PointerEvent::from_js_value(v : JsValue) -> PointerEvent =
  #| (v) => v

///|
/// Safely cast JsValue to PointerEvent (checked with instanceof)
pub extern "js" fn PointerEvent::from_js_value_opt(
  v : JsValue,
) -> PointerEvent? =
  #| (v) => (v instanceof PointerEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PointerEvent (checked with instanceof)
pub extern "js" fn JsValue::as_pointer_event(self : JsValue) -> PointerEvent? =
  #| (self) => (self instanceof PointerEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PointerEvent (unchecked)
pub extern "js" fn JsValue::to_pointer_event(self : JsValue) -> PointerEvent =
  #| (self) => self

///|
pub extern "js" fn PointerEvent::to_mouse_event(
  self : PointerEvent,
) -> MouseEvent =
  #| (self) => self

///|
pub extern "js" fn PointerEvent::to_ui_event(self : PointerEvent) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn PointerEvent::to_event(self : PointerEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn PointerEvent::new(type_ : String) -> PointerEvent =
  #| (type_) => new PointerEvent(type_)

///|
extern "js" fn PointerEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> PointerEvent =
  #| (type_, event_init_dict) => new PointerEvent(type_, event_init_dict)

///|
pub fn PointerEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : PointerEventInit,
) -> PointerEvent {
  PointerEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn PointerEvent::get_pointer_id(self : PointerEvent) -> Int =
  #| (self) => self.pointerId

///|
pub extern "js" fn PointerEvent::get_width(self : PointerEvent) -> Double =
  #| (self) => self.width

///|
pub extern "js" fn PointerEvent::get_height(self : PointerEvent) -> Double =
  #| (self) => self.height

///|
pub extern "js" fn PointerEvent::get_pressure(self : PointerEvent) -> Double =
  #| (self) => self.pressure

///|
pub extern "js" fn PointerEvent::get_tangential_pressure(
  self : PointerEvent,
) -> Double =
  #| (self) => self.tangentialPressure

///|
pub extern "js" fn PointerEvent::get_tilt_x(self : PointerEvent) -> Int =
  #| (self) => self.tiltX

///|
pub extern "js" fn PointerEvent::get_tilt_y(self : PointerEvent) -> Int =
  #| (self) => self.tiltY

///|
pub extern "js" fn PointerEvent::get_twist(self : PointerEvent) -> Int =
  #| (self) => self.twist

///|
pub extern "js" fn PointerEvent::get_altitude_angle(
  self : PointerEvent,
) -> Double =
  #| (self) => self.altitudeAngle

///|
pub extern "js" fn PointerEvent::get_azimuth_angle(
  self : PointerEvent,
) -> Double =
  #| (self) => self.azimuthAngle

///|
pub extern "js" fn PointerEvent::get_pointer_type(
  self : PointerEvent,
) -> String =
  #| (self) => self.pointerType

///|
pub extern "js" fn PointerEvent::get_is_primary(self : PointerEvent) -> Bool =
  #| (self) => self.isPrimary

///|
pub extern "js" fn PointerEvent::get_persistent_device_id(
  self : PointerEvent,
) -> Int =
  #| (self) => self.persistentDeviceId

///|
pub extern "js" fn PointerEvent::get_coalesced_events(
  self : PointerEvent,
) -> FixedArray[PointerEvent] =
  #| (self) => self.getCoalescedEvents()

///|
pub extern "js" fn PointerEvent::get_predicted_events(
  self : PointerEvent,
) -> FixedArray[PointerEvent] =
  #| (self) => self.getPredictedEvents()

///|
/// WheelEvent interface
pub type WheelEvent

///|
pub extern "js" fn WheelEvent::to_js_value(self : WheelEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to WheelEvent (unchecked)
pub extern "js" fn WheelEvent::from_js_value(v : JsValue) -> WheelEvent =
  #| (v) => v

///|
/// Safely cast JsValue to WheelEvent (checked with instanceof)
pub extern "js" fn WheelEvent::from_js_value_opt(v : JsValue) -> WheelEvent? =
  #| (v) => (v instanceof WheelEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to WheelEvent (checked with instanceof)
pub extern "js" fn JsValue::as_wheel_event(self : JsValue) -> WheelEvent? =
  #| (self) => (self instanceof WheelEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to WheelEvent (unchecked)
pub extern "js" fn JsValue::to_wheel_event(self : JsValue) -> WheelEvent =
  #| (self) => self

///|
pub extern "js" fn WheelEvent::to_mouse_event(self : WheelEvent) -> MouseEvent =
  #| (self) => self

///|
pub extern "js" fn WheelEvent::to_ui_event(self : WheelEvent) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn WheelEvent::to_event(self : WheelEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn WheelEvent::new(type_ : String) -> WheelEvent =
  #| (type_) => new WheelEvent(type_)

///|
extern "js" fn WheelEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> WheelEvent =
  #| (type_, event_init_dict) => new WheelEvent(type_, event_init_dict)

///|
pub fn WheelEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : WheelEventInit,
) -> WheelEvent {
  WheelEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

// WheelEvent.DOM_DELTA_PIXEL

///|
pub let wheel_event_dom_delta_pixel : Int = 0x00

// WheelEvent.DOM_DELTA_LINE

///|
pub let wheel_event_dom_delta_line : Int = 0x01

// WheelEvent.DOM_DELTA_PAGE

///|
pub let wheel_event_dom_delta_page : Int = 0x02

///|
pub extern "js" fn WheelEvent::get_delta_x(self : WheelEvent) -> Double =
  #| (self) => self.deltaX

///|
pub extern "js" fn WheelEvent::get_delta_y(self : WheelEvent) -> Double =
  #| (self) => self.deltaY

///|
pub extern "js" fn WheelEvent::get_delta_z(self : WheelEvent) -> Double =
  #| (self) => self.deltaZ

///|
pub extern "js" fn WheelEvent::get_delta_mode(self : WheelEvent) -> Int =
  #| (self) => self.deltaMode
