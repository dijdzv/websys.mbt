// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/touch-events

///|
/// TouchType enum
pub(all) enum TouchType {
  Direct
  Stylus
} derive(Eq, Show)

///|
/// Convert to string value
pub fn TouchType::to_string(self : TouchType) -> String {
  match self {
    TouchType::Direct => "direct"
    TouchType::Stylus => "stylus"
  }
}

///|
/// Parse from string value
pub fn TouchType::from_string(s : String) -> TouchType? {
  match s {
    "direct" => Some(TouchType::Direct)
    "stylus" => Some(TouchType::Stylus)
    _ => None
  }
}

///|
/// TouchInit dictionary
pub(all) struct TouchInit {
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

///|
/// Create a new TouchInit
pub fn TouchInit::new(target~ : EventTarget) -> TouchInit {
  TouchInit::{
    identifier: 0,
    target,
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

///|
extern "js" fn TouchInit::to_js_ffi(self : TouchInit) -> JsValue =
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
  #|   touchType: ((() => { const v = self.touchType; if (v === undefined) return undefined; return ['direct', 'stylus'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn TouchInit::to_js(self : TouchInit) -> JsValue {
  TouchInit::to_js_ffi(self)
}

///|
extern "js" fn TouchInit::from_js_ffi(value : JsValue) -> TouchInit =
  #| (v) => ({
  #|   identifier: v.identifier,
  #|   target: v.target,
  #|   clientX: v.clientX,
  #|   clientY: v.clientY,
  #|   screenX: v.screenX,
  #|   screenY: v.screenY,
  #|   pageX: v.pageX,
  #|   pageY: v.pageY,
  #|   radiusX: v.radiusX,
  #|   radiusY: v.radiusY,
  #|   rotationAngle: v.rotationAngle,
  #|   force: v.force,
  #|   altitudeAngle: v.altitudeAngle,
  #|   azimuthAngle: v.azimuthAngle,
  #|   touchType: (v.touchType === undefined ? undefined : ['direct', 'stylus'].indexOf(v.touchType))
  #| })

///|
/// Convert from JsValue
pub fn TouchInit::from_js(value : JsValue) -> TouchInit {
  TouchInit::from_js_ffi(value)
}

///|
/// TouchEventInit dictionary
pub(all) struct TouchEventInit {
  touches : Array[Touch]?
  targetTouches : Array[Touch]?
  changedTouches : Array[Touch]?
}

///|
/// Create a new TouchEventInit with default values
pub fn TouchEventInit::default() -> TouchEventInit {
  TouchEventInit::{ touches: None, targetTouches: None, changedTouches: None }
}

///|
extern "js" fn TouchEventInit::to_js_ffi(self : TouchEventInit) -> JsValue =
  #| (self) => ({
  #|   touches: ((() => { const v = self.touches; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   targetTouches: ((() => { const v = self.targetTouches; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   changedTouches: ((() => { const v = self.changedTouches; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn TouchEventInit::to_js(self : TouchEventInit) -> JsValue {
  TouchEventInit::to_js_ffi(self)
}

///|
extern "js" fn TouchEventInit::from_js_ffi(value : JsValue) -> TouchEventInit =
  #| (v) => ({
  #|   touches: (v.touches === undefined ? { $tag: 0 } : { $tag: 1, _0: v.touches }),
  #|   targetTouches: (v.targetTouches === undefined ? { $tag: 0 } : { $tag: 1, _0: v.targetTouches }),
  #|   changedTouches: (v.changedTouches === undefined ? { $tag: 0 } : { $tag: 1, _0: v.changedTouches })
  #| })

///|
/// Convert from JsValue
pub fn TouchEventInit::from_js(value : JsValue) -> TouchEventInit {
  TouchEventInit::from_js_ffi(value)
}

///|
/// Touch interface
pub type Touch

///|
pub extern "js" fn Touch::to_js_value(self : Touch) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Touch (unchecked)
pub extern "js" fn Touch::from_js_value(v : JsValue) -> Touch =
  #| (v) => v

///|
/// Safely cast JsValue to Touch (checked with instanceof)
pub extern "js" fn Touch::from_js_value_opt(v : JsValue) -> Touch? =
  #| (v) => (v instanceof Touch) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Touch (checked with instanceof)
pub extern "js" fn JsValue::as_touch(self : JsValue) -> Touch? =
  #| (self) => (self instanceof Touch) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Touch (unchecked)
pub extern "js" fn JsValue::to_touch(self : JsValue) -> Touch =
  #| (self) => self

///|
extern "js" fn Touch::new_ffi(touch_init_dict : JsValue) -> Touch =
  #| (touch_init_dict) => new Touch(touch_init_dict)

///|
pub fn Touch::new(touch_init_dict : TouchInit) -> Touch {
  Touch::new_ffi(touch_init_dict.to_js())
}

///|
pub extern "js" fn Touch::get_identifier(self : Touch) -> Int =
  #| (self) => self.identifier

///|
pub extern "js" fn Touch::get_target(self : Touch) -> EventTarget =
  #| (self) => self.target

///|
pub extern "js" fn Touch::get_screen_x(self : Touch) -> Double =
  #| (self) => self.screenX

///|
pub extern "js" fn Touch::get_screen_y(self : Touch) -> Double =
  #| (self) => self.screenY

///|
pub extern "js" fn Touch::get_client_x(self : Touch) -> Double =
  #| (self) => self.clientX

///|
pub extern "js" fn Touch::get_client_y(self : Touch) -> Double =
  #| (self) => self.clientY

///|
pub extern "js" fn Touch::get_page_x(self : Touch) -> Double =
  #| (self) => self.pageX

///|
pub extern "js" fn Touch::get_page_y(self : Touch) -> Double =
  #| (self) => self.pageY

///|
pub extern "js" fn Touch::get_radius_x(self : Touch) -> Double =
  #| (self) => self.radiusX

///|
pub extern "js" fn Touch::get_radius_y(self : Touch) -> Double =
  #| (self) => self.radiusY

///|
pub extern "js" fn Touch::get_rotation_angle(self : Touch) -> Double =
  #| (self) => self.rotationAngle

///|
pub extern "js" fn Touch::get_force(self : Touch) -> Double =
  #| (self) => self.force

///|
pub extern "js" fn Touch::get_altitude_angle(self : Touch) -> Double =
  #| (self) => self.altitudeAngle

///|
pub extern "js" fn Touch::get_azimuth_angle(self : Touch) -> Double =
  #| (self) => self.azimuthAngle

///|
pub extern "js" fn Touch::get_touch_type(self : Touch) -> TouchType =
  #| (self) => ['direct', 'stylus'].indexOf(self.touchType)

///|
/// TouchList interface
pub type TouchList

///|
pub extern "js" fn TouchList::to_js_value(self : TouchList) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TouchList (unchecked)
pub extern "js" fn TouchList::from_js_value(v : JsValue) -> TouchList =
  #| (v) => v

///|
/// Safely cast JsValue to TouchList (checked with instanceof)
pub extern "js" fn TouchList::from_js_value_opt(v : JsValue) -> TouchList? =
  #| (v) => (v instanceof TouchList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TouchList (checked with instanceof)
pub extern "js" fn JsValue::as_touch_list(self : JsValue) -> TouchList? =
  #| (self) => (self instanceof TouchList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TouchList (unchecked)
pub extern "js" fn JsValue::to_touch_list(self : JsValue) -> TouchList =
  #| (self) => self

///|
pub extern "js" fn TouchList::get_length(self : TouchList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn TouchList::item(self : TouchList, index : Int) -> Touch? =
  #| (self, index) => (() => { const v = self.item(index); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn TouchList::get(self : TouchList, index : Int) -> Touch? =
  #| (self, index) => (() => { const v = self[index]; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// TouchEvent interface
pub type TouchEvent

///|
pub extern "js" fn TouchEvent::to_js_value(self : TouchEvent) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TouchEvent (unchecked)
pub extern "js" fn TouchEvent::from_js_value(v : JsValue) -> TouchEvent =
  #| (v) => v

///|
/// Safely cast JsValue to TouchEvent (checked with instanceof)
pub extern "js" fn TouchEvent::from_js_value_opt(v : JsValue) -> TouchEvent? =
  #| (v) => (v instanceof TouchEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TouchEvent (checked with instanceof)
pub extern "js" fn JsValue::as_touch_event(self : JsValue) -> TouchEvent? =
  #| (self) => (self instanceof TouchEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TouchEvent (unchecked)
pub extern "js" fn JsValue::to_touch_event(self : JsValue) -> TouchEvent =
  #| (self) => self

///|
pub extern "js" fn TouchEvent::to_ui_event(self : TouchEvent) -> UIEvent =
  #| (self) => self

///|
pub extern "js" fn TouchEvent::to_event(self : TouchEvent) -> Event =
  #| (self) => self

///|
pub extern "js" fn TouchEvent::new(type_ : String) -> TouchEvent =
  #| (type_) => new TouchEvent(type_)

///|
extern "js" fn TouchEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> TouchEvent =
  #| (type_, event_init_dict) => new TouchEvent(type_, event_init_dict)

///|
pub fn TouchEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : TouchEventInit,
) -> TouchEvent {
  TouchEvent::new_with_event_init_dict_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn TouchEvent::get_touches(self : TouchEvent) -> TouchList =
  #| (self) => self.touches

///|
pub extern "js" fn TouchEvent::get_target_touches(
  self : TouchEvent,
) -> TouchList =
  #| (self) => self.targetTouches

///|
pub extern "js" fn TouchEvent::get_changed_touches(
  self : TouchEvent,
) -> TouchList =
  #| (self) => self.changedTouches

///|
pub extern "js" fn TouchEvent::get_alt_key(self : TouchEvent) -> Bool =
  #| (self) => self.altKey

///|
pub extern "js" fn TouchEvent::get_meta_key(self : TouchEvent) -> Bool =
  #| (self) => self.metaKey

///|
pub extern "js" fn TouchEvent::get_ctrl_key(self : TouchEvent) -> Bool =
  #| (self) => self.ctrlKey

///|
pub extern "js" fn TouchEvent::get_shift_key(self : TouchEvent) -> Bool =
  #| (self) => self.shiftKey

///|
pub extern "js" fn TouchEvent::get_modifier_state(
  self : TouchEvent,
  key_arg : String,
) -> Bool =
  #| (self, key_arg) => self.getModifierState(key_arg)

///|
pub extern "js" fn TouchEvent::get_named(
  self : TouchEvent,
  key_arg : String,
) -> Bool =
  #| (self, key_arg) => self[key_arg]
