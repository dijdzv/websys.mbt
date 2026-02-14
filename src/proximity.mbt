// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/proximity

///|
/// ProximitySensor interface
pub type ProximitySensor

///|
pub extern "js" fn ProximitySensor::to_js_value(
  self : ProximitySensor,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ProximitySensor (unchecked)
pub extern "js" fn ProximitySensor::from_js_value(
  v : JsValue,
) -> ProximitySensor =
  #| (v) => v

///|
/// Safely cast JsValue to ProximitySensor (checked with instanceof)
pub extern "js" fn ProximitySensor::from_js_value_opt(
  v : JsValue,
) -> ProximitySensor? =
  #| (v) => (v instanceof ProximitySensor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ProximitySensor (checked with instanceof)
pub extern "js" fn JsValue::as_proximity_sensor(
  self : JsValue,
) -> ProximitySensor? =
  #| (self) => (self instanceof ProximitySensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ProximitySensor (unchecked)
pub extern "js" fn JsValue::to_proximity_sensor(
  self : JsValue,
) -> ProximitySensor =
  #| (self) => self

///|
pub extern "js" fn ProximitySensor::to_sensor(self : ProximitySensor) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn ProximitySensor::to_event_target(
  self : ProximitySensor,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ProximitySensor::new() -> ProximitySensor =
  #| () => new ProximitySensor()

///|
extern "js" fn ProximitySensor::new_with_sensor_options_ffi(
  sensor_options : JsValue,
) -> ProximitySensor =
  #| (sensor_options) => new ProximitySensor(sensor_options)

///|
pub fn ProximitySensor::new_with_sensor_options(
  sensor_options : SensorOptions,
) -> ProximitySensor {
  ProximitySensor::new_with_sensor_options_ffi(sensor_options.to_js())
}

///|
pub extern "js" fn ProximitySensor::get_distance(
  self : ProximitySensor,
) -> Double? =
  #| (self) => (self.distance) ?? undefined

///|
pub extern "js" fn ProximitySensor::get_max(self : ProximitySensor) -> Double? =
  #| (self) => (self.max) ?? undefined

///|
pub extern "js" fn ProximitySensor::get_near(self : ProximitySensor) -> Bool? =
  #| (self) => (self.near) ?? undefined
