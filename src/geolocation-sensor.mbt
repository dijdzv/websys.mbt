// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/geolocation-sensor

///|
/// GeolocationSensorOptions dictionary
pub(all) struct GeolocationSensorOptions {}

///|
/// Create a new GeolocationSensorOptions with default values
pub fn GeolocationSensorOptions::default() -> GeolocationSensorOptions {
  GeolocationSensorOptions::{  }
}

///|
extern "js" fn GeolocationSensorOptions::to_js_ffi(
  self : GeolocationSensorOptions,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// Convert to JsValue
pub fn GeolocationSensorOptions::to_js(
  self : GeolocationSensorOptions,
) -> JsValue {
  GeolocationSensorOptions::to_js_ffi(self)
}

///|
extern "js" fn GeolocationSensorOptions::from_js_ffi(
  value : JsValue,
) -> GeolocationSensorOptions =
  #| (v) => ({
  #| })

///|
/// Convert from JsValue
pub fn GeolocationSensorOptions::from_js(
  value : JsValue,
) -> GeolocationSensorOptions {
  GeolocationSensorOptions::from_js_ffi(value)
}

///|
/// ReadOptions dictionary
pub(all) struct ReadOptions {
  signal : Nullable[AbortSignal]
}

///|
/// Create a new ReadOptions with default values
pub fn ReadOptions::default() -> ReadOptions {
  ReadOptions::{ signal: Nullable::Undefined }
}

///|
extern "js" fn ReadOptions::to_js_ffi(self : ReadOptions) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ReadOptions::to_js(self : ReadOptions) -> JsValue {
  ReadOptions::to_js_ffi(self)
}

///|
extern "js" fn ReadOptions::from_js_ffi(value : JsValue) -> ReadOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : v.signal === null ? { $tag: 1 } : { $tag: 2, _0: v.signal })
  #| })

///|
/// Convert from JsValue
pub fn ReadOptions::from_js(value : JsValue) -> ReadOptions {
  ReadOptions::from_js_ffi(value)
}

///|
/// GeolocationSensorReading dictionary
pub(all) struct GeolocationSensorReading {
  timestamp : Nullable[DOMHighResTimeStamp]
  latitude : Nullable[Double]
  longitude : Nullable[Double]
  altitude : Nullable[Double]
  accuracy : Nullable[Double]
  altitudeAccuracy : Nullable[Double]
  heading : Nullable[Double]
  speed : Nullable[Double]
}

///|
/// Create a new GeolocationSensorReading with default values
pub fn GeolocationSensorReading::default() -> GeolocationSensorReading {
  GeolocationSensorReading::{
    timestamp: Nullable::Undefined,
    latitude: Nullable::Undefined,
    longitude: Nullable::Undefined,
    altitude: Nullable::Undefined,
    accuracy: Nullable::Undefined,
    altitudeAccuracy: Nullable::Undefined,
    heading: Nullable::Undefined,
    speed: Nullable::Undefined,
  }
}

///|
extern "js" fn GeolocationSensorReading::to_js_ffi(
  self : GeolocationSensorReading,
) -> JsValue =
  #| (self) => ({
  #|   timestamp: ((() => { const v = self.timestamp; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   latitude: ((() => { const v = self.latitude; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   longitude: ((() => { const v = self.longitude; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   altitude: ((() => { const v = self.altitude; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   accuracy: ((() => { const v = self.accuracy; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   altitudeAccuracy: ((() => { const v = self.altitudeAccuracy; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   heading: ((() => { const v = self.heading; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })()),
  #|   speed: ((() => { const v = self.speed; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn GeolocationSensorReading::to_js(
  self : GeolocationSensorReading,
) -> JsValue {
  GeolocationSensorReading::to_js_ffi(self)
}

///|
extern "js" fn GeolocationSensorReading::from_js_ffi(
  value : JsValue,
) -> GeolocationSensorReading =
  #| (v) => ({
  #|   timestamp: (v.timestamp === undefined ? { $tag: 0 } : v.timestamp === null ? { $tag: 1 } : { $tag: 2, _0: v.timestamp }),
  #|   latitude: (v.latitude === undefined ? { $tag: 0 } : v.latitude === null ? { $tag: 1 } : { $tag: 2, _0: v.latitude }),
  #|   longitude: (v.longitude === undefined ? { $tag: 0 } : v.longitude === null ? { $tag: 1 } : { $tag: 2, _0: v.longitude }),
  #|   altitude: (v.altitude === undefined ? { $tag: 0 } : v.altitude === null ? { $tag: 1 } : { $tag: 2, _0: v.altitude }),
  #|   accuracy: (v.accuracy === undefined ? { $tag: 0 } : v.accuracy === null ? { $tag: 1 } : { $tag: 2, _0: v.accuracy }),
  #|   altitudeAccuracy: (v.altitudeAccuracy === undefined ? { $tag: 0 } : v.altitudeAccuracy === null ? { $tag: 1 } : { $tag: 2, _0: v.altitudeAccuracy }),
  #|   heading: (v.heading === undefined ? { $tag: 0 } : v.heading === null ? { $tag: 1 } : { $tag: 2, _0: v.heading }),
  #|   speed: (v.speed === undefined ? { $tag: 0 } : v.speed === null ? { $tag: 1 } : { $tag: 2, _0: v.speed })
  #| })

///|
/// Convert from JsValue
pub fn GeolocationSensorReading::from_js(
  value : JsValue,
) -> GeolocationSensorReading {
  GeolocationSensorReading::from_js_ffi(value)
}

///|
/// GeolocationSensor interface
pub type GeolocationSensor

