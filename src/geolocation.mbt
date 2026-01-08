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
  #| (handler) => handler

///|
/// PositionErrorCallback callback interface
pub type PositionErrorCallback

///|
/// Create PositionErrorCallback from a MoonBit function
pub extern "js" fn PositionErrorCallback::from_fn(
  handler : (GeolocationPositionError) -> Unit,
) -> PositionErrorCallback =
  #| (handler) => handler

///|
/// PositionOptions dictionary
pub struct PositionOptions {
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
/// Convert to JsValue
pub extern "js" fn PositionOptions::to_js(self : PositionOptions) -> JsValue =
  #| (self) => ({
  #|   enableHighAccuracy: self.enableHighAccuracy,
  #|   timeout: self.timeout,
  #|   maximumAge: self.maximumAge
  #| })

///|
/// Geolocation interface
pub type Geolocation

///|
pub extern "js" fn Geolocation::to_js_value(self : Geolocation) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Geolocation::get_current_position(
  self : Geolocation,
  success_callback : PositionCallback,
) -> Unit =
  #| (self, success_callback) => self.getCurrentPosition(success_callback)

///|
pub extern "js" fn Geolocation::get_current_position_with_options(
  self : Geolocation,
  success_callback : PositionCallback,
  error_callback : PositionErrorCallback?,
  options : PositionOptions,
) -> Unit =
  #| (self, success_callback, error_callback, options) => self.getCurrentPosition(success_callback, error_callback, options)

///|
pub extern "js" fn Geolocation::watch_position(
  self : Geolocation,
  success_callback : PositionCallback,
) -> Int =
  #| (self, success_callback) => self.watchPosition(success_callback)

///|
pub extern "js" fn Geolocation::watch_position_with_options(
  self : Geolocation,
  success_callback : PositionCallback,
  error_callback : PositionErrorCallback?,
  options : PositionOptions,
) -> Int =
  #| (self, success_callback, error_callback, options) => self.watchPosition(success_callback, error_callback, options)

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
pub extern "js" fn GeolocationPosition::to_j_s_o_n(
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
  #| (self) => self.altitude

///|
pub extern "js" fn GeolocationCoordinates::get_altitude_accuracy(
  self : GeolocationCoordinates,
) -> Double? =
  #| (self) => self.altitudeAccuracy

///|
pub extern "js" fn GeolocationCoordinates::get_heading(
  self : GeolocationCoordinates,
) -> Double? =
  #| (self) => self.heading

///|
pub extern "js" fn GeolocationCoordinates::get_speed(
  self : GeolocationCoordinates,
) -> Double? =
  #| (self) => self.speed

///|
pub extern "js" fn GeolocationCoordinates::to_j_s_o_n(
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
