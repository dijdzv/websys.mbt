// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediacapture-transform

///|
/// MediaStreamTrackProcessorInit dictionary
pub(all) struct MediaStreamTrackProcessorInit {
  track : MediaStreamTrack
  maxBufferSize : Int?
}

///|
/// Create a new MediaStreamTrackProcessorInit
pub fn MediaStreamTrackProcessorInit::new(
  track~ : MediaStreamTrack,
) -> MediaStreamTrackProcessorInit {
  MediaStreamTrackProcessorInit::{ track, maxBufferSize: None }
}

///|
extern "js" fn MediaStreamTrackProcessorInit::to_js_ffi(
  self : MediaStreamTrackProcessorInit,
) -> JsValue =
  #| (self) => ({
  #|   track: self.track,
  #|   maxBufferSize: self.maxBufferSize
  #| })

///|
/// Convert to JsValue
pub fn MediaStreamTrackProcessorInit::to_js(
  self : MediaStreamTrackProcessorInit,
) -> JsValue {
  MediaStreamTrackProcessorInit::to_js_ffi(self)
}

///|
extern "js" fn MediaStreamTrackProcessorInit::from_js_ffi(
  value : JsValue,
) -> MediaStreamTrackProcessorInit =
  #| (v) => ({
  #|   track: v.track,
  #|   maxBufferSize: v.maxBufferSize
  #| })

///|
/// Convert from JsValue
pub fn MediaStreamTrackProcessorInit::from_js(
  value : JsValue,
) -> MediaStreamTrackProcessorInit {
  MediaStreamTrackProcessorInit::from_js_ffi(value)
}

///|
/// MediaStreamTrackProcessor interface
pub type MediaStreamTrackProcessor

///|
pub extern "js" fn MediaStreamTrackProcessor::to_js_value(
  self : MediaStreamTrackProcessor,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaStreamTrackProcessor (unchecked)
pub extern "js" fn MediaStreamTrackProcessor::from_js_value(
  v : JsValue,
) -> MediaStreamTrackProcessor =
  #| (v) => v

///|
/// Safely cast JsValue to MediaStreamTrackProcessor (checked with instanceof)
pub extern "js" fn MediaStreamTrackProcessor::from_js_value_opt(
  v : JsValue,
) -> MediaStreamTrackProcessor? =
  #| (v) => (v instanceof MediaStreamTrackProcessor) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaStreamTrackProcessor (checked with instanceof)
pub extern "js" fn JsValue::as_media_stream_track_processor(
  self : JsValue,
) -> MediaStreamTrackProcessor? =
  #| (self) => (self instanceof MediaStreamTrackProcessor) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaStreamTrackProcessor (unchecked)
pub extern "js" fn JsValue::to_media_stream_track_processor(
  self : JsValue,
) -> MediaStreamTrackProcessor =
  #| (self) => self

///|
extern "js" fn MediaStreamTrackProcessor::new_ffi(
  init_ : JsValue,
) -> MediaStreamTrackProcessor =
  #| (init_) => new MediaStreamTrackProcessor(init_)

///|
pub fn MediaStreamTrackProcessor::new(
  init_ : MediaStreamTrackProcessorInit,
) -> MediaStreamTrackProcessor {
  MediaStreamTrackProcessor::new_ffi(init_.to_js())
}

///|
pub extern "js" fn MediaStreamTrackProcessor::get_readable(
  self : MediaStreamTrackProcessor,
) -> ReadableStream =
  #| (self) => self.readable

///|
/// VideoTrackGenerator interface
pub type VideoTrackGenerator

///|
pub extern "js" fn VideoTrackGenerator::to_js_value(
  self : VideoTrackGenerator,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VideoTrackGenerator (unchecked)
pub extern "js" fn VideoTrackGenerator::from_js_value(
  v : JsValue,
) -> VideoTrackGenerator =
  #| (v) => v

///|
/// Safely cast JsValue to VideoTrackGenerator (checked with instanceof)
pub extern "js" fn VideoTrackGenerator::from_js_value_opt(
  v : JsValue,
) -> VideoTrackGenerator? =
  #| (v) => (v instanceof VideoTrackGenerator) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VideoTrackGenerator (checked with instanceof)
pub extern "js" fn JsValue::as_video_track_generator(
  self : JsValue,
) -> VideoTrackGenerator? =
  #| (self) => (self instanceof VideoTrackGenerator) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VideoTrackGenerator (unchecked)
pub extern "js" fn JsValue::to_video_track_generator(
  self : JsValue,
) -> VideoTrackGenerator =
  #| (self) => self

///|
pub extern "js" fn VideoTrackGenerator::new() -> VideoTrackGenerator =
  #| () => new VideoTrackGenerator()

///|
pub extern "js" fn VideoTrackGenerator::get_writable(
  self : VideoTrackGenerator,
) -> WritableStream =
  #| (self) => self.writable

///|
pub extern "js" fn VideoTrackGenerator::get_muted(
  self : VideoTrackGenerator,
) -> Bool =
  #| (self) => self.muted

///|
pub extern "js" fn VideoTrackGenerator::set_muted(
  self : VideoTrackGenerator,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.muted = value }

///|
pub extern "js" fn VideoTrackGenerator::get_track(
  self : VideoTrackGenerator,
) -> MediaStreamTrack =
  #| (self) => self.track
