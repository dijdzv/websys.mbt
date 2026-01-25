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
/// Check if this ConstrainULong is Int
pub extern "js" fn ConstrainULong::is_int(self : ConstrainULong) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Check if this ConstrainULong is ConstrainULongRange
pub extern "js" fn ConstrainULong::is_constrain_u_long_range(
  self : ConstrainULong,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get ConstrainULong as Int
pub extern "js" fn ConstrainULong::as_int(self : ConstrainULong) -> Int? =
  #| (self) => (typeof self === 'number') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ConstrainULong as ConstrainULongRange
pub extern "js" fn ConstrainULong::as_constrain_u_long_range(
  self : ConstrainULong,
) -> ConstrainULongRange? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

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
/// Check if this ConstrainDouble is Double
pub extern "js" fn ConstrainDouble::is_double(self : ConstrainDouble) -> Bool =
  #| (self) => typeof self === 'number'

///|
/// Check if this ConstrainDouble is ConstrainDoubleRange
pub extern "js" fn ConstrainDouble::is_constrain_double_range(
  self : ConstrainDouble,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get ConstrainDouble as Double
pub extern "js" fn ConstrainDouble::as_double(
  self : ConstrainDouble,
) -> Double? =
  #| (self) => (typeof self === 'number') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ConstrainDouble as ConstrainDoubleRange
pub extern "js" fn ConstrainDouble::as_constrain_double_range(
  self : ConstrainDouble,
) -> ConstrainDoubleRange? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

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
/// Check if this ConstrainBoolean is Bool
pub extern "js" fn ConstrainBoolean::is_bool(self : ConstrainBoolean) -> Bool =
  #| (self) => typeof self === 'boolean'

///|
/// Check if this ConstrainBoolean is ConstrainBooleanParameters
pub extern "js" fn ConstrainBoolean::is_constrain_boolean_parameters(
  self : ConstrainBoolean,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get ConstrainBoolean as Bool
pub extern "js" fn ConstrainBoolean::as_bool(self : ConstrainBoolean) -> Bool? =
  #| (self) => (typeof self === 'boolean') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ConstrainBoolean as ConstrainBooleanParameters
pub extern "js" fn ConstrainBoolean::as_constrain_boolean_parameters(
  self : ConstrainBoolean,
) -> ConstrainBooleanParameters? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

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
/// Check if this ConstrainDOMString is String
pub extern "js" fn ConstrainDOMString::is_string(
  self : ConstrainDOMString,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this ConstrainDOMString is Array[String]
pub extern "js" fn ConstrainDOMString::is_array_of_string(
  self : ConstrainDOMString,
) -> Bool =
  #| (self) => Array.isArray(self)

///|
/// Check if this ConstrainDOMString is ConstrainDOMStringParameters
pub extern "js" fn ConstrainDOMString::is_constrain_d_o_m_string_parameters(
  self : ConstrainDOMString,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get ConstrainDOMString as String
pub extern "js" fn ConstrainDOMString::as_string(
  self : ConstrainDOMString,
) -> String? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ConstrainDOMString as Array[String]
pub extern "js" fn ConstrainDOMString::as_array_of_string(
  self : ConstrainDOMString,
) -> Array[String]? =
  #| (self) => (Array.isArray(self)) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ConstrainDOMString as ConstrainDOMStringParameters
pub extern "js" fn ConstrainDOMString::as_constrain_d_o_m_string_parameters(
  self : ConstrainDOMString,
) -> ConstrainDOMStringParameters? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

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
/// Check if this ConstrainBooleanOrDOMString is Bool
pub extern "js" fn ConstrainBooleanOrDOMString::is_bool(
  self : ConstrainBooleanOrDOMString,
) -> Bool =
  #| (self) => typeof self === 'boolean'

///|
/// Check if this ConstrainBooleanOrDOMString is String
pub extern "js" fn ConstrainBooleanOrDOMString::is_string(
  self : ConstrainBooleanOrDOMString,
) -> Bool =
  #| (self) => typeof self === 'string'

///|
/// Check if this ConstrainBooleanOrDOMString is ConstrainBooleanOrDOMStringParameters
pub extern "js" fn ConstrainBooleanOrDOMString::is_constrain_boolean_or_d_o_m_string_parameters(
  self : ConstrainBooleanOrDOMString,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get ConstrainBooleanOrDOMString as Bool
pub extern "js" fn ConstrainBooleanOrDOMString::as_bool(
  self : ConstrainBooleanOrDOMString,
) -> Bool? =
  #| (self) => (typeof self === 'boolean') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ConstrainBooleanOrDOMString as String
pub extern "js" fn ConstrainBooleanOrDOMString::as_string(
  self : ConstrainBooleanOrDOMString,
) -> String? =
  #| (self) => (typeof self === 'string') ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ConstrainBooleanOrDOMString as ConstrainBooleanOrDOMStringParameters
pub extern "js" fn ConstrainBooleanOrDOMString::as_constrain_boolean_or_d_o_m_string_parameters(
  self : ConstrainBooleanOrDOMString,
) -> ConstrainBooleanOrDOMStringParameters? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

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
    MediaStreamTrackState::Live => "live"
    MediaStreamTrackState::Ended => "ended"
  }
}

///|
/// Parse from string value
pub fn MediaStreamTrackState::from_string(s : String) -> MediaStreamTrackState? {
  match s {
    "live" => Some(MediaStreamTrackState::Live)
    "ended" => Some(MediaStreamTrackState::Ended)
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
    VideoFacingModeEnum::User => "user"
    VideoFacingModeEnum::Environment => "environment"
    VideoFacingModeEnum::Left => "left"
    VideoFacingModeEnum::Right => "right"
  }
}

///|
/// Parse from string value
pub fn VideoFacingModeEnum::from_string(s : String) -> VideoFacingModeEnum? {
  match s {
    "user" => Some(VideoFacingModeEnum::User)
    "environment" => Some(VideoFacingModeEnum::Environment)
    "left" => Some(VideoFacingModeEnum::Left)
    "right" => Some(VideoFacingModeEnum::Right)
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
    VideoResizeModeEnum::None => "none"
    VideoResizeModeEnum::CropAndScale => "crop-and-scale"
  }
}

///|
/// Parse from string value
pub fn VideoResizeModeEnum::from_string(s : String) -> VideoResizeModeEnum? {
  match s {
    "none" => Some(VideoResizeModeEnum::None)
    "crop-and-scale" => Some(VideoResizeModeEnum::CropAndScale)
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
    EchoCancellationModeEnum::All => "all"
    EchoCancellationModeEnum::RemoteOnly => "remote-only"
  }
}

///|
/// Parse from string value
pub fn EchoCancellationModeEnum::from_string(
  s : String,
) -> EchoCancellationModeEnum? {
  match s {
    "all" => Some(EchoCancellationModeEnum::All)
    "remote-only" => Some(EchoCancellationModeEnum::RemoteOnly)
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
    MediaDeviceKind::Audioinput => "audioinput"
    MediaDeviceKind::Audiooutput => "audiooutput"
    MediaDeviceKind::Videoinput => "videoinput"
  }
}

///|
/// Parse from string value
pub fn MediaDeviceKind::from_string(s : String) -> MediaDeviceKind? {
  match s {
    "audioinput" => Some(MediaDeviceKind::Audioinput)
    "audiooutput" => Some(MediaDeviceKind::Audiooutput)
    "videoinput" => Some(MediaDeviceKind::Videoinput)
    _ => None
  }
}

///|
/// MediaTrackSupportedConstraints dictionary
pub struct MediaTrackSupportedConstraints {
  width : Bool?
  height : Bool?
  aspectRatio : Bool?
  frameRate : Bool?
  facingMode : Bool?
  resizeMode : Bool?
  sampleRate : Bool?
  sampleSize : Bool?
  echoCancellation : Bool?
  autoGainControl : Bool?
  noiseSuppression : Bool?
  latency : Bool?
  channelCount : Bool?
  deviceId : Bool?
  groupId : Bool?
  backgroundBlur : Bool?
  displaySurface : Bool?
  logicalSurface : Bool?
  cursor : Bool?
  restrictOwnAudio : Bool?
  suppressLocalAudioPlayback : Bool?
  whiteBalanceMode : Bool?
  exposureMode : Bool?
  focusMode : Bool?
  pointsOfInterest : Bool?
  exposureCompensation : Bool?
  exposureTime : Bool?
  colorTemperature : Bool?
  iso : Bool?
  brightness : Bool?
  contrast : Bool?
  pan : Bool?
  saturation : Bool?
  sharpness : Bool?
  focusDistance : Bool?
  tilt : Bool?
  zoom : Bool?
  torch : Bool?
}

///|
/// Create a new MediaTrackSupportedConstraints with default values
pub fn MediaTrackSupportedConstraints::default() -> MediaTrackSupportedConstraints {
  MediaTrackSupportedConstraints::{
    width: None,
    height: None,
    aspectRatio: None,
    frameRate: None,
    facingMode: None,
    resizeMode: None,
    sampleRate: None,
    sampleSize: None,
    echoCancellation: None,
    autoGainControl: None,
    noiseSuppression: None,
    latency: None,
    channelCount: None,
    deviceId: None,
    groupId: None,
    backgroundBlur: None,
    displaySurface: None,
    logicalSurface: None,
    cursor: None,
    restrictOwnAudio: None,
    suppressLocalAudioPlayback: None,
    whiteBalanceMode: None,
    exposureMode: None,
    focusMode: None,
    pointsOfInterest: None,
    exposureCompensation: None,
    exposureTime: None,
    colorTemperature: None,
    iso: None,
    brightness: None,
    contrast: None,
    pan: None,
    saturation: None,
    sharpness: None,
    focusDistance: None,
    tilt: None,
    zoom: None,
    torch: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaTrackSupportedConstraints::to_js(
  self : MediaTrackSupportedConstraints,
) -> JsValue =
  #| (self) => ({
  #|   width: self.width,
  #|   height: self.height,
  #|   aspectRatio: self.aspectRatio,
  #|   frameRate: self.frameRate,
  #|   facingMode: self.facingMode,
  #|   resizeMode: self.resizeMode,
  #|   sampleRate: self.sampleRate,
  #|   sampleSize: self.sampleSize,
  #|   echoCancellation: self.echoCancellation,
  #|   autoGainControl: self.autoGainControl,
  #|   noiseSuppression: self.noiseSuppression,
  #|   latency: self.latency,
  #|   channelCount: self.channelCount,
  #|   deviceId: self.deviceId,
  #|   groupId: self.groupId,
  #|   backgroundBlur: self.backgroundBlur,
  #|   displaySurface: self.displaySurface,
  #|   logicalSurface: self.logicalSurface,
  #|   cursor: self.cursor,
  #|   restrictOwnAudio: self.restrictOwnAudio,
  #|   suppressLocalAudioPlayback: self.suppressLocalAudioPlayback,
  #|   whiteBalanceMode: self.whiteBalanceMode,
  #|   exposureMode: self.exposureMode,
  #|   focusMode: self.focusMode,
  #|   pointsOfInterest: self.pointsOfInterest,
  #|   exposureCompensation: self.exposureCompensation,
  #|   exposureTime: self.exposureTime,
  #|   colorTemperature: self.colorTemperature,
  #|   iso: self.iso,
  #|   brightness: self.brightness,
  #|   contrast: self.contrast,
  #|   pan: self.pan,
  #|   saturation: self.saturation,
  #|   sharpness: self.sharpness,
  #|   focusDistance: self.focusDistance,
  #|   tilt: self.tilt,
  #|   zoom: self.zoom,
  #|   torch: self.torch
  #| })

///|
/// MediaTrackCapabilities dictionary
pub struct MediaTrackCapabilities {
  width : ULongRange?
  height : ULongRange?
  aspectRatio : DoubleRange?
  frameRate : DoubleRange?
  facingMode : Array[String]?
  resizeMode : Array[String]?
  sampleRate : ULongRange?
  sampleSize : ULongRange?
  echoCancellation : Array[BoolOrString]?
  autoGainControl : Array[Bool]?
  noiseSuppression : Array[Bool]?
  latency : DoubleRange?
  channelCount : ULongRange?
  deviceId : String?
  groupId : String?
  backgroundBlur : Array[Bool]?
  displaySurface : String?
  logicalSurface : Bool?
  cursor : Array[String]?
  whiteBalanceMode : Array[String]?
  exposureMode : Array[String]?
  focusMode : Array[String]?
  exposureCompensation : MediaSettingsRange?
  exposureTime : MediaSettingsRange?
  colorTemperature : MediaSettingsRange?
  iso : MediaSettingsRange?
  brightness : MediaSettingsRange?
  contrast : MediaSettingsRange?
  saturation : MediaSettingsRange?
  sharpness : MediaSettingsRange?
  focusDistance : MediaSettingsRange?
  pan : MediaSettingsRange?
  tilt : MediaSettingsRange?
  zoom : MediaSettingsRange?
  torch : Array[Bool]?
}

///|
/// Create a new MediaTrackCapabilities with default values
pub fn MediaTrackCapabilities::default() -> MediaTrackCapabilities {
  MediaTrackCapabilities::{
    width: None,
    height: None,
    aspectRatio: None,
    frameRate: None,
    facingMode: None,
    resizeMode: None,
    sampleRate: None,
    sampleSize: None,
    echoCancellation: None,
    autoGainControl: None,
    noiseSuppression: None,
    latency: None,
    channelCount: None,
    deviceId: None,
    groupId: None,
    backgroundBlur: None,
    displaySurface: None,
    logicalSurface: None,
    cursor: None,
    whiteBalanceMode: None,
    exposureMode: None,
    focusMode: None,
    exposureCompensation: None,
    exposureTime: None,
    colorTemperature: None,
    iso: None,
    brightness: None,
    contrast: None,
    saturation: None,
    sharpness: None,
    focusDistance: None,
    pan: None,
    tilt: None,
    zoom: None,
    torch: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaTrackCapabilities::to_js(
  self : MediaTrackCapabilities,
) -> JsValue =
  #| (self) => ({
  #|   width: self.width,
  #|   height: self.height,
  #|   aspectRatio: self.aspectRatio,
  #|   frameRate: self.frameRate,
  #|   facingMode: self.facingMode,
  #|   resizeMode: self.resizeMode,
  #|   sampleRate: self.sampleRate,
  #|   sampleSize: self.sampleSize,
  #|   echoCancellation: self.echoCancellation,
  #|   autoGainControl: self.autoGainControl,
  #|   noiseSuppression: self.noiseSuppression,
  #|   latency: self.latency,
  #|   channelCount: self.channelCount,
  #|   deviceId: self.deviceId,
  #|   groupId: self.groupId,
  #|   backgroundBlur: self.backgroundBlur,
  #|   displaySurface: self.displaySurface,
  #|   logicalSurface: self.logicalSurface,
  #|   cursor: self.cursor,
  #|   whiteBalanceMode: self.whiteBalanceMode,
  #|   exposureMode: self.exposureMode,
  #|   focusMode: self.focusMode,
  #|   exposureCompensation: self.exposureCompensation,
  #|   exposureTime: self.exposureTime,
  #|   colorTemperature: self.colorTemperature,
  #|   iso: self.iso,
  #|   brightness: self.brightness,
  #|   contrast: self.contrast,
  #|   saturation: self.saturation,
  #|   sharpness: self.sharpness,
  #|   focusDistance: self.focusDistance,
  #|   pan: self.pan,
  #|   tilt: self.tilt,
  #|   zoom: self.zoom,
  #|   torch: self.torch
  #| })

///|
/// MediaTrackConstraints dictionary
pub struct MediaTrackConstraints {
  width : ConstrainULong?
  height : ConstrainULong?
  aspectRatio : ConstrainDouble?
  frameRate : ConstrainDouble?
  facingMode : ConstrainDOMString?
  resizeMode : ConstrainDOMString?
  sampleRate : ConstrainULong?
  sampleSize : ConstrainULong?
  echoCancellation : ConstrainBooleanOrDOMString?
  autoGainControl : ConstrainBoolean?
  noiseSuppression : ConstrainBoolean?
  latency : ConstrainDouble?
  channelCount : ConstrainULong?
  deviceId : ConstrainDOMString?
  groupId : ConstrainDOMString?
  backgroundBlur : ConstrainBoolean?
  displaySurface : ConstrainDOMString?
  logicalSurface : ConstrainBoolean?
  cursor : ConstrainDOMString?
  restrictOwnAudio : ConstrainBoolean?
  suppressLocalAudioPlayback : ConstrainBoolean?
  whiteBalanceMode : ConstrainDOMString?
  exposureMode : ConstrainDOMString?
  focusMode : ConstrainDOMString?
  pointsOfInterest : ConstrainPoint2D?
  exposureCompensation : ConstrainDouble?
  exposureTime : ConstrainDouble?
  colorTemperature : ConstrainDouble?
  iso : ConstrainDouble?
  brightness : ConstrainDouble?
  contrast : ConstrainDouble?
  saturation : ConstrainDouble?
  sharpness : ConstrainDouble?
  focusDistance : ConstrainDouble?
  pan : BoolOrConstrainDouble?
  tilt : BoolOrConstrainDouble?
  zoom : BoolOrConstrainDouble?
  torch : ConstrainBoolean?
  advanced : Array[MediaTrackConstraintSet]?
}

///|
/// Create a new MediaTrackConstraints with default values
pub fn MediaTrackConstraints::default() -> MediaTrackConstraints {
  MediaTrackConstraints::{
    width: None,
    height: None,
    aspectRatio: None,
    frameRate: None,
    facingMode: None,
    resizeMode: None,
    sampleRate: None,
    sampleSize: None,
    echoCancellation: None,
    autoGainControl: None,
    noiseSuppression: None,
    latency: None,
    channelCount: None,
    deviceId: None,
    groupId: None,
    backgroundBlur: None,
    displaySurface: None,
    logicalSurface: None,
    cursor: None,
    restrictOwnAudio: None,
    suppressLocalAudioPlayback: None,
    whiteBalanceMode: None,
    exposureMode: None,
    focusMode: None,
    pointsOfInterest: None,
    exposureCompensation: None,
    exposureTime: None,
    colorTemperature: None,
    iso: None,
    brightness: None,
    contrast: None,
    saturation: None,
    sharpness: None,
    focusDistance: None,
    pan: None,
    tilt: None,
    zoom: None,
    torch: None,
    advanced: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaTrackConstraints::to_js(
  self : MediaTrackConstraints,
) -> JsValue =
  #| (self) => ({
  #|   width: self.width.to_js_value(),
  #|   height: self.height.to_js_value(),
  #|   aspectRatio: self.aspectRatio.to_js_value(),
  #|   frameRate: self.frameRate.to_js_value(),
  #|   facingMode: self.facingMode.to_js_value(),
  #|   resizeMode: self.resizeMode.to_js_value(),
  #|   sampleRate: self.sampleRate.to_js_value(),
  #|   sampleSize: self.sampleSize.to_js_value(),
  #|   echoCancellation: self.echoCancellation.to_js_value(),
  #|   autoGainControl: self.autoGainControl.to_js_value(),
  #|   noiseSuppression: self.noiseSuppression.to_js_value(),
  #|   latency: self.latency.to_js_value(),
  #|   channelCount: self.channelCount.to_js_value(),
  #|   deviceId: self.deviceId.to_js_value(),
  #|   groupId: self.groupId.to_js_value(),
  #|   backgroundBlur: self.backgroundBlur.to_js_value(),
  #|   displaySurface: self.displaySurface.to_js_value(),
  #|   logicalSurface: self.logicalSurface.to_js_value(),
  #|   cursor: self.cursor.to_js_value(),
  #|   restrictOwnAudio: self.restrictOwnAudio.to_js_value(),
  #|   suppressLocalAudioPlayback: self.suppressLocalAudioPlayback.to_js_value(),
  #|   whiteBalanceMode: self.whiteBalanceMode.to_js_value(),
  #|   exposureMode: self.exposureMode.to_js_value(),
  #|   focusMode: self.focusMode.to_js_value(),
  #|   pointsOfInterest: self.pointsOfInterest.to_js_value(),
  #|   exposureCompensation: self.exposureCompensation.to_js_value(),
  #|   exposureTime: self.exposureTime.to_js_value(),
  #|   colorTemperature: self.colorTemperature.to_js_value(),
  #|   iso: self.iso.to_js_value(),
  #|   brightness: self.brightness.to_js_value(),
  #|   contrast: self.contrast.to_js_value(),
  #|   saturation: self.saturation.to_js_value(),
  #|   sharpness: self.sharpness.to_js_value(),
  #|   focusDistance: self.focusDistance.to_js_value(),
  #|   pan: self.pan,
  #|   tilt: self.tilt,
  #|   zoom: self.zoom,
  #|   torch: self.torch.to_js_value(),
  #|   advanced: self.advanced
  #| })

///|
/// MediaTrackConstraintSet dictionary
pub struct MediaTrackConstraintSet {
  width : ConstrainULong?
  height : ConstrainULong?
  aspectRatio : ConstrainDouble?
  frameRate : ConstrainDouble?
  facingMode : ConstrainDOMString?
  resizeMode : ConstrainDOMString?
  sampleRate : ConstrainULong?
  sampleSize : ConstrainULong?
  echoCancellation : ConstrainBooleanOrDOMString?
  autoGainControl : ConstrainBoolean?
  noiseSuppression : ConstrainBoolean?
  latency : ConstrainDouble?
  channelCount : ConstrainULong?
  deviceId : ConstrainDOMString?
  groupId : ConstrainDOMString?
  backgroundBlur : ConstrainBoolean?
  displaySurface : ConstrainDOMString?
  logicalSurface : ConstrainBoolean?
  cursor : ConstrainDOMString?
  restrictOwnAudio : ConstrainBoolean?
  suppressLocalAudioPlayback : ConstrainBoolean?
  whiteBalanceMode : ConstrainDOMString?
  exposureMode : ConstrainDOMString?
  focusMode : ConstrainDOMString?
  pointsOfInterest : ConstrainPoint2D?
  exposureCompensation : ConstrainDouble?
  exposureTime : ConstrainDouble?
  colorTemperature : ConstrainDouble?
  iso : ConstrainDouble?
  brightness : ConstrainDouble?
  contrast : ConstrainDouble?
  saturation : ConstrainDouble?
  sharpness : ConstrainDouble?
  focusDistance : ConstrainDouble?
  pan : BoolOrConstrainDouble?
  tilt : BoolOrConstrainDouble?
  zoom : BoolOrConstrainDouble?
  torch : ConstrainBoolean?
}

///|
/// Create a new MediaTrackConstraintSet with default values
pub fn MediaTrackConstraintSet::default() -> MediaTrackConstraintSet {
  MediaTrackConstraintSet::{
    width: None,
    height: None,
    aspectRatio: None,
    frameRate: None,
    facingMode: None,
    resizeMode: None,
    sampleRate: None,
    sampleSize: None,
    echoCancellation: None,
    autoGainControl: None,
    noiseSuppression: None,
    latency: None,
    channelCount: None,
    deviceId: None,
    groupId: None,
    backgroundBlur: None,
    displaySurface: None,
    logicalSurface: None,
    cursor: None,
    restrictOwnAudio: None,
    suppressLocalAudioPlayback: None,
    whiteBalanceMode: None,
    exposureMode: None,
    focusMode: None,
    pointsOfInterest: None,
    exposureCompensation: None,
    exposureTime: None,
    colorTemperature: None,
    iso: None,
    brightness: None,
    contrast: None,
    saturation: None,
    sharpness: None,
    focusDistance: None,
    pan: None,
    tilt: None,
    zoom: None,
    torch: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaTrackConstraintSet::to_js(
  self : MediaTrackConstraintSet,
) -> JsValue =
  #| (self) => ({
  #|   width: self.width.to_js_value(),
  #|   height: self.height.to_js_value(),
  #|   aspectRatio: self.aspectRatio.to_js_value(),
  #|   frameRate: self.frameRate.to_js_value(),
  #|   facingMode: self.facingMode.to_js_value(),
  #|   resizeMode: self.resizeMode.to_js_value(),
  #|   sampleRate: self.sampleRate.to_js_value(),
  #|   sampleSize: self.sampleSize.to_js_value(),
  #|   echoCancellation: self.echoCancellation.to_js_value(),
  #|   autoGainControl: self.autoGainControl.to_js_value(),
  #|   noiseSuppression: self.noiseSuppression.to_js_value(),
  #|   latency: self.latency.to_js_value(),
  #|   channelCount: self.channelCount.to_js_value(),
  #|   deviceId: self.deviceId.to_js_value(),
  #|   groupId: self.groupId.to_js_value(),
  #|   backgroundBlur: self.backgroundBlur.to_js_value(),
  #|   displaySurface: self.displaySurface.to_js_value(),
  #|   logicalSurface: self.logicalSurface.to_js_value(),
  #|   cursor: self.cursor.to_js_value(),
  #|   restrictOwnAudio: self.restrictOwnAudio.to_js_value(),
  #|   suppressLocalAudioPlayback: self.suppressLocalAudioPlayback.to_js_value(),
  #|   whiteBalanceMode: self.whiteBalanceMode.to_js_value(),
  #|   exposureMode: self.exposureMode.to_js_value(),
  #|   focusMode: self.focusMode.to_js_value(),
  #|   pointsOfInterest: self.pointsOfInterest.to_js_value(),
  #|   exposureCompensation: self.exposureCompensation.to_js_value(),
  #|   exposureTime: self.exposureTime.to_js_value(),
  #|   colorTemperature: self.colorTemperature.to_js_value(),
  #|   iso: self.iso.to_js_value(),
  #|   brightness: self.brightness.to_js_value(),
  #|   contrast: self.contrast.to_js_value(),
  #|   saturation: self.saturation.to_js_value(),
  #|   sharpness: self.sharpness.to_js_value(),
  #|   focusDistance: self.focusDistance.to_js_value(),
  #|   pan: self.pan,
  #|   tilt: self.tilt,
  #|   zoom: self.zoom,
  #|   torch: self.torch.to_js_value()
  #| })

///|
/// MediaTrackSettings dictionary
pub struct MediaTrackSettings {
  width : Int?
  height : Int?
  aspectRatio : Double?
  frameRate : Double?
  facingMode : String?
  resizeMode : String?
  sampleRate : Int?
  sampleSize : Int?
  echoCancellation : BoolOrString?
  autoGainControl : Bool?
  noiseSuppression : Bool?
  latency : Double?
  channelCount : Int?
  deviceId : String?
  groupId : String?
  backgroundBlur : Bool?
  displaySurface : String?
  logicalSurface : Bool?
  cursor : String?
  restrictOwnAudio : Bool?
  suppressLocalAudioPlayback : Bool?
  screenPixelRatio : Double?
  whiteBalanceMode : String?
  exposureMode : String?
  focusMode : String?
  pointsOfInterest : Array[Point2D]?
  exposureCompensation : Double?
  exposureTime : Double?
  colorTemperature : Double?
  iso : Double?
  brightness : Double?
  contrast : Double?
  saturation : Double?
  sharpness : Double?
  focusDistance : Double?
  pan : Double?
  tilt : Double?
  zoom : Double?
  torch : Bool?
}

///|
/// Create a new MediaTrackSettings with default values
pub fn MediaTrackSettings::default() -> MediaTrackSettings {
  MediaTrackSettings::{
    width: None,
    height: None,
    aspectRatio: None,
    frameRate: None,
    facingMode: None,
    resizeMode: None,
    sampleRate: None,
    sampleSize: None,
    echoCancellation: None,
    autoGainControl: None,
    noiseSuppression: None,
    latency: None,
    channelCount: None,
    deviceId: None,
    groupId: None,
    backgroundBlur: None,
    displaySurface: None,
    logicalSurface: None,
    cursor: None,
    restrictOwnAudio: None,
    suppressLocalAudioPlayback: None,
    screenPixelRatio: None,
    whiteBalanceMode: None,
    exposureMode: None,
    focusMode: None,
    pointsOfInterest: None,
    exposureCompensation: None,
    exposureTime: None,
    colorTemperature: None,
    iso: None,
    brightness: None,
    contrast: None,
    saturation: None,
    sharpness: None,
    focusDistance: None,
    pan: None,
    tilt: None,
    zoom: None,
    torch: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn MediaTrackSettings::to_js(
  self : MediaTrackSettings,
) -> JsValue =
  #| (self) => ({
  #|   width: self.width,
  #|   height: self.height,
  #|   aspectRatio: self.aspectRatio,
  #|   frameRate: self.frameRate,
  #|   facingMode: self.facingMode,
  #|   resizeMode: self.resizeMode,
  #|   sampleRate: self.sampleRate,
  #|   sampleSize: self.sampleSize,
  #|   echoCancellation: self.echoCancellation,
  #|   autoGainControl: self.autoGainControl,
  #|   noiseSuppression: self.noiseSuppression,
  #|   latency: self.latency,
  #|   channelCount: self.channelCount,
  #|   deviceId: self.deviceId,
  #|   groupId: self.groupId,
  #|   backgroundBlur: self.backgroundBlur,
  #|   displaySurface: self.displaySurface,
  #|   logicalSurface: self.logicalSurface,
  #|   cursor: self.cursor,
  #|   restrictOwnAudio: self.restrictOwnAudio,
  #|   suppressLocalAudioPlayback: self.suppressLocalAudioPlayback,
  #|   screenPixelRatio: self.screenPixelRatio,
  #|   whiteBalanceMode: self.whiteBalanceMode,
  #|   exposureMode: self.exposureMode,
  #|   focusMode: self.focusMode,
  #|   pointsOfInterest: self.pointsOfInterest,
  #|   exposureCompensation: self.exposureCompensation,
  #|   exposureTime: self.exposureTime,
  #|   colorTemperature: self.colorTemperature,
  #|   iso: self.iso,
  #|   brightness: self.brightness,
  #|   contrast: self.contrast,
  #|   saturation: self.saturation,
  #|   sharpness: self.sharpness,
  #|   focusDistance: self.focusDistance,
  #|   pan: self.pan,
  #|   tilt: self.tilt,
  #|   zoom: self.zoom,
  #|   torch: self.torch
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
  video : BoolOrMediaTrackConstraints?
  audio : BoolOrMediaTrackConstraints?
  peerIdentity : String?
  preferCurrentTab : Bool?
}

///|
/// Create a new MediaStreamConstraints with default values
pub fn MediaStreamConstraints::default() -> MediaStreamConstraints {
  MediaStreamConstraints::{
    video: None,
    audio: None,
    peerIdentity: None,
    preferCurrentTab: None,
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
  #|   peerIdentity: self.peerIdentity,
  #|   preferCurrentTab: self.preferCurrentTab
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
  exact : StringOrArrayOfString?
  ideal : StringOrArrayOfString?
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
  exact : BoolOrString?
  ideal : BoolOrString?
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
/// Cast JsValue to MediaStream (unchecked)
pub extern "js" fn MediaStream::from_js_value(v : JsValue) -> MediaStream =
  #| (v) => v

///|
/// Safely cast JsValue to MediaStream (checked with instanceof)
pub extern "js" fn MediaStream::from_js_value_opt(v : JsValue) -> MediaStream? =
  #| (v) => (v instanceof MediaStream) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaStream (checked with instanceof)
pub extern "js" fn JsValue::as_media_stream(self : JsValue) -> MediaStream? =
  #| (self) => (self instanceof MediaStream) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaStream (unchecked)
pub extern "js" fn JsValue::to_media_stream(self : JsValue) -> MediaStream =
  #| (self) => self

///|
pub extern "js" fn MediaStream::to_event_target(
  self : MediaStream,
) -> EventTarget =
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
  #| (self, track_id) => { const v = self.getTrackById(track_id); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

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
/// Cast JsValue to MediaStreamTrack (unchecked)
pub extern "js" fn MediaStreamTrack::from_js_value(
  v : JsValue,
) -> MediaStreamTrack =
  #| (v) => v

///|
/// Safely cast JsValue to MediaStreamTrack (checked with instanceof)
pub extern "js" fn MediaStreamTrack::from_js_value_opt(
  v : JsValue,
) -> MediaStreamTrack? =
  #| (v) => (v instanceof MediaStreamTrack) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaStreamTrack (checked with instanceof)
pub extern "js" fn JsValue::as_media_stream_track(
  self : JsValue,
) -> MediaStreamTrack? =
  #| (self) => (self instanceof MediaStreamTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaStreamTrack (unchecked)
pub extern "js" fn JsValue::to_media_stream_track(
  self : JsValue,
) -> MediaStreamTrack =
  #| (self) => self

///|
pub extern "js" fn MediaStreamTrack::to_event_target(
  self : MediaStreamTrack,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn MediaStreamTrack::as_browser_capture_media_stream_track(
  self : MediaStreamTrack,
) -> BrowserCaptureMediaStreamTrack? =
  #| (self) => (self instanceof BrowserCaptureMediaStreamTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn MediaStreamTrack::as_canvas_capture_media_stream_track(
  self : MediaStreamTrack,
) -> CanvasCaptureMediaStreamTrack? =
  #| (self) => (self instanceof CanvasCaptureMediaStreamTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

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
pub extern "js" fn MediaStreamTrack::get_capture_handle(
  self : MediaStreamTrack,
) -> CaptureHandle? =
  #| (self) => { const v = self.getCaptureHandle(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; }

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
/// MediaStreamTrackEvent interface
pub type MediaStreamTrackEvent

///|
pub extern "js" fn MediaStreamTrackEvent::to_js_value(
  self : MediaStreamTrackEvent,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaStreamTrackEvent (unchecked)
pub extern "js" fn MediaStreamTrackEvent::from_js_value(
  v : JsValue,
) -> MediaStreamTrackEvent =
  #| (v) => v

///|
/// Safely cast JsValue to MediaStreamTrackEvent (checked with instanceof)
pub extern "js" fn MediaStreamTrackEvent::from_js_value_opt(
  v : JsValue,
) -> MediaStreamTrackEvent? =
  #| (v) => (v instanceof MediaStreamTrackEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaStreamTrackEvent (checked with instanceof)
pub extern "js" fn JsValue::as_media_stream_track_event(
  self : JsValue,
) -> MediaStreamTrackEvent? =
  #| (self) => (self instanceof MediaStreamTrackEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaStreamTrackEvent (unchecked)
pub extern "js" fn JsValue::to_media_stream_track_event(
  self : JsValue,
) -> MediaStreamTrackEvent =
  #| (self) => self

///|
pub extern "js" fn MediaStreamTrackEvent::to_event(
  self : MediaStreamTrackEvent,
) -> Event =
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
/// Cast JsValue to OverconstrainedError (unchecked)
pub extern "js" fn OverconstrainedError::from_js_value(
  v : JsValue,
) -> OverconstrainedError =
  #| (v) => v

///|
/// Safely cast JsValue to OverconstrainedError (checked with instanceof)
pub extern "js" fn OverconstrainedError::from_js_value_opt(
  v : JsValue,
) -> OverconstrainedError? =
  #| (v) => (v instanceof OverconstrainedError) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to OverconstrainedError (checked with instanceof)
pub extern "js" fn JsValue::as_overconstrained_error(
  self : JsValue,
) -> OverconstrainedError? =
  #| (self) => (self instanceof OverconstrainedError) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to OverconstrainedError (unchecked)
pub extern "js" fn JsValue::to_overconstrained_error(
  self : JsValue,
) -> OverconstrainedError =
  #| (self) => self

///|
pub extern "js" fn OverconstrainedError::to_dom_exception(
  self : OverconstrainedError,
) -> DOMException =
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
/// Cast JsValue to MediaDevices (unchecked)
pub extern "js" fn MediaDevices::from_js_value(v : JsValue) -> MediaDevices =
  #| (v) => v

///|
/// Safely cast JsValue to MediaDevices (checked with instanceof)
pub extern "js" fn MediaDevices::from_js_value_opt(
  v : JsValue,
) -> MediaDevices? =
  #| (v) => (v instanceof MediaDevices) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaDevices (checked with instanceof)
pub extern "js" fn JsValue::as_media_devices(self : JsValue) -> MediaDevices? =
  #| (self) => (self instanceof MediaDevices) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaDevices (unchecked)
pub extern "js" fn JsValue::to_media_devices(self : JsValue) -> MediaDevices =
  #| (self) => self

///|
pub extern "js" fn MediaDevices::to_event_target(
  self : MediaDevices,
) -> EventTarget =
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
/// MediaDeviceInfo interface
pub type MediaDeviceInfo

///|
pub extern "js" fn MediaDeviceInfo::to_js_value(
  self : MediaDeviceInfo,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to MediaDeviceInfo (unchecked)
pub extern "js" fn MediaDeviceInfo::from_js_value(
  v : JsValue,
) -> MediaDeviceInfo =
  #| (v) => v

///|
/// Safely cast JsValue to MediaDeviceInfo (checked with instanceof)
pub extern "js" fn MediaDeviceInfo::from_js_value_opt(
  v : JsValue,
) -> MediaDeviceInfo? =
  #| (v) => (v instanceof MediaDeviceInfo) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to MediaDeviceInfo (checked with instanceof)
pub extern "js" fn JsValue::as_media_device_info(
  self : JsValue,
) -> MediaDeviceInfo? =
  #| (self) => (self instanceof MediaDeviceInfo) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to MediaDeviceInfo (unchecked)
pub extern "js" fn JsValue::to_media_device_info(
  self : JsValue,
) -> MediaDeviceInfo =
  #| (self) => self

///|
pub extern "js" fn MediaDeviceInfo::as_input_device_info(
  self : MediaDeviceInfo,
) -> InputDeviceInfo? =
  #| (self) => (self instanceof InputDeviceInfo) ? { $tag: 1, _0: self } : { $tag: 0 }

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
pub extern "js" fn MediaDeviceInfo::to_json(self : MediaDeviceInfo) -> JsValue =
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
/// Cast JsValue to InputDeviceInfo (unchecked)
pub extern "js" fn InputDeviceInfo::from_js_value(
  v : JsValue,
) -> InputDeviceInfo =
  #| (v) => v

///|
/// Safely cast JsValue to InputDeviceInfo (checked with instanceof)
pub extern "js" fn InputDeviceInfo::from_js_value_opt(
  v : JsValue,
) -> InputDeviceInfo? =
  #| (v) => (v instanceof InputDeviceInfo) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to InputDeviceInfo (checked with instanceof)
pub extern "js" fn JsValue::as_input_device_info(
  self : JsValue,
) -> InputDeviceInfo? =
  #| (self) => (self instanceof InputDeviceInfo) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to InputDeviceInfo (unchecked)
pub extern "js" fn JsValue::to_input_device_info(
  self : JsValue,
) -> InputDeviceInfo =
  #| (self) => self

///|
pub extern "js" fn InputDeviceInfo::to_media_device_info(
  self : InputDeviceInfo,
) -> MediaDeviceInfo =
  #| (self) => self

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
/// Cast JsValue to DeviceChangeEvent (unchecked)
pub extern "js" fn DeviceChangeEvent::from_js_value(
  v : JsValue,
) -> DeviceChangeEvent =
  #| (v) => v

///|
/// Safely cast JsValue to DeviceChangeEvent (checked with instanceof)
pub extern "js" fn DeviceChangeEvent::from_js_value_opt(
  v : JsValue,
) -> DeviceChangeEvent? =
  #| (v) => (v instanceof DeviceChangeEvent) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to DeviceChangeEvent (checked with instanceof)
pub extern "js" fn JsValue::as_device_change_event(
  self : JsValue,
) -> DeviceChangeEvent? =
  #| (self) => (self instanceof DeviceChangeEvent) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to DeviceChangeEvent (unchecked)
pub extern "js" fn JsValue::to_device_change_event(
  self : JsValue,
) -> DeviceChangeEvent =
  #| (self) => self

///|
pub extern "js" fn DeviceChangeEvent::to_event(
  self : DeviceChangeEvent,
) -> Event =
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
