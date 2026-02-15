// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/accelerometer

///|
/// AccelerometerLocalCoordinateSystem enum
pub(all) enum AccelerometerLocalCoordinateSystem {
  Device
  Screen
} derive(Eq, Show)

///|
/// Convert to string value
pub fn AccelerometerLocalCoordinateSystem::to_string(
  self : AccelerometerLocalCoordinateSystem,
) -> String {
  match self {
    AccelerometerLocalCoordinateSystem::Device => "device"
    AccelerometerLocalCoordinateSystem::Screen => "screen"
  }
}

///|
/// Parse from string value
pub fn AccelerometerLocalCoordinateSystem::from_string(
  s : String,
) -> AccelerometerLocalCoordinateSystem? {
  match s {
    "device" => Some(AccelerometerLocalCoordinateSystem::Device)
    "screen" => Some(AccelerometerLocalCoordinateSystem::Screen)
    _ => None
  }
}

///|
/// AccelerometerSensorOptions dictionary
pub(all) struct AccelerometerSensorOptions {
  referenceFrame : AccelerometerLocalCoordinateSystem?
}

///|
/// Create a new AccelerometerSensorOptions with default values
pub fn AccelerometerSensorOptions::default() -> AccelerometerSensorOptions {
  AccelerometerSensorOptions::{ referenceFrame: None }
}

///|
extern "js" fn AccelerometerSensorOptions::to_js_ffi(
  self : AccelerometerSensorOptions,
) -> JsValue =
  #| (self) => ({
  #|   referenceFrame: ((() => { const v = self.referenceFrame; if (v === undefined) return undefined; return ['device', 'screen'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn AccelerometerSensorOptions::to_js(
  self : AccelerometerSensorOptions,
) -> JsValue {
  AccelerometerSensorOptions::to_js_ffi(self)
}

///|
extern "js" fn AccelerometerSensorOptions::from_js_ffi(
  value : JsValue,
) -> AccelerometerSensorOptions =
  #| (v) => ({
  #|   referenceFrame: (v.referenceFrame === undefined ? undefined : ['device', 'screen'].indexOf(v.referenceFrame))
  #| })

///|
/// Convert from JsValue
pub fn AccelerometerSensorOptions::from_js(
  value : JsValue,
) -> AccelerometerSensorOptions {
  AccelerometerSensorOptions::from_js_ffi(value)
}

///|
/// Accelerometer interface
pub type Accelerometer

