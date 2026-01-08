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
pub extern "js" fn ProximitySensor::new(
  sensor_options : SensorOptions,
) -> ProximitySensor =
  #| (sensor_options) => new ProximitySensor(sensor_options)

///|
pub extern "js" fn ProximitySensor::get_distance(
  self : ProximitySensor,
) -> Double? =
  #| (self) => self.distance

///|
pub extern "js" fn ProximitySensor::get_max(self : ProximitySensor) -> Double? =
  #| (self) => self.max

///|
pub extern "js" fn ProximitySensor::get_near(self : ProximitySensor) -> Bool? =
  #| (self) => self.near
