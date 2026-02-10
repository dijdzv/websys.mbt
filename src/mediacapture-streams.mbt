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
  #| (self) => (typeof self === 'number') ? self : undefined

///|
/// Try to get ConstrainULong as ConstrainULongRange
pub extern "js" fn ConstrainULong::as_constrain_u_long_range(
  self : ConstrainULong,
) -> ConstrainULongRange? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[ConstrainULong] to Int?
pub fn ConstrainULong::bind_as_int(value : ConstrainULong?) -> Int? {
  match value {
    Some(v) => v.as_int()
    None => None
  }
}

///|
/// Flatten Option[ConstrainULong] to ConstrainULongRange?
pub fn ConstrainULong::bind_as_constrain_u_long_range(
  value : ConstrainULong?,
) -> ConstrainULongRange? {
  match value {
    Some(v) => v.as_constrain_u_long_range()
    None => None
  }
}

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
  #| (self) => (typeof self === 'number') ? self : undefined

///|
/// Try to get ConstrainDouble as ConstrainDoubleRange
pub extern "js" fn ConstrainDouble::as_constrain_double_range(
  self : ConstrainDouble,
) -> ConstrainDoubleRange? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[ConstrainDouble] to Double?
pub fn ConstrainDouble::bind_as_double(value : ConstrainDouble?) -> Double? {
  match value {
    Some(v) => v.as_double()
    None => None
  }
}

///|
/// Flatten Option[ConstrainDouble] to ConstrainDoubleRange?
pub fn ConstrainDouble::bind_as_constrain_double_range(
  value : ConstrainDouble?,
) -> ConstrainDoubleRange? {
  match value {
    Some(v) => v.as_constrain_double_range()
    None => None
  }
}

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
  #| (self) => (typeof self === 'boolean') ? self : undefined

///|
/// Try to get ConstrainBoolean as ConstrainBooleanParameters
pub extern "js" fn ConstrainBoolean::as_constrain_boolean_parameters(
  self : ConstrainBoolean,
) -> ConstrainBooleanParameters? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[ConstrainBoolean] to Bool?
pub fn ConstrainBoolean::bind_as_bool(value : ConstrainBoolean?) -> Bool? {
  match value {
    Some(v) => v.as_bool()
    None => None
  }
}

