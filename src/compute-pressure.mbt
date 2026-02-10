// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/compute-pressure

///|
/// PressureSource enum
pub(all) enum PressureSource {
  Cpu
} derive(Eq, Show)

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
} derive(Eq, Show)

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
  #| (handler) => (a0, a1) => handler(a0, a1)

///|
/// PressureObserverOptions dictionary
pub(all) struct PressureObserverOptions {
  sampleInterval : Int?
}

///|
/// Create a new PressureObserverOptions with default values
pub fn PressureObserverOptions::default() -> PressureObserverOptions {
  PressureObserverOptions::{ sampleInterval: None }
}

///|
extern "js" fn PressureObserverOptions::to_js_ffi(
  self : PressureObserverOptions,
) -> JsValue =
  #| (self) => ({
  #|   sampleInterval: self.sampleInterval
  #| })

///|
/// Convert to JsValue
pub fn PressureObserverOptions::to_js(
  self : PressureObserverOptions,
) -> JsValue {
  PressureObserverOptions::to_js_ffi(self)
}

///|
extern "js" fn PressureObserverOptions::from_js_ffi(
  value : JsValue,
) -> PressureObserverOptions =
  #| (v) => ({
  #|   sampleInterval: v.sampleInterval
  #| })

///|
/// Convert from JsValue
pub fn PressureObserverOptions::from_js(
  value : JsValue,
) -> PressureObserverOptions {
  PressureObserverOptions::from_js_ffi(value)
}

///|
/// PressureObserver interface
pub type PressureObserver

///|
pub extern "js" fn PressureObserver::to_js_value(
  self : PressureObserver,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to PressureObserver (unchecked)
pub extern "js" fn PressureObserver::from_js_value(
  v : JsValue,
) -> PressureObserver =
  #| (v) => v

///|
/// Safely cast JsValue to PressureObserver (checked with instanceof)
pub extern "js" fn PressureObserver::from_js_value_opt(
  v : JsValue,
) -> PressureObserver? =
  #| (v) => (v instanceof PressureObserver) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PressureObserver (checked with instanceof)
pub extern "js" fn JsValue::as_pressure_observer(
  self : JsValue,
) -> PressureObserver? =
  #| (self) => (self instanceof PressureObserver) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PressureObserver (unchecked)
pub extern "js" fn JsValue::to_pressure_observer(
  self : JsValue,
) -> PressureObserver =
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
extern "js" fn PressureObserver::observe_with_options_ffi(
  self : PressureObserver,
  source : PressureSource,
  options : JsValue,
) -> Promise[Unit] =
  #| (self, source, options) => self.observe(['cpu'][source], options)

///|
pub fn PressureObserver::observe_with_options(
  self : PressureObserver,
  source : PressureSource,
  options : PressureObserverOptions,
) -> Promise[Unit] {
  PressureObserver::observe_with_options_ffi(self, source, options.to_js())
}

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
/// Cast JsValue to PressureRecord (unchecked)
pub extern "js" fn PressureRecord::from_js_value(v : JsValue) -> PressureRecord =
  #| (v) => v

///|
/// Safely cast JsValue to PressureRecord (checked with instanceof)
pub extern "js" fn PressureRecord::from_js_value_opt(
  v : JsValue,
) -> PressureRecord? =
  #| (v) => (v instanceof PressureRecord) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to PressureRecord (checked with instanceof)
pub extern "js" fn JsValue::as_pressure_record(
  self : JsValue,
) -> PressureRecord? =
  #| (self) => (self instanceof PressureRecord) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to PressureRecord (unchecked)
pub extern "js" fn JsValue::to_pressure_record(
  self : JsValue,
) -> PressureRecord =
  #| (self) => self

///|
pub extern "js" fn PressureRecord::get_source(
  self : PressureRecord,
) -> PressureSource =
  #| (self) => ['cpu'].indexOf(self.source)

///|
pub extern "js" fn PressureRecord::get_state(
  self : PressureRecord,
) -> PressureState =
  #| (self) => ['nominal', 'fair', 'serious', 'critical'].indexOf(self.state)

///|
pub extern "js" fn PressureRecord::get_time(
  self : PressureRecord,
) -> DOMHighResTimeStamp =
  #| (self) => self.time

///|
pub extern "js" fn PressureRecord::to_json(self : PressureRecord) -> JsValue =
  #| (self) => self.toJSON()
