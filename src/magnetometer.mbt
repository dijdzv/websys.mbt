// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/magnetometer

///|
/// MagnetometerLocalCoordinateSystem enum
pub(all) enum MagnetometerLocalCoordinateSystem {
  Device
  Screen
}

///|
/// Convert to string value
pub fn MagnetometerLocalCoordinateSystem::to_string(
  self : MagnetometerLocalCoordinateSystem,
) -> String {
  match self {
    MagnetometerLocalCoordinateSystem::Device => "device"
    MagnetometerLocalCoordinateSystem::Screen => "screen"
  }
}

///|
/// Parse from string value
pub fn MagnetometerLocalCoordinateSystem::from_string(
  s : String,
) -> MagnetometerLocalCoordinateSystem? {
  match s {
    "device" => Some(MagnetometerLocalCoordinateSystem::Device)
    "screen" => Some(MagnetometerLocalCoordinateSystem::Screen)
    _ => None
  }
}

///|
/// MagnetometerSensorOptions dictionary
pub struct MagnetometerSensorOptions {
  referenceFrame : MagnetometerLocalCoordinateSystem?
}

///|
/// Create a new MagnetometerSensorOptions with default values
pub fn MagnetometerSensorOptions::default() -> MagnetometerSensorOptions {
  MagnetometerSensorOptions::{ referenceFrame: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MagnetometerSensorOptions::to_js(
  self : MagnetometerSensorOptions,
) -> JsValue =
  #| (self) => ({
  #|   referenceFrame: ['device', 'screen'][self.referenceFrame]
  #| })

///|
/// Magnetometer interface
pub type Magnetometer

///|
pub extern "js" fn Magnetometer::to_js_value(self : Magnetometer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Magnetometer (unchecked)
pub extern "js" fn Magnetometer::from_js_value(v : JsValue) -> Magnetometer =
  #| (v) => v

///|
/// Safely cast JsValue to Magnetometer (checked with instanceof)
pub extern "js" fn Magnetometer::from_js_value_opt(
  v : JsValue,
) -> Magnetometer? =
  #| (v) => (v instanceof Magnetometer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Magnetometer (checked with instanceof)
pub extern "js" fn JsValue::as_magnetometer(self : JsValue) -> Magnetometer? =
  #| (self) => (self instanceof Magnetometer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Magnetometer (unchecked)
pub extern "js" fn JsValue::to_magnetometer(self : JsValue) -> Magnetometer =
  #| (self) => self

///|
pub extern "js" fn Magnetometer::to_sensor(self : Magnetometer) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn Magnetometer::to_event_target(
  self : Magnetometer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Magnetometer::new(
  sensor_options : MagnetometerSensorOptions,
) -> Magnetometer =
  #| (sensor_options) => new Magnetometer(sensor_options)

///|
pub extern "js" fn Magnetometer::get_x(self : Magnetometer) -> Double? =
  #| (self) => { const v = self.x; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn Magnetometer::get_y(self : Magnetometer) -> Double? =
  #| (self) => { const v = self.y; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn Magnetometer::get_z(self : Magnetometer) -> Double? =
  #| (self) => { const v = self.z; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
/// UncalibratedMagnetometer interface
pub type UncalibratedMagnetometer

///|
pub extern "js" fn UncalibratedMagnetometer::to_js_value(
  self : UncalibratedMagnetometer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to UncalibratedMagnetometer (unchecked)
pub extern "js" fn UncalibratedMagnetometer::from_js_value(
  v : JsValue,
) -> UncalibratedMagnetometer =
  #| (v) => v

///|
/// Safely cast JsValue to UncalibratedMagnetometer (checked with instanceof)
pub extern "js" fn UncalibratedMagnetometer::from_js_value_opt(
  v : JsValue,
) -> UncalibratedMagnetometer? =
  #| (v) => (v instanceof UncalibratedMagnetometer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to UncalibratedMagnetometer (checked with instanceof)
pub extern "js" fn JsValue::as_uncalibrated_magnetometer(
  self : JsValue,
) -> UncalibratedMagnetometer? =
  #| (self) => (self instanceof UncalibratedMagnetometer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to UncalibratedMagnetometer (unchecked)
pub extern "js" fn JsValue::to_uncalibrated_magnetometer(
  self : JsValue,
) -> UncalibratedMagnetometer =
  #| (self) => self

///|
pub extern "js" fn UncalibratedMagnetometer::to_sensor(
  self : UncalibratedMagnetometer,
) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn UncalibratedMagnetometer::to_event_target(
  self : UncalibratedMagnetometer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn UncalibratedMagnetometer::new(
  sensor_options : MagnetometerSensorOptions,
) -> UncalibratedMagnetometer =
  #| (sensor_options) => new UncalibratedMagnetometer(sensor_options)

///|
pub extern "js" fn UncalibratedMagnetometer::get_x(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => { const v = self.x; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn UncalibratedMagnetometer::get_y(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => { const v = self.y; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn UncalibratedMagnetometer::get_z(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => { const v = self.z; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn UncalibratedMagnetometer::get_x_bias(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => { const v = self.xBias; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn UncalibratedMagnetometer::get_y_bias(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => { const v = self.yBias; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

///|
pub extern "js" fn UncalibratedMagnetometer::get_z_bias(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => { const v = self.zBias; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }
