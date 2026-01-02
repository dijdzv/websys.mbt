// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/media-playback-quality

///|
/// VideoPlaybackQuality interface
pub type VideoPlaybackQuality

pub extern "js" fn VideoPlaybackQuality::to_js_value(self : VideoPlaybackQuality) -> JsValue =
  #| (self) => self

pub extern "js" fn VideoPlaybackQuality::get_creation_time(self : VideoPlaybackQuality) -> DOMHighResTimeStamp =
  #| (self) => self.creationTime

pub extern "js" fn VideoPlaybackQuality::get_dropped_video_frames(self : VideoPlaybackQuality) -> Int =
  #| (self) => self.droppedVideoFrames

pub extern "js" fn VideoPlaybackQuality::get_total_video_frames(self : VideoPlaybackQuality) -> Int =
  #| (self) => self.totalVideoFrames

pub extern "js" fn VideoPlaybackQuality::get_corrupted_video_frames(self : VideoPlaybackQuality) -> Int =
  #| (self) => self.corruptedVideoFrames

