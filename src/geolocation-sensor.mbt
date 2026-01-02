// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/geolocation-sensor

///|
/// GeolocationSensorOptions dictionary
pub struct GeolocationSensorOptions {
}

/// Create a new GeolocationSensorOptions with default values
pub fn GeolocationSensorOptions::default() -> GeolocationSensorOptions {
  GeolocationSensorOptions::{
  }
}

/// Convert to JsValue
pub extern "js" fn GeolocationSensorOptions::to_js(self : GeolocationSensorOptions) -> JsValue =
  #| (self) => ({
  #| })

///|
/// ReadOptions dictionary
pub struct ReadOptions {
  signal : AbortSignal??
}

/// Create a new ReadOptions with default values
pub fn ReadOptions::default() -> ReadOptions {
  ReadOptions::{
    signal: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ReadOptions::to_js(self : ReadOptions) -> JsValue =
  #| (self) => ({
  #|   signal: self.signal
  #| })

///|
/// GeolocationSensorReading dictionary
pub struct GeolocationSensorReading {
  timestamp : DOMHighResTimeStamp??
  latitude : Double??
  longitude : Double??
  altitude : Double??
  accuracy : Double??
  altitudeAccuracy : Double??
  heading : Double??
  speed : Double??
}

/// Create a new GeolocationSensorReading with default values
pub fn GeolocationSensorReading::default() -> GeolocationSensorReading {
  GeolocationSensorReading::{
    timestamp: None,
    latitude: None,
    longitude: None,
    altitude: None,
    accuracy: None,
    altitudeAccuracy: None,
    heading: None,
    speed: None,
  }
}

/// Convert to JsValue
pub extern "js" fn GeolocationSensorReading::to_js(self : GeolocationSensorReading) -> JsValue =
  #| (self) => ({
  #|   timestamp: self.timestamp,
  #|   latitude: self.latitude,
  #|   longitude: self.longitude,
  #|   altitude: self.altitude,
  #|   accuracy: self.accuracy,
  #|   altitudeAccuracy: self.altitudeAccuracy,
  #|   heading: self.heading,
  #|   speed: self.speed
  #| })

///|
/// GeolocationSensor interface
pub type GeolocationSensor

pub extern "js" fn GeolocationSensor::to_js_value(self : GeolocationSensor) -> JsValue =
  #| (self) => self

pub extern "js" fn GeolocationSensor::new(options : GeolocationSensorOptions) -> GeolocationSensor =
  #| (options) => new GeolocationSensor(options)

pub extern "js" fn GeolocationSensor::read(read_options : ReadOptions) -> JsValue =
  #| (read_options) => GeolocationSensor.read(read_options)

pub extern "js" fn GeolocationSensor::get_latitude(self : GeolocationSensor) -> Double? =
  #| (self) => self.latitude

pub extern "js" fn GeolocationSensor::get_longitude(self : GeolocationSensor) -> Double? =
  #| (self) => self.longitude

pub extern "js" fn GeolocationSensor::get_altitude(self : GeolocationSensor) -> Double? =
  #| (self) => self.altitude

pub extern "js" fn GeolocationSensor::get_accuracy(self : GeolocationSensor) -> Double? =
  #| (self) => self.accuracy

pub extern "js" fn GeolocationSensor::get_altitude_accuracy(self : GeolocationSensor) -> Double? =
  #| (self) => self.altitudeAccuracy

pub extern "js" fn GeolocationSensor::get_heading(self : GeolocationSensor) -> Double? =
  #| (self) => self.heading

pub extern "js" fn GeolocationSensor::get_speed(self : GeolocationSensor) -> Double? =
  #| (self) => self.speed

