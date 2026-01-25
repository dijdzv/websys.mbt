// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/orientation-sensor

///|
/// RotationMatrixType typedef
pub type RotationMatrixType

///|
pub extern "js" fn RotationMatrixType::to_js_value(
  self : RotationMatrixType,
) -> JsValue =
  #| (self) => self

///|
/// Create RotationMatrixType from Float32Array
pub extern "js" fn RotationMatrixType::from_float32_array(
  v : Float32Array,
) -> RotationMatrixType =
  #| (v) => v

///|
/// Create RotationMatrixType from Float64Array
pub extern "js" fn RotationMatrixType::from_float64_array(
  v : Float64Array,
) -> RotationMatrixType =
  #| (v) => v

///|
/// Create RotationMatrixType from DOMMatrix
pub extern "js" fn RotationMatrixType::from_d_o_m_matrix(
  v : DOMMatrix,
) -> RotationMatrixType =
  #| (v) => v

///|
/// Check if this RotationMatrixType is Float32Array
pub extern "js" fn RotationMatrixType::is_float32_array(
  self : RotationMatrixType,
) -> Bool =
  #| (self) => self instanceof Float32Array

///|
/// Check if this RotationMatrixType is Float64Array
pub extern "js" fn RotationMatrixType::is_float64_array(
  self : RotationMatrixType,
) -> Bool =
  #| (self) => self instanceof Float64Array

///|
/// Check if this RotationMatrixType is DOMMatrix
pub extern "js" fn RotationMatrixType::is_d_o_m_matrix(
  self : RotationMatrixType,
) -> Bool =
  #| (self) => self instanceof DOMMatrix

///|
/// Try to get RotationMatrixType as Float32Array
pub extern "js" fn RotationMatrixType::as_float32_array(
  self : RotationMatrixType,
) -> Float32Array? =
  #| (self) => (self instanceof Float32Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get RotationMatrixType as Float64Array
pub extern "js" fn RotationMatrixType::as_float64_array(
  self : RotationMatrixType,
) -> Float64Array? =
  #| (self) => (self instanceof Float64Array) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get RotationMatrixType as DOMMatrix
pub extern "js" fn RotationMatrixType::as_d_o_m_matrix(
  self : RotationMatrixType,
) -> DOMMatrix? =
  #| (self) => (self instanceof DOMMatrix) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// OrientationSensorLocalCoordinateSystem enum
pub(all) enum OrientationSensorLocalCoordinateSystem {
  Device
  Screen
}

///|
/// Convert to string value
pub fn OrientationSensorLocalCoordinateSystem::to_string(
  self : OrientationSensorLocalCoordinateSystem,
) -> String {
  match self {
    OrientationSensorLocalCoordinateSystem::Device => "device"
    OrientationSensorLocalCoordinateSystem::Screen => "screen"
  }
}

///|
/// Parse from string value
pub fn OrientationSensorLocalCoordinateSystem::from_string(
  s : String,
) -> OrientationSensorLocalCoordinateSystem? {
  match s {
    "device" => Some(OrientationSensorLocalCoordinateSystem::Device)
    "screen" => Some(OrientationSensorLocalCoordinateSystem::Screen)
    _ => None
  }
}

///|
/// OrientationSensorOptions dictionary
pub struct OrientationSensorOptions {
  referenceFrame : OrientationSensorLocalCoordinateSystem?
}

///|
/// Create a new OrientationSensorOptions with default values
pub fn OrientationSensorOptions::default() -> OrientationSensorOptions {
  OrientationSensorOptions::{ referenceFrame: None }
}

///|
/// Convert to JsValue
pub extern "js" fn OrientationSensorOptions::to_js(
  self : OrientationSensorOptions,
) -> JsValue =
  #| (self) => ({
  #|   referenceFrame: ['device', 'screen'][self.referenceFrame]
  #| })

///|
/// OrientationSensor interface
pub type OrientationSensor

