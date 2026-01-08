// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/generic-sensor

///|
/// SensorOptions dictionary
pub struct SensorOptions {
  frequency : Double?
}

///|
/// Create a new SensorOptions with default values
pub fn SensorOptions::default() -> SensorOptions {
  SensorOptions::{ frequency: None }
}

///|
/// Convert to JsValue
pub extern "js" fn SensorOptions::to_js(self : SensorOptions) -> JsValue =
  #| (self) => ({
  #|   frequency: self.frequency
  #| })

///|
/// SensorErrorEventInit dictionary
pub struct SensorErrorEventInit {
  error : DOMException
}

///|
/// Create a new SensorErrorEventInit with default values
pub fn SensorErrorEventInit::default() -> SensorErrorEventInit {
  SensorErrorEventInit::{ error: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn SensorErrorEventInit::to_js(
  self : SensorErrorEventInit,
) -> JsValue =
  #| (self) => ({
  #|   error: self.error
  #| })

///|
/// Sensor interface
pub type Sensor

///|
pub extern "js" fn Sensor::to_js_value(self : Sensor) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn Sensor::get_activated(self : Sensor) -> Bool =
  #| (self) => self.activated

///|
pub extern "js" fn Sensor::get_has_reading(self : Sensor) -> Bool =
  #| (self) => self.hasReading

///|
pub extern "js" fn Sensor::get_timestamp(self : Sensor) -> DOMHighResTimeStamp? =
  #| (self) => self.timestamp

///|
pub extern "js" fn Sensor::start(self : Sensor) -> Unit =
  #| (self) => self.start()

///|
pub extern "js" fn Sensor::stop(self : Sensor) -> Unit =
  #| (self) => self.stop()

///|
pub extern "js" fn Sensor::get_onreading(self : Sensor) -> EventHandler =
  #| (self) => self.onreading

///|
pub extern "js" fn Sensor::set_onreading(
  self : Sensor,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreading = value }

///|
pub extern "js" fn Sensor::get_onactivate(self : Sensor) -> EventHandler =
  #| (self) => self.onactivate

///|
pub extern "js" fn Sensor::set_onactivate(
  self : Sensor,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onactivate = value }

///|
pub extern "js" fn Sensor::get_onerror(self : Sensor) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn Sensor::set_onerror(
  self : Sensor,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
/// SensorErrorEvent interface
pub type SensorErrorEvent

///|
pub extern "js" fn SensorErrorEvent::to_js_value(
  self : SensorErrorEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn SensorErrorEvent::new(
  type_ : String,
  error_event_init_dict : SensorErrorEventInit,
) -> SensorErrorEvent =
  #| (type_, error_event_init_dict) => new SensorErrorEvent(type_, error_event_init_dict)

///|
pub extern "js" fn SensorErrorEvent::get_error(
  self : SensorErrorEvent,
) -> DOMException =
  #| (self) => self.error