///|
/// Flatten Option[ConstrainBoolean] to ConstrainBooleanParameters?
pub fn ConstrainBoolean::bind_as_constrain_boolean_parameters(
  value : ConstrainBoolean?,
) -> ConstrainBooleanParameters? {
  match value {
    Some(v) => v.as_constrain_boolean_parameters()
    None => None
  }
}

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
pub extern "js" fn ConstrainDOMString::from_constrain_dom_string_parameters(
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
pub extern "js" fn ConstrainDOMString::is_constrain_dom_string_parameters(
  self : ConstrainDOMString,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get ConstrainDOMString as String
pub extern "js" fn ConstrainDOMString::as_string(
  self : ConstrainDOMString,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get ConstrainDOMString as Array[String]
pub extern "js" fn ConstrainDOMString::as_array_of_string(
  self : ConstrainDOMString,
) -> Array[String]? =
  #| (self) => (Array.isArray(self)) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ConstrainDOMString as ConstrainDOMStringParameters
pub extern "js" fn ConstrainDOMString::as_constrain_dom_string_parameters(
  self : ConstrainDOMString,
) -> ConstrainDOMStringParameters? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[ConstrainDOMString] to String?
pub fn ConstrainDOMString::bind_as_string(
  value : ConstrainDOMString?,
) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// Flatten Option[ConstrainDOMString] to Array[String]?
pub fn ConstrainDOMString::bind_as_array_of_string(
  value : ConstrainDOMString?,
) -> Array[String]? {
  match value {
    Some(v) => v.as_array_of_string()
    None => None
  }
}

///|
/// Flatten Option[ConstrainDOMString] to ConstrainDOMStringParameters?
pub fn ConstrainDOMString::bind_as_constrain_dom_string_parameters(
  value : ConstrainDOMString?,
) -> ConstrainDOMStringParameters? {
  match value {
    Some(v) => v.as_constrain_dom_string_parameters()
    None => None
  }
}

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
pub extern "js" fn ConstrainBooleanOrDOMString::from_constrain_boolean_or_dom_string_parameters(
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
pub extern "js" fn ConstrainBooleanOrDOMString::is_constrain_boolean_or_dom_string_parameters(
  self : ConstrainBooleanOrDOMString,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get ConstrainBooleanOrDOMString as Bool
pub extern "js" fn ConstrainBooleanOrDOMString::as_bool(
  self : ConstrainBooleanOrDOMString,
) -> Bool? =
  #| (self) => (typeof self === 'boolean') ? self : undefined

///|
/// Try to get ConstrainBooleanOrDOMString as String
pub extern "js" fn ConstrainBooleanOrDOMString::as_string(
  self : ConstrainBooleanOrDOMString,
) -> String? =
  #| (self) => (typeof self === 'string') ? self : undefined

///|
/// Try to get ConstrainBooleanOrDOMString as ConstrainBooleanOrDOMStringParameters
pub extern "js" fn ConstrainBooleanOrDOMString::as_constrain_boolean_or_dom_string_parameters(
  self : ConstrainBooleanOrDOMString,
) -> ConstrainBooleanOrDOMStringParameters? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[ConstrainBooleanOrDOMString] to Bool?
pub fn ConstrainBooleanOrDOMString::bind_as_bool(
  value : ConstrainBooleanOrDOMString?,
) -> Bool? {
  match value {
    Some(v) => v.as_bool()
    None => None
  }
}

///|
/// Flatten Option[ConstrainBooleanOrDOMString] to String?
pub fn ConstrainBooleanOrDOMString::bind_as_string(
  value : ConstrainBooleanOrDOMString?,
) -> String? {
  match value {
    Some(v) => v.as_string()
    None => None
  }
}

///|
/// Flatten Option[ConstrainBooleanOrDOMString] to ConstrainBooleanOrDOMStringParameters?
pub fn ConstrainBooleanOrDOMString::bind_as_constrain_boolean_or_dom_string_parameters(
  value : ConstrainBooleanOrDOMString?,
) -> ConstrainBooleanOrDOMStringParameters? {
  match value {
    Some(v) => v.as_constrain_boolean_or_dom_string_parameters()
    None => None
  }
}

///|
/// MediaStreamTrackState enum
pub(all) enum MediaStreamTrackState {
  Live
  Ended
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
} derive(Eq, Show)

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
pub(all) struct MediaTrackSupportedConstraints {
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
extern "js" fn MediaTrackSupportedConstraints::to_js_ffi(
  self : MediaTrackSupportedConstraints,
) -> JsValue =
  #| (self) => ({
  #|   width: (self.width === -1 ? undefined : self.width),
  #|   height: (self.height === -1 ? undefined : self.height),
  #|   aspectRatio: (self.aspectRatio === -1 ? undefined : self.aspectRatio),
  #|   frameRate: (self.frameRate === -1 ? undefined : self.frameRate),
  #|   facingMode: (self.facingMode === -1 ? undefined : self.facingMode),
  #|   resizeMode: (self.resizeMode === -1 ? undefined : self.resizeMode),
  #|   sampleRate: (self.sampleRate === -1 ? undefined : self.sampleRate),
  #|   sampleSize: (self.sampleSize === -1 ? undefined : self.sampleSize),
  #|   echoCancellation: (self.echoCancellation === -1 ? undefined : self.echoCancellation),
  #|   autoGainControl: (self.autoGainControl === -1 ? undefined : self.autoGainControl),
  #|   noiseSuppression: (self.noiseSuppression === -1 ? undefined : self.noiseSuppression),
  #|   latency: (self.latency === -1 ? undefined : self.latency),
  #|   channelCount: (self.channelCount === -1 ? undefined : self.channelCount),
  #|   deviceId: (self.deviceId === -1 ? undefined : self.deviceId),
  #|   groupId: (self.groupId === -1 ? undefined : self.groupId),
  #|   backgroundBlur: (self.backgroundBlur === -1 ? undefined : self.backgroundBlur),
  #|   displaySurface: (self.displaySurface === -1 ? undefined : self.displaySurface),
  #|   logicalSurface: (self.logicalSurface === -1 ? undefined : self.logicalSurface),
  #|   cursor: (self.cursor === -1 ? undefined : self.cursor),
  #|   restrictOwnAudio: (self.restrictOwnAudio === -1 ? undefined : self.restrictOwnAudio),
  #|   suppressLocalAudioPlayback: (self.suppressLocalAudioPlayback === -1 ? undefined : self.suppressLocalAudioPlayback),
  #|   whiteBalanceMode: (self.whiteBalanceMode === -1 ? undefined : self.whiteBalanceMode),
  #|   exposureMode: (self.exposureMode === -1 ? undefined : self.exposureMode),
  #|   focusMode: (self.focusMode === -1 ? undefined : self.focusMode),
  #|   pointsOfInterest: (self.pointsOfInterest === -1 ? undefined : self.pointsOfInterest),
  #|   exposureCompensation: (self.exposureCompensation === -1 ? undefined : self.exposureCompensation),
  #|   exposureTime: (self.exposureTime === -1 ? undefined : self.exposureTime),
  #|   colorTemperature: (self.colorTemperature === -1 ? undefined : self.colorTemperature),
  #|   iso: (self.iso === -1 ? undefined : self.iso),
  #|   brightness: (self.brightness === -1 ? undefined : self.brightness),
  #|   contrast: (self.contrast === -1 ? undefined : self.contrast),
  #|   pan: (self.pan === -1 ? undefined : self.pan),
  #|   saturation: (self.saturation === -1 ? undefined : self.saturation),
  #|   sharpness: (self.sharpness === -1 ? undefined : self.sharpness),
  #|   focusDistance: (self.focusDistance === -1 ? undefined : self.focusDistance),
  #|   tilt: (self.tilt === -1 ? undefined : self.tilt),
  #|   zoom: (self.zoom === -1 ? undefined : self.zoom),
  #|   torch: (self.torch === -1 ? undefined : self.torch)
  #| })

///|
/// Convert to JsValue
pub fn MediaTrackSupportedConstraints::to_js(
  self : MediaTrackSupportedConstraints,
) -> JsValue {
  MediaTrackSupportedConstraints::to_js_ffi(self)
}

///|
extern "js" fn MediaTrackSupportedConstraints::from_js_ffi(
  value : JsValue,
) -> MediaTrackSupportedConstraints =
  #| (v) => ({
  #|   width: (v.width === undefined ? -1 : v.width),
  #|   height: (v.height === undefined ? -1 : v.height),
  #|   aspectRatio: (v.aspectRatio === undefined ? -1 : v.aspectRatio),
  #|   frameRate: (v.frameRate === undefined ? -1 : v.frameRate),
  #|   facingMode: (v.facingMode === undefined ? -1 : v.facingMode),
  #|   resizeMode: (v.resizeMode === undefined ? -1 : v.resizeMode),
  #|   sampleRate: (v.sampleRate === undefined ? -1 : v.sampleRate),
  #|   sampleSize: (v.sampleSize === undefined ? -1 : v.sampleSize),
  #|   echoCancellation: (v.echoCancellation === undefined ? -1 : v.echoCancellation),
  #|   autoGainControl: (v.autoGainControl === undefined ? -1 : v.autoGainControl),
  #|   noiseSuppression: (v.noiseSuppression === undefined ? -1 : v.noiseSuppression),
  #|   latency: (v.latency === undefined ? -1 : v.latency),
  #|   channelCount: (v.channelCount === undefined ? -1 : v.channelCount),
  #|   deviceId: (v.deviceId === undefined ? -1 : v.deviceId),
  #|   groupId: (v.groupId === undefined ? -1 : v.groupId),
  #|   backgroundBlur: (v.backgroundBlur === undefined ? -1 : v.backgroundBlur),
  #|   displaySurface: (v.displaySurface === undefined ? -1 : v.displaySurface),
  #|   logicalSurface: (v.logicalSurface === undefined ? -1 : v.logicalSurface),
  #|   cursor: (v.cursor === undefined ? -1 : v.cursor),
  #|   restrictOwnAudio: (v.restrictOwnAudio === undefined ? -1 : v.restrictOwnAudio),
  #|   suppressLocalAudioPlayback: (v.suppressLocalAudioPlayback === undefined ? -1 : v.suppressLocalAudioPlayback),
  #|   whiteBalanceMode: (v.whiteBalanceMode === undefined ? -1 : v.whiteBalanceMode),
  #|   exposureMode: (v.exposureMode === undefined ? -1 : v.exposureMode),
  #|   focusMode: (v.focusMode === undefined ? -1 : v.focusMode),
  #|   pointsOfInterest: (v.pointsOfInterest === undefined ? -1 : v.pointsOfInterest),
  #|   exposureCompensation: (v.exposureCompensation === undefined ? -1 : v.exposureCompensation),
  #|   exposureTime: (v.exposureTime === undefined ? -1 : v.exposureTime),
  #|   colorTemperature: (v.colorTemperature === undefined ? -1 : v.colorTemperature),
  #|   iso: (v.iso === undefined ? -1 : v.iso),
  #|   brightness: (v.brightness === undefined ? -1 : v.brightness),
  #|   contrast: (v.contrast === undefined ? -1 : v.contrast),
  #|   pan: (v.pan === undefined ? -1 : v.pan),
  #|   saturation: (v.saturation === undefined ? -1 : v.saturation),
  #|   sharpness: (v.sharpness === undefined ? -1 : v.sharpness),
  #|   focusDistance: (v.focusDistance === undefined ? -1 : v.focusDistance),
  #|   tilt: (v.tilt === undefined ? -1 : v.tilt),
  #|   zoom: (v.zoom === undefined ? -1 : v.zoom),
  #|   torch: (v.torch === undefined ? -1 : v.torch)
  #| })

///|
/// Convert from JsValue
pub fn MediaTrackSupportedConstraints::from_js(
  value : JsValue,
) -> MediaTrackSupportedConstraints {
  MediaTrackSupportedConstraints::from_js_ffi(value)
}

///|
/// MediaTrackCapabilities dictionary
pub(all) struct MediaTrackCapabilities {
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
extern "js" fn MediaTrackCapabilities::to_js_ffi(
  self : MediaTrackCapabilities,
) -> JsValue =
  #| (self) => ({
  #|   width: ((() => { const v = self.width; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   height: ((() => { const v = self.height; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   aspectRatio: ((() => { const v = self.aspectRatio; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   frameRate: ((() => { const v = self.frameRate; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   facingMode: ((() => { const v = self.facingMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   resizeMode: ((() => { const v = self.resizeMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sampleRate: ((() => { const v = self.sampleRate; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sampleSize: ((() => { const v = self.sampleSize; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   echoCancellation: ((() => { const v = self.echoCancellation; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   autoGainControl: ((() => { const v = self.autoGainControl; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   noiseSuppression: ((() => { const v = self.noiseSuppression; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   latency: ((() => { const v = self.latency; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   channelCount: ((() => { const v = self.channelCount; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   deviceId: self.deviceId,
  #|   groupId: self.groupId,
  #|   backgroundBlur: ((() => { const v = self.backgroundBlur; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   displaySurface: self.displaySurface,
  #|   logicalSurface: (self.logicalSurface === -1 ? undefined : self.logicalSurface),
  #|   cursor: ((() => { const v = self.cursor; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   whiteBalanceMode: ((() => { const v = self.whiteBalanceMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   exposureMode: ((() => { const v = self.exposureMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   focusMode: ((() => { const v = self.focusMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   exposureCompensation: ((() => { const v = self.exposureCompensation; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   exposureTime: ((() => { const v = self.exposureTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   colorTemperature: ((() => { const v = self.colorTemperature; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   iso: ((() => { const v = self.iso; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   brightness: ((() => { const v = self.brightness; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   contrast: ((() => { const v = self.contrast; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   saturation: ((() => { const v = self.saturation; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   sharpness: ((() => { const v = self.sharpness; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   focusDistance: ((() => { const v = self.focusDistance; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   pan: ((() => { const v = self.pan; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   tilt: ((() => { const v = self.tilt; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   zoom: ((() => { const v = self.zoom; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   torch: ((() => { const v = self.torch; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MediaTrackCapabilities::to_js(self : MediaTrackCapabilities) -> JsValue {
  MediaTrackCapabilities::to_js_ffi(self)
}

///|
extern "js" fn MediaTrackCapabilities::from_js_ffi(
  value : JsValue,
) -> MediaTrackCapabilities =
  #| (v) => ({
  #|   width: (v.width === undefined ? { $tag: 0 } : { $tag: 1, _0: v.width }),
  #|   height: (v.height === undefined ? { $tag: 0 } : { $tag: 1, _0: v.height }),
  #|   aspectRatio: (v.aspectRatio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.aspectRatio }),
  #|   frameRate: (v.frameRate === undefined ? { $tag: 0 } : { $tag: 1, _0: v.frameRate }),
  #|   facingMode: (v.facingMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.facingMode }),
  #|   resizeMode: (v.resizeMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.resizeMode }),
  #|   sampleRate: (v.sampleRate === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sampleRate }),
  #|   sampleSize: (v.sampleSize === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sampleSize }),
  #|   echoCancellation: (v.echoCancellation === undefined ? { $tag: 0 } : { $tag: 1, _0: v.echoCancellation }),
  #|   autoGainControl: (v.autoGainControl === undefined ? { $tag: 0 } : { $tag: 1, _0: v.autoGainControl }),
  #|   noiseSuppression: (v.noiseSuppression === undefined ? { $tag: 0 } : { $tag: 1, _0: v.noiseSuppression }),
  #|   latency: (v.latency === undefined ? { $tag: 0 } : { $tag: 1, _0: v.latency }),
  #|   channelCount: (v.channelCount === undefined ? { $tag: 0 } : { $tag: 1, _0: v.channelCount }),
  #|   deviceId: v.deviceId,
  #|   groupId: v.groupId,
  #|   backgroundBlur: (v.backgroundBlur === undefined ? { $tag: 0 } : { $tag: 1, _0: v.backgroundBlur }),
  #|   displaySurface: v.displaySurface,
  #|   logicalSurface: (v.logicalSurface === undefined ? -1 : v.logicalSurface),
  #|   cursor: (v.cursor === undefined ? { $tag: 0 } : { $tag: 1, _0: v.cursor }),
  #|   whiteBalanceMode: (v.whiteBalanceMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.whiteBalanceMode }),
  #|   exposureMode: (v.exposureMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exposureMode }),
  #|   focusMode: (v.focusMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.focusMode }),
  #|   exposureCompensation: (v.exposureCompensation === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exposureCompensation }),
  #|   exposureTime: (v.exposureTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exposureTime }),
  #|   colorTemperature: (v.colorTemperature === undefined ? { $tag: 0 } : { $tag: 1, _0: v.colorTemperature }),
  #|   iso: (v.iso === undefined ? { $tag: 0 } : { $tag: 1, _0: v.iso }),
  #|   brightness: (v.brightness === undefined ? { $tag: 0 } : { $tag: 1, _0: v.brightness }),
  #|   contrast: (v.contrast === undefined ? { $tag: 0 } : { $tag: 1, _0: v.contrast }),
  #|   saturation: (v.saturation === undefined ? { $tag: 0 } : { $tag: 1, _0: v.saturation }),
  #|   sharpness: (v.sharpness === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sharpness }),
  #|   focusDistance: (v.focusDistance === undefined ? { $tag: 0 } : { $tag: 1, _0: v.focusDistance }),
  #|   pan: (v.pan === undefined ? { $tag: 0 } : { $tag: 1, _0: v.pan }),
  #|   tilt: (v.tilt === undefined ? { $tag: 0 } : { $tag: 1, _0: v.tilt }),
  #|   zoom: (v.zoom === undefined ? { $tag: 0 } : { $tag: 1, _0: v.zoom }),
  #|   torch: (v.torch === undefined ? { $tag: 0 } : { $tag: 1, _0: v.torch })
  #| })

///|
/// Convert from JsValue
pub fn MediaTrackCapabilities::from_js(
  value : JsValue,
) -> MediaTrackCapabilities {
  MediaTrackCapabilities::from_js_ffi(value)
}

///|
/// MediaTrackConstraints dictionary
pub(all) struct MediaTrackConstraints {
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
extern "js" fn MediaTrackConstraints::to_js_ffi(
  self : MediaTrackConstraints,
) -> JsValue =
  #| (self) => ({
  #|   width: ((() => { const v = self.width; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   height: ((() => { const v = self.height; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   aspectRatio: ((() => { const v = self.aspectRatio; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   frameRate: ((() => { const v = self.frameRate; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   facingMode: ((() => { const v = self.facingMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   resizeMode: ((() => { const v = self.resizeMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   sampleRate: ((() => { const v = self.sampleRate; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   sampleSize: ((() => { const v = self.sampleSize; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   echoCancellation: ((() => { const v = self.echoCancellation; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   autoGainControl: ((() => { const v = self.autoGainControl; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   noiseSuppression: ((() => { const v = self.noiseSuppression; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   latency: ((() => { const v = self.latency; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   channelCount: ((() => { const v = self.channelCount; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   deviceId: ((() => { const v = self.deviceId; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   groupId: ((() => { const v = self.groupId; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   backgroundBlur: ((() => { const v = self.backgroundBlur; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   displaySurface: ((() => { const v = self.displaySurface; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   logicalSurface: ((() => { const v = self.logicalSurface; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   cursor: ((() => { const v = self.cursor; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   restrictOwnAudio: ((() => { const v = self.restrictOwnAudio; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   suppressLocalAudioPlayback: ((() => { const v = self.suppressLocalAudioPlayback; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   whiteBalanceMode: ((() => { const v = self.whiteBalanceMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   exposureMode: ((() => { const v = self.exposureMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   focusMode: ((() => { const v = self.focusMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   pointsOfInterest: ((() => { const v = self.pointsOfInterest; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   exposureCompensation: ((() => { const v = self.exposureCompensation; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   exposureTime: ((() => { const v = self.exposureTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   colorTemperature: ((() => { const v = self.colorTemperature; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   iso: ((() => { const v = self.iso; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   brightness: ((() => { const v = self.brightness; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   contrast: ((() => { const v = self.contrast; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   saturation: ((() => { const v = self.saturation; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   sharpness: ((() => { const v = self.sharpness; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   focusDistance: ((() => { const v = self.focusDistance; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   pan: ((() => { const v = self.pan; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   tilt: ((() => { const v = self.tilt; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   zoom: ((() => { const v = self.zoom; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   torch: ((() => { const v = self.torch; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   advanced: ((() => { const v = self.advanced; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MediaTrackConstraints::to_js(self : MediaTrackConstraints) -> JsValue {
  MediaTrackConstraints::to_js_ffi(self)
}

///|
extern "js" fn MediaTrackConstraints::from_js_ffi(
  value : JsValue,
) -> MediaTrackConstraints =
  #| (v) => ({
  #|   width: (v.width === undefined ? { $tag: 0 } : { $tag: 1, _0: v.width }),
  #|   height: (v.height === undefined ? { $tag: 0 } : { $tag: 1, _0: v.height }),
  #|   aspectRatio: (v.aspectRatio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.aspectRatio }),
  #|   frameRate: (v.frameRate === undefined ? { $tag: 0 } : { $tag: 1, _0: v.frameRate }),
  #|   facingMode: (v.facingMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.facingMode }),
  #|   resizeMode: (v.resizeMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.resizeMode }),
  #|   sampleRate: (v.sampleRate === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sampleRate }),
  #|   sampleSize: (v.sampleSize === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sampleSize }),
  #|   echoCancellation: (v.echoCancellation === undefined ? { $tag: 0 } : { $tag: 1, _0: v.echoCancellation }),
  #|   autoGainControl: (v.autoGainControl === undefined ? { $tag: 0 } : { $tag: 1, _0: v.autoGainControl }),
  #|   noiseSuppression: (v.noiseSuppression === undefined ? { $tag: 0 } : { $tag: 1, _0: v.noiseSuppression }),
  #|   latency: (v.latency === undefined ? { $tag: 0 } : { $tag: 1, _0: v.latency }),
  #|   channelCount: (v.channelCount === undefined ? { $tag: 0 } : { $tag: 1, _0: v.channelCount }),
  #|   deviceId: (v.deviceId === undefined ? { $tag: 0 } : { $tag: 1, _0: v.deviceId }),
  #|   groupId: (v.groupId === undefined ? { $tag: 0 } : { $tag: 1, _0: v.groupId }),
  #|   backgroundBlur: (v.backgroundBlur === undefined ? { $tag: 0 } : { $tag: 1, _0: v.backgroundBlur }),
  #|   displaySurface: (v.displaySurface === undefined ? { $tag: 0 } : { $tag: 1, _0: v.displaySurface }),
  #|   logicalSurface: (v.logicalSurface === undefined ? { $tag: 0 } : { $tag: 1, _0: v.logicalSurface }),
  #|   cursor: (v.cursor === undefined ? { $tag: 0 } : { $tag: 1, _0: v.cursor }),
  #|   restrictOwnAudio: (v.restrictOwnAudio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.restrictOwnAudio }),
  #|   suppressLocalAudioPlayback: (v.suppressLocalAudioPlayback === undefined ? { $tag: 0 } : { $tag: 1, _0: v.suppressLocalAudioPlayback }),
  #|   whiteBalanceMode: (v.whiteBalanceMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.whiteBalanceMode }),
  #|   exposureMode: (v.exposureMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exposureMode }),
  #|   focusMode: (v.focusMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.focusMode }),
  #|   pointsOfInterest: (v.pointsOfInterest === undefined ? { $tag: 0 } : { $tag: 1, _0: v.pointsOfInterest }),
  #|   exposureCompensation: (v.exposureCompensation === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exposureCompensation }),
  #|   exposureTime: (v.exposureTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exposureTime }),
  #|   colorTemperature: (v.colorTemperature === undefined ? { $tag: 0 } : { $tag: 1, _0: v.colorTemperature }),
  #|   iso: (v.iso === undefined ? { $tag: 0 } : { $tag: 1, _0: v.iso }),
  #|   brightness: (v.brightness === undefined ? { $tag: 0 } : { $tag: 1, _0: v.brightness }),
  #|   contrast: (v.contrast === undefined ? { $tag: 0 } : { $tag: 1, _0: v.contrast }),
  #|   saturation: (v.saturation === undefined ? { $tag: 0 } : { $tag: 1, _0: v.saturation }),
  #|   sharpness: (v.sharpness === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sharpness }),
  #|   focusDistance: (v.focusDistance === undefined ? { $tag: 0 } : { $tag: 1, _0: v.focusDistance }),
  #|   pan: (v.pan === undefined ? { $tag: 0 } : { $tag: 1, _0: v.pan }),
  #|   tilt: (v.tilt === undefined ? { $tag: 0 } : { $tag: 1, _0: v.tilt }),
  #|   zoom: (v.zoom === undefined ? { $tag: 0 } : { $tag: 1, _0: v.zoom }),
  #|   torch: (v.torch === undefined ? { $tag: 0 } : { $tag: 1, _0: v.torch }),
  #|   advanced: (v.advanced === undefined ? { $tag: 0 } : { $tag: 1, _0: v.advanced })
  #| })

///|
/// Convert from JsValue
pub fn MediaTrackConstraints::from_js(value : JsValue) -> MediaTrackConstraints {
  MediaTrackConstraints::from_js_ffi(value)
}

///|
/// MediaTrackConstraintSet dictionary
pub(all) struct MediaTrackConstraintSet {
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
extern "js" fn MediaTrackConstraintSet::to_js_ffi(
  self : MediaTrackConstraintSet,
) -> JsValue =
  #| (self) => ({
  #|   width: ((() => { const v = self.width; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   height: ((() => { const v = self.height; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   aspectRatio: ((() => { const v = self.aspectRatio; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   frameRate: ((() => { const v = self.frameRate; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   facingMode: ((() => { const v = self.facingMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   resizeMode: ((() => { const v = self.resizeMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   sampleRate: ((() => { const v = self.sampleRate; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   sampleSize: ((() => { const v = self.sampleSize; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   echoCancellation: ((() => { const v = self.echoCancellation; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   autoGainControl: ((() => { const v = self.autoGainControl; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   noiseSuppression: ((() => { const v = self.noiseSuppression; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   latency: ((() => { const v = self.latency; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   channelCount: ((() => { const v = self.channelCount; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   deviceId: ((() => { const v = self.deviceId; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   groupId: ((() => { const v = self.groupId; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   backgroundBlur: ((() => { const v = self.backgroundBlur; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   displaySurface: ((() => { const v = self.displaySurface; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   logicalSurface: ((() => { const v = self.logicalSurface; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   cursor: ((() => { const v = self.cursor; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   restrictOwnAudio: ((() => { const v = self.restrictOwnAudio; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   suppressLocalAudioPlayback: ((() => { const v = self.suppressLocalAudioPlayback; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   whiteBalanceMode: ((() => { const v = self.whiteBalanceMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   exposureMode: ((() => { const v = self.exposureMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   focusMode: ((() => { const v = self.focusMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   pointsOfInterest: ((() => { const v = self.pointsOfInterest; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   exposureCompensation: ((() => { const v = self.exposureCompensation; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   exposureTime: ((() => { const v = self.exposureTime; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   colorTemperature: ((() => { const v = self.colorTemperature; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   iso: ((() => { const v = self.iso; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   brightness: ((() => { const v = self.brightness; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   contrast: ((() => { const v = self.contrast; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   saturation: ((() => { const v = self.saturation; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   sharpness: ((() => { const v = self.sharpness; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   focusDistance: ((() => { const v = self.focusDistance; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })()),
  #|   pan: ((() => { const v = self.pan; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   tilt: ((() => { const v = self.tilt; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   zoom: ((() => { const v = self.zoom; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   torch: ((() => { const v = self.torch; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
  #| })

///|
/// Convert to JsValue
pub fn MediaTrackConstraintSet::to_js(
  self : MediaTrackConstraintSet,
) -> JsValue {
  MediaTrackConstraintSet::to_js_ffi(self)
}

///|
extern "js" fn MediaTrackConstraintSet::from_js_ffi(
  value : JsValue,
) -> MediaTrackConstraintSet =
  #| (v) => ({
  #|   width: (v.width === undefined ? { $tag: 0 } : { $tag: 1, _0: v.width }),
  #|   height: (v.height === undefined ? { $tag: 0 } : { $tag: 1, _0: v.height }),
  #|   aspectRatio: (v.aspectRatio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.aspectRatio }),
  #|   frameRate: (v.frameRate === undefined ? { $tag: 0 } : { $tag: 1, _0: v.frameRate }),
  #|   facingMode: (v.facingMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.facingMode }),
  #|   resizeMode: (v.resizeMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.resizeMode }),
  #|   sampleRate: (v.sampleRate === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sampleRate }),
  #|   sampleSize: (v.sampleSize === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sampleSize }),
  #|   echoCancellation: (v.echoCancellation === undefined ? { $tag: 0 } : { $tag: 1, _0: v.echoCancellation }),
  #|   autoGainControl: (v.autoGainControl === undefined ? { $tag: 0 } : { $tag: 1, _0: v.autoGainControl }),
  #|   noiseSuppression: (v.noiseSuppression === undefined ? { $tag: 0 } : { $tag: 1, _0: v.noiseSuppression }),
  #|   latency: (v.latency === undefined ? { $tag: 0 } : { $tag: 1, _0: v.latency }),
  #|   channelCount: (v.channelCount === undefined ? { $tag: 0 } : { $tag: 1, _0: v.channelCount }),
  #|   deviceId: (v.deviceId === undefined ? { $tag: 0 } : { $tag: 1, _0: v.deviceId }),
  #|   groupId: (v.groupId === undefined ? { $tag: 0 } : { $tag: 1, _0: v.groupId }),
  #|   backgroundBlur: (v.backgroundBlur === undefined ? { $tag: 0 } : { $tag: 1, _0: v.backgroundBlur }),
  #|   displaySurface: (v.displaySurface === undefined ? { $tag: 0 } : { $tag: 1, _0: v.displaySurface }),
  #|   logicalSurface: (v.logicalSurface === undefined ? { $tag: 0 } : { $tag: 1, _0: v.logicalSurface }),
  #|   cursor: (v.cursor === undefined ? { $tag: 0 } : { $tag: 1, _0: v.cursor }),
  #|   restrictOwnAudio: (v.restrictOwnAudio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.restrictOwnAudio }),
  #|   suppressLocalAudioPlayback: (v.suppressLocalAudioPlayback === undefined ? { $tag: 0 } : { $tag: 1, _0: v.suppressLocalAudioPlayback }),
  #|   whiteBalanceMode: (v.whiteBalanceMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.whiteBalanceMode }),
  #|   exposureMode: (v.exposureMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exposureMode }),
  #|   focusMode: (v.focusMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.focusMode }),
  #|   pointsOfInterest: (v.pointsOfInterest === undefined ? { $tag: 0 } : { $tag: 1, _0: v.pointsOfInterest }),
  #|   exposureCompensation: (v.exposureCompensation === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exposureCompensation }),
  #|   exposureTime: (v.exposureTime === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exposureTime }),
  #|   colorTemperature: (v.colorTemperature === undefined ? { $tag: 0 } : { $tag: 1, _0: v.colorTemperature }),
  #|   iso: (v.iso === undefined ? { $tag: 0 } : { $tag: 1, _0: v.iso }),
  #|   brightness: (v.brightness === undefined ? { $tag: 0 } : { $tag: 1, _0: v.brightness }),
  #|   contrast: (v.contrast === undefined ? { $tag: 0 } : { $tag: 1, _0: v.contrast }),
  #|   saturation: (v.saturation === undefined ? { $tag: 0 } : { $tag: 1, _0: v.saturation }),
  #|   sharpness: (v.sharpness === undefined ? { $tag: 0 } : { $tag: 1, _0: v.sharpness }),
  #|   focusDistance: (v.focusDistance === undefined ? { $tag: 0 } : { $tag: 1, _0: v.focusDistance }),
  #|   pan: (v.pan === undefined ? { $tag: 0 } : { $tag: 1, _0: v.pan }),
  #|   tilt: (v.tilt === undefined ? { $tag: 0 } : { $tag: 1, _0: v.tilt }),
  #|   zoom: (v.zoom === undefined ? { $tag: 0 } : { $tag: 1, _0: v.zoom }),
  #|   torch: (v.torch === undefined ? { $tag: 0 } : { $tag: 1, _0: v.torch })
  #| })

///|
/// Convert from JsValue
pub fn MediaTrackConstraintSet::from_js(
  value : JsValue,
) -> MediaTrackConstraintSet {
  MediaTrackConstraintSet::from_js_ffi(value)
}

///|
/// MediaTrackSettings dictionary
pub(all) struct MediaTrackSettings {
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
extern "js" fn MediaTrackSettings::to_js_ffi(
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
  #|   echoCancellation: ((() => { const v = self.echoCancellation; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   autoGainControl: (self.autoGainControl === -1 ? undefined : self.autoGainControl),
  #|   noiseSuppression: (self.noiseSuppression === -1 ? undefined : self.noiseSuppression),
  #|   latency: self.latency,
  #|   channelCount: self.channelCount,
  #|   deviceId: self.deviceId,
  #|   groupId: self.groupId,
  #|   backgroundBlur: (self.backgroundBlur === -1 ? undefined : self.backgroundBlur),
  #|   displaySurface: self.displaySurface,
  #|   logicalSurface: (self.logicalSurface === -1 ? undefined : self.logicalSurface),
  #|   cursor: self.cursor,
  #|   restrictOwnAudio: (self.restrictOwnAudio === -1 ? undefined : self.restrictOwnAudio),
  #|   suppressLocalAudioPlayback: (self.suppressLocalAudioPlayback === -1 ? undefined : self.suppressLocalAudioPlayback),
  #|   screenPixelRatio: self.screenPixelRatio,
  #|   whiteBalanceMode: self.whiteBalanceMode,
  #|   exposureMode: self.exposureMode,
  #|   focusMode: self.focusMode,
  #|   pointsOfInterest: ((() => { const v = self.pointsOfInterest; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
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
  #|   torch: (self.torch === -1 ? undefined : self.torch)
  #| })

///|
/// Convert to JsValue
pub fn MediaTrackSettings::to_js(self : MediaTrackSettings) -> JsValue {
  MediaTrackSettings::to_js_ffi(self)
}

///|
extern "js" fn MediaTrackSettings::from_js_ffi(
  value : JsValue,
) -> MediaTrackSettings =
  #| (v) => ({
  #|   width: v.width,
  #|   height: v.height,
  #|   aspectRatio: v.aspectRatio,
  #|   frameRate: v.frameRate,
  #|   facingMode: v.facingMode,
  #|   resizeMode: v.resizeMode,
  #|   sampleRate: v.sampleRate,
  #|   sampleSize: v.sampleSize,
  #|   echoCancellation: (v.echoCancellation === undefined ? { $tag: 0 } : { $tag: 1, _0: v.echoCancellation }),
  #|   autoGainControl: (v.autoGainControl === undefined ? -1 : v.autoGainControl),
  #|   noiseSuppression: (v.noiseSuppression === undefined ? -1 : v.noiseSuppression),
  #|   latency: v.latency,
  #|   channelCount: v.channelCount,
  #|   deviceId: v.deviceId,
  #|   groupId: v.groupId,
  #|   backgroundBlur: (v.backgroundBlur === undefined ? -1 : v.backgroundBlur),
  #|   displaySurface: v.displaySurface,
  #|   logicalSurface: (v.logicalSurface === undefined ? -1 : v.logicalSurface),
  #|   cursor: v.cursor,
  #|   restrictOwnAudio: (v.restrictOwnAudio === undefined ? -1 : v.restrictOwnAudio),
  #|   suppressLocalAudioPlayback: (v.suppressLocalAudioPlayback === undefined ? -1 : v.suppressLocalAudioPlayback),
  #|   screenPixelRatio: v.screenPixelRatio,
  #|   whiteBalanceMode: v.whiteBalanceMode,
  #|   exposureMode: v.exposureMode,
  #|   focusMode: v.focusMode,
  #|   pointsOfInterest: (v.pointsOfInterest === undefined ? { $tag: 0 } : { $tag: 1, _0: v.pointsOfInterest }),
  #|   exposureCompensation: v.exposureCompensation,
  #|   exposureTime: v.exposureTime,
  #|   colorTemperature: v.colorTemperature,
  #|   iso: v.iso,
  #|   brightness: v.brightness,
  #|   contrast: v.contrast,
  #|   saturation: v.saturation,
  #|   sharpness: v.sharpness,
  #|   focusDistance: v.focusDistance,
  #|   pan: v.pan,
  #|   tilt: v.tilt,
  #|   zoom: v.zoom,
  #|   torch: (v.torch === undefined ? -1 : v.torch)
  #| })

///|
/// Convert from JsValue
pub fn MediaTrackSettings::from_js(value : JsValue) -> MediaTrackSettings {
  MediaTrackSettings::from_js_ffi(value)
}

///|
/// MediaStreamTrackEventInit dictionary
pub(all) struct MediaStreamTrackEventInit {
  track : MediaStreamTrack
}

///|
/// Create a new MediaStreamTrackEventInit
pub fn MediaStreamTrackEventInit::new(
  track~ : MediaStreamTrack,
) -> MediaStreamTrackEventInit {
  MediaStreamTrackEventInit::{ track, }
}

///|
extern "js" fn MediaStreamTrackEventInit::to_js_ffi(
  self : MediaStreamTrackEventInit,
) -> JsValue =
  #| (self) => ({
  #|   track: self.track
  #| })

///|
/// Convert to JsValue
pub fn MediaStreamTrackEventInit::to_js(
  self : MediaStreamTrackEventInit,
) -> JsValue {
  MediaStreamTrackEventInit::to_js_ffi(self)
}

///|
extern "js" fn MediaStreamTrackEventInit::from_js_ffi(
  value : JsValue,
) -> MediaStreamTrackEventInit =
  #| (v) => ({
  #|   track: v.track
  #| })

///|
/// Convert from JsValue
pub fn MediaStreamTrackEventInit::from_js(
  value : JsValue,
) -> MediaStreamTrackEventInit {
  MediaStreamTrackEventInit::from_js_ffi(value)
}

///|
/// DeviceChangeEventInit dictionary
pub(all) struct DeviceChangeEventInit {
  devices : Array[MediaDeviceInfo]?
}

///|
/// Create a new DeviceChangeEventInit with default values
pub fn DeviceChangeEventInit::default() -> DeviceChangeEventInit {
  DeviceChangeEventInit::{ devices: None }
}

///|
extern "js" fn DeviceChangeEventInit::to_js_ffi(
  self : DeviceChangeEventInit,
) -> JsValue =
  #| (self) => ({
  #|   devices: ((() => { const v = self.devices; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn DeviceChangeEventInit::to_js(self : DeviceChangeEventInit) -> JsValue {
  DeviceChangeEventInit::to_js_ffi(self)
}

///|
extern "js" fn DeviceChangeEventInit::from_js_ffi(
  value : JsValue,
) -> DeviceChangeEventInit =
  #| (v) => ({
  #|   devices: (v.devices === undefined ? { $tag: 0 } : { $tag: 1, _0: v.devices })
  #| })

///|
/// Convert from JsValue
pub fn DeviceChangeEventInit::from_js(value : JsValue) -> DeviceChangeEventInit {
  DeviceChangeEventInit::from_js_ffi(value)
}

///|
/// MediaStreamConstraints dictionary
pub(all) struct MediaStreamConstraints {
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
extern "js" fn MediaStreamConstraints::to_js_ffi(
  self : MediaStreamConstraints,
) -> JsValue =
  #| (self) => ({
  #|   video: ((() => { const v = self.video; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   audio: ((() => { const v = self.audio; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   peerIdentity: self.peerIdentity,
  #|   preferCurrentTab: (self.preferCurrentTab === -1 ? undefined : self.preferCurrentTab)
  #| })

///|
/// Convert to JsValue
pub fn MediaStreamConstraints::to_js(self : MediaStreamConstraints) -> JsValue {
  MediaStreamConstraints::to_js_ffi(self)
}

///|
extern "js" fn MediaStreamConstraints::from_js_ffi(
  value : JsValue,
) -> MediaStreamConstraints =
  #| (v) => ({
  #|   video: (v.video === undefined ? { $tag: 0 } : { $tag: 1, _0: v.video }),
  #|   audio: (v.audio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.audio }),
  #|   peerIdentity: v.peerIdentity,
  #|   preferCurrentTab: (v.preferCurrentTab === undefined ? -1 : v.preferCurrentTab)
  #| })

///|
/// Convert from JsValue
pub fn MediaStreamConstraints::from_js(
  value : JsValue,
) -> MediaStreamConstraints {
  MediaStreamConstraints::from_js_ffi(value)
}

///|
/// DoubleRange dictionary
pub(all) struct DoubleRange {
  max : Double?
  min : Double?
}

///|
/// Create a new DoubleRange with default values
pub fn DoubleRange::default() -> DoubleRange {
  DoubleRange::{ max: None, min: None }
}

///|
extern "js" fn DoubleRange::to_js_ffi(self : DoubleRange) -> JsValue =
  #| (self) => ({
  #|   max: self.max,
  #|   min: self.min
  #| })

///|
/// Convert to JsValue
pub fn DoubleRange::to_js(self : DoubleRange) -> JsValue {
  DoubleRange::to_js_ffi(self)
}

///|
extern "js" fn DoubleRange::from_js_ffi(value : JsValue) -> DoubleRange =
  #| (v) => ({
  #|   max: v.max,
  #|   min: v.min
  #| })

///|
/// Convert from JsValue
pub fn DoubleRange::from_js(value : JsValue) -> DoubleRange {
  DoubleRange::from_js_ffi(value)
}

///|
/// ConstrainDoubleRange dictionary
pub(all) struct ConstrainDoubleRange {
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
extern "js" fn ConstrainDoubleRange::to_js_ffi(
  self : ConstrainDoubleRange,
) -> JsValue =
  #| (self) => ({
  #|   max: self.max,
  #|   min: self.min,
  #|   exact: self.exact,
  #|   ideal: self.ideal
  #| })

///|
/// Convert to JsValue
pub fn ConstrainDoubleRange::to_js(self : ConstrainDoubleRange) -> JsValue {
  ConstrainDoubleRange::to_js_ffi(self)
}

///|
extern "js" fn ConstrainDoubleRange::from_js_ffi(
  value : JsValue,
) -> ConstrainDoubleRange =
  #| (v) => ({
  #|   max: v.max,
  #|   min: v.min,
  #|   exact: v.exact,
  #|   ideal: v.ideal
  #| })

///|
/// Convert from JsValue
pub fn ConstrainDoubleRange::from_js(value : JsValue) -> ConstrainDoubleRange {
  ConstrainDoubleRange::from_js_ffi(value)
}

///|
/// ULongRange dictionary
pub(all) struct ULongRange {
  max : Int?
  min : Int?
}

///|
/// Create a new ULongRange with default values
pub fn ULongRange::default() -> ULongRange {
  ULongRange::{ max: None, min: None }
}

///|
extern "js" fn ULongRange::to_js_ffi(self : ULongRange) -> JsValue =
  #| (self) => ({
  #|   max: self.max,
  #|   min: self.min
  #| })

///|
/// Convert to JsValue
pub fn ULongRange::to_js(self : ULongRange) -> JsValue {
  ULongRange::to_js_ffi(self)
}

///|
extern "js" fn ULongRange::from_js_ffi(value : JsValue) -> ULongRange =
  #| (v) => ({
  #|   max: v.max,
  #|   min: v.min
  #| })

///|
/// Convert from JsValue
pub fn ULongRange::from_js(value : JsValue) -> ULongRange {
  ULongRange::from_js_ffi(value)
}

///|
/// ConstrainULongRange dictionary
pub(all) struct ConstrainULongRange {
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
extern "js" fn ConstrainULongRange::to_js_ffi(
  self : ConstrainULongRange,
) -> JsValue =
  #| (self) => ({
  #|   max: self.max,
  #|   min: self.min,
  #|   exact: self.exact,
  #|   ideal: self.ideal
  #| })

///|
/// Convert to JsValue
pub fn ConstrainULongRange::to_js(self : ConstrainULongRange) -> JsValue {
  ConstrainULongRange::to_js_ffi(self)
}

///|
extern "js" fn ConstrainULongRange::from_js_ffi(
  value : JsValue,
) -> ConstrainULongRange =
  #| (v) => ({
  #|   max: v.max,
  #|   min: v.min,
  #|   exact: v.exact,
  #|   ideal: v.ideal
  #| })

///|
/// Convert from JsValue
pub fn ConstrainULongRange::from_js(value : JsValue) -> ConstrainULongRange {
  ConstrainULongRange::from_js_ffi(value)
}

///|
/// ConstrainBooleanParameters dictionary
pub(all) struct ConstrainBooleanParameters {
  exact : Bool?
  ideal : Bool?
}

///|
/// Create a new ConstrainBooleanParameters with default values
pub fn ConstrainBooleanParameters::default() -> ConstrainBooleanParameters {
  ConstrainBooleanParameters::{ exact: None, ideal: None }
}

///|
extern "js" fn ConstrainBooleanParameters::to_js_ffi(
  self : ConstrainBooleanParameters,
) -> JsValue =
  #| (self) => ({
  #|   exact: (self.exact === -1 ? undefined : self.exact),
  #|   ideal: (self.ideal === -1 ? undefined : self.ideal)
  #| })

///|
/// Convert to JsValue
pub fn ConstrainBooleanParameters::to_js(
  self : ConstrainBooleanParameters,
) -> JsValue {
  ConstrainBooleanParameters::to_js_ffi(self)
}

///|
extern "js" fn ConstrainBooleanParameters::from_js_ffi(
  value : JsValue,
) -> ConstrainBooleanParameters =
  #| (v) => ({
  #|   exact: (v.exact === undefined ? -1 : v.exact),
  #|   ideal: (v.ideal === undefined ? -1 : v.ideal)
  #| })

///|
/// Convert from JsValue
pub fn ConstrainBooleanParameters::from_js(
  value : JsValue,
) -> ConstrainBooleanParameters {
  ConstrainBooleanParameters::from_js_ffi(value)
}

///|
/// ConstrainDOMStringParameters dictionary
pub(all) struct ConstrainDOMStringParameters {
  exact : StringOrArrayOfString?
  ideal : StringOrArrayOfString?
}

///|
/// Create a new ConstrainDOMStringParameters with default values
pub fn ConstrainDOMStringParameters::default() -> ConstrainDOMStringParameters {
  ConstrainDOMStringParameters::{ exact: None, ideal: None }
}

///|
extern "js" fn ConstrainDOMStringParameters::to_js_ffi(
  self : ConstrainDOMStringParameters,
) -> JsValue =
  #| (self) => ({
  #|   exact: ((() => { const v = self.exact; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   ideal: ((() => { const v = self.ideal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ConstrainDOMStringParameters::to_js(
  self : ConstrainDOMStringParameters,
) -> JsValue {
  ConstrainDOMStringParameters::to_js_ffi(self)
}

///|
extern "js" fn ConstrainDOMStringParameters::from_js_ffi(
  value : JsValue,
) -> ConstrainDOMStringParameters =
  #| (v) => ({
  #|   exact: (v.exact === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exact }),
  #|   ideal: (v.ideal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ideal })
  #| })

///|
/// Convert from JsValue
pub fn ConstrainDOMStringParameters::from_js(
  value : JsValue,
) -> ConstrainDOMStringParameters {
  ConstrainDOMStringParameters::from_js_ffi(value)
}

///|
/// ConstrainBooleanOrDOMStringParameters dictionary
pub(all) struct ConstrainBooleanOrDOMStringParameters {
  exact : BoolOrString?
  ideal : BoolOrString?
}

///|
/// Create a new ConstrainBooleanOrDOMStringParameters with default values
pub fn ConstrainBooleanOrDOMStringParameters::default() -> ConstrainBooleanOrDOMStringParameters {
  ConstrainBooleanOrDOMStringParameters::{ exact: None, ideal: None }
}

///|
extern "js" fn ConstrainBooleanOrDOMStringParameters::to_js_ffi(
  self : ConstrainBooleanOrDOMStringParameters,
) -> JsValue =
  #| (self) => ({
  #|   exact: ((() => { const v = self.exact; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   ideal: ((() => { const v = self.ideal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ConstrainBooleanOrDOMStringParameters::to_js(
  self : ConstrainBooleanOrDOMStringParameters,
) -> JsValue {
  ConstrainBooleanOrDOMStringParameters::to_js_ffi(self)
}

///|
extern "js" fn ConstrainBooleanOrDOMStringParameters::from_js_ffi(
  value : JsValue,
) -> ConstrainBooleanOrDOMStringParameters =
  #| (v) => ({
  #|   exact: (v.exact === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exact }),
  #|   ideal: (v.ideal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ideal })
  #| })

///|
/// Convert from JsValue
pub fn ConstrainBooleanOrDOMStringParameters::from_js(
  value : JsValue,
) -> ConstrainBooleanOrDOMStringParameters {
  ConstrainBooleanOrDOMStringParameters::from_js_ffi(value)
}

///|
/// CameraDevicePermissionDescriptor dictionary
pub(all) struct CameraDevicePermissionDescriptor {
  panTiltZoom : Bool?
}

///|
/// Create a new CameraDevicePermissionDescriptor with default values
pub fn CameraDevicePermissionDescriptor::default() -> CameraDevicePermissionDescriptor {
  CameraDevicePermissionDescriptor::{ panTiltZoom: None }
}

///|
extern "js" fn CameraDevicePermissionDescriptor::to_js_ffi(
  self : CameraDevicePermissionDescriptor,
) -> JsValue =
  #| (self) => ({
  #|   panTiltZoom: (self.panTiltZoom === -1 ? undefined : self.panTiltZoom)
  #| })

///|
/// Convert to JsValue
pub fn CameraDevicePermissionDescriptor::to_js(
  self : CameraDevicePermissionDescriptor,
) -> JsValue {
  CameraDevicePermissionDescriptor::to_js_ffi(self)
}

///|
extern "js" fn CameraDevicePermissionDescriptor::from_js_ffi(
  value : JsValue,
) -> CameraDevicePermissionDescriptor =
  #| (v) => ({
  #|   panTiltZoom: (v.panTiltZoom === undefined ? -1 : v.panTiltZoom)
  #| })

///|
/// Convert from JsValue
pub fn CameraDevicePermissionDescriptor::from_js(
  value : JsValue,
) -> CameraDevicePermissionDescriptor {
  CameraDevicePermissionDescriptor::from_js_ffi(value)
}

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
pub extern "js" fn MediaStream::new_with_media_stream(
  stream : MediaStream,
) -> MediaStream =
  #| (stream) => new MediaStream(stream)

///|
pub extern "js" fn MediaStream::new_with_array(
  tracks : Array[MediaStreamTrack],
) -> MediaStream =
  #| (tracks) => new MediaStream(tracks)

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
  #| (self, track_id) => (() => { const v = self.getTrackById(track_id); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
  #| (self) => ['live', 'ended'].indexOf(self.readyState)

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
extern "js" fn MediaStreamTrack::apply_constraints_with_constraints_ffi(
  self : MediaStreamTrack,
  constraints : JsValue,
) -> Promise[Unit] =
  #| (self, constraints) => self.applyConstraints(constraints)

///|
pub fn MediaStreamTrack::apply_constraints_with_constraints(
  self : MediaStreamTrack,
  constraints : MediaTrackConstraints,
) -> Promise[Unit] {
  MediaStreamTrack::apply_constraints_with_constraints_ffi(
    self,
    constraints.to_js(),
  )
}

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
  #| (self) => (() => { const v = self.getCaptureHandle(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

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
extern "js" fn MediaStreamTrackEvent::new_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> MediaStreamTrackEvent =
  #| (type_, event_init_dict) => new MediaStreamTrackEvent(type_, event_init_dict)

///|
pub fn MediaStreamTrackEvent::new(
  type_ : String,
  event_init_dict : MediaStreamTrackEventInit,
) -> MediaStreamTrackEvent {
  MediaStreamTrackEvent::new_ffi(type_, event_init_dict.to_js())
}

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
) -> OverconstrainedError =
  #| (constraint) => new OverconstrainedError(constraint)

///|
pub extern "js" fn OverconstrainedError::new_with_message(
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
extern "js" fn MediaDevices::get_viewport_media_with_options_ffi(
  self : MediaDevices,
  options : JsValue,
) -> Promise[MediaStream] =
  #| (self, options) => self.getViewportMedia(options)

///|
pub fn MediaDevices::get_viewport_media_with_options(
  self : MediaDevices,
  options : DisplayMediaStreamOptions,
) -> Promise[MediaStream] {
  MediaDevices::get_viewport_media_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn MediaDevices::select_audio_output(
  self : MediaDevices,
) -> Promise[MediaDeviceInfo] =
  #| (self) => self.selectAudioOutput()

///|
extern "js" fn MediaDevices::select_audio_output_with_options_ffi(
  self : MediaDevices,
  options : JsValue,
) -> Promise[MediaDeviceInfo] =
  #| (self, options) => self.selectAudioOutput(options)

///|
pub fn MediaDevices::select_audio_output_with_options(
  self : MediaDevices,
  options : AudioOutputOptions,
) -> Promise[MediaDeviceInfo] {
  MediaDevices::select_audio_output_with_options_ffi(self, options.to_js())
}

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
extern "js" fn MediaDevices::get_user_media_with_constraints_ffi(
  self : MediaDevices,
  constraints : JsValue,
) -> Promise[MediaStream] =
  #| (self, constraints) => self.getUserMedia(constraints)

///|
pub fn MediaDevices::get_user_media_with_constraints(
  self : MediaDevices,
  constraints : MediaStreamConstraints,
) -> Promise[MediaStream] {
  MediaDevices::get_user_media_with_constraints_ffi(self, constraints.to_js())
}

///|
pub extern "js" fn MediaDevices::get_display_media(
  self : MediaDevices,
) -> Promise[MediaStream] =
  #| (self) => self.getDisplayMedia()

///|
extern "js" fn MediaDevices::get_display_media_with_options_ffi(
  self : MediaDevices,
  options : JsValue,
) -> Promise[MediaStream] =
  #| (self, options) => self.getDisplayMedia(options)

///|
pub fn MediaDevices::get_display_media_with_options(
  self : MediaDevices,
  options : DisplayMediaStreamOptions,
) -> Promise[MediaStream] {
  MediaDevices::get_display_media_with_options_ffi(self, options.to_js())
}

///|
pub extern "js" fn MediaDevices::set_capture_handle_config(
  self : MediaDevices,
) -> Unit =
  #| (self) => self.setCaptureHandleConfig()

///|
extern "js" fn MediaDevices::set_capture_handle_config_with_config_ffi(
  self : MediaDevices,
  config : JsValue,
) -> Unit =
  #| (self, config) => self.setCaptureHandleConfig(config)

///|
pub fn MediaDevices::set_capture_handle_config_with_config(
  self : MediaDevices,
  config : CaptureHandleConfig,
) -> Unit {
  MediaDevices::set_capture_handle_config_with_config_ffi(self, config.to_js())
}

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
  #| (self) => ['audioinput', 'audiooutput', 'videoinput'].indexOf(self.kind)

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
pub extern "js" fn DeviceChangeEvent::new(type_ : String) -> DeviceChangeEvent =
  #| (type_) => new DeviceChangeEvent(type_)

///|
extern "js" fn DeviceChangeEvent::new_with_event_init_dict_ffi(
  type_ : String,
  event_init_dict : JsValue,
) -> DeviceChangeEvent =
  #| (type_, event_init_dict) => new DeviceChangeEvent(type_, event_init_dict)

///|
pub fn DeviceChangeEvent::new_with_event_init_dict(
  type_ : String,
  event_init_dict : DeviceChangeEventInit,
) -> DeviceChangeEvent {
  DeviceChangeEvent::new_with_event_init_dict_ffi(
    type_,
    event_init_dict.to_js(),
  )
}

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
