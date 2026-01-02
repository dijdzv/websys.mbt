// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/magnetometer

///|
/// MagnetometerLocalCoordinateSystem enum
pub(all) enum MagnetometerLocalCoordinateSystem {
  Device
  Screen
}

/// Convert to string value
pub fn MagnetometerLocalCoordinateSystem::to_string(self : MagnetometerLocalCoordinateSystem) -> String {
  match self {
    Device => "device"
    Screen => "screen"
  }
}

/// Parse from string value
pub fn MagnetometerLocalCoordinateSystem::from_string(s : String) -> MagnetometerLocalCoordinateSystem? {
  match s {
    "device" => Some(Device)
    "screen" => Some(Screen)
    _ => None
  }
}

///|
/// MagnetometerSensorOptions dictionary
pub struct MagnetometerSensorOptions {
  referenceFrame : MagnetometerLocalCoordinateSystem?
}

/// Create a new MagnetometerSensorOptions with default values
pub fn MagnetometerSensorOptions::default() -> MagnetometerSensorOptions {
  MagnetometerSensorOptions::{
    referenceFrame: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MagnetometerSensorOptions::to_js(self : MagnetometerSensorOptions) -> JsValue =
  #| (self) => ({
  #|   referenceFrame: self.referenceFrame
  #| })

///|
/// Magnetometer interface
pub type Magnetometer

pub extern "js" fn Magnetometer::to_js_value(self : Magnetometer) -> JsValue =
  #| (self) => self

pub extern "js" fn Magnetometer::new(sensor_options : MagnetometerSensorOptions) -> Magnetometer =
  #| (sensor_options) => new Magnetometer(sensor_options)

pub extern "js" fn Magnetometer::get_x(self : Magnetometer) -> Double? =
  #| (self) => self.x

pub extern "js" fn Magnetometer::get_y(self : Magnetometer) -> Double? =
  #| (self) => self.y

pub extern "js" fn Magnetometer::get_z(self : Magnetometer) -> Double? =
  #| (self) => self.z

///|
/// UncalibratedMagnetometer interface
pub type UncalibratedMagnetometer

pub extern "js" fn UncalibratedMagnetometer::to_js_value(self : UncalibratedMagnetometer) -> JsValue =
  #| (self) => self

pub extern "js" fn UncalibratedMagnetometer::new(sensor_options : MagnetometerSensorOptions) -> UncalibratedMagnetometer =
  #| (sensor_options) => new UncalibratedMagnetometer(sensor_options)

pub extern "js" fn UncalibratedMagnetometer::get_x(self : UncalibratedMagnetometer) -> Double? =
  #| (self) => self.x

pub extern "js" fn UncalibratedMagnetometer::get_y(self : UncalibratedMagnetometer) -> Double? =
  #| (self) => self.y

pub extern "js" fn UncalibratedMagnetometer::get_z(self : UncalibratedMagnetometer) -> Double? =
  #| (self) => self.z

pub extern "js" fn UncalibratedMagnetometer::get_x_bias(self : UncalibratedMagnetometer) -> Double? =
  #| (self) => self.xBias

pub extern "js" fn UncalibratedMagnetometer::get_y_bias(self : UncalibratedMagnetometer) -> Double? =
  #| (self) => self.yBias

pub extern "js" fn UncalibratedMagnetometer::get_z_bias(self : UncalibratedMagnetometer) -> Double? =
  #| (self) => self.zBias