///|
pub extern "js" fn GeolocationSensor::to_js_value(
  self : GeolocationSensor,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GeolocationSensor (unchecked)
pub extern "js" fn GeolocationSensor::from_js_value(
  v : JsValue,
) -> GeolocationSensor =
  #| (v) => v

///|
/// Safely cast JsValue to GeolocationSensor (checked with instanceof)
pub extern "js" fn GeolocationSensor::from_js_value_opt(
  v : JsValue,
) -> GeolocationSensor? =
  #| (v) => (v instanceof GeolocationSensor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GeolocationSensor (checked with instanceof)
pub extern "js" fn JsValue::as_geolocation_sensor(
  self : JsValue,
) -> GeolocationSensor? =
  #| (self) => (self instanceof GeolocationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GeolocationSensor (unchecked)
pub extern "js" fn JsValue::to_geolocation_sensor(
  self : JsValue,
) -> GeolocationSensor =
  #| (self) => self

///|
pub extern "js" fn GeolocationSensor::to_sensor(
  self : GeolocationSensor,
) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn GeolocationSensor::to_event_target(
  self : GeolocationSensor,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn GeolocationSensor::new() -> GeolocationSensor =
  #| () => new GeolocationSensor()

///|
extern "js" fn GeolocationSensor::new_with_options_ffi(
  options : JsValue,
) -> GeolocationSensor =
  #| (options) => new GeolocationSensor(options)

///|
pub fn GeolocationSensor::new_with_options(
  options : GeolocationSensorOptions,
) -> GeolocationSensor {
  GeolocationSensor::new_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn GeolocationSensor::read() -> Promise[
  GeolocationSensorReading,
] =
  #| () => GeolocationSensor.read().then(v => ({
  #|   timestamp: (v.timestamp === undefined ? { $tag: 0 } : v.timestamp === null ? { $tag: 1 } : { $tag: 2, _0: v.timestamp }),
  #|   latitude: (v.latitude === undefined ? { $tag: 0 } : v.latitude === null ? { $tag: 1 } : { $tag: 2, _0: v.latitude }),
  #|   longitude: (v.longitude === undefined ? { $tag: 0 } : v.longitude === null ? { $tag: 1 } : { $tag: 2, _0: v.longitude }),
  #|   altitude: (v.altitude === undefined ? { $tag: 0 } : v.altitude === null ? { $tag: 1 } : { $tag: 2, _0: v.altitude }),
  #|   accuracy: (v.accuracy === undefined ? { $tag: 0 } : v.accuracy === null ? { $tag: 1 } : { $tag: 2, _0: v.accuracy }),
  #|   altitudeAccuracy: (v.altitudeAccuracy === undefined ? { $tag: 0 } : v.altitudeAccuracy === null ? { $tag: 1 } : { $tag: 2, _0: v.altitudeAccuracy }),
  #|   heading: (v.heading === undefined ? { $tag: 0 } : v.heading === null ? { $tag: 1 } : { $tag: 2, _0: v.heading }),
  #|   speed: (v.speed === undefined ? { $tag: 0 } : v.speed === null ? { $tag: 1 } : { $tag: 2, _0: v.speed })
  #| }))

///|
extern "js" fn GeolocationSensor::read_with_read_options_ffi(
  read_options : JsValue,
) -> Promise[GeolocationSensorReading] =
  #| (read_options) => GeolocationSensor.read(read_options).then(v => ({
  #|   timestamp: (v.timestamp === undefined ? { $tag: 0 } : v.timestamp === null ? { $tag: 1 } : { $tag: 2, _0: v.timestamp }),
  #|   latitude: (v.latitude === undefined ? { $tag: 0 } : v.latitude === null ? { $tag: 1 } : { $tag: 2, _0: v.latitude }),
  #|   longitude: (v.longitude === undefined ? { $tag: 0 } : v.longitude === null ? { $tag: 1 } : { $tag: 2, _0: v.longitude }),
  #|   altitude: (v.altitude === undefined ? { $tag: 0 } : v.altitude === null ? { $tag: 1 } : { $tag: 2, _0: v.altitude }),
  #|   accuracy: (v.accuracy === undefined ? { $tag: 0 } : v.accuracy === null ? { $tag: 1 } : { $tag: 2, _0: v.accuracy }),
  #|   altitudeAccuracy: (v.altitudeAccuracy === undefined ? { $tag: 0 } : v.altitudeAccuracy === null ? { $tag: 1 } : { $tag: 2, _0: v.altitudeAccuracy }),
  #|   heading: (v.heading === undefined ? { $tag: 0 } : v.heading === null ? { $tag: 1 } : { $tag: 2, _0: v.heading }),
  #|   speed: (v.speed === undefined ? { $tag: 0 } : v.speed === null ? { $tag: 1 } : { $tag: 2, _0: v.speed })
  #| }))

///|
pub fn GeolocationSensor::read_with_read_options(
  read_options : ReadOptions,
) -> Promise[GeolocationSensorReading] {
  GeolocationSensor::read_with_read_options_ffi(read_options.to_js())
}

///|
pub extern "js" fn GeolocationSensor::get_latitude(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => (self.latitude) ?? undefined

///|
pub extern "js" fn GeolocationSensor::get_longitude(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => (self.longitude) ?? undefined

///|
pub extern "js" fn GeolocationSensor::get_altitude(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => (self.altitude) ?? undefined

///|
pub extern "js" fn GeolocationSensor::get_accuracy(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => (self.accuracy) ?? undefined

///|
pub extern "js" fn GeolocationSensor::get_altitude_accuracy(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => (self.altitudeAccuracy) ?? undefined

///|
pub extern "js" fn GeolocationSensor::get_heading(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => (self.heading) ?? undefined

///|
pub extern "js" fn GeolocationSensor::get_speed(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => (self.speed) ?? undefined
