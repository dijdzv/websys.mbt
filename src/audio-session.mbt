// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/audio-session

///|
/// AudioSessionType enum
pub(all) enum AudioSessionType {
  Auto
  Playback
  Transient
  TransientSolo
  Ambient
  PlayAndRecord
} derive(Eq, Show)

///|
/// Convert to string value
pub fn AudioSessionType::to_string(self : AudioSessionType) -> String {
  match self {
    AudioSessionType::Auto => "auto"
    AudioSessionType::Playback => "playback"
    AudioSessionType::Transient => "transient"
    AudioSessionType::TransientSolo => "transient-solo"
    AudioSessionType::Ambient => "ambient"
    AudioSessionType::PlayAndRecord => "play-and-record"
  }
}

///|
/// Parse from string value
pub fn AudioSessionType::from_string(s : String) -> AudioSessionType? {
  match s {
    "auto" => Some(AudioSessionType::Auto)
    "playback" => Some(AudioSessionType::Playback)
    "transient" => Some(AudioSessionType::Transient)
    "transient-solo" => Some(AudioSessionType::TransientSolo)
    "ambient" => Some(AudioSessionType::Ambient)
    "play-and-record" => Some(AudioSessionType::PlayAndRecord)
    _ => None
  }
}

///|
/// AudioSessionState enum
pub(all) enum AudioSessionState {
  Inactive
  Active
  Interrupted
} derive(Eq, Show)

///|
/// Convert to string value
pub fn AudioSessionState::to_string(self : AudioSessionState) -> String {
  match self {
    AudioSessionState::Inactive => "inactive"
    AudioSessionState::Active => "active"
    AudioSessionState::Interrupted => "interrupted"
  }
}

///|
/// Parse from string value
pub fn AudioSessionState::from_string(s : String) -> AudioSessionState? {
  match s {
    "inactive" => Some(AudioSessionState::Inactive)
    "active" => Some(AudioSessionState::Active)
    "interrupted" => Some(AudioSessionState::Interrupted)
    _ => None
  }
}

///|
/// AudioSession interface
pub type AudioSession

///|
pub extern "js" fn AudioSession::to_js_value(self : AudioSession) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to AudioSession (unchecked)
pub extern "js" fn AudioSession::from_js_value(v : JsValue) -> AudioSession =
  #| (v) => v

///|
/// Safely cast JsValue to AudioSession (checked with instanceof)
pub extern "js" fn AudioSession::from_js_value_opt(
  v : JsValue,
) -> AudioSession? =
  #| (v) => (v instanceof AudioSession) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to AudioSession (checked with instanceof)
pub extern "js" fn JsValue::as_audio_session(self : JsValue) -> AudioSession? =
  #| (self) => (self instanceof AudioSession) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to AudioSession (unchecked)
pub extern "js" fn JsValue::to_audio_session(self : JsValue) -> AudioSession =
  #| (self) => self

///|
pub extern "js" fn AudioSession::to_event_target(
  self : AudioSession,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn AudioSession::get_type(
  self : AudioSession,
) -> AudioSessionType =
  #| (self) => ['auto', 'playback', 'transient', 'transient-solo', 'ambient', 'play-and-record'].indexOf(self.type)

///|
pub extern "js" fn AudioSession::set_type(
  self : AudioSession,
  value : AudioSessionType,
) -> Unit =
  #| (self, value) => { self.type = ['auto', 'playback', 'transient', 'transient-solo', 'ambient', 'play-and-record'][value] }

///|
pub extern "js" fn AudioSession::get_state(
  self : AudioSession,
) -> AudioSessionState =
  #| (self) => ['inactive', 'active', 'interrupted'].indexOf(self.state)

///|
pub extern "js" fn AudioSession::get_onstatechange(
  self : AudioSession,
) -> EventHandler =
  #| (self) => self.onstatechange

///|
pub extern "js" fn AudioSession::set_onstatechange(
  self : AudioSession,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onstatechange = value }
