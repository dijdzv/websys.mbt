// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mediacapture-streams

///|
/// ConstrainULong typedef
pub type ConstrainULong

///|
pub extern "js" fn ConstrainULong::to_js_value(
  self : ConstrainULong,
) -> JsValue =
  #| (self) => self

///|
/// Create ConstrainULong from Int
pub extern "js" fn ConstrainULong::from_int(v : Int) -> ConstrainULong =
  #| (v) => v

///|
/// Create ConstrainULong from ConstrainULongRange
pub extern "js" fn ConstrainULong::from_constrain_u_long_range(
  v : ConstrainULongRange,
) -> ConstrainULong =
  #| (v) => v

///|
/// ConstrainDouble typedef
pub type ConstrainDouble

///|
pub extern "js" fn ConstrainDouble::to_js_value(
  self : ConstrainDouble,
) -> JsValue =
  #| (self) => self

///|
/// Create ConstrainDouble from Double
pub extern "js" fn ConstrainDouble::from_double(v : Double) -> ConstrainDouble =
  #| (v) => v

///|
/// Create ConstrainDouble from ConstrainDoubleRange
pub extern "js" fn ConstrainDouble::from_constrain_double_range(
  v : ConstrainDoubleRange,
) -> ConstrainDouble =
  #| (v) => v

///|
/// ConstrainBoolean typedef
pub type ConstrainBoolean

///|
pub extern "js" fn ConstrainBoolean::to_js_value(
  self : ConstrainBoolean,
) -> JsValue =
  #| (self) => self

///|
/// Create ConstrainBoolean from Bool
pub extern "js" fn ConstrainBoolean::from_bool(v : Bool) -> ConstrainBoolean =
  #| (v) => v

///|
/// Create ConstrainBoolean from ConstrainBooleanParameters
pub extern "js" fn ConstrainBoolean::from_constrain_boolean_parameters(
  v : ConstrainBooleanParameters,
) -> ConstrainBoolean =
  #| (v) => v

///|
/// ConstrainDOMString typedef
pub type ConstrainDOMString

///|
pub extern "js" fn ConstrainDOMString::to_js_value(
  self : ConstrainDOMString,
) -> JsValue =
  #| (self) => self

///|
/// Create ConstrainDOMString from String
pub extern "js" fn ConstrainDOMString::from_string(
  v : String,
) -> ConstrainDOMString =
  #| (v) => v

///|
/// Create ConstrainDOMString from Array[String]
pub extern "js" fn ConstrainDOMString::from_array_of_string(
  v : Array[String],
) -> ConstrainDOMString =
  #| (v) => v

///|
/// Create ConstrainDOMString from ConstrainDOMStringParameters
pub extern "js" fn ConstrainDOMString::from_constrain_d_o_m_string_parameters(
  v : ConstrainDOMStringParameters,
) -> ConstrainDOMString =
  #| (v) => v

///|
/// ConstrainBooleanOrDOMString typedef
pub type ConstrainBooleanOrDOMString

///|
pub extern "js" fn ConstrainBooleanOrDOMString::to_js_value(
  self : ConstrainBooleanOrDOMString,
) -> JsValue =
  #| (self) => self

///|
/// Create ConstrainBooleanOrDOMString from Bool
pub extern "js" fn ConstrainBooleanOrDOMString::from_bool(
  v : Bool,
) -> ConstrainBooleanOrDOMString =
  #| (v) => v

///|
/// Create ConstrainBooleanOrDOMString from String
pub extern "js" fn ConstrainBooleanOrDOMString::from_string(
  v : String,
) -> ConstrainBooleanOrDOMString =
  #| (v) => v

///|
/// Create ConstrainBooleanOrDOMString from ConstrainBooleanOrDOMStringParameters
pub extern "js" fn ConstrainBooleanOrDOMString::from_constrain_boolean_or_d_o_m_string_parameters(
  v : ConstrainBooleanOrDOMStringParameters,
) -> ConstrainBooleanOrDOMString =
  #| (v) => v

///|
/// MediaStreamTrackState enum
pub(all) enum MediaStreamTrackState {
  Live
  Ended
}

