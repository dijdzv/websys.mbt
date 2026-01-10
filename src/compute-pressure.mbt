// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/compute-pressure

///|
/// PressureSource enum
pub(all) enum PressureSource {
  Cpu
}

///|
/// Convert to string value
pub fn PressureSource::to_string(self : PressureSource) -> String {
  match self {
    PressureSource::Cpu => "cpu"
  }
}

///|
/// Parse from string value
pub fn PressureSource::from_string(s : String) -> PressureSource? {
  match s {
    "cpu" => Some(PressureSource::Cpu)
    _ => None
  }
}

///|
/// PressureState enum
pub(all) enum PressureState {
  Nominal
  Fair
  Serious
  Critical
}

///|
/// Convert to string value
pub fn PressureState::to_string(self : PressureState) -> String {
  match self {
    PressureState::Nominal => "nominal"
    PressureState::Fair => "fair"
    PressureState::Serious => "serious"
    PressureState::Critical => "critical"
  }
}

///|
/// Parse from string value
pub fn PressureState::from_string(s : String) -> PressureState? {
  match s {
    "nominal" => Some(PressureState::Nominal)
    "fair" => Some(PressureState::Fair)
    "serious" => Some(PressureState::Serious)
    "critical" => Some(PressureState::Critical)
    _ => None
  }
}

///|
/// PressureUpdateCallback callback interface
pub type PressureUpdateCallback

///|
/// Create PressureUpdateCallback from a MoonBit function
pub extern "js" fn PressureUpdateCallback::from_fn(
  handler : (Array[PressureRecord], PressureObserver) -> Unit,
) -> PressureUpdateCallback =
  #| (handler) => handler

///|
/// PressureObserverOptions dictionary
pub struct PressureObserverOptions {
  sampleInterval : Int?
}

///|
/// Create a new PressureObserverOptions with default values
pub fn PressureObserverOptions::default() -> PressureObserverOptions {
  PressureObserverOptions::{ sampleInterval: None }
}

///|
/// Convert to JsValue
pub extern "js" fn PressureObserverOptions::to_js(
  self : PressureObserverOptions,
) -> JsValue =
  #| (self) => ({
  #|   sampleInterval: self.sampleInterval
  #| })

///|
/// PressureObserver interface
pub type PressureObserver

///|
pub extern "js" fn PressureObserver::to_js_value(
  self : PressureObserver,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PressureObserver::new(
  callback : PressureUpdateCallback,
) -> PressureObserver =
  #| (callback) => new PressureObserver(callback)

///|
pub extern "js" fn PressureObserver::observe(
  self : PressureObserver,
  source : PressureSource,
) -> Promise[Unit] =
  #| (self, source) => self.observe(['cpu'][source])

///|
pub extern "js" fn PressureObserver::observe_with_options(
  self : PressureObserver,
  source : PressureSource,
  options : PressureObserverOptions,
) -> Promise[Unit] =
  #| (self, source, options) => self.observe(['cpu'][source], options)

///|
pub extern "js" fn PressureObserver::unobserve(
  self : PressureObserver,
  source : PressureSource,
) -> Unit =
  #| (self, source) => self.unobserve(['cpu'][source])

///|
pub extern "js" fn PressureObserver::disconnect(
  self : PressureObserver,
) -> Unit =
  #| (self) => self.disconnect()

///|
pub extern "js" fn PressureObserver::take_records(
  self : PressureObserver,
) -> Array[PressureRecord] =
  #| (self) => self.takeRecords()

///|
pub extern "js" fn PressureObserver::get_known_sources(
  self : PressureObserver,
) -> JsValue =
  #| (self) => self.knownSources

///|
/// PressureRecord interface
pub type PressureRecord

///|
pub extern "js" fn PressureRecord::to_js_value(
  self : PressureRecord,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn PressureRecord::get_source(
  self : PressureRecord,
) -> PressureSource =
  #| (self) => self.source

///|
pub extern "js" fn PressureRecord::get_state(
  self : PressureRecord,
) -> PressureState =
  #| (self) => self.state

///|
pub extern "js" fn PressureRecord::get_time(
  self : PressureRecord,
) -> DOMHighResTimeStamp =
  #| (self) => self.time

///|
pub extern "js" fn PressureRecord::to_j_s_o_n(self : PressureRecord) -> JsValue =
  #| (self) => self.toJSON()
