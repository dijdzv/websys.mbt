// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/orientation-event

///|
/// DeviceOrientationEventInit dictionary
pub struct DeviceOrientationEventInit {
  alpha : Double??
  beta : Double??
  gamma : Double??
  absolute : Bool?
}

/// Create a new DeviceOrientationEventInit with default values
pub fn DeviceOrientationEventInit::default() -> DeviceOrientationEventInit {
  DeviceOrientationEventInit::{
    alpha: None,
    beta: None,
    gamma: None,
    absolute: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DeviceOrientationEventInit::to_js(self : DeviceOrientationEventInit) -> JsValue =
  #| (self) => ({
  #|   alpha: self.alpha,
  #|   beta: self.beta,
  #|   gamma: self.gamma,
  #|   absolute: self.absolute
  #| })

///|
/// DeviceMotionEventAccelerationInit dictionary
pub struct DeviceMotionEventAccelerationInit {
  x : Double??
  y : Double??
  z : Double??
}

/// Create a new DeviceMotionEventAccelerationInit with default values
pub fn DeviceMotionEventAccelerationInit::default() -> DeviceMotionEventAccelerationInit {
  DeviceMotionEventAccelerationInit::{
    x: None,
    y: None,
    z: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DeviceMotionEventAccelerationInit::to_js(self : DeviceMotionEventAccelerationInit) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y,
  #|   z: self.z
  #| })

///|
/// DeviceMotionEventRotationRateInit dictionary
pub struct DeviceMotionEventRotationRateInit {
  alpha : Double??
  beta : Double??
  gamma : Double??
}

/// Create a new DeviceMotionEventRotationRateInit with default values
pub fn DeviceMotionEventRotationRateInit::default() -> DeviceMotionEventRotationRateInit {
  DeviceMotionEventRotationRateInit::{
    alpha: None,
    beta: None,
    gamma: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DeviceMotionEventRotationRateInit::to_js(self : DeviceMotionEventRotationRateInit) -> JsValue =
  #| (self) => ({
  #|   alpha: self.alpha,
  #|   beta: self.beta,
  #|   gamma: self.gamma
  #| })

///|
/// DeviceMotionEventInit dictionary
pub struct DeviceMotionEventInit {
  acceleration : DeviceMotionEventAccelerationInit?
  accelerationIncludingGravity : DeviceMotionEventAccelerationInit?
  rotationRate : DeviceMotionEventRotationRateInit?
  interval : Double?
}

/// Create a new DeviceMotionEventInit with default values
pub fn DeviceMotionEventInit::default() -> DeviceMotionEventInit {
  DeviceMotionEventInit::{
    acceleration: None,
    accelerationIncludingGravity: None,
    rotationRate: None,
    interval: None,
  }
}

/// Convert to JsValue
pub extern "js" fn DeviceMotionEventInit::to_js(self : DeviceMotionEventInit) -> JsValue =
  #| (self) => ({
  #|   acceleration: self.acceleration,
  #|   accelerationIncludingGravity: self.accelerationIncludingGravity,
  #|   rotationRate: self.rotationRate,
  #|   interval: self.interval
  #| })

///|
/// DeviceOrientationEvent interface
pub type DeviceOrientationEvent

pub extern "js" fn DeviceOrientationEvent::to_js_value(self : DeviceOrientationEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn DeviceOrientationEvent::new(type_ : String, event_init_dict : DeviceOrientationEventInit) -> DeviceOrientationEvent =
  #| (type_, event_init_dict) => new DeviceOrientationEvent(type_, event_init_dict)

pub extern "js" fn DeviceOrientationEvent::get_alpha(self : DeviceOrientationEvent) -> Double? =
  #| (self) => self.alpha

pub extern "js" fn DeviceOrientationEvent::get_beta(self : DeviceOrientationEvent) -> Double? =
  #| (self) => self.beta

pub extern "js" fn DeviceOrientationEvent::get_gamma(self : DeviceOrientationEvent) -> Double? =
  #| (self) => self.gamma

pub extern "js" fn DeviceOrientationEvent::get_absolute(self : DeviceOrientationEvent) -> Bool =
  #| (self) => self.absolute

pub extern "js" fn DeviceOrientationEvent::request_permission(absolute : Bool) -> JsValue =
  #| (absolute) => DeviceOrientationEvent.requestPermission(absolute)

///|
/// DeviceMotionEventAcceleration interface
pub type DeviceMotionEventAcceleration

pub extern "js" fn DeviceMotionEventAcceleration::to_js_value(self : DeviceMotionEventAcceleration) -> JsValue =
  #| (self) => self

pub extern "js" fn DeviceMotionEventAcceleration::get_x(self : DeviceMotionEventAcceleration) -> Double? =
  #| (self) => self.x

pub extern "js" fn DeviceMotionEventAcceleration::get_y(self : DeviceMotionEventAcceleration) -> Double? =
  #| (self) => self.y

pub extern "js" fn DeviceMotionEventAcceleration::get_z(self : DeviceMotionEventAcceleration) -> Double? =
  #| (self) => self.z

///|
/// DeviceMotionEventRotationRate interface
pub type DeviceMotionEventRotationRate

pub extern "js" fn DeviceMotionEventRotationRate::to_js_value(self : DeviceMotionEventRotationRate) -> JsValue =
  #| (self) => self

pub extern "js" fn DeviceMotionEventRotationRate::get_alpha(self : DeviceMotionEventRotationRate) -> Double? =
  #| (self) => self.alpha

pub extern "js" fn DeviceMotionEventRotationRate::get_beta(self : DeviceMotionEventRotationRate) -> Double? =
  #| (self) => self.beta

pub extern "js" fn DeviceMotionEventRotationRate::get_gamma(self : DeviceMotionEventRotationRate) -> Double? =
  #| (self) => self.gamma

///|
/// DeviceMotionEvent interface
pub type DeviceMotionEvent

pub extern "js" fn DeviceMotionEvent::to_js_value(self : DeviceMotionEvent) -> JsValue =
  #| (self) => self

pub extern "js" fn DeviceMotionEvent::new(type_ : String, event_init_dict : DeviceMotionEventInit) -> DeviceMotionEvent =
  #| (type_, event_init_dict) => new DeviceMotionEvent(type_, event_init_dict)

pub extern "js" fn DeviceMotionEvent::get_acceleration(self : DeviceMotionEvent) -> DeviceMotionEventAcceleration? =
  #| (self) => self.acceleration

pub extern "js" fn DeviceMotionEvent::get_acceleration_including_gravity(self : DeviceMotionEvent) -> DeviceMotionEventAcceleration? =
  #| (self) => self.accelerationIncludingGravity

pub extern "js" fn DeviceMotionEvent::get_rotation_rate(self : DeviceMotionEvent) -> DeviceMotionEventRotationRate? =
  #| (self) => self.rotationRate

pub extern "js" fn DeviceMotionEvent::get_interval(self : DeviceMotionEvent) -> Double =
  #| (self) => self.interval

pub extern "js" fn DeviceMotionEvent::request_permission() -> JsValue =
  #| () => DeviceMotionEvent.requestPermission()

