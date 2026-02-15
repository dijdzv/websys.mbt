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
/// Error type for throwing methods
pub(all) enum MediaRecorderConstructorError {
  NotSupportedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum MediaRecorderStartError {
  SecurityError(JsError)
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum MediaRecorderStopError {
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum MediaRecorderPauseError {
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum MediaRecorderResumeError {
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum MediaRecorderRequestDataError {
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn MediaRecorder::new(
  stream : MediaStream,
) -> Result[MediaRecorder, MediaRecorderConstructorError] =
  #| (stream) => (() => { try { return { $tag: 1, _0: new MediaRecorder(stream) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotSupportedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
extern "js" fn MediaRecorder::new_with_options_ffi(
  stream : MediaStream,
  options : JsValue,
) -> Result[MediaRecorder, MediaRecorderConstructorError] =
  #| (stream, options) => (() => { try { return { $tag: 1, _0: new MediaRecorder(stream, options) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotSupportedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub fn MediaRecorder::new_with_options(
  stream : MediaStream,
  options : MediaRecorderOptions,
) -> Result[MediaRecorder, MediaRecorderConstructorError] {
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
pub extern "js" fn MediaRecorder::set_onstart(
  self : MediaRecorder,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onstart = (e) => handler(e) }

///|
pub extern "js" fn MediaRecorder::clear_onstart(self : MediaRecorder) -> Unit =
  #| (self) => { self.onstart = null }

///|
pub extern "js" fn MediaRecorder::set_onstop(
  self : MediaRecorder,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onstop = (e) => handler(e) }

///|
pub extern "js" fn MediaRecorder::clear_onstop(self : MediaRecorder) -> Unit =
  #| (self) => { self.onstop = null }

///|
pub extern "js" fn MediaRecorder::set_ondataavailable(
  self : MediaRecorder,
  handler : (BlobEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondataavailable = (e) => handler(e) }

///|
pub extern "js" fn MediaRecorder::clear_ondataavailable(
  self : MediaRecorder,
) -> Unit =
  #| (self) => { self.ondataavailable = null }

///|
pub extern "js" fn MediaRecorder::set_onpause(
  self : MediaRecorder,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onpause = (e) => handler(e) }

///|
pub extern "js" fn MediaRecorder::clear_onpause(self : MediaRecorder) -> Unit =
  #| (self) => { self.onpause = null }

///|
pub extern "js" fn MediaRecorder::set_onresume(
  self : MediaRecorder,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onresume = (e) => handler(e) }

///|
pub extern "js" fn MediaRecorder::clear_onresume(self : MediaRecorder) -> Unit =
  #| (self) => { self.onresume = null }

///|
pub extern "js" fn MediaRecorder::set_onerror(
  self : MediaRecorder,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onerror = (e) => handler(e) }

///|
pub extern "js" fn MediaRecorder::clear_onerror(self : MediaRecorder) -> Unit =
  #| (self) => { self.onerror = null }

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
pub extern "js" fn MediaRecorder::start(
  self : MediaRecorder,
) -> Result[Unit, MediaRecorderStartError] =
  #| (self) => (() => { try { self.start(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'NotSupportedError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn MediaRecorder::start_with_timeslice(
  self : MediaRecorder,
  timeslice : Int,
) -> Result[Unit, MediaRecorderStartError] =
  #| (self, timeslice) => (() => { try { self.start(timeslice); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'SecurityError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; if (n === 'NotSupportedError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }; } })()

///|
pub extern "js" fn MediaRecorder::stop(
  self : MediaRecorder,
) -> Result[Unit, MediaRecorderStopError] =
  #| (self) => (() => { try { self.stop(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn MediaRecorder::pause(
  self : MediaRecorder,
) -> Result[Unit, MediaRecorderPauseError] =
  #| (self) => (() => { try { self.pause(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn MediaRecorder::resume_(
  self : MediaRecorder,
) -> Result[Unit, MediaRecorderResumeError] =
  #| (self) => (() => { try { self.resume(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn MediaRecorder::request_data(
  self : MediaRecorder,
) -> Result[Unit, MediaRecorderRequestDataError] =
  #| (self) => (() => { try { self.requestData(); return { $tag: 1, _0: undefined }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

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
