// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/media-playback-quality

///|
/// VideoPlaybackQuality interface
pub type VideoPlaybackQuality

///|
pub extern "js" fn VideoPlaybackQuality::to_js_value(
  self : VideoPlaybackQuality,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to VideoPlaybackQuality (unchecked)
pub extern "js" fn VideoPlaybackQuality::from_js_value(
  v : JsValue,
) -> VideoPlaybackQuality =
  #| (v) => v

///|
/// Safely cast JsValue to VideoPlaybackQuality (checked with instanceof)
pub extern "js" fn VideoPlaybackQuality::from_js_value_opt(
  v : JsValue,
) -> VideoPlaybackQuality? =
  #| (v) => (v instanceof VideoPlaybackQuality) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to VideoPlaybackQuality (checked with instanceof)
pub extern "js" fn JsValue::as_video_playback_quality(
  self : JsValue,
) -> VideoPlaybackQuality? =
  #| (self) => (self instanceof VideoPlaybackQuality) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to VideoPlaybackQuality (unchecked)
pub extern "js" fn JsValue::to_video_playback_quality(
  self : JsValue,
) -> VideoPlaybackQuality =
  #| (self) => self

///|
pub extern "js" fn VideoPlaybackQuality::get_creation_time(
  self : VideoPlaybackQuality,
) -> DOMHighResTimeStamp =
  #| (self) => self.creationTime

///|
pub extern "js" fn VideoPlaybackQuality::get_dropped_video_frames(
  self : VideoPlaybackQuality,
) -> Int =
  #| (self) => self.droppedVideoFrames

///|
pub extern "js" fn VideoPlaybackQuality::get_total_video_frames(
  self : VideoPlaybackQuality,
) -> Int =
  #| (self) => self.totalVideoFrames

///|
pub extern "js" fn VideoPlaybackQuality::get_corrupted_video_frames(
  self : VideoPlaybackQuality,
) -> Int =
  #| (self) => self.corruptedVideoFrames