///|
pub extern "js" fn Accelerometer::to_js_value(self : Accelerometer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Accelerometer (unchecked)
pub extern "js" fn Accelerometer::from_js_value(v : JsValue) -> Accelerometer =
  #| (v) => v

///|
/// Safely cast JsValue to Accelerometer (checked with instanceof)
pub extern "js" fn Accelerometer::from_js_value_opt(
  v : JsValue,
) -> Accelerometer? =
  #| (v) => (v instanceof Accelerometer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Accelerometer (checked with instanceof)
pub extern "js" fn JsValue::as_accelerometer(self : JsValue) -> Accelerometer? =
  #| (self) => (self instanceof Accelerometer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Accelerometer (unchecked)
pub extern "js" fn JsValue::to_accelerometer(self : JsValue) -> Accelerometer =
  #| (self) => self

///|
pub extern "js" fn Accelerometer::to_sensor(self : Accelerometer) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn Accelerometer::to_event_target(
  self : Accelerometer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Accelerometer::as_linear_acceleration_sensor(
  self : Accelerometer,
) -> LinearAccelerationSensor? =
  #| (self) => (self instanceof LinearAccelerationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn Accelerometer::as_gravity_sensor(
  self : Accelerometer,
) -> GravitySensor? =
  #| (self) => (self instanceof GravitySensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Error type for throwing methods
pub(all) enum AccelerometerConstructorError {
  SecurityError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn Accelerometer::new() -> Result[
  Accelerometer,
  AccelerometerConstructorError,
] =
  #| () => (() => { try { return { $tag: 1, _0: new Accelerometer() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
extern "js" fn Accelerometer::new_with_options_ffi(
  options : JsValue,
) -> Result[Accelerometer, AccelerometerConstructorError] =
  #| (options) => (() => { try { return { $tag: 1, _0: new Accelerometer(options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub fn Accelerometer::new_with_options(
  options : AccelerometerSensorOptions,
) -> Result[Accelerometer, AccelerometerConstructorError] {
  Accelerometer::new_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn Accelerometer::get_x(self : Accelerometer) -> Double? =
  #| (self) => (() => { const v = self.x; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Accelerometer::get_y(self : Accelerometer) -> Double? =
  #| (self) => (() => { const v = self.y; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn Accelerometer::get_z(self : Accelerometer) -> Double? =
  #| (self) => (() => { const v = self.z; return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
/// LinearAccelerationSensor interface
pub type LinearAccelerationSensor

///|
pub extern "js" fn LinearAccelerationSensor::to_js_value(
  self : LinearAccelerationSensor,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to LinearAccelerationSensor (unchecked)
pub extern "js" fn LinearAccelerationSensor::from_js_value(
  v : JsValue,
) -> LinearAccelerationSensor =
  #| (v) => v

///|
/// Safely cast JsValue to LinearAccelerationSensor (checked with instanceof)
pub extern "js" fn LinearAccelerationSensor::from_js_value_opt(
  v : JsValue,
) -> LinearAccelerationSensor? =
  #| (v) => (v instanceof LinearAccelerationSensor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to LinearAccelerationSensor (checked with instanceof)
pub extern "js" fn JsValue::as_linear_acceleration_sensor(
  self : JsValue,
) -> LinearAccelerationSensor? =
  #| (self) => (self instanceof LinearAccelerationSensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to LinearAccelerationSensor (unchecked)
pub extern "js" fn JsValue::to_linear_acceleration_sensor(
  self : JsValue,
) -> LinearAccelerationSensor =
  #| (self) => self

///|
pub extern "js" fn LinearAccelerationSensor::to_accelerometer(
  self : LinearAccelerationSensor,
) -> Accelerometer =
  #| (self) => self

///|
pub extern "js" fn LinearAccelerationSensor::to_sensor(
  self : LinearAccelerationSensor,
) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn LinearAccelerationSensor::to_event_target(
  self : LinearAccelerationSensor,
) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum LinearAccelerationSensorConstructorError {
  SecurityError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn LinearAccelerationSensor::new() -> Result[
  LinearAccelerationSensor,
  LinearAccelerationSensorConstructorError,
] =
  #| () => (() => { try { return { $tag: 1, _0: new LinearAccelerationSensor() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
extern "js" fn LinearAccelerationSensor::new_with_options_ffi(
  options : JsValue,
) -> Result[LinearAccelerationSensor, LinearAccelerationSensorConstructorError] =
  #| (options) => (() => { try { return { $tag: 1, _0: new LinearAccelerationSensor(options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub fn LinearAccelerationSensor::new_with_options(
  options : AccelerometerSensorOptions,
) -> Result[LinearAccelerationSensor, LinearAccelerationSensorConstructorError] {
  LinearAccelerationSensor::new_with_options_ffi(options.to_js())
}

///|
/// GravitySensor interface
pub type GravitySensor

///|
pub extern "js" fn GravitySensor::to_js_value(self : GravitySensor) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GravitySensor (unchecked)
pub extern "js" fn GravitySensor::from_js_value(v : JsValue) -> GravitySensor =
  #| (v) => v

///|
/// Safely cast JsValue to GravitySensor (checked with instanceof)
pub extern "js" fn GravitySensor::from_js_value_opt(
  v : JsValue,
) -> GravitySensor? =
  #| (v) => (v instanceof GravitySensor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GravitySensor (checked with instanceof)
pub extern "js" fn JsValue::as_gravity_sensor(self : JsValue) -> GravitySensor? =
  #| (self) => (self instanceof GravitySensor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GravitySensor (unchecked)
pub extern "js" fn JsValue::to_gravity_sensor(self : JsValue) -> GravitySensor =
  #| (self) => self

///|
pub extern "js" fn GravitySensor::to_accelerometer(
  self : GravitySensor,
) -> Accelerometer =
  #| (self) => self

///|
pub extern "js" fn GravitySensor::to_sensor(self : GravitySensor) -> Sensor =
  #| (self) => self

///|
pub extern "js" fn GravitySensor::to_event_target(
  self : GravitySensor,
) -> EventTarget =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum GravitySensorConstructorError {
  SecurityError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn GravitySensor::new() -> Result[
  GravitySensor,
  GravitySensorConstructorError,
] =
  #| () => (() => { try { return { $tag: 1, _0: new GravitySensor() }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
extern "js" fn GravitySensor::new_with_options_ffi(
  options : JsValue,
) -> Result[GravitySensor, GravitySensorConstructorError] =
  #| (options) => (() => { try { return { $tag: 1, _0: new GravitySensor(options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub fn GravitySensor::new_with_options(
  options : AccelerometerSensorOptions,
) -> Result[GravitySensor, GravitySensorConstructorError] {
  GravitySensor::new_with_options_ffi(options.to_js())
}
