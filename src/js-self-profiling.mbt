// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/js-self-profiling

///|
/// ProfilerResource typedef
pub type ProfilerResource = String

///|
/// ProfilerTrace dictionary
pub struct ProfilerTrace {
  resources : Array[ProfilerResource]
  frames : Array[ProfilerFrame]
  stacks : Array[ProfilerStack]
  samples : Array[ProfilerSample]
}

/// Create a new ProfilerTrace with default values
pub fn ProfilerTrace::default() -> ProfilerTrace {
  ProfilerTrace::{
    resources: [],
    frames: [],
    stacks: [],
    samples: [],
  }
}

/// Convert to JsValue
pub extern "js" fn ProfilerTrace::to_js(self : ProfilerTrace) -> JsValue =
  #| (self) => ({
  #|   resources: self.resources,
  #|   frames: self.frames,
  #|   stacks: self.stacks,
  #|   samples: self.samples
  #| })

///|
/// ProfilerSample dictionary
pub struct ProfilerSample {
  timestamp : DOMHighResTimeStamp
  stackId : Int64?
}

/// Create a new ProfilerSample with default values
pub fn ProfilerSample::default() -> ProfilerSample {
  ProfilerSample::{
    timestamp: panic(),
    stackId: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ProfilerSample::to_js(self : ProfilerSample) -> JsValue =
  #| (self) => ({
  #|   timestamp: self.timestamp,
  #|   stackId: self.stackId
  #| })

///|
/// ProfilerStack dictionary
pub struct ProfilerStack {
  parentId : Int64?
  frameId : Int64
}

/// Create a new ProfilerStack with default values
pub fn ProfilerStack::default() -> ProfilerStack {
  ProfilerStack::{
    parentId: None,
    frameId: 0,
  }
}

/// Convert to JsValue
pub extern "js" fn ProfilerStack::to_js(self : ProfilerStack) -> JsValue =
  #| (self) => ({
  #|   parentId: self.parentId,
  #|   frameId: self.frameId
  #| })

///|
/// ProfilerFrame dictionary
pub struct ProfilerFrame {
  name : String
  resourceId : Int64?
  line : Int64?
  column : Int64?
}

/// Create a new ProfilerFrame with default values
pub fn ProfilerFrame::default() -> ProfilerFrame {
  ProfilerFrame::{
    name: "",
    resourceId: None,
    line: None,
    column: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ProfilerFrame::to_js(self : ProfilerFrame) -> JsValue =
  #| (self) => ({
  #|   name: self.name,
  #|   resourceId: self.resourceId,
  #|   line: self.line,
  #|   column: self.column
  #| })

///|
/// ProfilerInitOptions dictionary
pub struct ProfilerInitOptions {
  sampleInterval : DOMHighResTimeStamp
  maxBufferSize : Int
}

/// Create a new ProfilerInitOptions with default values
pub fn ProfilerInitOptions::default() -> ProfilerInitOptions {
  ProfilerInitOptions::{
    sampleInterval: panic(),
    maxBufferSize: 0,
  }
}

/// Convert to JsValue
pub extern "js" fn ProfilerInitOptions::to_js(self : ProfilerInitOptions) -> JsValue =
  #| (self) => ({
  #|   sampleInterval: self.sampleInterval,
  #|   maxBufferSize: self.maxBufferSize
  #| })

///|
/// Profiler interface
pub type Profiler

pub extern "js" fn Profiler::to_js_value(self : Profiler) -> JsValue =
  #| (self) => self

pub extern "js" fn Profiler::get_sample_interval(self : Profiler) -> DOMHighResTimeStamp =
  #| (self) => self.sampleInterval

pub extern "js" fn Profiler::get_stopped(self : Profiler) -> Bool =
  #| (self) => self.stopped

pub extern "js" fn Profiler::new(options : ProfilerInitOptions) -> Profiler =
  #| (options) => new Profiler(options)

pub extern "js" fn Profiler::stop(self : Profiler) -> Promise[ProfilerTrace] =
  #| (self) => self.stop()

