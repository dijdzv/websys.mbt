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
}

/// Convert to string value
pub fn AudioSessionType::to_string(self : AudioSessionType) -> String {
  match self {
    Auto => "auto"
    Playback => "playback"
    Transient => "transient"
    TransientSolo => "transient-solo"
    Ambient => "ambient"
    PlayAndRecord => "play-and-record"
  }
}

/// Parse from string value
pub fn AudioSessionType::from_string(s : String) -> AudioSessionType? {
  match s {
    "auto" => Some(Auto)
    "playback" => Some(Playback)
    "transient" => Some(Transient)
    "transient-solo" => Some(TransientSolo)
    "ambient" => Some(Ambient)
    "play-and-record" => Some(PlayAndRecord)
    _ => None
  }
}

///|
/// AudioSessionState enum
pub(all) enum AudioSessionState {
  Inactive
  Active
  Interrupted
}

/// Convert to string value
pub fn AudioSessionState::to_string(self : AudioSessionState) -> String {
  match self {
    Inactive => "inactive"
    Active => "active"
    Interrupted => "interrupted"
  }
}

/// Parse from string value
pub fn AudioSessionState::from_string(s : String) -> AudioSessionState? {
  match s {
    "inactive" => Some(Inactive)
    "active" => Some(Active)
    "interrupted" => Some(Interrupted)
    _ => None
  }
}

///|
/// AudioSession interface
pub type AudioSession

pub extern "js" fn AudioSession::to_js_value(self : AudioSession) -> JsValue =
  #| (self) => self

pub extern "js" fn AudioSession::get_type(self : AudioSession) -> AudioSessionType =
  #| (self) => self.type

pub extern "js" fn AudioSession::set_type(self : AudioSession, value : AudioSessionType) -> Unit =
  #| (self, value) => { self.type = value }

pub extern "js" fn AudioSession::get_state(self : AudioSession) -> AudioSessionState =
  #| (self) => self.state

pub extern "js" fn AudioSession::get_onstatechange(self : AudioSession) -> EventHandler =
  #| (self) => self.onstatechange

pub extern "js" fn AudioSession::set_onstatechange(self : AudioSession, value : EventHandler) -> Unit =
  #| (self, value) => { self.onstatechange = value }

