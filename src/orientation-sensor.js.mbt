// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/orientation-sensor

///|
/// RotationMatrixType typedef
pub type RotationMatrixType = JsValue

///|
/// OrientationSensorLocalCoordinateSystem enum
pub(all) enum OrientationSensorLocalCoordinateSystem {
  Device
  Screen
}

/// Convert to string value
pub fn OrientationSensorLocalCoordinateSystem::to_string(self : OrientationSensorLocalCoordinateSystem) -> String {
  match self {
    Device => "device"
    Screen => "screen"
  }
}

/// Parse from string value
pub fn OrientationSensorLocalCoordinateSystem::from_string(s : String) -> OrientationSensorLocalCoordinateSystem? {
  match s {
    "device" => Some(Device)
    "screen" => Some(Screen)
    _ => None
  }
}

///|
/// OrientationSensorOptions dictionary
pub struct OrientationSensorOptions {
  referenceFrame : OrientationSensorLocalCoordinateSystem?
}

/// Create a new OrientationSensorOptions with default values
pub fn OrientationSensorOptions::default() -> OrientationSensorOptions {
  OrientationSensorOptions::{
    referenceFrame: None,
  }
}

/// Convert to JsValue
pub extern "js" fn OrientationSensorOptions::to_js(self : OrientationSensorOptions) -> JsValue =
  #| (self) => ({
  #|   referenceFrame: self.referenceFrame
  #| })

///|
/// OrientationSensor interface
pub type OrientationSensor

pub extern "js" fn OrientationSensor::to_js_value(self : OrientationSensor) -> JsValue =
  #| (self) => self

pub extern "js" fn OrientationSensor::get_quaternion(self : OrientationSensor) -> JsValue? =
  #| (self) => self.quaternion

pub extern "js" fn OrientationSensor::populate_matrix(self : OrientationSensor, target_matrix : RotationMatrixType) -> Unit =
  #| (self, target_matrix) => self.populateMatrix(target_matrix)

///|
/// AbsoluteOrientationSensor interface
pub type AbsoluteOrientationSensor

pub extern "js" fn AbsoluteOrientationSensor::to_js_value(self : AbsoluteOrientationSensor) -> JsValue =
  #| (self) => self

pub extern "js" fn AbsoluteOrientationSensor::get_quaternion(self : AbsoluteOrientationSensor) -> JsValue? =
  #| (self) => self.quaternion

pub extern "js" fn AbsoluteOrientationSensor::populate_matrix(self : AbsoluteOrientationSensor, target_matrix : RotationMatrixType) -> Unit =
  #| (self, target_matrix) => self.populateMatrix(target_matrix)

pub extern "js" fn AbsoluteOrientationSensor::new(sensor_options : OrientationSensorOptions) -> AbsoluteOrientationSensor =
  #| (sensor_options) => new AbsoluteOrientationSensor(sensor_options)

///|
/// RelativeOrientationSensor interface
pub type RelativeOrientationSensor

pub extern "js" fn RelativeOrientationSensor::to_js_value(self : RelativeOrientationSensor) -> JsValue =
  #| (self) => self

pub extern "js" fn RelativeOrientationSensor::get_quaternion(self : RelativeOrientationSensor) -> JsValue? =
  #| (self) => self.quaternion

pub extern "js" fn RelativeOrientationSensor::populate_matrix(self : RelativeOrientationSensor, target_matrix : RotationMatrixType) -> Unit =
  #| (self, target_matrix) => self.populateMatrix(target_matrix)

pub extern "js" fn RelativeOrientationSensor::new(sensor_options : OrientationSensorOptions) -> RelativeOrientationSensor =
  #| (sensor_options) => new RelativeOrientationSensor(sensor_options)

