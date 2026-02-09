// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/geolocation

///|
/// PositionCallback callback interface
pub type PositionCallback

///|
/// Create PositionCallback from a MoonBit function
pub extern "js" fn PositionCallback::from_fn(
  handler : (GeolocationPosition) -> Unit,
) -> PositionCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// PositionErrorCallback callback interface
pub type PositionErrorCallback

///|
/// Create PositionErrorCallback from a MoonBit function
pub extern "js" fn PositionErrorCallback::from_fn(
  handler : (GeolocationPositionError) -> Unit,
) -> PositionErrorCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// PositionOptions dictionary
pub(all) struct PositionOptions {
  enableHighAccuracy : Bool?
  timeout : Int?
  maximumAge : Int?
}

///|
/// Create a new PositionOptions with default values
pub fn PositionOptions::default() -> PositionOptions {
  PositionOptions::{ enableHighAccuracy: None, timeout: None, maximumAge: None }
}

///|
extern "js" fn PositionOptions::to_js_ffi(self : PositionOptions) -> JsValue =
  #| (self) => ({
  #|   enableHighAccuracy: (self.enableHighAccuracy === -1 ? undefined : self.enableHighAccuracy),
  #|   timeout: self.timeout,
  #|   maximumAge: self.maximumAge
  #| })

///|
/// Convert to JsValue
pub fn PositionOptions::to_js(self : PositionOptions) -> JsValue {
  PositionOptions::to_js_ffi(self)
}

///|
/// Geolocation interface
pub type Geolocation

///|
pub extern "js" fn Geolocation::to_js_value(self : Geolocation) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Geolocation (unchecked)
pub extern "js" fn Geolocation::from_js_value(v : JsValue) -> Geolocation =
  #| (v) => v

///|
/// Safely cast JsValue to Geolocation (checked with instanceof)
pub extern "js" fn Geolocation::from_js_value_opt(v : JsValue) -> Geolocation? =
  #| (v) => (v instanceof Geolocation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Geolocation (checked with instanceof)
pub extern "js" fn JsValue::as_geolocation(self : JsValue) -> Geolocation? =
  #| (self) => (self instanceof Geolocation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Geolocation (unchecked)
pub extern "js" fn JsValue::to_geolocation(self : JsValue) -> Geolocation =
  #| (self) => self

///|
pub extern "js" fn Geolocation::get_current_position(
  self : Geolocation,
  success_callback : PositionCallback,
) -> Unit =
  #| (self, success_callback) => self.getCurrentPosition(success_callback)

///|
extern "js" fn Geolocation::get_current_position_with_options_ffi(
  self : Geolocation,
  success_callback : PositionCallback,
  error_callback : PositionErrorCallback?,
  options : JsValue,
) -> Unit =
  #| (self, success_callback, error_callback, options) => self.getCurrentPosition(success_callback, (error_callback.$tag === 1 ? error_callback._0 : null), options)

///|
pub fn Geolocation::get_current_position_with_options(
  self : Geolocation,
  success_callback : PositionCallback,
  error_callback : PositionErrorCallback?,
  options : PositionOptions,
) -> Unit {
  Geolocation::get_current_position_with_options_ffi(
    self,
    success_callback,
    error_callback,
    options.to_js(),
  )
}

///|
pub extern "js" fn Geolocation::watch_position(
  self : Geolocation,
  success_callback : PositionCallback,
) -> Int =
  #| (self, success_callback) => self.watchPosition(success_callback)

///|
extern "js" fn Geolocation::watch_position_with_options_ffi(
  self : Geolocation,
  success_callback : PositionCallback,
  error_callback : PositionErrorCallback?,
  options : JsValue,
) -> Int =
  #| (self, success_callback, error_callback, options) => self.watchPosition(success_callback, (error_callback.$tag === 1 ? error_callback._0 : null), options)

///|
pub fn Geolocation::watch_position_with_options(
  self : Geolocation,
  success_callback : PositionCallback,
  error_callback : PositionErrorCallback?,
  options : PositionOptions,
) -> Int {
  Geolocation::watch_position_with_options_ffi(
    self,
    success_callback,
    error_callback,
    options.to_js(),
  )
}

///|
pub extern "js" fn Geolocation::clear_watch(
  self : Geolocation,
  watch_id : Int,
) -> Unit =
  #| (self, watch_id) => self.clearWatch(watch_id)

///|
/// GeolocationPosition interface
pub type GeolocationPosition

