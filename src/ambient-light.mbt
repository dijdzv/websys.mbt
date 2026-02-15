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
/// Cast JsValue to AmbientLightSensor (unchecked)
pub extern "js" fn AmbientLightSensor::from_js_value(
  v : JsValue,
) -> AmbientLightSensor =
  #| (v) => v

///|
/// Safely cast JsValue to AmbientLightSensor (checked with instanceof)
pub extern "js" fn AmbientLightSensor::from_js_value_opt(
  v : JsValue,
) -> AmbientLightSensor? =
  #| (v) => (v instanceof AmbientLightSensor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AmbientLightSensor (checked with instanceof)
pub extern "js" fn JsValue::as_ambient_light_sensor(
  self : JsValue,
) -> AmbientLightSensor? =
  #| (self) => (self instanceof AmbientLightSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AmbientLightSensor (unchecked)
pub extern "js" fn JsValue::to_ambient_light_sensor(
  self : JsValue,
) -> AmbientLightSensor =
  #| (self) => self

///|
pub extern "js" fn AmbientLightSensor::to_sensor(
  self : AmbientLightSensor,
) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn AmbientLightSensor::to_event_target(
  self : AmbientLightSensor,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AmbientLightSensor::new() -> AmbientLightSensor =
  #| () => new AmbientLightSensor()

///|
extern "js" fn AmbientLightSensor::new_with_sensor_options_ffi(
  sensor_options : JsValue,
) -> AmbientLightSensor =
  #| (sensor_options) => new AmbientLightSensor(sensor_options)

///|
pub fn AmbientLightSensor::new_with_sensor_options(
  sensor_options : SensorOptions,
) -> AmbientLightSensor {
  AmbientLightSensor::new_with_sensor_options_ffi(sensor_options.to_js())
}

///|
pub extern "js" fn AmbientLightSensor::get_illuminance(
  self : AmbientLightSensor,
) -> Double? =
  #| (self) => (self.illuminance) ?? undefined
