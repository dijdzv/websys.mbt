// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/remote-playback

///|
/// RemotePlaybackState enum
pub(all) enum RemotePlaybackState {
  Connecting
  Connected
  Disconnected
} derive(Eq, Show)

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
/// Error type for throwing methods
pub(all) enum RemotePlaybackWatchAvailabilityError {
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum RemotePlaybackCancelWatchAvailabilityError {
  NotFoundError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
}

///|
/// Error type for throwing methods
pub(all) enum RemotePlaybackPromptError {
  NotFoundError(JsError)
  OperationError(JsError)
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  NotSupportedError(JsError)
  InvalidAccessError(JsError)
  OtherError(JsError)
}

///|
pub extern "js" fn RemotePlayback::watch_availability(
  self : RemotePlayback,
  callback : RemotePlaybackAvailabilityCallback,
) -> Promise[Result[Int, RemotePlaybackWatchAvailabilityError]] =
  #| (self, callback) => self.watchAvailability(callback).then(v => ({ $tag: 1, _0: v })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'InvalidStateError') return { $tag: 0, _0: e }; if (n === 'NotSupportedError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub extern "js" fn RemotePlayback::cancel_watch_availability(
  self : RemotePlayback,
) -> Promise[Result[Unit, RemotePlaybackCancelWatchAvailabilityError]] =
  #| (self) => self.cancelWatchAvailability().then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotFoundError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub extern "js" fn RemotePlayback::cancel_watch_availability_with_id(
  self : RemotePlayback,
  id : Int,
) -> Promise[Result[Unit, RemotePlaybackCancelWatchAvailabilityError]] =
  #| (self, id) => self.cancelWatchAvailability(id).then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotFoundError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub extern "js" fn RemotePlayback::get_state(
  self : RemotePlayback,
) -> RemotePlaybackState =
  #| (self) => ['connecting', 'connected', 'disconnected'].indexOf(self.state)

///|
pub extern "js" fn RemotePlayback::set_onconnecting(
  self : RemotePlayback,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onconnecting = (e) => handler(e) }

///|
pub extern "js" fn RemotePlayback::clear_onconnecting(
  self : RemotePlayback,
) -> Unit =
  #| (self) => { self.onconnecting = null }

///|
pub extern "js" fn RemotePlayback::set_onconnect(
  self : RemotePlayback,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onconnect = (e) => handler(e) }

///|
pub extern "js" fn RemotePlayback::clear_onconnect(
  self : RemotePlayback,
) -> Unit =
  #| (self) => { self.onconnect = null }

///|
pub extern "js" fn RemotePlayback::set_ondisconnect(
  self : RemotePlayback,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondisconnect = (e) => handler(e) }

///|
pub extern "js" fn RemotePlayback::clear_ondisconnect(
  self : RemotePlayback,
) -> Unit =
  #| (self) => { self.ondisconnect = null }

///|
pub extern "js" fn RemotePlayback::prompt(
  self : RemotePlayback,
) -> Promise[Result[Unit, RemotePlaybackPromptError]] =
  #| (self) => self.prompt().then(v => ({ $tag: 1, _0: undefined })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotFoundError') return { $tag: 0, _0: e }; if (n === 'OperationError') return { $tag: 1, _0: e }; if (n === 'NotAllowedError') return { $tag: 2, _0: e }; if (n === 'InvalidStateError') return { $tag: 3, _0: e }; if (n === 'NotSupportedError') return { $tag: 4, _0: e }; if (n === 'InvalidAccessError') return { $tag: 5, _0: e }; return { $tag: 6, _0: e }; })() }))
