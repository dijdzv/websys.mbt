// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/generic-sensor

///|
/// SensorOptions dictionary
pub(all) struct SensorOptions {
  frequency : Double?
}

///|
/// Create a new SensorOptions with default values
pub fn SensorOptions::default() -> SensorOptions {
  SensorOptions::{ frequency: None }
}

///|
extern "js" fn SensorOptions::to_js_ffi(self : SensorOptions) -> JsValue =
  #| (self) => ({
  #|   frequency: self.frequency
  #| })

///|
/// Convert to JsValue
pub fn SensorOptions::to_js(self : SensorOptions) -> JsValue {
  SensorOptions::to_js_ffi(self)
}

///|
/// SensorErrorEventInit dictionary
pub(all) struct SensorErrorEventInit {
  error : DOMException
}

///|
/// Create a new SensorErrorEventInit
pub fn SensorErrorEventInit::new(error~ : DOMException) -> SensorErrorEventInit {
  SensorErrorEventInit::{ error, }
}

///|
extern "js" fn SensorErrorEventInit::to_js_ffi(
  self : SensorErrorEventInit,
) -> JsValue =
  #| (self) => ({
  #|   error: self.error
  #| })

///|
/// Convert to JsValue
pub fn SensorErrorEventInit::to_js(self : SensorErrorEventInit) -> JsValue {
  SensorErrorEventInit::to_js_ffi(self)
}

///|
/// Sensor interface
pub type Sensor

///|
pub extern "js" fn Sensor::to_js_value(self : Sensor) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Sensor (unchecked)
pub extern "js" fn Sensor::from_js_value(v : JsValue) -> Sensor =
  #| (v) => v

///|
/// Safely cast JsValue to Sensor (checked with instanceof)
pub extern "js" fn Sensor::from_js_value_opt(v : JsValue) -> Sensor? =
  #| (v) => (v instanceof Sensor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Sensor (checked with instanceof)
pub extern "js" fn JsValue::as_sensor(self : JsValue) -> Sensor? =
  #| (self) => (self instanceof Sensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Sensor (unchecked)
pub extern "js" fn JsValue::to_sensor(self : JsValue) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn Sensor::to_event_target(self : Sensor) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Sensor::as_magnetometer(self : Sensor) -> Magnetometer? =
  #| (self) => (self instanceof Magnetometer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::as_uncalibrated_magnetometer(
  self : Sensor,
) -> UncalibratedMagnetometer? =
  #| (self) => (self instanceof UncalibratedMagnetometer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::as_proximity_sensor(
  self : Sensor,
) -> ProximitySensor? =
  #| (self) => (self instanceof ProximitySensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::as_gyroscope(self : Sensor) -> Gyroscope? =
  #| (self) => (self instanceof Gyroscope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::as_geolocation_sensor(
  self : Sensor,
) -> GeolocationSensor? =
  #| (self) => (self instanceof GeolocationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::as_orientation_sensor(
  self : Sensor,
) -> OrientationSensor? =
  #| (self) => (self instanceof OrientationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::as_absolute_orientation_sensor(
  self : Sensor,
) -> AbsoluteOrientationSensor? =
  #| (self) => (self instanceof AbsoluteOrientationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::as_relative_orientation_sensor(
  self : Sensor,
) -> RelativeOrientationSensor? =
  #| (self) => (self instanceof RelativeOrientationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::as_ambient_light_sensor(
  self : Sensor,
) -> AmbientLightSensor? =
  #| (self) => (self instanceof AmbientLightSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::as_accelerometer(self : Sensor) -> Accelerometer? =
  #| (self) => (self instanceof Accelerometer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::as_linear_acceleration_sensor(
  self : Sensor,
) -> LinearAccelerationSensor? =
  #| (self) => (self instanceof LinearAccelerationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::as_gravity_sensor(self : Sensor) -> GravitySensor? =
  #| (self) => (self instanceof GravitySensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Sensor::get_activated(self : Sensor) -> Bool =
  #| (self) => self.activated

///|
pub extern "js" fn Sensor::get_has_reading(self : Sensor) -> Bool =
  #| (self) => self.hasReading

///|
pub extern "js" fn Sensor::get_timestamp(self : Sensor) -> DOMHighResTimeStamp? =
  #| (self) => (() => { const v = self.timestamp; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Sensor::start(self : Sensor) -> Unit =
  #| (self) => self.start()

///|
pub extern "js" fn Sensor::stop(self : Sensor) -> Unit =
  #| (self) => self.stop()

///|
pub extern "js" fn Sensor::get_onreading(self : Sensor) -> EventHandler =
  #| (self) => self.onreading

///|
pub extern "js" fn Sensor::set_onreading(
  self : Sensor,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreading = value }

///|
pub extern "js" fn Sensor::get_onactivate(self : Sensor) -> EventHandler =
  #| (self) => self.onactivate

///|
pub extern "js" fn Sensor::set_onactivate(
  self : Sensor,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onactivate = value }

///|
pub extern "js" fn Sensor::get_onerror(self : Sensor) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn Sensor::set_onerror(
  self : Sensor,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// SensorErrorEvent interface
pub type SensorErrorEvent

///|
pub extern "js" fn SensorErrorEvent::to_js_value(
  self : SensorErrorEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SensorErrorEvent (unchecked)
pub extern "js" fn SensorErrorEvent::from_js_value(
  v : JsValue,
) -> SensorErrorEvent =
  #| (v) => v

///|
/// Safely cast JsValue to SensorErrorEvent (checked with instanceof)
pub extern "js" fn SensorErrorEvent::from_js_value_opt(
  v : JsValue,
) -> SensorErrorEvent? =
  #| (v) => (v instanceof SensorErrorEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SensorErrorEvent (checked with instanceof)
pub extern "js" fn JsValue::as_sensor_error_event(
  self : JsValue,
) -> SensorErrorEvent? =
  #| (self) => (self instanceof SensorErrorEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SensorErrorEvent (unchecked)
pub extern "js" fn JsValue::to_sensor_error_event(
  self : JsValue,
) -> SensorErrorEvent =
  #| (self) => self

///|
pub extern "js" fn SensorErrorEvent::to_event(self : SensorErrorEvent) -> Event =
  #| (self) => self

///|
extern "js" fn SensorErrorEvent::new_ffi(
  type_ : String,
  error_event_init_dict : JsValue,
) -> SensorErrorEvent =
  #| (type_, error_event_init_dict) => new SensorErrorEvent(type_, error_event_init_dict)

///|
pub fn SensorErrorEvent::new(
  type_ : String,
  error_event_init_dict : SensorErrorEventInit,
) -> SensorErrorEvent {
  SensorErrorEvent::new_ffi(type_, error_event_init_dict.to_js())
}

///|
pub extern "js" fn SensorErrorEvent::get_error(
  self : SensorErrorEvent,
) -> DOMException =
  #| (self) => self.error
