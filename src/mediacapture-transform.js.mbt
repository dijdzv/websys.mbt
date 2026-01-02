// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediacapture-transform

///|
/// MediaStreamTrackProcessorInit dictionary
pub struct MediaStreamTrackProcessorInit {
  track : MediaStreamTrack
  maxBufferSize : Int?
}

/// Create a new MediaStreamTrackProcessorInit with default values
pub fn MediaStreamTrackProcessorInit::default() -> MediaStreamTrackProcessorInit {
  MediaStreamTrackProcessorInit::{
    track: panic(),
    maxBufferSize: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MediaStreamTrackProcessorInit::to_js(self : MediaStreamTrackProcessorInit) -> JsValue =
  #| (self) => ({
  #|   track: self.track,
  #|   maxBufferSize: self.maxBufferSize
  #| })

///|
/// MediaStreamTrackProcessor interface
pub type MediaStreamTrackProcessor

pub extern "js" fn MediaStreamTrackProcessor::to_js_value(self : MediaStreamTrackProcessor) -> JsValue =
  #| (self) => self

pub extern "js" fn MediaStreamTrackProcessor::new(init_ : MediaStreamTrackProcessorInit) -> MediaStreamTrackProcessor =
  #| (init_) => new MediaStreamTrackProcessor(init_)

pub extern "js" fn MediaStreamTrackProcessor::get_readable(self : MediaStreamTrackProcessor) -> ReadableStream =
  #| (self) => self.readable

///|
/// VideoTrackGenerator interface
pub type VideoTrackGenerator

pub extern "js" fn VideoTrackGenerator::to_js_value(self : VideoTrackGenerator) -> JsValue =
  #| (self) => self

pub extern "js" fn VideoTrackGenerator::new() -> VideoTrackGenerator =
  #| () => new VideoTrackGenerator()

pub extern "js" fn VideoTrackGenerator::get_writable(self : VideoTrackGenerator) -> WritableStream =
  #| (self) => self.writable

pub extern "js" fn VideoTrackGenerator::get_muted(self : VideoTrackGenerator) -> Bool =
  #| (self) => self.muted

pub extern "js" fn VideoTrackGenerator::set_muted(self : VideoTrackGenerator, value : Bool) -> Unit =
  #| (self, value) => { self.muted = value }

pub extern "js" fn VideoTrackGenerator::get_track(self : VideoTrackGenerator) -> MediaStreamTrack =
  #| (self) => self.track

