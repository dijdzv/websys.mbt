// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediastream-recording

///|
/// BitrateMode enum
pub(all) enum BitrateMode {
  Constant
  Variable
}

///|
/// Convert to string value
pub fn BitrateMode::to_string(self : BitrateMode) -> String {
  match self {
    BitrateMode::Constant => "constant"
    BitrateMode::Variable => "variable"
  }
}

///|
/// Parse from string value
pub fn BitrateMode::from_string(s : String) -> BitrateMode? {
  match s {
    "constant" => Some(BitrateMode::Constant)
    "variable" => Some(BitrateMode::Variable)
    _ => None
  }
}

///|
/// RecordingState enum
pub(all) enum RecordingState {
  Inactive
  Recording
  Paused
}

///|
/// Convert to string value
pub fn RecordingState::to_string(self : RecordingState) -> String {
  match self {
    RecordingState::Inactive => "inactive"
    RecordingState::Recording => "recording"
    RecordingState::Paused => "paused"
  }
}

///|
/// Parse from string value
pub fn RecordingState::from_string(s : String) -> RecordingState? {
  match s {
    "inactive" => Some(RecordingState::Inactive)
    "recording" => Some(RecordingState::Recording)
    "paused" => Some(RecordingState::Paused)
    _ => None
  }
}

///|
/// MediaRecorderOptions dictionary
pub struct MediaRecorderOptions {
  mimeType : String?
  audioBitsPerSecond : Int?
  videoBitsPerSecond : Int?
  bitsPerSecond : Int?
  audioBitrateMode : BitrateMode?
  videoKeyFrameIntervalDuration : DOMHighResTimeStamp?
  videoKeyFrameIntervalCount : Int?
}

