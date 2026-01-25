// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediacapture-transform

///|
/// MediaStreamTrackOrHandle typedef
pub type MediaStreamTrackOrHandle

///|
pub extern "js" fn MediaStreamTrackOrHandle::to_js_value(
  self : MediaStreamTrackOrHandle,
) -> JsValue =
  #| (self) => self

///|
/// Create MediaStreamTrackOrHandle from MediaStreamTrack
pub extern "js" fn MediaStreamTrackOrHandle::from_media_stream_track(
  v : MediaStreamTrack,
) -> MediaStreamTrackOrHandle =
  #| (v) => v

///|
/// Create MediaStreamTrackOrHandle from MediaStreamTrackHandle
pub extern "js" fn MediaStreamTrackOrHandle::from_media_stream_track_handle(
  v : MediaStreamTrackHandle,
) -> MediaStreamTrackOrHandle =
  #| (v) => v

///|
/// Check if this MediaStreamTrackOrHandle is MediaStreamTrack
pub extern "js" fn MediaStreamTrackOrHandle::is_media_stream_track(
  self : MediaStreamTrackOrHandle,
) -> Bool =
  #| (self) => self instanceof MediaStreamTrack

///|
/// Check if this MediaStreamTrackOrHandle is MediaStreamTrackHandle
pub extern "js" fn MediaStreamTrackOrHandle::is_media_stream_track_handle(
  self : MediaStreamTrackOrHandle,
) -> Bool =
  #| (self) => self instanceof MediaStreamTrackHandle

///|
/// Try to get MediaStreamTrackOrHandle as MediaStreamTrack
pub extern "js" fn MediaStreamTrackOrHandle::as_media_stream_track(
  self : MediaStreamTrackOrHandle,
) -> MediaStreamTrack? =
  #| (self) => (self instanceof MediaStreamTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get MediaStreamTrackOrHandle as MediaStreamTrackHandle
pub extern "js" fn MediaStreamTrackOrHandle::as_media_stream_track_handle(
  self : MediaStreamTrackOrHandle,
) -> MediaStreamTrackHandle? =
  #| (self) => (self instanceof MediaStreamTrackHandle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// MediaStreamTrackProcessorInit dictionary
pub struct MediaStreamTrackProcessorInit {
  track : MediaStreamTrackOrHandle
  maxBufferSize : Int?
}

///|
/// Create a new MediaStreamTrackProcessorInit with default values
pub fn MediaStreamTrackProcessorInit::default() -> MediaStreamTrackProcessorInit {
  MediaStreamTrackProcessorInit::{ track: panic(), maxBufferSize: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaStreamTrackProcessorInit::to_js(
  self : MediaStreamTrackProcessorInit,
) -> JsValue =
  #| (self) => ({
  #|   track: self.track.to_js_value(),
  #|   maxBufferSize: self.maxBufferSize
  #| })

///|
/// MediaStreamTrackHandle interface
pub type MediaStreamTrackHandle

///|
pub extern "js" fn MediaStreamTrackHandle::to_js_value(
  self : MediaStreamTrackHandle,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaStreamTrackHandle (unchecked)
pub extern "js" fn MediaStreamTrackHandle::from_js_value(
  v : JsValue,
) -> MediaStreamTrackHandle =
  #| (v) => v

///|
/// Safely cast JsValue to MediaStreamTrackHandle (checked with instanceof)
pub extern "js" fn MediaStreamTrackHandle::from_js_value_opt(
  v : JsValue,
) -> MediaStreamTrackHandle? =
  #| (v) => (v instanceof MediaStreamTrackHandle) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaStreamTrackHandle (checked with instanceof)
pub extern "js" fn JsValue::as_media_stream_track_handle(
  self : JsValue,
) -> MediaStreamTrackHandle? =
  #| (self) => (self instanceof MediaStreamTrackHandle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaStreamTrackHandle (unchecked)
pub extern "js" fn JsValue::to_media_stream_track_handle(
  self : JsValue,
) -> MediaStreamTrackHandle =
  #| (self) => self

///|
pub extern "js" fn MediaStreamTrackHandle::new(
  track : MediaStreamTrack,
) -> MediaStreamTrackHandle =
  #| (track) => new MediaStreamTrackHandle(track)

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
pub extern "js" fn MediaStreamTrackProcessor::new(
  init_ : MediaStreamTrackProcessorInit,
) -> MediaStreamTrackProcessor =
  #| (init_) => new MediaStreamTrackProcessor(init_)

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
