// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/touch-events

///|
/// TouchType enum
pub(all) enum TouchType {
  Direct
  Stylus
}

/// Convert to string value
pub fn TouchType::to_string(self : TouchType) -> String {
  match self {
    Direct => "direct"
    Stylus => "stylus"
  }
}

/// Parse from string value
pub fn TouchType::from_string(s : String) -> TouchType? {
  match s {
    "direct" => Some(Direct)
    "stylus" => Some(Stylus)
    _ => None
  }
}

///|
/// TouchInit dictionary
pub struct TouchInit {
  identifier : Int
  target : EventTarget
  clientX : Double?
  clientY : Double?
  screenX : Double?
  screenY : Double?
  pageX : Double?
  pageY : Double?
  radiusX : Double?
  radiusY : Double?
  rotationAngle : Double?
  force : Double?
  altitudeAngle : Double?
  azimuthAngle : Double?
  touchType : TouchType?
}

/// Create a new TouchInit with default values
pub fn TouchInit::default() -> TouchInit {
  TouchInit::{
    identifier: 0,
    target: panic(),
    clientX: None,
    clientY: None,
    screenX: None,
    screenY: None,
    pageX: None,
    pageY: None,
    radiusX: None,
    radiusY: None,
    rotationAngle: None,
    force: None,
    altitudeAngle: None,
    azimuthAngle: None,
    touchType: None,
  }
}

/// Convert to JsValue
pub extern "js" fn TouchInit::to_js(self : TouchInit) -> JsValue =
  #| (self) => ({
  #|   identifier: self.identifier,
  #|   target: self.target,
  #|   clientX: self.clientX,
  #|   clientY: self.clientY,
  #|   screenX: self.screenX,
  #|   screenY: self.screenY,
  #|   pageX: self.pageX,
  #|   pageY: self.pageY,
  #|   radiusX: self.radiusX,
  #|   radiusY: self.radiusY,
  #|   rotationAngle: self.rotationAngle,
  #|   force: self.force,
  #|   altitudeAngle: self.altitudeAngle,
  #|   azimuthAngle: self.azimuthAngle,
  #|   touchType: self.touchType
  #| })

///|
/// TouchEventInit dictionary
pub struct TouchEventInit {
  touches : Array[Touch]?
  targetTouches : Array[Touch]?
  changedTouches : Array[Touch]?
}

/// Create a new TouchEventInit with default values
pub fn TouchEventInit::default() -> TouchEventInit {
  TouchEventInit::{
    touches: None,
    targetTouches: None,
    changedTouches: None,
  }
}

/// Convert to JsValue
pub extern "js" fn TouchEventInit::to_js(self : TouchEventInit) -> JsValue =
  #| (self) => ({
  #|   touches: self.touches,
  #|   targetTouches: self.targetTouches,
  #|   changedTouches: self.changedTouches
  #| })

///|
/// Touch interface
pub type Touch

pub extern "js" fn Touch::to_js_value(self : Touch) -> JsValue =
  #| (self) => self

pub extern "js" fn Touch::new(touch_init_dict : TouchInit) -> Touch =
  #| (touch_init_dict) => new Touch(touch_init_dict)

pub extern "js" fn Touch::get_identifier(self : Touch) -> Int =
  #| (self) => self.identifier

pub extern "js" fn Touch::get_target(self : Touch) -> EventTarget =
  #| (self) => self.target

pub extern "js" fn Touch::get_screen_x(self : Touch) -> Double =
  #| (self) => self.screenX

pub extern "js" fn Touch::get_screen_y(self : Touch) -> Double =
  #| (self) => self.screenY

pub extern "js" fn Touch::get_client_x(self : Touch) -> Double =
  #| (self) => self.clientX

pub extern "js" fn Touch::get_client_y(self : Touch) -> Double =
  #| (self) => self.clientY

pub extern "js" fn Touch::get_page_x(self : Touch) -> Double =
  #| (self) => self.pageX

pub extern "js" fn Touch::get_page_y(self : Touch) -> Double =
  #| (self) => self.pageY

pub extern "js" fn Touch::get_radius_x(self : Touch) -> Double =
  #| (self) => self.radiusX

pub extern "js" fn Touch::get_radius_y(self : Touch) -> Double =
  #| (self) => self.radiusY

pub extern "js" fn Touch::get_rotation_angle(self : Touch) -> Double =
  #| (self) => self.rotationAngle

pub extern "js" fn Touch::get_force(self : Touch) -> Double =
  #| (self) => self.force

pub extern "js" fn Touch::get_altitude_angle(self : Touch) -> Double =
  #| (self) => self.altitudeAngle

pub extern "js" fn Touch::get_azimuth_angle(self : Touch) -> Double =
  #| (self) => self.azimuthAngle

pub extern "js" fn Touch::get_touch_type(self : Touch) -> TouchType =
  #| (self) => self.touchType

///|
/// TouchList interface
pub type TouchList

pub extern "js" fn TouchList::to_js_value(self : TouchList) -> JsValue =
  #| (self) => self

pub extern "js" fn TouchList::get_length(self : TouchList) -> Int =
  #| (self) => self.length

pub extern "js" fn TouchList::item(self : TouchList, index : Int) -> Touch? =
  #| (self, index) => self.item(index)

pub extern "js" fn TouchList::get(self : TouchList, index : Int) -> Touch? =
  #| (self, index) => self[index]

///|
/// TouchEvent interface
pub type TouchEvent

pub extern "js" fn TouchEvent::to_js_value(self : TouchEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn TouchEvent::new(type_ : String, event_init_dict : TouchEventInit) -> TouchEvent =
  #| (type_, event_init_dict) => new TouchEvent(type_, event_init_dict)

pub extern "js" fn TouchEvent::get_touches(self : TouchEvent) -> TouchList =
  #| (self) => self.touches

pub extern "js" fn TouchEvent::get_target_touches(self : TouchEvent) -> TouchList =
  #| (self) => self.targetTouches

pub extern "js" fn TouchEvent::get_changed_touches(self : TouchEvent) -> TouchList =
  #| (self) => self.changedTouches

pub extern "js" fn TouchEvent::get_alt_key(self : TouchEvent) -> Bool =
  #| (self) => self.altKey

pub extern "js" fn TouchEvent::get_meta_key(self : TouchEvent) -> Bool =
  #| (self) => self.metaKey

pub extern "js" fn TouchEvent::get_ctrl_key(self : TouchEvent) -> Bool =
  #| (self) => self.ctrlKey

pub extern "js" fn TouchEvent::get_shift_key(self : TouchEvent) -> Bool =
  #| (self) => self.shiftKey

pub extern "js" fn TouchEvent::get_modifier_state(self : TouchEvent, key_arg : String) -> Bool =
  #| (self, key_arg) => self.getModifierState(key_arg)

pub extern "js" fn TouchEvent::get_named(self : TouchEvent, key_arg : String) -> Bool =
  #| (self, key_arg) => self[key_arg]