///|
/// Convert to string value
pub fn MediaStreamTrackState::to_string(self : MediaStreamTrackState) -> String {
  match self {
    Live => "live"
    Ended => "ended"
  }
}

///|
/// Parse from string value
pub fn MediaStreamTrackState::from_string(s : String) -> MediaStreamTrackState? {
  match s {
    "live" => Some(Live)
    "ended" => Some(Ended)
    _ => None
  }
}

///|
/// VideoFacingModeEnum enum
pub(all) enum VideoFacingModeEnum {
  User
  Environment
  Left
  Right
}

///|
/// Convert to string value
pub fn VideoFacingModeEnum::to_string(self : VideoFacingModeEnum) -> String {
  match self {
    User => "user"
    Environment => "environment"
    Left => "left"
    Right => "right"
  }
}

///|
/// Parse from string value
pub fn VideoFacingModeEnum::from_string(s : String) -> VideoFacingModeEnum? {
  match s {
    "user" => Some(User)
    "environment" => Some(Environment)
    "left" => Some(Left)
    "right" => Some(Right)
    _ => None
  }
}

///|
/// VideoResizeModeEnum enum
pub(all) enum VideoResizeModeEnum {
  None
  CropAndScale
}

///|
/// Convert to string value
pub fn VideoResizeModeEnum::to_string(self : VideoResizeModeEnum) -> String {
  match self {
    None => "none"
    CropAndScale => "crop-and-scale"
  }
}

///|
/// Parse from string value
pub fn VideoResizeModeEnum::from_string(s : String) -> VideoResizeModeEnum? {
  match s {
    "none" => Some(None)
    "crop-and-scale" => Some(CropAndScale)
    _ => None
  }
}

///|
/// EchoCancellationModeEnum enum
pub(all) enum EchoCancellationModeEnum {
  All
  RemoteOnly
}

///|
/// Convert to string value
pub fn EchoCancellationModeEnum::to_string(
  self : EchoCancellationModeEnum,
) -> String {
  match self {
    All => "all"
    RemoteOnly => "remote-only"
  }
}

///|
/// Parse from string value
pub fn EchoCancellationModeEnum::from_string(
  s : String,
) -> EchoCancellationModeEnum? {
  match s {
    "all" => Some(All)
    "remote-only" => Some(RemoteOnly)
    _ => None
  }
}

///|
/// MediaDeviceKind enum
pub(all) enum MediaDeviceKind {
  Audioinput
  Audiooutput
  Videoinput
}

///|
/// Convert to string value
pub fn MediaDeviceKind::to_string(self : MediaDeviceKind) -> String {
  match self {
    Audioinput => "audioinput"
    Audiooutput => "audiooutput"
    Videoinput => "videoinput"
  }
}

///|
/// Parse from string value
pub fn MediaDeviceKind::from_string(s : String) -> MediaDeviceKind? {
  match s {
    "audioinput" => Some(Audioinput)
    "audiooutput" => Some(Audiooutput)
    "videoinput" => Some(Videoinput)
    _ => None
  }
}

///|
/// MediaTrackConstraints dictionary
pub struct MediaTrackConstraints {
  advanced : Array[MediaTrackConstraintSet]?
}

