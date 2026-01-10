// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/accelerometer

///|
/// AccelerometerLocalCoordinateSystem enum
pub(all) enum AccelerometerLocalCoordinateSystem {
  Device
  Screen
}

///|
/// Convert to string value
pub fn AccelerometerLocalCoordinateSystem::to_string(
  self : AccelerometerLocalCoordinateSystem,
) -> String {
  match self {
    AccelerometerLocalCoordinateSystem::Device => "device"
    AccelerometerLocalCoordinateSystem::Screen => "screen"
  }
}

///|
/// Parse from string value
pub fn AccelerometerLocalCoordinateSystem::from_string(
  s : String,
) -> AccelerometerLocalCoordinateSystem? {
  match s {
    "device" => Some(AccelerometerLocalCoordinateSystem::Device)
    "screen" => Some(AccelerometerLocalCoordinateSystem::Screen)
    _ => None
  }
}

///|
/// AccelerometerSensorOptions dictionary
pub struct AccelerometerSensorOptions {
  referenceFrame : AccelerometerLocalCoordinateSystem?
}

///|
/// Create a new AccelerometerSensorOptions with default values
pub fn AccelerometerSensorOptions::default() -> AccelerometerSensorOptions {
  AccelerometerSensorOptions::{ referenceFrame: None }
}

///|
/// Convert to JsValue
pub extern "js" fn AccelerometerSensorOptions::to_js(
  self : AccelerometerSensorOptions,
) -> JsValue =
  #| (self) => ({
  #|   referenceFrame: ['device', 'screen'][self.referenceFrame]
  #| })

///|
/// Accelerometer interface
pub type Accelerometer

///|
pub extern "js" fn Accelerometer::to_js_value(self : Accelerometer) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Accelerometer::new(
  options : AccelerometerSensorOptions,
) -> Accelerometer =
  #| (options) => new Accelerometer(options)

///|
pub extern "js" fn Accelerometer::get_x(self : Accelerometer) -> Double? =
  #| (self) => self.x

///|
pub extern "js" fn Accelerometer::get_y(self : Accelerometer) -> Double? =
  #| (self) => self.y

///|
pub extern "js" fn Accelerometer::get_z(self : Accelerometer) -> Double? =
  #| (self) => self.z

///|
/// LinearAccelerationSensor interface
pub type LinearAccelerationSensor

///|
pub extern "js" fn LinearAccelerationSensor::to_js_value(
  self : LinearAccelerationSensor,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn LinearAccelerationSensor::new(
  options : AccelerometerSensorOptions,
) -> LinearAccelerationSensor =
  #| (options) => new LinearAccelerationSensor(options)

///|
pub extern "js" fn LinearAccelerationSensor::get_x(
  self : LinearAccelerationSensor,
) -> Double? =
  #| (self) => self.x

///|
pub extern "js" fn LinearAccelerationSensor::get_y(
  self : LinearAccelerationSensor,
) -> Double? =
  #| (self) => self.y

///|
pub extern "js" fn LinearAccelerationSensor::get_z(
  self : LinearAccelerationSensor,
) -> Double? =
  #| (self) => self.z

///|
/// GravitySensor interface
pub type GravitySensor

///|
pub extern "js" fn GravitySensor::to_js_value(self : GravitySensor) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn GravitySensor::new(
  options : AccelerometerSensorOptions,
) -> GravitySensor =
  #| (options) => new GravitySensor(options)

///|
pub extern "js" fn GravitySensor::get_x(self : GravitySensor) -> Double? =
  #| (self) => self.x

///|
pub extern "js" fn GravitySensor::get_y(self : GravitySensor) -> Double? =
  #| (self) => self.y

///|
pub extern "js" fn GravitySensor::get_z(self : GravitySensor) -> Double? =
  #| (self) => self.z