///|
/// Create a new MediaRecorderOptions with default values
pub fn MediaRecorderOptions::default() -> MediaRecorderOptions {
  MediaRecorderOptions::{
    mimeType: None,
    audioBitsPerSecond: None,
    videoBitsPerSecond: None,
    bitsPerSecond: None,
    audioBitrateMode: None,
    videoKeyFrameIntervalDuration: None,
    videoKeyFrameIntervalCount: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaRecorderOptions::to_js(
  self : MediaRecorderOptions,
) -> JsValue =
  #| (self) => ({
  #|   mimeType: self.mimeType,
  #|   audioBitsPerSecond: self.audioBitsPerSecond,
  #|   videoBitsPerSecond: self.videoBitsPerSecond,
  #|   bitsPerSecond: self.bitsPerSecond,
  #|   audioBitrateMode: ['constant', 'variable'][self.audioBitrateMode],
  #|   videoKeyFrameIntervalDuration: self.videoKeyFrameIntervalDuration,
  #|   videoKeyFrameIntervalCount: self.videoKeyFrameIntervalCount
  #| })

///|
/// BlobEventInit dictionary
pub struct BlobEventInit {
  data : Blob
  timecode : DOMHighResTimeStamp?
}

///|
/// Create a new BlobEventInit with default values
pub fn BlobEventInit::default() -> BlobEventInit {
  BlobEventInit::{ data: panic(), timecode: None }
}

///|
/// Convert to JsValue
pub extern "js" fn BlobEventInit::to_js(self : BlobEventInit) -> JsValue =
  #| (self) => ({
  #|   data: self.data,
  #|   timecode: self.timecode
  #| })

///|
/// MediaRecorder interface
pub type MediaRecorder

///|
pub extern "js" fn MediaRecorder::to_js_value(self : MediaRecorder) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaRecorder::new(
  stream : MediaStream,
  options : MediaRecorderOptions,
) -> MediaRecorder =
  #| (stream, options) => new MediaRecorder(stream, options)

///|
pub extern "js" fn MediaRecorder::get_stream(
  self : MediaRecorder,
) -> MediaStream =
  #| (self) => self.stream

///|
pub extern "js" fn MediaRecorder::get_mime_type(self : MediaRecorder) -> String =
  #| (self) => self.mimeType

///|
pub extern "js" fn MediaRecorder::get_state(
  self : MediaRecorder,
) -> RecordingState =
  #| (self) => self.state

///|
pub extern "js" fn MediaRecorder::get_onstart(
  self : MediaRecorder,
) -> EventHandler =
  #| (self) => self.onstart

///|
pub extern "js" fn MediaRecorder::set_onstart(
  self : MediaRecorder,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstart = value }

///|
pub extern "js" fn MediaRecorder::get_onstop(
  self : MediaRecorder,
) -> EventHandler =
  #| (self) => self.onstop

///|
pub extern "js" fn MediaRecorder::set_onstop(
  self : MediaRecorder,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstop = value }

///|
pub extern "js" fn MediaRecorder::get_ondataavailable(
  self : MediaRecorder,
) -> EventHandler =
  #| (self) => self.ondataavailable

///|
pub extern "js" fn MediaRecorder::set_ondataavailable(
  self : MediaRecorder,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondataavailable = value }

///|
pub extern "js" fn MediaRecorder::get_onpause(
  self : MediaRecorder,
) -> EventHandler =
  #| (self) => self.onpause

///|
pub extern "js" fn MediaRecorder::set_onpause(
  self : MediaRecorder,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onpause = value }

///|
pub extern "js" fn MediaRecorder::get_onresume(
  self : MediaRecorder,
) -> EventHandler =
  #| (self) => self.onresume

///|
pub extern "js" fn MediaRecorder::set_onresume(
  self : MediaRecorder,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onresume = value }

///|
pub extern "js" fn MediaRecorder::get_onerror(
  self : MediaRecorder,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn MediaRecorder::set_onerror(
  self : MediaRecorder,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn MediaRecorder::get_video_bits_per_second(
  self : MediaRecorder,
) -> Int =
  #| (self) => self.videoBitsPerSecond

///|
pub extern "js" fn MediaRecorder::get_audio_bits_per_second(
  self : MediaRecorder,
) -> Int =
  #| (self) => self.audioBitsPerSecond

///|
pub extern "js" fn MediaRecorder::get_audio_bitrate_mode(
  self : MediaRecorder,
) -> BitrateMode =
  #| (self) => self.audioBitrateMode

///|
pub extern "js" fn MediaRecorder::start(self : MediaRecorder) -> Unit =
  #| (self) => self.start()

///|
pub extern "js" fn MediaRecorder::start_with_timeslice(
  self : MediaRecorder,
  timeslice : Int,
) -> Unit =
  #| (self, timeslice) => self.start(timeslice)

///|
pub extern "js" fn MediaRecorder::stop(self : MediaRecorder) -> Unit =
  #| (self) => self.stop()

///|
pub extern "js" fn MediaRecorder::pause(self : MediaRecorder) -> Unit =
  #| (self) => self.pause()

///|
pub extern "js" fn MediaRecorder::resume_(self : MediaRecorder) -> Unit =
  #| (self) => self.resume()

///|
pub extern "js" fn MediaRecorder::request_data(self : MediaRecorder) -> Unit =
  #| (self) => self.requestData()

///|
pub extern "js" fn MediaRecorder::is_type_supported(type_ : String) -> Bool =
  #| (type_) => MediaRecorder.isTypeSupported(type_)

///|
/// BlobEvent interface
pub type BlobEvent

///|
pub extern "js" fn BlobEvent::to_js_value(self : BlobEvent) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn BlobEvent::new(
  type_ : String,
  event_init_dict : BlobEventInit,
) -> BlobEvent =
  #| (type_, event_init_dict) => new BlobEvent(type_, event_init_dict)

///|
pub extern "js" fn BlobEvent::get_data(self : BlobEvent) -> Blob =
  #| (self) => self.data

///|
pub extern "js" fn BlobEvent::get_timecode(
  self : BlobEvent,
) -> DOMHighResTimeStamp =
  #| (self) => self.timecode
