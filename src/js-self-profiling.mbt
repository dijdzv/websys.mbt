// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/js-self-profiling

///|
/// ProfilerResource typedef
pub type ProfilerResource = String

///|
/// ProfilerTrace dictionary
pub(all) struct ProfilerTrace {
  resources : Array[ProfilerResource]
  frames : Array[ProfilerFrame]
  stacks : Array[ProfilerStack]
  samples : Array[ProfilerSample]
}

///|
/// Create a new ProfilerTrace with default values
pub fn ProfilerTrace::default() -> ProfilerTrace {
  ProfilerTrace::{ resources: [], frames: [], stacks: [], samples: [] }
}

///|
extern "js" fn ProfilerTrace::to_js_ffi(self : ProfilerTrace) -> JsValue =
  #| (self) => ({
  #|   resources: self.resources,
  #|   frames: self.frames,
  #|   stacks: self.stacks,
  #|   samples: self.samples
  #| })

///|
/// Convert to JsValue
pub fn ProfilerTrace::to_js(self : ProfilerTrace) -> JsValue {
  ProfilerTrace::to_js_ffi(self)
}

///|
/// ProfilerSample dictionary
pub(all) struct ProfilerSample {
  timestamp : DOMHighResTimeStamp
  stackId : Int64?
}

///|
/// Create a new ProfilerSample
pub fn ProfilerSample::new(timestamp~ : DOMHighResTimeStamp) -> ProfilerSample {
  ProfilerSample::{ timestamp, stackId: None }
}

///|
extern "js" fn ProfilerSample::to_js_ffi(self : ProfilerSample) -> JsValue =
  #| (self) => ({
  #|   timestamp: self.timestamp,
  #|   stackId: self.stackId
  #| })

///|
/// Convert to JsValue
pub fn ProfilerSample::to_js(self : ProfilerSample) -> JsValue {
  ProfilerSample::to_js_ffi(self)
}

///|
/// ProfilerStack dictionary
pub(all) struct ProfilerStack {
  parentId : Int64?
  frameId : Int64
}

///|
/// Create a new ProfilerStack with default values
pub fn ProfilerStack::default() -> ProfilerStack {
  ProfilerStack::{ parentId: None, frameId: 0 }
}

///|
extern "js" fn ProfilerStack::to_js_ffi(self : ProfilerStack) -> JsValue =
  #| (self) => ({
  #|   parentId: self.parentId,
  #|   frameId: self.frameId
  #| })

///|
/// Convert to JsValue
pub fn ProfilerStack::to_js(self : ProfilerStack) -> JsValue {
  ProfilerStack::to_js_ffi(self)
}

///|
/// ProfilerFrame dictionary
pub(all) struct ProfilerFrame {
  name : String
  resourceId : Int64?
  line : Int64?
  column : Int64?
}

///|
/// Create a new ProfilerFrame with default values
pub fn ProfilerFrame::default() -> ProfilerFrame {
  ProfilerFrame::{ name: "", resourceId: None, line: None, column: None }
}

///|
extern "js" fn ProfilerFrame::to_js_ffi(self : ProfilerFrame) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   resourceId: self.resourceId,
  #|   line: self.line,
  #|   column: self.column
  #| })

///|
/// Convert to JsValue
pub fn ProfilerFrame::to_js(self : ProfilerFrame) -> JsValue {
  ProfilerFrame::to_js_ffi(self)
}

///|
/// ProfilerInitOptions dictionary
pub(all) struct ProfilerInitOptions {
  sampleInterval : DOMHighResTimeStamp
  maxBufferSize : Int
}

///|
/// Create a new ProfilerInitOptions
pub fn ProfilerInitOptions::new(
  sampleInterval~ : DOMHighResTimeStamp,
) -> ProfilerInitOptions {
  ProfilerInitOptions::{ sampleInterval, maxBufferSize: 0 }
}

///|
extern "js" fn ProfilerInitOptions::to_js_ffi(
  self : ProfilerInitOptions,
) -> JsValue =
  #| (self) => ({
  #|   sampleInterval: self.sampleInterval,
  #|   maxBufferSize: self.maxBufferSize
  #| })

///|
/// Convert to JsValue
pub fn ProfilerInitOptions::to_js(self : ProfilerInitOptions) -> JsValue {
  ProfilerInitOptions::to_js_ffi(self)
}

///|
/// Profiler interface
pub type Profiler

///|
pub extern "js" fn Profiler::to_js_value(self : Profiler) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to Profiler (unchecked)
pub extern "js" fn Profiler::from_js_value(v : JsValue) -> Profiler =
  #| (v) => v

///|
/// Safely cast JsValue to Profiler (checked with instanceof)
pub extern "js" fn Profiler::from_js_value_opt(v : JsValue) -> Profiler? =
  #| (v) => (v instanceof Profiler) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to Profiler (checked with instanceof)
pub extern "js" fn JsValue::as_profiler(self : JsValue) -> Profiler? =
  #| (self) => (self instanceof Profiler) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to Profiler (unchecked)
pub extern "js" fn JsValue::to_profiler(self : JsValue) -> Profiler =
  #| (self) => self

///|
pub extern "js" fn Profiler::to_event_target(self : Profiler) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn Profiler::get_sample_interval(
  self : Profiler,
) -> DOMHighResTimeStamp =
  #| (self) => self.sampleInterval

///|
pub extern "js" fn Profiler::get_stopped(self : Profiler) -> Bool =
  #| (self) => self.stopped

///|
extern "js" fn Profiler::new_ffi(options : JsValue) -> Profiler =
  #| (options) => new Profiler(options)

///|
pub fn Profiler::new(options : ProfilerInitOptions) -> Profiler {
  Profiler::new_ffi(options.to_js())
}

///|
pub extern "js" fn Profiler::stop(self : Profiler) -> Promise[ProfilerTrace] =
  #| (self) => self.stop()