///|
pub extern "js" fn OrientationSensor::to_js_value(
  self : OrientationSensor,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to OrientationSensor (unchecked)
pub extern "js" fn OrientationSensor::from_js_value(
  v : JsValue,
) -> OrientationSensor =
  #| (v) => v

///|
/// Safely cast JsValue to OrientationSensor (checked with instanceof)
pub extern "js" fn OrientationSensor::from_js_value_opt(
  v : JsValue,
) -> OrientationSensor? =
  #| (v) => (v instanceof OrientationSensor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OrientationSensor (checked with instanceof)
pub extern "js" fn JsValue::as_orientation_sensor(
  self : JsValue,
) -> OrientationSensor? =
  #| (self) => (self instanceof OrientationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OrientationSensor (unchecked)
pub extern "js" fn JsValue::to_orientation_sensor(
  self : JsValue,
) -> OrientationSensor =
  #| (self) => self

///|
pub extern "js" fn OrientationSensor::to_sensor(
  self : OrientationSensor,
) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn OrientationSensor::to_event_target(
  self : OrientationSensor,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn OrientationSensor::as_absolute_orientation_sensor(
  self : OrientationSensor,
) -> AbsoluteOrientationSensor? =
  #| (self) => (self instanceof AbsoluteOrientationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn OrientationSensor::as_relative_orientation_sensor(
  self : OrientationSensor,
) -> RelativeOrientationSensor? =
  #| (self) => (self instanceof RelativeOrientationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn OrientationSensor::get_quaternion(
  self : OrientationSensor,
) -> JsValue? =
  #| (self) => { const v = self.quaternion; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn OrientationSensor::populate_matrix(
  self : OrientationSensor,
  target_matrix : RotationMatrixType,
) -> Unit =
  #| (self, target_matrix) => self.populateMatrix(target_matrix)

///|
/// AbsoluteOrientationSensor interface
pub type AbsoluteOrientationSensor

///|
pub extern "js" fn AbsoluteOrientationSensor::to_js_value(
  self : AbsoluteOrientationSensor,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AbsoluteOrientationSensor (unchecked)
pub extern "js" fn AbsoluteOrientationSensor::from_js_value(
  v : JsValue,
) -> AbsoluteOrientationSensor =
  #| (v) => v

///|
/// Safely cast JsValue to AbsoluteOrientationSensor (checked with instanceof)
pub extern "js" fn AbsoluteOrientationSensor::from_js_value_opt(
  v : JsValue,
) -> AbsoluteOrientationSensor? =
  #| (v) => (v instanceof AbsoluteOrientationSensor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AbsoluteOrientationSensor (checked with instanceof)
pub extern "js" fn JsValue::as_absolute_orientation_sensor(
  self : JsValue,
) -> AbsoluteOrientationSensor? =
  #| (self) => (self instanceof AbsoluteOrientationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AbsoluteOrientationSensor (unchecked)
pub extern "js" fn JsValue::to_absolute_orientation_sensor(
  self : JsValue,
) -> AbsoluteOrientationSensor =
  #| (self) => self

///|
pub extern "js" fn AbsoluteOrientationSensor::to_orientation_sensor(
  self : AbsoluteOrientationSensor,
) -> OrientationSensor =
  #| (self) => self

///|
pub extern "js" fn AbsoluteOrientationSensor::to_sensor(
  self : AbsoluteOrientationSensor,
) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn AbsoluteOrientationSensor::to_event_target(
  self : AbsoluteOrientationSensor,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AbsoluteOrientationSensor::new(
  sensor_options : OrientationSensorOptions,
) -> AbsoluteOrientationSensor =
  #| (sensor_options) => new AbsoluteOrientationSensor(sensor_options)

///|
/// RelativeOrientationSensor interface
pub type RelativeOrientationSensor

///|
pub extern "js" fn RelativeOrientationSensor::to_js_value(
  self : RelativeOrientationSensor,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RelativeOrientationSensor (unchecked)
pub extern "js" fn RelativeOrientationSensor::from_js_value(
  v : JsValue,
) -> RelativeOrientationSensor =
  #| (v) => v

///|
/// Safely cast JsValue to RelativeOrientationSensor (checked with instanceof)
pub extern "js" fn RelativeOrientationSensor::from_js_value_opt(
  v : JsValue,
) -> RelativeOrientationSensor? =
  #| (v) => (v instanceof RelativeOrientationSensor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RelativeOrientationSensor (checked with instanceof)
pub extern "js" fn JsValue::as_relative_orientation_sensor(
  self : JsValue,
) -> RelativeOrientationSensor? =
  #| (self) => (self instanceof RelativeOrientationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RelativeOrientationSensor (unchecked)
pub extern "js" fn JsValue::to_relative_orientation_sensor(
  self : JsValue,
) -> RelativeOrientationSensor =
  #| (self) => self

///|
pub extern "js" fn RelativeOrientationSensor::to_orientation_sensor(
  self : RelativeOrientationSensor,
) -> OrientationSensor =
  #| (self) => self

///|
pub extern "js" fn RelativeOrientationSensor::to_sensor(
  self : RelativeOrientationSensor,
) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn RelativeOrientationSensor::to_event_target(
  self : RelativeOrientationSensor,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn RelativeOrientationSensor::new(
  sensor_options : OrientationSensorOptions,
) -> RelativeOrientationSensor =
  #| (sensor_options) => new RelativeOrientationSensor(sensor_options)
