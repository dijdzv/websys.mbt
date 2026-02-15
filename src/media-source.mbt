// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/media-source

///|
/// ReadyState enum
pub(all) enum ReadyState {
  Closed
  Open
  Ended
} derive(Eq, Show)

///|
/// Convert to string value
pub fn ReadyState::to_string(self : ReadyState) -> String {
  match self {
    ReadyState::Closed => "closed"
    ReadyState::Open => "open"
    ReadyState::Ended => "ended"
  }
}

///|
/// Parse from string value
pub fn ReadyState::from_string(s : String) -> ReadyState? {
  match s {
    "closed" => Some(ReadyState::Closed)
    "open" => Some(ReadyState::Open)
    "ended" => Some(ReadyState::Ended)
    _ => None
  }
}

///|
/// EndOfStreamError enum
pub(all) enum EndOfStreamError {
  Network
  Decode
} derive(Eq, Show)

///|
/// Convert to string value
pub fn EndOfStreamError::to_string(self : EndOfStreamError) -> String {
  match self {
    EndOfStreamError::Network => "network"
    EndOfStreamError::Decode => "decode"
  }
}

///|
/// Parse from string value
pub fn EndOfStreamError::from_string(s : String) -> EndOfStreamError? {
  match s {
    "network" => Some(EndOfStreamError::Network)
    "decode" => Some(EndOfStreamError::Decode)
    _ => None
  }
}

///|
/// AppendMode enum
pub(all) enum AppendMode {
  Segments
  Sequence
} derive(Eq, Show)

///|
/// Convert to string value
pub fn AppendMode::to_string(self : AppendMode) -> String {
  match self {
    AppendMode::Segments => "segments"
    AppendMode::Sequence => "sequence"
  }
}

///|
/// Parse from string value
pub fn AppendMode::from_string(s : String) -> AppendMode? {
  match s {
    "segments" => Some(AppendMode::Segments)
    "sequence" => Some(AppendMode::Sequence)
    _ => None
  }
}

///|
/// BufferedChangeEventInit dictionary
pub(all) struct BufferedChangeEventInit {
  addedRanges : TimeRanges?
  removedRanges : TimeRanges?
}

///|
/// Create a new BufferedChangeEventInit with default values
pub fn BufferedChangeEventInit::default() -> BufferedChangeEventInit {
  BufferedChangeEventInit::{ addedRanges: None, removedRanges: None }
}

