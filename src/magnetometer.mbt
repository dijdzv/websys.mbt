// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/magnetometer

///|
/// MagnetometerLocalCoordinateSystem enum
pub(all) enum MagnetometerLocalCoordinateSystem {
  Device
  Screen
} derive(Eq, Show)

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
pub(all) struct MagnetometerSensorOptions {
  referenceFrame : MagnetometerLocalCoordinateSystem?
}

///|
/// Create a new MagnetometerSensorOptions with default values
pub fn MagnetometerSensorOptions::default() -> MagnetometerSensorOptions {
  MagnetometerSensorOptions::{ referenceFrame: None }
}

///|
extern "js" fn MagnetometerSensorOptions::to_js_ffi(
  self : MagnetometerSensorOptions,
) -> JsValue =
  #| (self) => ({
  #|   referenceFrame: ((() => { const v = self.referenceFrame; if (v === undefined) return undefined; return ['device', 'screen'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn MagnetometerSensorOptions::to_js(
  self : MagnetometerSensorOptions,
) -> JsValue {
  MagnetometerSensorOptions::to_js_ffi(self)
}

///|
extern "js" fn MagnetometerSensorOptions::from_js_ffi(
  value : JsValue,
) -> MagnetometerSensorOptions =
  #| (v) => ({
  #|   referenceFrame: (v.referenceFrame === undefined ? undefined : ['device', 'screen'].indexOf(v.referenceFrame))
  #| })

///|
/// Convert from JsValue
pub fn MagnetometerSensorOptions::from_js(
  value : JsValue,
) -> MagnetometerSensorOptions {
  MagnetometerSensorOptions::from_js_ffi(value)
}

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
pub extern "js" fn Magnetometer::new() -> Magnetometer =
  #| () => new Magnetometer()

///|
extern "js" fn Magnetometer::new_with_sensor_options_ffi(
  sensor_options : JsValue,
) -> Magnetometer =
  #| (sensor_options) => new Magnetometer(sensor_options)

///|
pub fn Magnetometer::new_with_sensor_options(
  sensor_options : MagnetometerSensorOptions,
) -> Magnetometer {
  Magnetometer::new_with_sensor_options_ffi(sensor_options.to_js())
}

///|
pub extern "js" fn Magnetometer::get_x(self : Magnetometer) -> Double? =
  #| (self) => (self.x) ?? undefined

///|
pub extern "js" fn Magnetometer::get_y(self : Magnetometer) -> Double? =
  #| (self) => (self.y) ?? undefined

///|
pub extern "js" fn Magnetometer::get_z(self : Magnetometer) -> Double? =
  #| (self) => (self.z) ?? undefined

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
pub extern "js" fn UncalibratedMagnetometer::new() -> UncalibratedMagnetometer =
  #| () => new UncalibratedMagnetometer()

///|
extern "js" fn UncalibratedMagnetometer::new_with_sensor_options_ffi(
  sensor_options : JsValue,
) -> UncalibratedMagnetometer =
  #| (sensor_options) => new UncalibratedMagnetometer(sensor_options)

///|
pub fn UncalibratedMagnetometer::new_with_sensor_options(
  sensor_options : MagnetometerSensorOptions,
) -> UncalibratedMagnetometer {
  UncalibratedMagnetometer::new_with_sensor_options_ffi(sensor_options.to_js())
}

///|
pub extern "js" fn UncalibratedMagnetometer::get_x(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => (self.x) ?? undefined

///|
pub extern "js" fn UncalibratedMagnetometer::get_y(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => (self.y) ?? undefined

///|
pub extern "js" fn UncalibratedMagnetometer::get_z(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => (self.z) ?? undefined

///|
pub extern "js" fn UncalibratedMagnetometer::get_x_bias(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => (self.xBias) ?? undefined

///|
pub extern "js" fn UncalibratedMagnetometer::get_y_bias(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => (self.yBias) ?? undefined

///|
pub extern "js" fn UncalibratedMagnetometer::get_z_bias(
  self : UncalibratedMagnetometer,
) -> Double? =
  #| (self) => (self.zBias) ?? undefined
