// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/ambient-light

///|
/// AmbientLightSensor interface
pub type AmbientLightSensor

///|
pub extern "js" fn AmbientLightSensor::to_js_value(
  self : AmbientLightSensor,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn AmbientLightSensor::new(
  sensor_options : SensorOptions,
) -> AmbientLightSensor =
  #| (sensor_options) => new AmbientLightSensor(sensor_options)

///|
pub extern "js" fn AmbientLightSensor::get_illuminance(
  self : AmbientLightSensor,
) -> Double? =
  #| (self) => self.illuminance