///|
pub extern "js" fn GeolocationPosition::to_js_value(
  self : GeolocationPosition,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GeolocationPosition (unchecked)
pub extern "js" fn GeolocationPosition::from_js_value(
  v : JsValue,
) -> GeolocationPosition =
  #| (v) => v

///|
/// Safely cast JsValue to GeolocationPosition (checked with instanceof)
pub extern "js" fn GeolocationPosition::from_js_value_opt(
  v : JsValue,
) -> GeolocationPosition? =
  #| (v) => (v instanceof GeolocationPosition) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GeolocationPosition (checked with instanceof)
pub extern "js" fn JsValue::as_geolocation_position(
  self : JsValue,
) -> GeolocationPosition? =
  #| (self) => (self instanceof GeolocationPosition) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GeolocationPosition (unchecked)
pub extern "js" fn JsValue::to_geolocation_position(
  self : JsValue,
) -> GeolocationPosition =
  #| (self) => self

///|
pub extern "js" fn GeolocationPosition::get_coords(
  self : GeolocationPosition,
) -> GeolocationCoordinates =
  #| (self) => self.coords

///|
pub extern "js" fn GeolocationPosition::get_timestamp(
  self : GeolocationPosition,
) -> EpochTimeStamp =
  #| (self) => self.timestamp

///|
pub extern "js" fn GeolocationPosition::to_json(
  self : GeolocationPosition,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// GeolocationCoordinates interface
pub type GeolocationCoordinates

///|
pub extern "js" fn GeolocationCoordinates::to_js_value(
  self : GeolocationCoordinates,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GeolocationCoordinates (unchecked)
pub extern "js" fn GeolocationCoordinates::from_js_value(
  v : JsValue,
) -> GeolocationCoordinates =
  #| (v) => v

///|
/// Safely cast JsValue to GeolocationCoordinates (checked with instanceof)
pub extern "js" fn GeolocationCoordinates::from_js_value_opt(
  v : JsValue,
) -> GeolocationCoordinates? =
  #| (v) => (v instanceof GeolocationCoordinates) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GeolocationCoordinates (checked with instanceof)
pub extern "js" fn JsValue::as_geolocation_coordinates(
  self : JsValue,
) -> GeolocationCoordinates? =
  #| (self) => (self instanceof GeolocationCoordinates) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GeolocationCoordinates (unchecked)
pub extern "js" fn JsValue::to_geolocation_coordinates(
  self : JsValue,
) -> GeolocationCoordinates =
  #| (self) => self

///|
pub extern "js" fn GeolocationCoordinates::get_accuracy(
  self : GeolocationCoordinates,
) -> Double =
  #| (self) => self.accuracy

///|
pub extern "js" fn GeolocationCoordinates::get_latitude(
  self : GeolocationCoordinates,
) -> Double =
  #| (self) => self.latitude

///|
pub extern "js" fn GeolocationCoordinates::get_longitude(
  self : GeolocationCoordinates,
) -> Double =
  #| (self) => self.longitude

///|
pub extern "js" fn GeolocationCoordinates::get_altitude(
  self : GeolocationCoordinates,
) -> Double? =
  #| (self) => (self.altitude) ?? undefined

///|
pub extern "js" fn GeolocationCoordinates::get_altitude_accuracy(
  self : GeolocationCoordinates,
) -> Double? =
  #| (self) => (self.altitudeAccuracy) ?? undefined

///|
pub extern "js" fn GeolocationCoordinates::get_heading(
  self : GeolocationCoordinates,
) -> Double? =
  #| (self) => (self.heading) ?? undefined

///|
pub extern "js" fn GeolocationCoordinates::get_speed(
  self : GeolocationCoordinates,
) -> Double? =
  #| (self) => (self.speed) ?? undefined

///|
pub extern "js" fn GeolocationCoordinates::to_json(
  self : GeolocationCoordinates,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// GeolocationPositionError interface
pub type GeolocationPositionError

///|
pub extern "js" fn GeolocationPositionError::to_js_value(
  self : GeolocationPositionError,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to GeolocationPositionError (unchecked)
pub extern "js" fn GeolocationPositionError::from_js_value(
  v : JsValue,
) -> GeolocationPositionError =
  #| (v) => v

///|
/// Safely cast JsValue to GeolocationPositionError (checked with instanceof)
pub extern "js" fn GeolocationPositionError::from_js_value_opt(
  v : JsValue,
) -> GeolocationPositionError? =
  #| (v) => (v instanceof GeolocationPositionError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to GeolocationPositionError (checked with instanceof)
pub extern "js" fn JsValue::as_geolocation_position_error(
  self : JsValue,
) -> GeolocationPositionError? =
  #| (self) => (self instanceof GeolocationPositionError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to GeolocationPositionError (unchecked)
pub extern "js" fn JsValue::to_geolocation_position_error(
  self : JsValue,
) -> GeolocationPositionError =
  #| (self) => self

// GeolocationPositionError.PERMISSION_DENIED

///|
pub let geolocation_position_error_permission_denied : Int = 1

// GeolocationPositionError.POSITION_UNAVAILABLE

///|
pub let geolocation_position_error_position_unavailable : Int = 2

// GeolocationPositionError.TIMEOUT

///|
pub let geolocation_position_error_timeout : Int = 3

///|
pub extern "js" fn GeolocationPositionError::get_code(
  self : GeolocationPositionError,
) -> Int =
  #| (self) => self.code

///|
pub extern "js" fn GeolocationPositionError::get_message(
  self : GeolocationPositionError,
) -> String =
  #| (self) => self.message
