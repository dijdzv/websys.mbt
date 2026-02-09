// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/media-source

///|
/// ReadyState enum
pub(all) enum ReadyState {
  Closed
  Open
  Ended
}

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
}

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
}

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
  #|   addedRanges: ((() => { const v = self.addedRanges; if (v.$tag !== 1) return undefined; return v._0; })()),
  #|   removedRanges: ((() => { const v = self.removedRanges; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn BufferedChangeEventInit::to_js(
  self : BufferedChangeEventInit,
) -> JsValue {
  BufferedChangeEventInit::to_js_ffi(self)
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
) -> Unit =
  #| (self, value) => { self.duration = value }

///|
pub extern "js" fn MediaSource::get_onsourceopen(
  self : MediaSource,
) -> EventHandler =
  #| (self) => self.onsourceopen

///|
pub extern "js" fn MediaSource::set_onsourceopen(
  self : MediaSource,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsourceopen = value }

///|
pub extern "js" fn MediaSource::get_onsourceended(
  self : MediaSource,
) -> EventHandler =
  #| (self) => self.onsourceended

///|
pub extern "js" fn MediaSource::set_onsourceended(
  self : MediaSource,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsourceended = value }

///|
pub extern "js" fn MediaSource::get_onsourceclose(
  self : MediaSource,
) -> EventHandler =
  #| (self) => self.onsourceclose

///|
pub extern "js" fn MediaSource::set_onsourceclose(
  self : MediaSource,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onsourceclose = value }

///|
pub extern "js" fn MediaSource::get_can_construct_in_dedicated_worker(
  self : MediaSource,
) -> Bool =
  #| (self) => self.canConstructInDedicatedWorker

///|
pub extern "js" fn MediaSource::add_source_buffer(
  self : MediaSource,
  type_ : String,
) -> SourceBuffer =
  #| (self, type_) => self.addSourceBuffer(type_)

///|
pub extern "js" fn MediaSource::remove_source_buffer(
  self : MediaSource,
  source_buffer : SourceBuffer,
) -> Unit =
  #| (self, source_buffer) => self.removeSourceBuffer(source_buffer)

///|
pub extern "js" fn MediaSource::end_of_stream(self : MediaSource) -> Unit =
  #| (self) => self.endOfStream()

///|
pub extern "js" fn MediaSource::end_of_stream_with_error(
  self : MediaSource,
  error : EndOfStreamError,
) -> Unit =
  #| (self, error) => self.endOfStream(['network', 'decode'][error])

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
pub extern "js" fn SourceBuffer::get_mode(self : SourceBuffer) -> AppendMode =
  #| (self) => ['segments', 'sequence'].indexOf(self.mode)

///|
pub extern "js" fn SourceBuffer::set_mode(
  self : SourceBuffer,
  value : AppendMode,
) -> Unit =
  #| (self, value) => { self.mode = ['segments', 'sequence'][value] }

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
) -> Unit =
  #| (self, value) => { self.timestampOffset = value }

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
) -> Unit =
  #| (self, value) => { self.appendWindowStart = value }

///|
pub extern "js" fn SourceBuffer::get_append_window_end(
  self : SourceBuffer,
) -> Double =
  #| (self) => self.appendWindowEnd

///|
pub extern "js" fn SourceBuffer::set_append_window_end(
  self : SourceBuffer,
  value : Double,
) -> Unit =
  #| (self, value) => { self.appendWindowEnd = value }

///|
pub extern "js" fn SourceBuffer::get_onupdatestart(
  self : SourceBuffer,
) -> EventHandler =
  #| (self) => self.onupdatestart

///|
pub extern "js" fn SourceBuffer::set_onupdatestart(
  self : SourceBuffer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onupdatestart = value }

///|
pub extern "js" fn SourceBuffer::get_onupdate(
  self : SourceBuffer,
) -> EventHandler =
  #| (self) => self.onupdate

///|
pub extern "js" fn SourceBuffer::set_onupdate(
  self : SourceBuffer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onupdate = value }

///|
pub extern "js" fn SourceBuffer::get_onupdateend(
  self : SourceBuffer,
) -> EventHandler =
  #| (self) => self.onupdateend

///|
pub extern "js" fn SourceBuffer::set_onupdateend(
  self : SourceBuffer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onupdateend = value }

///|
pub extern "js" fn SourceBuffer::get_onerror(
  self : SourceBuffer,
) -> EventHandler =
  #| (self) => self.onerror

///|
pub extern "js" fn SourceBuffer::set_onerror(
  self : SourceBuffer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onerror = value }

///|
pub extern "js" fn SourceBuffer::get_onabort(
  self : SourceBuffer,
) -> EventHandler =
  #| (self) => self.onabort

///|
pub extern "js" fn SourceBuffer::set_onabort(
  self : SourceBuffer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onabort = value }

///|
pub extern "js" fn SourceBuffer::append_buffer(
  self : SourceBuffer,
  data : BufferSource,
) -> Unit =
  #| (self, data) => self.appendBuffer(data)

///|
pub extern "js" fn SourceBuffer::abort(self : SourceBuffer) -> Unit =
  #| (self) => self.abort()

///|
pub extern "js" fn SourceBuffer::change_type(
  self : SourceBuffer,
  type_ : String,
) -> Unit =
  #| (self, type_) => self.changeType(type_)

///|
pub extern "js" fn SourceBuffer::remove(
  self : SourceBuffer,
  start : Double,
  end : Double,
) -> Unit =
  #| (self, start, end) => self.remove(start, end)

///|
pub extern "js" fn SourceBuffer::append_buffer_with_array_buffer_view(
  self : SourceBuffer,
  data : ArrayBufferView,
) -> Unit =
  #| (self, data) => self.appendBuffer(data)

///|
pub extern "js" fn SourceBuffer::append_buffer_with_array_buffer(
  self : SourceBuffer,
  data : ArrayBuffer,
) -> Unit =
  #| (self, data) => self.appendBuffer(data)

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
pub extern "js" fn SourceBufferList::get_onaddsourcebuffer(
  self : SourceBufferList,
) -> EventHandler =
  #| (self) => self.onaddsourcebuffer

///|
pub extern "js" fn SourceBufferList::set_onaddsourcebuffer(
  self : SourceBufferList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onaddsourcebuffer = value }

///|
pub extern "js" fn SourceBufferList::get_onremovesourcebuffer(
  self : SourceBufferList,
) -> EventHandler =
  #| (self) => self.onremovesourcebuffer

///|
pub extern "js" fn SourceBufferList::set_onremovesourcebuffer(
  self : SourceBufferList,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onremovesourcebuffer = value }

///|
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
pub extern "js" fn ManagedMediaSource::get_onstartstreaming(
  self : ManagedMediaSource,
) -> EventHandler =
  #| (self) => self.onstartstreaming

///|
pub extern "js" fn ManagedMediaSource::set_onstartstreaming(
  self : ManagedMediaSource,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstartstreaming = value }

///|
pub extern "js" fn ManagedMediaSource::get_onendstreaming(
  self : ManagedMediaSource,
) -> EventHandler =
  #| (self) => self.onendstreaming

///|
pub extern "js" fn ManagedMediaSource::set_onendstreaming(
  self : ManagedMediaSource,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onendstreaming = value }

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
pub extern "js" fn ManagedSourceBuffer::get_onbufferedchange(
  self : ManagedSourceBuffer,
) -> EventHandler =
  #| (self) => self.onbufferedchange

///|
pub extern "js" fn ManagedSourceBuffer::set_onbufferedchange(
  self : ManagedSourceBuffer,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onbufferedchange = value }
