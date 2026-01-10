// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/gyroscope

///|
/// GyroscopeLocalCoordinateSystem enum
pub(all) enum GyroscopeLocalCoordinateSystem {
  Device
  Screen
}

///|
/// Convert to string value
pub fn GyroscopeLocalCoordinateSystem::to_string(
  self : GyroscopeLocalCoordinateSystem,
) -> String {
  match self {
    GyroscopeLocalCoordinateSystem::Device => "device"
    GyroscopeLocalCoordinateSystem::Screen => "screen"
  }
}

///|
/// Parse from string value
pub fn GyroscopeLocalCoordinateSystem::from_string(
  s : String,
) -> GyroscopeLocalCoordinateSystem? {
  match s {
    "device" => Some(GyroscopeLocalCoordinateSystem::Device)
    "screen" => Some(GyroscopeLocalCoordinateSystem::Screen)
    _ => None
  }
}

///|
/// GyroscopeSensorOptions dictionary
pub struct GyroscopeSensorOptions {
  referenceFrame : GyroscopeLocalCoordinateSystem?
}

///|
/// Create a new GyroscopeSensorOptions with default values
pub fn GyroscopeSensorOptions::default() -> GyroscopeSensorOptions {
  GyroscopeSensorOptions::{ referenceFrame: None }
}

///|
/// Convert to JsValue
pub extern "js" fn GyroscopeSensorOptions::to_js(
  self : GyroscopeSensorOptions,
) -> JsValue =
  #| (self) => ({
  #|   referenceFrame: ['device', 'screen'][self.referenceFrame]
  #| })

///|
/// Gyroscope interface
pub type Gyroscope

///|
pub extern "js" fn Gyroscope::to_js_value(self : Gyroscope) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Gyroscope::new(
  sensor_options : GyroscopeSensorOptions,
) -> Gyroscope =
  #| (sensor_options) => new Gyroscope(sensor_options)

///|
pub extern "js" fn Gyroscope::get_x(self : Gyroscope) -> Double? =
  #| (self) => self.x

///|
pub extern "js" fn Gyroscope::get_y(self : Gyroscope) -> Double? =
  #| (self) => self.y

///|
pub extern "js" fn Gyroscope::get_z(self : Gyroscope) -> Double? =
  #| (self) => self.z
