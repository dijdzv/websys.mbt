// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/geolocation-sensor

///|
/// GeolocationSensorOptions dictionary
pub struct GeolocationSensorOptions {}

///|
/// Create a new GeolocationSensorOptions with default values
pub fn GeolocationSensorOptions::default() -> GeolocationSensorOptions {
  GeolocationSensorOptions::{  }
}

///|
/// Convert to JsValue
pub extern "js" fn GeolocationSensorOptions::to_js(
  self : GeolocationSensorOptions,
) -> JsValue =
  #| (self) => ({
  #| })

///|
/// ReadOptions dictionary
pub struct ReadOptions {
  signal : Nullable[AbortSignal]
}

///|
/// Create a new ReadOptions with default values
pub fn ReadOptions::default() -> ReadOptions {
  ReadOptions::{ signal: Nullable::Undefined }
}

///|
/// Convert to JsValue
pub extern "js" fn ReadOptions::to_js(self : ReadOptions) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

///|
/// GeolocationSensorReading dictionary
pub struct GeolocationSensorReading {
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
/// Convert to JsValue
pub extern "js" fn GeolocationSensorReading::to_js(
  self : GeolocationSensorReading,
) -> JsValue =
  #| (self) => ({
  #|   timestamp: ((() => { const v = self.timestamp; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   latitude: ((() => { const v = self.latitude; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   longitude: ((() => { const v = self.longitude; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   altitude: ((() => { const v = self.altitude; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   accuracy: ((() => { const v = self.accuracy; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   altitudeAccuracy: ((() => { const v = self.altitudeAccuracy; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   heading: ((() => { const v = self.heading; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   speed: ((() => { const v = self.speed; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })())
  #| })

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
pub extern "js" fn GeolocationSensor::new(
  options : GeolocationSensorOptions,
) -> GeolocationSensor =
  #| (options) => new GeolocationSensor(options)

///|
pub extern "js" fn GeolocationSensor::read(
  read_options : ReadOptions,
) -> Promise[GeolocationSensorReading] =
  #| (read_options) => GeolocationSensor.read(read_options)

///|
pub extern "js" fn GeolocationSensor::get_latitude(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => { const v = self.latitude; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn GeolocationSensor::get_longitude(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => { const v = self.longitude; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn GeolocationSensor::get_altitude(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => { const v = self.altitude; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn GeolocationSensor::get_accuracy(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => { const v = self.accuracy; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn GeolocationSensor::get_altitude_accuracy(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => { const v = self.altitudeAccuracy; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn GeolocationSensor::get_heading(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => { const v = self.heading; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn GeolocationSensor::get_speed(
  self : GeolocationSensor,
) -> Double? =
  #| (self) => { const v = self.speed; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }
