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
  #| (handler) => handler

///|
/// RemotePlayback interface
pub type RemotePlayback

///|
pub extern "js" fn RemotePlayback::to_js_value(
  self : RemotePlayback,
) -> JsValue =
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
  #| (self) => self.state

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
