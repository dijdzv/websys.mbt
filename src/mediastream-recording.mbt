// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediastream-recording

///|
/// BitrateMode enum
pub(all) enum BitrateMode {
  Constant
  Variable
} derive(Eq, Show)

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
} derive(Eq, Show)

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
pub(all) struct MediaRecorderOptions {
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
extern "js" fn MediaRecorderOptions::to_js_ffi(
  self : MediaRecorderOptions,
) -> JsValue =
  #| (self) => ({
  #|   mimeType: self.mimeType,
  #|   audioBitsPerSecond: self.audioBitsPerSecond,
  #|   videoBitsPerSecond: self.videoBitsPerSecond,
  #|   bitsPerSecond: self.bitsPerSecond,
  #|   audioBitrateMode: ((() => { const v = self.audioBitrateMode; if (v === undefined) return undefined; return ['constant', 'variable'][v]; })()),
  #|   videoKeyFrameIntervalDuration: ((() => { const v = self.videoKeyFrameIntervalDuration; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   videoKeyFrameIntervalCount: self.videoKeyFrameIntervalCount
  #| })

///|
/// Convert to JsValue
pub fn MediaRecorderOptions::to_js(self : MediaRecorderOptions) -> JsValue {
  MediaRecorderOptions::to_js_ffi(self)
}

///|
extern "js" fn MediaRecorderOptions::from_js_ffi(
  value : JsValue,
) -> MediaRecorderOptions =
  #| (v) => ({
  #|   mimeType: v.mimeType,
  #|   audioBitsPerSecond: v.audioBitsPerSecond,
  #|   videoBitsPerSecond: v.videoBitsPerSecond,
  #|   bitsPerSecond: v.bitsPerSecond,
  #|   audioBitrateMode: (v.audioBitrateMode === undefined ? undefined : ['constant', 'variable'].indexOf(v.audioBitrateMode)),
  #|   videoKeyFrameIntervalDuration: (v.videoKeyFrameIntervalDuration === undefined ? { $tag: 0 } : { $tag: 1, _0: v.videoKeyFrameIntervalDuration }),
  #|   videoKeyFrameIntervalCount: v.videoKeyFrameIntervalCount
  #| })

///|
/// Convert from JsValue
pub fn MediaRecorderOptions::from_js(value : JsValue) -> MediaRecorderOptions {
  MediaRecorderOptions::from_js_ffi(value)
}

///|
/// BlobEventInit dictionary
pub(all) struct BlobEventInit {
  data : Blob
  timecode : DOMHighResTimeStamp?
}

///|
/// Create a new BlobEventInit
pub fn BlobEventInit::new(data~ : Blob) -> BlobEventInit {
  BlobEventInit::{ data, timecode: None }
}

///|
extern "js" fn BlobEventInit::to_js_ffi(self : BlobEventInit) -> JsValue =
  #| (self) => ({
  #|   data: self.data,
  #|   timecode: ((() => { const v = self.timecode; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn BlobEventInit::to_js(self : BlobEventInit) -> JsValue {
  BlobEventInit::to_js_ffi(self)
}

///|
extern "js" fn BlobEventInit::from_js_ffi(value : JsValue) -> BlobEventInit =
  #| (v) => ({
  #|   data: v.data,
  #|   timecode: (v.timecode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.timecode })
  #| })

///|
/// Convert from JsValue
pub fn BlobEventInit::from_js(value : JsValue) -> BlobEventInit {
  BlobEventInit::from_js_ffi(value)
}

///|
/// MediaRecorder interface
pub type MediaRecorder

///|
pub extern "js" fn MediaRecorder::to_js_value(self : MediaRecorder) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaRecorder (unchecked)
pub extern "js" fn MediaRecorder::from_js_value(v : JsValue) -> MediaRecorder =
  #| (v) => v

///|
/// Safely cast JsValue to MediaRecorder (checked with instanceof)
pub extern "js" fn MediaRecorder::from_js_value_opt(
  v : JsValue,
) -> MediaRecorder? =
  #| (v) => (v instanceof MediaRecorder) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaRecorder (checked with instanceof)
pub extern "js" fn JsValue::as_media_recorder(self : JsValue) -> MediaRecorder? =
  #| (self) => (self instanceof MediaRecorder) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaRecorder (unchecked)
pub extern "js" fn JsValue::to_media_recorder(self : JsValue) -> MediaRecorder =
  #| (self) => self

///|
pub extern "js" fn MediaRecorder::to_event_target(
  self : MediaRecorder,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn MediaRecorder::new(stream : MediaStream) -> MediaRecorder =
  #| (stream) => new MediaRecorder(stream)

///|
extern "js" fn MediaRecorder::new_with_options_ffi(
  stream : MediaStream,
  options : JsValue,
) -> MediaRecorder =
  #| (stream, options) => new MediaRecorder(stream, options)

///|
pub fn MediaRecorder::new_with_options(
  stream : MediaStream,
  options : MediaRecorderOptions,
) -> MediaRecorder {
  MediaRecorder::new_with_options_ffi(stream, options.to_js())
}

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
  #| (self) => ['inactive', 'recording', 'paused'].indexOf(self.state)

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
  #| (self) => ['constant', 'variable'].indexOf(self.audioBitrateMode)

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
/// Cast JsValue to BlobEvent (unchecked)
pub extern "js" fn BlobEvent::from_js_value(v : JsValue) -> BlobEvent =
  #| (v) => v

///|
/// Safely cast JsValue to BlobEvent (checked with instanceof)
pub extern "js" fn BlobEvent::from_js_value_opt(v : JsValue) -> BlobEvent? =
  #| (v) => (v instanceof BlobEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BlobEvent (checked with instanceof)
pub extern "js" fn JsValue::as_blob_event(self : JsValue) -> BlobEvent? =
  #| (self) => (self instanceof BlobEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BlobEvent (unchecked)
pub extern "js" fn JsValue::to_blob_event(self : JsValue) -> BlobEvent =
  #| (self) => self

///|
pub extern "js" fn BlobEvent::to_event(self : BlobEvent) -> Event =
  #| (self) => self

///|
extern "js" fn BlobEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> BlobEvent =
  #| (type_, event_init_dict) => new BlobEvent(type_, event_init_dict)

///|
pub fn BlobEvent::new(
  type_ : String,
  event_init_dict : BlobEventInit,
) -> BlobEvent {
  BlobEvent::new_ffi(type_, event_init_dict.to_js())
}

///|
pub extern "js" fn BlobEvent::get_data(self : BlobEvent) -> Blob =
  #| (self) => self.data

///|
pub extern "js" fn BlobEvent::get_timecode(
  self : BlobEvent,
) -> DOMHighResTimeStamp =
  #| (self) => self.timecode
