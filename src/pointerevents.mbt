// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/pointerevents

///|
/// PointerEventInit dictionary
pub struct PointerEventInit {
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
  coalescedEvents : Array[PointerEvent]?
  predictedEvents : Array[PointerEvent]?
}

///|
/// Create a new PointerEventInit with default values
pub fn PointerEventInit::default() -> PointerEventInit {
  PointerEventInit::{
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
/// Convert to JsValue
pub extern "js" fn PointerEventInit::to_js(self : PointerEventInit) -> JsValue =
  #| (self) => ({
  #|   pointerId: self.pointerId,
  #|   width: self.width,
  #|   height: self.height,
  #|   pressure: self.pressure,
  #|   tangentialPressure: self.tangentialPressure,
  #|   tiltX: self.tiltX,
  #|   tiltY: self.tiltY,
  #|   twist: self.twist,
  #|   altitudeAngle: self.altitudeAngle,
  #|   azimuthAngle: self.azimuthAngle,
  #|   pointerType: self.pointerType,
  #|   isPrimary: self.isPrimary,
  #|   persistentDeviceId: self.persistentDeviceId,
  #|   coalescedEvents: self.coalescedEvents,
  #|   predictedEvents: self.predictedEvents
  #| })

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
pub extern "js" fn PointerEvent::new(
  type_ : String,
  event_init_dict : PointerEventInit,
) -> PointerEvent =
  #| (type_, event_init_dict) => new PointerEvent(type_, event_init_dict)

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
) -> Array[PointerEvent] =
  #| (self) => self.getCoalescedEvents()

///|
pub extern "js" fn PointerEvent::get_predicted_events(
  self : PointerEvent,
) -> Array[PointerEvent] =
  #| (self) => self.getPredictedEvents()
