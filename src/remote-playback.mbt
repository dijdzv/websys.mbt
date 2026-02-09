// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/remote-playback

///|
/// RemotePlaybackState enum
pub(all) enum RemotePlaybackState {
  Connecting
  Connected
  Disconnected
}

///|
/// Convert to string value
pub fn RemotePlaybackState::to_string(self : RemotePlaybackState) -> String {
  match self {
    RemotePlaybackState::Connecting => "connecting"
    RemotePlaybackState::Connected => "connected"
    RemotePlaybackState::Disconnected => "disconnected"
  }
}

///|
/// Parse from string value
pub fn RemotePlaybackState::from_string(s : String) -> RemotePlaybackState? {
  match s {
    "connecting" => Some(RemotePlaybackState::Connecting)
    "connected" => Some(RemotePlaybackState::Connected)
    "disconnected" => Some(RemotePlaybackState::Disconnected)
    _ => None
  }
}

///|
/// RemotePlaybackAvailabilityCallback callback interface
pub type RemotePlaybackAvailabilityCallback

///|
/// Create RemotePlaybackAvailabilityCallback from a MoonBit function
pub extern "js" fn RemotePlaybackAvailabilityCallback::from_fn(
  handler : (Bool) -> Unit,
) -> RemotePlaybackAvailabilityCallback =
  #| (handler) => (a0) => handler(a0)

///|
/// RemotePlayback interface
pub type RemotePlayback

///|
pub extern "js" fn RemotePlayback::to_js_value(
  self : RemotePlayback,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to RemotePlayback (unchecked)
pub extern "js" fn RemotePlayback::from_js_value(v : JsValue) -> RemotePlayback =
  #| (v) => v

///|
/// Safely cast JsValue to RemotePlayback (checked with instanceof)
pub extern "js" fn RemotePlayback::from_js_value_opt(
  v : JsValue,
) -> RemotePlayback? =
  #| (v) => (v instanceof RemotePlayback) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to RemotePlayback (checked with instanceof)
pub extern "js" fn JsValue::as_remote_playback(
  self : JsValue,
) -> RemotePlayback? =
  #| (self) => (self instanceof RemotePlayback) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to RemotePlayback (unchecked)
pub extern "js" fn JsValue::to_remote_playback(
  self : JsValue,
) -> RemotePlayback =
  #| (self) => self

///|
pub extern "js" fn RemotePlayback::to_event_target(
  self : RemotePlayback,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn RemotePlayback::watch_availability(
  self : RemotePlayback,
  callback : RemotePlaybackAvailabilityCallback,
) -> Promise[Int] =
  #| (self, callback) => self.watchAvailability(callback)

///|
pub extern "js" fn RemotePlayback::cancel_watch_availability(
  self : RemotePlayback,
) -> Promise[Unit] =
  #| (self) => self.cancelWatchAvailability()

///|
pub extern "js" fn RemotePlayback::cancel_watch_availability_with_id(
  self : RemotePlayback,
  id : Int,
) -> Promise[Unit] =
  #| (self, id) => self.cancelWatchAvailability(id)

///|
pub extern "js" fn RemotePlayback::get_state(
  self : RemotePlayback,
) -> RemotePlaybackState =
  #| (self) => ['connecting', 'connected', 'disconnected'].indexOf(self.state)

///|
pub extern "js" fn RemotePlayback::get_onconnecting(
  self : RemotePlayback,
) -> EventHandler =
  #| (self) => self.onconnecting

///|
pub extern "js" fn RemotePlayback::set_onconnecting(
  self : RemotePlayback,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onconnecting = value }

///|
pub extern "js" fn RemotePlayback::get_onconnect(
  self : RemotePlayback,
) -> EventHandler =
  #| (self) => self.onconnect

///|
pub extern "js" fn RemotePlayback::set_onconnect(
  self : RemotePlayback,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onconnect = value }

///|
pub extern "js" fn RemotePlayback::get_ondisconnect(
  self : RemotePlayback,
) -> EventHandler =
  #| (self) => self.ondisconnect

///|
pub extern "js" fn RemotePlayback::set_ondisconnect(
  self : RemotePlayback,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondisconnect = value }

///|
pub extern "js" fn RemotePlayback::prompt(
  self : RemotePlayback,
) -> Promise[Unit] =
  #| (self) => self.prompt()