///|
/// Create a new MediaTrackConstraints with default values
pub fn MediaTrackConstraints::default() -> MediaTrackConstraints {
  MediaTrackConstraints::{ advanced: None }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaTrackConstraints::to_js(
  self : MediaTrackConstraints,
) -> JsValue =
  #| (self) => ({
  #|   advanced: self.advanced
  #| })

///|
/// MediaStreamTrackEventInit dictionary
pub struct MediaStreamTrackEventInit {
  track : MediaStreamTrack
}

///|
/// Create a new MediaStreamTrackEventInit with default values
pub fn MediaStreamTrackEventInit::default() -> MediaStreamTrackEventInit {
  MediaStreamTrackEventInit::{ track: panic() }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaStreamTrackEventInit::to_js(
  self : MediaStreamTrackEventInit,
) -> JsValue =
  #| (self) => ({
  #|   track: self.track
  #| })

///|
/// DeviceChangeEventInit dictionary
pub struct DeviceChangeEventInit {
  devices : Array[MediaDeviceInfo]?
}

///|
/// Create a new DeviceChangeEventInit with default values
pub fn DeviceChangeEventInit::default() -> DeviceChangeEventInit {
  DeviceChangeEventInit::{ devices: None }
}

///|
/// Convert to JsValue
pub extern "js" fn DeviceChangeEventInit::to_js(
  self : DeviceChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   devices: self.devices
  #| })

///|
/// MediaStreamConstraints dictionary
pub struct MediaStreamConstraints {
  video : JsValue?
  audio : JsValue?
  preferCurrentTab : Bool?
  peerIdentity : String?
}

///|
/// Create a new MediaStreamConstraints with default values
pub fn MediaStreamConstraints::default() -> MediaStreamConstraints {
  MediaStreamConstraints::{
    video: None,
    audio: None,
    preferCurrentTab: None,
    peerIdentity: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaStreamConstraints::to_js(
  self : MediaStreamConstraints,
) -> JsValue =
  #| (self) => ({
  #|   video: self.video,
  #|   audio: self.audio,
  #|   preferCurrentTab: self.preferCurrentTab,
  #|   peerIdentity: self.peerIdentity
  #| })

///|
/// DoubleRange dictionary
pub struct DoubleRange {
  max : Double?
  min : Double?
}

///|
/// Create a new DoubleRange with default values
pub fn DoubleRange::default() -> DoubleRange {
  DoubleRange::{ max: None, min: None }
}

///|
/// Convert to JsValue
pub extern "js" fn DoubleRange::to_js(self : DoubleRange) -> JsValue =
  #| (self) => ({
  #|   max: self.max,
  #|   min: self.min
  #| })

///|
/// ConstrainDoubleRange dictionary
pub struct ConstrainDoubleRange {
  max : Double?
  min : Double?
  exact : Double?
  ideal : Double?
}

///|
/// Create a new ConstrainDoubleRange with default values
pub fn ConstrainDoubleRange::default() -> ConstrainDoubleRange {
  ConstrainDoubleRange::{ max: None, min: None, exact: None, ideal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ConstrainDoubleRange::to_js(
  self : ConstrainDoubleRange,
) -> JsValue =
  #| (self) => ({
  #|   max: self.max,
  #|   min: self.min,
  #|   exact: self.exact,
  #|   ideal: self.ideal
  #| })

///|
/// ULongRange dictionary
pub struct ULongRange {
  max : Int?
  min : Int?
}

///|
/// Create a new ULongRange with default values
pub fn ULongRange::default() -> ULongRange {
  ULongRange::{ max: None, min: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ULongRange::to_js(self : ULongRange) -> JsValue =
  #| (self) => ({
  #|   max: self.max,
  #|   min: self.min
  #| })

///|
/// ConstrainULongRange dictionary
pub struct ConstrainULongRange {
  max : Int?
  min : Int?
  exact : Int?
  ideal : Int?
}

///|
/// Create a new ConstrainULongRange with default values
pub fn ConstrainULongRange::default() -> ConstrainULongRange {
  ConstrainULongRange::{ max: None, min: None, exact: None, ideal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ConstrainULongRange::to_js(
  self : ConstrainULongRange,
) -> JsValue =
  #| (self) => ({
  #|   max: self.max,
  #|   min: self.min,
  #|   exact: self.exact,
  #|   ideal: self.ideal
  #| })

///|
/// ConstrainBooleanParameters dictionary
pub struct ConstrainBooleanParameters {
  exact : Bool?
  ideal : Bool?
}

///|
/// Create a new ConstrainBooleanParameters with default values
pub fn ConstrainBooleanParameters::default() -> ConstrainBooleanParameters {
  ConstrainBooleanParameters::{ exact: None, ideal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ConstrainBooleanParameters::to_js(
  self : ConstrainBooleanParameters,
) -> JsValue =
  #| (self) => ({
  #|   exact: self.exact,
  #|   ideal: self.ideal
  #| })

///|
/// ConstrainDOMStringParameters dictionary
pub struct ConstrainDOMStringParameters {
  exact : JsValue?
  ideal : JsValue?
}

///|
/// Create a new ConstrainDOMStringParameters with default values
pub fn ConstrainDOMStringParameters::default() -> ConstrainDOMStringParameters {
  ConstrainDOMStringParameters::{ exact: None, ideal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ConstrainDOMStringParameters::to_js(
  self : ConstrainDOMStringParameters,
) -> JsValue =
  #| (self) => ({
  #|   exact: self.exact,
  #|   ideal: self.ideal
  #| })

///|
/// ConstrainBooleanOrDOMStringParameters dictionary
pub struct ConstrainBooleanOrDOMStringParameters {
  exact : JsValue?
  ideal : JsValue?
}

///|
/// Create a new ConstrainBooleanOrDOMStringParameters with default values
pub fn ConstrainBooleanOrDOMStringParameters::default() -> ConstrainBooleanOrDOMStringParameters {
  ConstrainBooleanOrDOMStringParameters::{ exact: None, ideal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ConstrainBooleanOrDOMStringParameters::to_js(
  self : ConstrainBooleanOrDOMStringParameters,
) -> JsValue =
  #| (self) => ({
  #|   exact: self.exact,
  #|   ideal: self.ideal
  #| })

///|
/// CameraDevicePermissionDescriptor dictionary
pub struct CameraDevicePermissionDescriptor {
  panTiltZoom : Bool?
}

///|
/// Create a new CameraDevicePermissionDescriptor with default values
pub fn CameraDevicePermissionDescriptor::default() -> CameraDevicePermissionDescriptor {
  CameraDevicePermissionDescriptor::{ panTiltZoom: None }
}

///|
/// Convert to JsValue
pub extern "js" fn CameraDevicePermissionDescriptor::to_js(
  self : CameraDevicePermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   panTiltZoom: self.panTiltZoom
  #| })

///|
/// MediaStream interface
pub type MediaStream

///|
pub extern "js" fn MediaStream::to_js_value(self : MediaStream) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaStream::new() -> MediaStream =
  #| () => new MediaStream()

///|
pub extern "js" fn MediaStream::get_id(self : MediaStream) -> String =
  #| (self) => self.id

///|
pub extern "js" fn MediaStream::get_audio_tracks(
  self : MediaStream,
) -> Array[MediaStreamTrack] =
  #| (self) => self.getAudioTracks()

///|
pub extern "js" fn MediaStream::get_video_tracks(
  self : MediaStream,
) -> Array[MediaStreamTrack] =
  #| (self) => self.getVideoTracks()

///|
pub extern "js" fn MediaStream::get_tracks(
  self : MediaStream,
) -> Array[MediaStreamTrack] =
  #| (self) => self.getTracks()

///|
pub extern "js" fn MediaStream::get_track_by_id(
  self : MediaStream,
  track_id : String,
) -> MediaStreamTrack? =
  #| (self, track_id) => self.getTrackById(track_id)

///|
pub extern "js" fn MediaStream::add_track(
  self : MediaStream,
  track : MediaStreamTrack,
) -> Unit =
  #| (self, track) => self.addTrack(track)

///|
pub extern "js" fn MediaStream::remove_track(
  self : MediaStream,
  track : MediaStreamTrack,
) -> Unit =
  #| (self, track) => self.removeTrack(track)

///|
pub extern "js" fn MediaStream::clone(self : MediaStream) -> MediaStream =
  #| (self) => self.clone()

///|
pub extern "js" fn MediaStream::get_active(self : MediaStream) -> Bool =
  #| (self) => self.active

///|
pub extern "js" fn MediaStream::get_onaddtrack(
  self : MediaStream,
) -> EventHandler =
  #| (self) => self.onaddtrack

///|
pub extern "js" fn MediaStream::set_onaddtrack(
  self : MediaStream,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onaddtrack = value }

///|
pub extern "js" fn MediaStream::get_onremovetrack(
  self : MediaStream,
) -> EventHandler =
  #| (self) => self.onremovetrack

///|
pub extern "js" fn MediaStream::set_onremovetrack(
  self : MediaStream,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onremovetrack = value }

///|
/// MediaStreamTrack interface
pub type MediaStreamTrack

///|
pub extern "js" fn MediaStreamTrack::to_js_value(
  self : MediaStreamTrack,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaStreamTrack::get_kind(
  self : MediaStreamTrack,
) -> String =
  #| (self) => self.kind

///|
pub extern "js" fn MediaStreamTrack::get_id(self : MediaStreamTrack) -> String =
  #| (self) => self.id

///|
pub extern "js" fn MediaStreamTrack::get_label(
  self : MediaStreamTrack,
) -> String =
  #| (self) => self.label

///|
pub extern "js" fn MediaStreamTrack::get_enabled(
  self : MediaStreamTrack,
) -> Bool =
  #| (self) => self.enabled

///|
pub extern "js" fn MediaStreamTrack::set_enabled(
  self : MediaStreamTrack,
  value : Bool,
) -> Unit =
  #| (self, value) => { self.enabled = value }

///|
pub extern "js" fn MediaStreamTrack::get_muted(self : MediaStreamTrack) -> Bool =
  #| (self) => self.muted

///|
pub extern "js" fn MediaStreamTrack::get_onmute(
  self : MediaStreamTrack,
) -> EventHandler =
  #| (self) => self.onmute

///|
pub extern "js" fn MediaStreamTrack::set_onmute(
  self : MediaStreamTrack,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onmute = value }

///|
pub extern "js" fn MediaStreamTrack::get_onunmute(
  self : MediaStreamTrack,
) -> EventHandler =
  #| (self) => self.onunmute

///|
pub extern "js" fn MediaStreamTrack::set_onunmute(
  self : MediaStreamTrack,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onunmute = value }

///|
pub extern "js" fn MediaStreamTrack::get_ready_state(
  self : MediaStreamTrack,
) -> MediaStreamTrackState =
  #| (self) => self.readyState

///|
pub extern "js" fn MediaStreamTrack::get_onended(
  self : MediaStreamTrack,
) -> EventHandler =
  #| (self) => self.onended

///|
pub extern "js" fn MediaStreamTrack::set_onended(
  self : MediaStreamTrack,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onended = value }

///|
pub extern "js" fn MediaStreamTrack::clone(
  self : MediaStreamTrack,
) -> MediaStreamTrack =
  #| (self) => self.clone()

///|
pub extern "js" fn MediaStreamTrack::stop(self : MediaStreamTrack) -> Unit =
  #| (self) => self.stop()

///|
pub extern "js" fn MediaStreamTrack::get_capabilities(
  self : MediaStreamTrack,
) -> MediaTrackCapabilities =
  #| (self) => self.getCapabilities()

///|
pub extern "js" fn MediaStreamTrack::get_constraints(
  self : MediaStreamTrack,
) -> MediaTrackConstraints =
  #| (self) => self.getConstraints()

///|
pub extern "js" fn MediaStreamTrack::get_settings(
  self : MediaStreamTrack,
) -> MediaTrackSettings =
  #| (self) => self.getSettings()

///|
pub extern "js" fn MediaStreamTrack::apply_constraints(
  self : MediaStreamTrack,
) -> Promise[Unit] =
  #| (self) => self.applyConstraints()

///|
pub extern "js" fn MediaStreamTrack::apply_constraints_with_constraints(
  self : MediaStreamTrack,
  constraints : MediaTrackConstraints,
) -> Promise[Unit] =
  #| (self, constraints) => self.applyConstraints(constraints)

///|
pub extern "js" fn MediaStreamTrack::get_capture_handle(
  self : MediaStreamTrack,
) -> CaptureHandle? =
  #| (self) => self.getCaptureHandle()

///|
pub extern "js" fn MediaStreamTrack::get_oncapturehandlechange(
  self : MediaStreamTrack,
) -> EventHandler =
  #| (self) => self.oncapturehandlechange

///|
pub extern "js" fn MediaStreamTrack::set_oncapturehandlechange(
  self : MediaStreamTrack,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncapturehandlechange = value }

///|
pub extern "js" fn MediaStreamTrack::get_supported_capture_actions(
  self : MediaStreamTrack,
) -> Array[String] =
  #| (self) => self.getSupportedCaptureActions()

///|
pub extern "js" fn MediaStreamTrack::send_capture_action(
  self : MediaStreamTrack,
  action : CaptureAction,
) -> Promise[Unit] =
  #| (self, action) => self.sendCaptureAction(['next', 'previous', 'first', 'last'][action])

///|
pub extern "js" fn MediaStreamTrack::get_content_hint(
  self : MediaStreamTrack,
) -> String =
  #| (self) => self.contentHint

///|
pub extern "js" fn MediaStreamTrack::set_content_hint(
  self : MediaStreamTrack,
  value : String,
) -> Unit =
  #| (self, value) => { self.contentHint = value }

///|
pub extern "js" fn MediaStreamTrack::get_isolated(
  self : MediaStreamTrack,
) -> Bool =
  #| (self) => self.isolated

///|
pub extern "js" fn MediaStreamTrack::get_onisolationchange(
  self : MediaStreamTrack,
) -> EventHandler =
  #| (self) => self.onisolationchange

///|
pub extern "js" fn MediaStreamTrack::set_onisolationchange(
  self : MediaStreamTrack,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onisolationchange = value }

///|
/// MediaStreamTrackEvent interface
pub type MediaStreamTrackEvent

///|
pub extern "js" fn MediaStreamTrackEvent::to_js_value(
  self : MediaStreamTrackEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaStreamTrackEvent::new(
  type_ : String,
  event_init_dict : MediaStreamTrackEventInit,
) -> MediaStreamTrackEvent =
  #| (type_, event_init_dict) => new MediaStreamTrackEvent(type_, event_init_dict)

///|
pub extern "js" fn MediaStreamTrackEvent::get_track(
  self : MediaStreamTrackEvent,
) -> MediaStreamTrack =
  #| (self) => self.track

///|
/// OverconstrainedError interface
pub type OverconstrainedError

///|
pub extern "js" fn OverconstrainedError::to_js_value(
  self : OverconstrainedError,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn OverconstrainedError::new(
  constraint : String,
  message : String,
) -> OverconstrainedError =
  #| (constraint, message) => new OverconstrainedError(constraint, message)

///|
pub extern "js" fn OverconstrainedError::get_constraint(
  self : OverconstrainedError,
) -> String =
  #| (self) => self.constraint

///|
/// MediaDevices interface
pub type MediaDevices

///|
pub extern "js" fn MediaDevices::to_js_value(self : MediaDevices) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaDevices::get_ondevicechange(
  self : MediaDevices,
) -> EventHandler =
  #| (self) => self.ondevicechange

///|
pub extern "js" fn MediaDevices::set_ondevicechange(
  self : MediaDevices,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.ondevicechange = value }

///|
pub extern "js" fn MediaDevices::enumerate_devices(
  self : MediaDevices,
) -> Promise[Array[MediaDeviceInfo]] =
  #| (self) => self.enumerateDevices()

///|
pub extern "js" fn MediaDevices::select_audio_output(
  self : MediaDevices,
) -> Promise[MediaDeviceInfo] =
  #| (self) => self.selectAudioOutput()

///|
pub extern "js" fn MediaDevices::select_audio_output_with_options(
  self : MediaDevices,
  options : AudioOutputOptions,
) -> Promise[MediaDeviceInfo] =
  #| (self, options) => self.selectAudioOutput(options)

///|
pub extern "js" fn MediaDevices::set_capture_handle_config(
  self : MediaDevices,
) -> Unit =
  #| (self) => self.setCaptureHandleConfig()

///|
pub extern "js" fn MediaDevices::set_capture_handle_config_with_config(
  self : MediaDevices,
  config : CaptureHandleConfig,
) -> Unit =
  #| (self, config) => self.setCaptureHandleConfig(config)

///|
pub extern "js" fn MediaDevices::set_supported_capture_actions(
  self : MediaDevices,
  actions : Array[String],
) -> Unit =
  #| (self, actions) => self.setSupportedCaptureActions(actions)

///|
pub extern "js" fn MediaDevices::get_oncaptureaction(
  self : MediaDevices,
) -> EventHandler =
  #| (self) => self.oncaptureaction

///|
pub extern "js" fn MediaDevices::set_oncaptureaction(
  self : MediaDevices,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.oncaptureaction = value }

///|
pub extern "js" fn MediaDevices::get_supported_constraints(
  self : MediaDevices,
) -> MediaTrackSupportedConstraints =
  #| (self) => self.getSupportedConstraints()

///|
pub extern "js" fn MediaDevices::get_user_media(
  self : MediaDevices,
) -> Promise[MediaStream] =
  #| (self) => self.getUserMedia()

///|
pub extern "js" fn MediaDevices::get_user_media_with_constraints(
  self : MediaDevices,
  constraints : MediaStreamConstraints,
) -> Promise[MediaStream] =
  #| (self, constraints) => self.getUserMedia(constraints)

///|
pub extern "js" fn MediaDevices::get_viewport_media(
  self : MediaDevices,
) -> Promise[MediaStream] =
  #| (self) => self.getViewportMedia()

///|
pub extern "js" fn MediaDevices::get_viewport_media_with_options(
  self : MediaDevices,
  options : DisplayMediaStreamOptions,
) -> Promise[MediaStream] =
  #| (self, options) => self.getViewportMedia(options)

///|
pub extern "js" fn MediaDevices::get_display_media(
  self : MediaDevices,
) -> Promise[MediaStream] =
  #| (self) => self.getDisplayMedia()

///|
pub extern "js" fn MediaDevices::get_display_media_with_options(
  self : MediaDevices,
  options : DisplayMediaStreamOptions,
) -> Promise[MediaStream] =
  #| (self, options) => self.getDisplayMedia(options)

///|
/// MediaDeviceInfo interface
pub type MediaDeviceInfo

///|
pub extern "js" fn MediaDeviceInfo::to_js_value(
  self : MediaDeviceInfo,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn MediaDeviceInfo::get_device_id(
  self : MediaDeviceInfo,
) -> String =
  #| (self) => self.deviceId

///|
pub extern "js" fn MediaDeviceInfo::get_kind(
  self : MediaDeviceInfo,
) -> MediaDeviceKind =
  #| (self) => self.kind

///|
pub extern "js" fn MediaDeviceInfo::get_label(self : MediaDeviceInfo) -> String =
  #| (self) => self.label

///|
pub extern "js" fn MediaDeviceInfo::get_group_id(
  self : MediaDeviceInfo,
) -> String =
  #| (self) => self.groupId

///|
pub extern "js" fn MediaDeviceInfo::to_j_s_o_n(
  self : MediaDeviceInfo,
) -> JsValue =
  #| (self) => self.toJSON()

///|
/// InputDeviceInfo interface
pub type InputDeviceInfo

///|
pub extern "js" fn InputDeviceInfo::to_js_value(
  self : InputDeviceInfo,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn InputDeviceInfo::get_device_id(
  self : InputDeviceInfo,
) -> String =
  #| (self) => self.deviceId

///|
pub extern "js" fn InputDeviceInfo::get_kind(
  self : InputDeviceInfo,
) -> MediaDeviceKind =
  #| (self) => self.kind

///|
pub extern "js" fn InputDeviceInfo::get_label(self : InputDeviceInfo) -> String =
  #| (self) => self.label

///|
pub extern "js" fn InputDeviceInfo::get_group_id(
  self : InputDeviceInfo,
) -> String =
  #| (self) => self.groupId

///|
pub extern "js" fn InputDeviceInfo::to_j_s_o_n(
  self : InputDeviceInfo,
) -> JsValue =
  #| (self) => self.toJSON()

///|
pub extern "js" fn InputDeviceInfo::get_capabilities(
  self : InputDeviceInfo,
) -> MediaTrackCapabilities =
  #| (self) => self.getCapabilities()

///|
/// DeviceChangeEvent interface
pub type DeviceChangeEvent

///|
pub extern "js" fn DeviceChangeEvent::to_js_value(
  self : DeviceChangeEvent,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn DeviceChangeEvent::new(
  type_ : String,
  event_init_dict : DeviceChangeEventInit,
) -> DeviceChangeEvent =
  #| (type_, event_init_dict) => new DeviceChangeEvent(type_, event_init_dict)

///|
pub extern "js" fn DeviceChangeEvent::get_devices(
  self : DeviceChangeEvent,
) -> JsValue =
  #| (self) => self.devices

///|
pub extern "js" fn DeviceChangeEvent::get_user_inserted_devices(
  self : DeviceChangeEvent,
) -> JsValue =
  #| (self) => self.userInsertedDevices