///|
extern "js" fn BufferedChangeEventInit::to_js_ffi(
  self : BufferedChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   addedRanges: ((() => { const v = self.addedRanges; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   removedRanges: ((() => { const v = self.removedRanges; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn BufferedChangeEventInit::to_js(
  self : BufferedChangeEventInit,
) -> JsValue {
  BufferedChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn BufferedChangeEventInit::from_js_ffi(
  value : JsValue,
) -> BufferedChangeEventInit =
  #| (v) => ({
  #|   addedRanges: (v.addedRanges === undefined ? { $tag: 0 } : { $tag: 1, _0: v.addedRanges }),
  #|   removedRanges: (v.removedRanges === undefined ? { $tag: 0 } : { $tag: 1, _0: v.removedRanges })
  #| })

///|
/// Convert from JsValue
pub fn BufferedChangeEventInit::from_js(
  value : JsValue,
) -> BufferedChangeEventInit {
  BufferedChangeEventInit::from_js_ffi(value)
}

///|
/// MediaSource interface
pub type MediaSource

///|
pub extern "js" fn MediaSource::to_js_value(self : MediaSource) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaSource (unchecked)
pub extern "js" fn MediaSource::from_js_value(v : JsValue) -> MediaSource =
  #| (v) => v

///|
/// Safely cast JsValue to MediaSource (checked with instanceof)
pub extern "js" fn MediaSource::from_js_value_opt(v : JsValue) -> MediaSource? =
  #| (v) => (v instanceof MediaSource) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaSource (checked with instanceof)
pub extern "js" fn JsValue::as_media_source(self : JsValue) -> MediaSource? =
  #| (self) => (self instanceof MediaSource) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaSource (unchecked)
pub extern "js" fn JsValue::to_media_source(self : JsValue) -> MediaSource =
  #| (self) => self

///|
pub extern "js" fn MediaSource::to_event_target(
  self : MediaSource,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn MediaSource::as_managed_media_source(
  self : MediaSource,
) -> ManagedMediaSource? =
  #| (self) => (self instanceof ManagedMediaSource) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Error type for throwing methods
pub(all) enum MediaSourceSetDurationError {
  InvalidStateError(JsError)
  InvalidAccessError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_media_source_set_duration_error(
  e : JsError,
) -> MediaSourceSetDurationError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   if (n === 'InvalidAccessError') return { $tag: 1, _0: e };
  #|   return { $tag: 2, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum MediaSourceAddSourceBufferError {
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  InvalidAccessError(JsError)
  QuotaExceededError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_media_source_add_source_buffer_error(
  e : JsError,
) -> MediaSourceAddSourceBufferError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   if (n === 'NotSupportedError') return { $tag: 1, _0: e };
  #|   if (n === 'InvalidAccessError') return { $tag: 2, _0: e };
  #|   if (n === 'QuotaExceededError') return { $tag: 3, _0: e };
  #|   return { $tag: 4, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum MediaSourceRemoveSourceBufferError {
  NotFoundError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_media_source_remove_source_buffer_error(
  e : JsError,
) -> MediaSourceRemoveSourceBufferError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'NotFoundError') return { $tag: 0, _0: e };
  #|   return { $tag: 1, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum MediaSourceEndOfStreamError {
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_media_source_end_of_stream_error(
  e : JsError,
) -> MediaSourceEndOfStreamError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   return { $tag: 1, _0: e };
  #| }

///|
pub extern "js" fn MediaSource::new() -> MediaSource =
  #| () => new MediaSource()

///|
pub extern "js" fn MediaSource::get_handle(
  self : MediaSource,
) -> MediaSourceHandle =
  #| (self) => self.handle

///|
pub extern "js" fn MediaSource::get_source_buffers(
  self : MediaSource,
) -> SourceBufferList =
  #| (self) => self.sourceBuffers

///|
pub extern "js" fn MediaSource::get_active_source_buffers(
  self : MediaSource,
) -> SourceBufferList =
  #| (self) => self.activeSourceBuffers

///|
pub extern "js" fn MediaSource::get_ready_state(
  self : MediaSource,
) -> ReadyState =
  #| (self) => ['closed', 'open', 'ended'].indexOf(self.readyState)

///|
pub extern "js" fn MediaSource::get_duration(self : MediaSource) -> Double =
  #| (self) => self.duration

///|
pub extern "js" fn MediaSource::set_duration(
  self : MediaSource,
  value : Double,
) -> Result[Unit, MediaSourceSetDurationError] =
  #| (self, value) => (() => { try { self.duration = value; return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_media_source_set_duration_error(e) }; } })()

///|
pub extern "js" fn MediaSource::set_onsourceopen(
  self : MediaSource,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsourceopen = (e) => handler(e) }

///|
pub extern "js" fn MediaSource::clear_onsourceopen(self : MediaSource) -> Unit =
  #| (self) => { self.onsourceopen = null }

///|
pub extern "js" fn MediaSource::set_onsourceended(
  self : MediaSource,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsourceended = (e) => handler(e) }

///|
pub extern "js" fn MediaSource::clear_onsourceended(self : MediaSource) -> Unit =
  #| (self) => { self.onsourceended = null }

///|
pub extern "js" fn MediaSource::set_onsourceclose(
  self : MediaSource,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onsourceclose = (e) => handler(e) }

///|
pub extern "js" fn MediaSource::clear_onsourceclose(self : MediaSource) -> Unit =
  #| (self) => { self.onsourceclose = null }

///|
pub extern "js" fn MediaSource::get_can_construct_in_dedicated_worker(
  self : MediaSource,
) -> Bool =
  #| (self) => self.canConstructInDedicatedWorker

///|
pub extern "js" fn MediaSource::add_source_buffer(
  self : MediaSource,
  type_ : String,
) -> Result[SourceBuffer, MediaSourceAddSourceBufferError] =
  #| (self, type_) => (() => { try { return { $tag: 0, _0: self.addSourceBuffer(type_) }; } catch(e) { return { $tag: 1, _0: classify_media_source_add_source_buffer_error(e) }; } })()

///|
pub extern "js" fn MediaSource::remove_source_buffer(
  self : MediaSource,
  source_buffer : SourceBuffer,
) -> Result[Unit, MediaSourceRemoveSourceBufferError] =
  #| (self, source_buffer) => (() => { try { self.removeSourceBuffer(source_buffer); return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_media_source_remove_source_buffer_error(e) }; } })()

///|
pub extern "js" fn MediaSource::end_of_stream(
  self : MediaSource,
) -> Result[Unit, MediaSourceEndOfStreamError] =
  #| (self) => (() => { try { self.endOfStream(); return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_media_source_end_of_stream_error(e) }; } })()

///|
pub extern "js" fn MediaSource::end_of_stream_with_error(
  self : MediaSource,
  error : EndOfStreamError,
) -> Result[Unit, MediaSourceEndOfStreamError] =
  #| (self, error) => (() => { try { self.endOfStream(['network', 'decode'][error]); return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_media_source_end_of_stream_error(e) }; } })()

///|
pub extern "js" fn MediaSource::set_live_seekable_range(
  self : MediaSource,
  start : Double,
  end : Double,
) -> Unit =
  #| (self, start, end) => self.setLiveSeekableRange(start, end)

///|
pub extern "js" fn MediaSource::clear_live_seekable_range(
  self : MediaSource,
) -> Unit =
  #| (self) => self.clearLiveSeekableRange()

///|
pub extern "js" fn MediaSource::is_type_supported(type_ : String) -> Bool =
  #| (type_) => MediaSource.isTypeSupported(type_)

///|
/// MediaSourceHandle interface
pub type MediaSourceHandle

///|
pub extern "js" fn MediaSourceHandle::to_js_value(
  self : MediaSourceHandle,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaSourceHandle (unchecked)
pub extern "js" fn MediaSourceHandle::from_js_value(
  v : JsValue,
) -> MediaSourceHandle =
  #| (v) => v

///|
/// Safely cast JsValue to MediaSourceHandle (checked with instanceof)
pub extern "js" fn MediaSourceHandle::from_js_value_opt(
  v : JsValue,
) -> MediaSourceHandle? =
  #| (v) => (v instanceof MediaSourceHandle) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaSourceHandle (checked with instanceof)
pub extern "js" fn JsValue::as_media_source_handle(
  self : JsValue,
) -> MediaSourceHandle? =
  #| (self) => (self instanceof MediaSourceHandle) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaSourceHandle (unchecked)
pub extern "js" fn JsValue::to_media_source_handle(
  self : JsValue,
) -> MediaSourceHandle =
  #| (self) => self

///|
/// SourceBuffer interface
pub type SourceBuffer

///|
pub extern "js" fn SourceBuffer::to_js_value(self : SourceBuffer) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SourceBuffer (unchecked)
pub extern "js" fn SourceBuffer::from_js_value(v : JsValue) -> SourceBuffer =
  #| (v) => v

///|
/// Safely cast JsValue to SourceBuffer (checked with instanceof)
pub extern "js" fn SourceBuffer::from_js_value_opt(
  v : JsValue,
) -> SourceBuffer? =
  #| (v) => (v instanceof SourceBuffer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SourceBuffer (checked with instanceof)
pub extern "js" fn JsValue::as_source_buffer(self : JsValue) -> SourceBuffer? =
  #| (self) => (self instanceof SourceBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SourceBuffer (unchecked)
pub extern "js" fn JsValue::to_source_buffer(self : JsValue) -> SourceBuffer =
  #| (self) => self

///|
pub extern "js" fn SourceBuffer::to_event_target(
  self : SourceBuffer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SourceBuffer::as_managed_source_buffer(
  self : SourceBuffer,
) -> ManagedSourceBuffer? =
  #| (self) => (self instanceof ManagedSourceBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Error type for throwing methods
pub(all) enum SourceBufferSetModeError {
  InvalidStateError(JsError)
  InvalidAccessError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_source_buffer_set_mode_error(
  e : JsError,
) -> SourceBufferSetModeError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   if (n === 'InvalidAccessError') return { $tag: 1, _0: e };
  #|   return { $tag: 2, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum SourceBufferSetTimestampOffsetError {
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_source_buffer_set_timestamp_offset_error(
  e : JsError,
) -> SourceBufferSetTimestampOffsetError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   return { $tag: 1, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum SourceBufferSetAppendWindowStartError {
  InvalidStateError(JsError)
  InvalidAccessError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_source_buffer_set_append_window_start_error(
  e : JsError,
) -> SourceBufferSetAppendWindowStartError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   if (n === 'InvalidAccessError') return { $tag: 1, _0: e };
  #|   return { $tag: 2, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum SourceBufferSetAppendWindowEndError {
  InvalidStateError(JsError)
  InvalidAccessError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_source_buffer_set_append_window_end_error(
  e : JsError,
) -> SourceBufferSetAppendWindowEndError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   if (n === 'InvalidAccessError') return { $tag: 1, _0: e };
  #|   return { $tag: 2, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum SourceBufferAppendBufferError {
  InvalidStateError(JsError)
  QuotaExceededError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_source_buffer_append_buffer_error(
  e : JsError,
) -> SourceBufferAppendBufferError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   if (n === 'QuotaExceededError') return { $tag: 1, _0: e };
  #|   return { $tag: 2, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum SourceBufferAbortError {
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_source_buffer_abort_error(
  e : JsError,
) -> SourceBufferAbortError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   return { $tag: 1, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum SourceBufferChangeTypeError {
  TypeError(JsError)
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_source_buffer_change_type_error(
  e : JsError,
) -> SourceBufferChangeTypeError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'TypeError') return { $tag: 0, _0: e };
  #|   if (n === 'InvalidStateError') return { $tag: 1, _0: e };
  #|   if (n === 'NotSupportedError') return { $tag: 2, _0: e };
  #|   return { $tag: 3, _0: e };
  #| }

///|
/// Error type for throwing methods
pub(all) enum SourceBufferRemoveError {
  InvalidStateError(JsError)
  InvalidAccessError(JsError)
  OtherError(JsError)
}

///|
extern "js" fn classify_source_buffer_remove_error(
  e : JsError,
) -> SourceBufferRemoveError =
  #| (e) => {
  #|   const n = (e && e.name) || '';
  #|   if (n === 'InvalidStateError') return { $tag: 0, _0: e };
  #|   if (n === 'InvalidAccessError') return { $tag: 1, _0: e };
  #|   return { $tag: 2, _0: e };
  #| }

///|
pub extern "js" fn SourceBuffer::get_mode(self : SourceBuffer) -> AppendMode =
  #| (self) => ['segments', 'sequence'].indexOf(self.mode)

///|
pub extern "js" fn SourceBuffer::set_mode(
  self : SourceBuffer,
  value : AppendMode,
) -> Result[Unit, SourceBufferSetModeError] =
  #| (self, value) => (() => { try { self.mode = ['segments', 'sequence'][value]; return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_source_buffer_set_mode_error(e) }; } })()

///|
pub extern "js" fn SourceBuffer::get_updating(self : SourceBuffer) -> Bool =
  #| (self) => self.updating

///|
pub extern "js" fn SourceBuffer::get_buffered(
  self : SourceBuffer,
) -> TimeRanges =
  #| (self) => self.buffered

///|
pub extern "js" fn SourceBuffer::get_timestamp_offset(
  self : SourceBuffer,
) -> Double =
  #| (self) => self.timestampOffset

///|
pub extern "js" fn SourceBuffer::set_timestamp_offset(
  self : SourceBuffer,
  value : Double,
) -> Result[Unit, SourceBufferSetTimestampOffsetError] =
  #| (self, value) => (() => { try { self.timestampOffset = value; return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_source_buffer_set_timestamp_offset_error(e) }; } })()

///|
pub extern "js" fn SourceBuffer::get_audio_tracks(
  self : SourceBuffer,
) -> AudioTrackList =
  #| (self) => self.audioTracks

///|
pub extern "js" fn SourceBuffer::get_video_tracks(
  self : SourceBuffer,
) -> VideoTrackList =
  #| (self) => self.videoTracks

///|
pub extern "js" fn SourceBuffer::get_text_tracks(
  self : SourceBuffer,
) -> TextTrackList =
  #| (self) => self.textTracks

///|
pub extern "js" fn SourceBuffer::get_append_window_start(
  self : SourceBuffer,
) -> Double =
  #| (self) => self.appendWindowStart

///|
pub extern "js" fn SourceBuffer::set_append_window_start(
  self : SourceBuffer,
  value : Double,
) -> Result[Unit, SourceBufferSetAppendWindowStartError] =
  #| (self, value) => (() => { try { self.appendWindowStart = value; return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_source_buffer_set_append_window_start_error(e) }; } })()

///|
pub extern "js" fn SourceBuffer::get_append_window_end(
  self : SourceBuffer,
) -> Double =
  #| (self) => self.appendWindowEnd

///|
pub extern "js" fn SourceBuffer::set_append_window_end(
  self : SourceBuffer,
  value : Double,
) -> Result[Unit, SourceBufferSetAppendWindowEndError] =
  #| (self, value) => (() => { try { self.appendWindowEnd = value; return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_source_buffer_set_append_window_end_error(e) }; } })()

///|
pub extern "js" fn SourceBuffer::set_onupdatestart(
  self : SourceBuffer,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onupdatestart = (e) => handler(e) }

///|
pub extern "js" fn SourceBuffer::clear_onupdatestart(
  self : SourceBuffer,
) -> Unit =
  #| (self) => { self.onupdatestart = null }

///|
pub extern "js" fn SourceBuffer::set_onupdate(
  self : SourceBuffer,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onupdate = (e) => handler(e) }

///|
pub extern "js" fn SourceBuffer::clear_onupdate(self : SourceBuffer) -> Unit =
  #| (self) => { self.onupdate = null }

///|
pub extern "js" fn SourceBuffer::set_onupdateend(
  self : SourceBuffer,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onupdateend = (e) => handler(e) }

///|
pub extern "js" fn SourceBuffer::clear_onupdateend(self : SourceBuffer) -> Unit =
  #| (self) => { self.onupdateend = null }

///|
pub extern "js" fn SourceBuffer::set_onerror(
  self : SourceBuffer,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onerror = (e) => handler(e) }

///|
pub extern "js" fn SourceBuffer::clear_onerror(self : SourceBuffer) -> Unit =
  #| (self) => { self.onerror = null }

///|
pub extern "js" fn SourceBuffer::set_onabort(
  self : SourceBuffer,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onabort = (e) => handler(e) }

///|
pub extern "js" fn SourceBuffer::clear_onabort(self : SourceBuffer) -> Unit =
  #| (self) => { self.onabort = null }

///|
pub extern "js" fn SourceBuffer::append_buffer(
  self : SourceBuffer,
  data : BufferSource,
) -> Result[Unit, SourceBufferAppendBufferError] =
  #| (self, data) => (() => { try { self.appendBuffer(data); return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_source_buffer_append_buffer_error(e) }; } })()

///|
pub extern "js" fn SourceBuffer::abort(
  self : SourceBuffer,
) -> Result[Unit, SourceBufferAbortError] =
  #| (self) => (() => { try { self.abort(); return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_source_buffer_abort_error(e) }; } })()

///|
pub extern "js" fn SourceBuffer::change_type(
  self : SourceBuffer,
  type_ : String,
) -> Result[Unit, SourceBufferChangeTypeError] =
  #| (self, type_) => (() => { try { self.changeType(type_); return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_source_buffer_change_type_error(e) }; } })()

///|
pub extern "js" fn SourceBuffer::remove(
  self : SourceBuffer,
  start : Double,
  end : Double,
) -> Result[Unit, SourceBufferRemoveError] =
  #| (self, start, end) => (() => { try { self.remove(start, end); return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_source_buffer_remove_error(e) }; } })()

///|
pub extern "js" fn SourceBuffer::append_buffer_with_array_buffer_view(
  self : SourceBuffer,
  data : ArrayBufferView,
) -> Result[Unit, SourceBufferAppendBufferError] =
  #| (self, data) => (() => { try { self.appendBuffer(data); return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_source_buffer_append_buffer_error(e) }; } })()

///|
pub extern "js" fn SourceBuffer::append_buffer_with_array_buffer(
  self : SourceBuffer,
  data : ArrayBuffer,
) -> Result[Unit, SourceBufferAppendBufferError] =
  #| (self, data) => (() => { try { self.appendBuffer(data); return { $tag: 0, _0: undefined }; } catch(e) { return { $tag: 1, _0: classify_source_buffer_append_buffer_error(e) }; } })()

///|
/// SourceBufferList interface
pub type SourceBufferList

///|
pub extern "js" fn SourceBufferList::to_js_value(
  self : SourceBufferList,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to SourceBufferList (unchecked)
pub extern "js" fn SourceBufferList::from_js_value(
  v : JsValue,
) -> SourceBufferList =
  #| (v) => v

///|
/// Safely cast JsValue to SourceBufferList (checked with instanceof)
pub extern "js" fn SourceBufferList::from_js_value_opt(
  v : JsValue,
) -> SourceBufferList? =
  #| (v) => (v instanceof SourceBufferList) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to SourceBufferList (checked with instanceof)
pub extern "js" fn JsValue::as_source_buffer_list(
  self : JsValue,
) -> SourceBufferList? =
  #| (self) => (self instanceof SourceBufferList) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to SourceBufferList (unchecked)
pub extern "js" fn JsValue::to_source_buffer_list(
  self : JsValue,
) -> SourceBufferList =
  #| (self) => self

///|
pub extern "js" fn SourceBufferList::to_event_target(
  self : SourceBufferList,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn SourceBufferList::get_length(self : SourceBufferList) -> Int =
  #| (self) => self.length

///|
pub extern "js" fn SourceBufferList::set_onaddsourcebuffer(
  self : SourceBufferList,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onaddsourcebuffer = (e) => handler(e) }

///|
pub extern "js" fn SourceBufferList::clear_onaddsourcebuffer(
  self : SourceBufferList,
) -> Unit =
  #| (self) => { self.onaddsourcebuffer = null }

///|
pub extern "js" fn SourceBufferList::set_onremovesourcebuffer(
  self : SourceBufferList,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onremovesourcebuffer = (e) => handler(e) }

///|
pub extern "js" fn SourceBufferList::clear_onremovesourcebuffer(
  self : SourceBufferList,
) -> Unit =
  #| (self) => { self.onremovesourcebuffer = null }

///|
#alias("_[_]")
pub extern "js" fn SourceBufferList::get(
  self : SourceBufferList,
  index : Int,
) -> SourceBuffer =
  #| (self, index) => self[index]

///|
/// ManagedMediaSource interface
pub type ManagedMediaSource

///|
pub extern "js" fn ManagedMediaSource::to_js_value(
  self : ManagedMediaSource,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ManagedMediaSource (unchecked)
pub extern "js" fn ManagedMediaSource::from_js_value(
  v : JsValue,
) -> ManagedMediaSource =
  #| (v) => v

///|
/// Safely cast JsValue to ManagedMediaSource (checked with instanceof)
pub extern "js" fn ManagedMediaSource::from_js_value_opt(
  v : JsValue,
) -> ManagedMediaSource? =
  #| (v) => (v instanceof ManagedMediaSource) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ManagedMediaSource (checked with instanceof)
pub extern "js" fn JsValue::as_managed_media_source(
  self : JsValue,
) -> ManagedMediaSource? =
  #| (self) => (self instanceof ManagedMediaSource) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ManagedMediaSource (unchecked)
pub extern "js" fn JsValue::to_managed_media_source(
  self : JsValue,
) -> ManagedMediaSource =
  #| (self) => self

///|
pub extern "js" fn ManagedMediaSource::to_media_source(
  self : ManagedMediaSource,
) -> MediaSource =
  #| (self) => self

///|
pub extern "js" fn ManagedMediaSource::to_event_target(
  self : ManagedMediaSource,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ManagedMediaSource::new() -> ManagedMediaSource =
  #| () => new ManagedMediaSource()

///|
pub extern "js" fn ManagedMediaSource::get_streaming(
  self : ManagedMediaSource,
) -> Bool =
  #| (self) => self.streaming

///|
pub extern "js" fn ManagedMediaSource::set_onstartstreaming(
  self : ManagedMediaSource,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onstartstreaming = (e) => handler(e) }

///|
pub extern "js" fn ManagedMediaSource::clear_onstartstreaming(
  self : ManagedMediaSource,
) -> Unit =
  #| (self) => { self.onstartstreaming = null }

///|
pub extern "js" fn ManagedMediaSource::set_onendstreaming(
  self : ManagedMediaSource,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onendstreaming = (e) => handler(e) }

///|
pub extern "js" fn ManagedMediaSource::clear_onendstreaming(
  self : ManagedMediaSource,
) -> Unit =
  #| (self) => { self.onendstreaming = null }

///|
/// BufferedChangeEvent interface
pub type BufferedChangeEvent

///|
pub extern "js" fn BufferedChangeEvent::to_js_value(
  self : BufferedChangeEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to BufferedChangeEvent (unchecked)
pub extern "js" fn BufferedChangeEvent::from_js_value(
  v : JsValue,
) -> BufferedChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to BufferedChangeEvent (checked with instanceof)
pub extern "js" fn BufferedChangeEvent::from_js_value_opt(
  v : JsValue,
) -> BufferedChangeEvent? =
  #| (v) => (v instanceof BufferedChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BufferedChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_buffered_change_event(
  self : JsValue,
) -> BufferedChangeEvent? =
  #| (self) => (self instanceof BufferedChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BufferedChangeEvent (unchecked)
pub extern "js" fn JsValue::to_buffered_change_event(
  self : JsValue,
) -> BufferedChangeEvent =
  #| (self) => self

///|
pub extern "js" fn BufferedChangeEvent::to_event(
  self : BufferedChangeEvent,
) -> Event =
  #| (self) => self

///|
pub extern "js" fn BufferedChangeEvent::new(
  type_ : String,
) -> BufferedChangeEvent =
  #| (type_) => new BufferedChangeEvent(type_)

///|
extern "js" fn BufferedChangeEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> BufferedChangeEvent =
  #| (type_, event_init_dict) => new BufferedChangeEvent(type_, event_init_dict)

///|
pub fn BufferedChangeEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : BufferedChangeEventInit,
) -> BufferedChangeEvent {
  BufferedChangeEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

///|
pub extern "js" fn BufferedChangeEvent::get_added_ranges(
  self : BufferedChangeEvent,
) -> TimeRanges =
  #| (self) => self.addedRanges

///|
pub extern "js" fn BufferedChangeEvent::get_removed_ranges(
  self : BufferedChangeEvent,
) -> TimeRanges =
  #| (self) => self.removedRanges

///|
/// ManagedSourceBuffer interface
pub type ManagedSourceBuffer

///|
pub extern "js" fn ManagedSourceBuffer::to_js_value(
  self : ManagedSourceBuffer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ManagedSourceBuffer (unchecked)
pub extern "js" fn ManagedSourceBuffer::from_js_value(
  v : JsValue,
) -> ManagedSourceBuffer =
  #| (v) => v

///|
/// Safely cast JsValue to ManagedSourceBuffer (checked with instanceof)
pub extern "js" fn ManagedSourceBuffer::from_js_value_opt(
  v : JsValue,
) -> ManagedSourceBuffer? =
  #| (v) => (v instanceof ManagedSourceBuffer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ManagedSourceBuffer (checked with instanceof)
pub extern "js" fn JsValue::as_managed_source_buffer(
  self : JsValue,
) -> ManagedSourceBuffer? =
  #| (self) => (self instanceof ManagedSourceBuffer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ManagedSourceBuffer (unchecked)
pub extern "js" fn JsValue::to_managed_source_buffer(
  self : JsValue,
) -> ManagedSourceBuffer =
  #| (self) => self

///|
pub extern "js" fn ManagedSourceBuffer::to_source_buffer(
  self : ManagedSourceBuffer,
) -> SourceBuffer =
  #| (self) => self

///|
pub extern "js" fn ManagedSourceBuffer::to_event_target(
  self : ManagedSourceBuffer,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn ManagedSourceBuffer::set_onbufferedchange(
  self : ManagedSourceBuffer,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onbufferedchange = (e) => handler(e) }

///|
pub extern "js" fn ManagedSourceBuffer::clear_onbufferedchange(
  self : ManagedSourceBuffer,
) -> Unit =
  #| (self) => { self.onbufferedchange = null }
