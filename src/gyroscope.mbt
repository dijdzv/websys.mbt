// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/gyroscope

///|
/// GyroscopeLocalCoordinateSystem enum
pub(all) enum GyroscopeLocalCoordinateSystem {
  Device
  Screen
} derive(Eq, Show)

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
pub(all) struct GyroscopeSensorOptions {
  referenceFrame : GyroscopeLocalCoordinateSystem?
}

///|
/// Create a new GyroscopeSensorOptions with default values
pub fn GyroscopeSensorOptions::default() -> GyroscopeSensorOptions {
  GyroscopeSensorOptions::{ referenceFrame: None }
}

///|
extern "js" fn GyroscopeSensorOptions::to_js_ffi(
  self : GyroscopeSensorOptions,
) -> JsValue =
  #| (self) => ({
  #|   referenceFrame: ((() => { const v = self.referenceFrame; if (v === undefined) return undefined; return ['device', 'screen'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn GyroscopeSensorOptions::to_js(self : GyroscopeSensorOptions) -> JsValue {
  GyroscopeSensorOptions::to_js_ffi(self)
}

///|
extern "js" fn GyroscopeSensorOptions::from_js_ffi(
  value : JsValue,
) -> GyroscopeSensorOptions =
  #| (v) => ({
  #|   referenceFrame: (v.referenceFrame === undefined ? undefined : ['device', 'screen'].indexOf(v.referenceFrame))
  #| })

///|
/// Convert from JsValue
pub fn GyroscopeSensorOptions::from_js(
  value : JsValue,
) -> GyroscopeSensorOptions {
  GyroscopeSensorOptions::from_js_ffi(value)
}

///|
/// Gyroscope interface
pub type Gyroscope

///|
pub extern "js" fn Gyroscope::to_js_value(self : Gyroscope) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Gyroscope (unchecked)
pub extern "js" fn Gyroscope::from_js_value(v : JsValue) -> Gyroscope =
  #| (v) => v

///|
/// Safely cast JsValue to Gyroscope (checked with instanceof)
pub extern "js" fn Gyroscope::from_js_value_opt(v : JsValue) -> Gyroscope? =
  #| (v) => (v instanceof Gyroscope) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Gyroscope (checked with instanceof)
pub extern "js" fn JsValue::as_gyroscope(self : JsValue) -> Gyroscope? =
  #| (self) => (self instanceof Gyroscope) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Gyroscope (unchecked)
pub extern "js" fn JsValue::to_gyroscope(self : JsValue) -> Gyroscope =
  #| (self) => self

///|
pub extern "js" fn Gyroscope::to_sensor(self : Gyroscope) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn Gyroscope::to_event_target(self : Gyroscope) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Gyroscope::new() -> Gyroscope =
  #| () => new Gyroscope()

///|
extern "js" fn Gyroscope::new_with_sensor_options_ffi(
  sensor_options : JsValue,
) -> Gyroscope =
  #| (sensor_options) => new Gyroscope(sensor_options)

///|
pub fn Gyroscope::new_with_sensor_options(
  sensor_options : GyroscopeSensorOptions,
) -> Gyroscope {
  Gyroscope::new_with_sensor_options_ffi(sensor_options.to_js())
}

///|
pub extern "js" fn Gyroscope::get_x(self : Gyroscope) -> Double? =
  #| (self) => (self.x) ?? undefined

///|
pub extern "js" fn Gyroscope::get_y(self : Gyroscope) -> Double? =
  #| (self) => (self.y) ?? undefined

///|
pub extern "js" fn Gyroscope::get_z(self : Gyroscope) -> Double? =
  #| (self) => (self.z) ?? undefined
