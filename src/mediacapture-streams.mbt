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
  #| (self) => (typeof self === 'number') ? { $tag: 1, _0: self } : { $tag: 0 }

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
/// MediaTrackConstraints dictionary
pub(all) struct MediaTrackConstraints {
  advanced : Array[MediaTrackConstraintSet]?
}

///|
/// Create a new MediaTrackConstraints with default values
pub fn MediaTrackConstraints::default() -> MediaTrackConstraints {
  MediaTrackConstraints::{ advanced: None }
}

///|
extern "js" fn MediaTrackConstraints::to_js_ffi(
  self : MediaTrackConstraints,
) -> JsValue =
  #| (self) => ({
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
  #|   advanced: (v.advanced === undefined ? { $tag: 0 } : { $tag: 1, _0: v.advanced })
  #| })

///|
/// Convert from JsValue
pub fn MediaTrackConstraints::from_js(value : JsValue) -> MediaTrackConstraints {
  MediaTrackConstraints::from_js_ffi(value)
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
extern "js" fn MediaStreamConstraints::to_js_ffi(
  self : MediaStreamConstraints,
) -> JsValue =
  #| (self) => ({
  #|   video: ((() => { const v = self.video; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   audio: ((() => { const v = self.audio; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   preferCurrentTab: (self.preferCurrentTab === -1 ? undefined : self.preferCurrentTab),
  #|   peerIdentity: self.peerIdentity
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
  #|   preferCurrentTab: (v.preferCurrentTab === undefined ? -1 : v.preferCurrentTab),
  #|   peerIdentity: v.peerIdentity
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
  #|   max: ((() => { const v = self.max; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   min: ((() => { const v = self.min; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn DoubleRange::to_js(self : DoubleRange) -> JsValue {
  DoubleRange::to_js_ffi(self)
}

///|
extern "js" fn DoubleRange::from_js_ffi(value : JsValue) -> DoubleRange =
  #| (v) => ({
  #|   max: (v.max === undefined ? { $tag: 0 } : { $tag: 1, _0: v.max }),
  #|   min: (v.min === undefined ? { $tag: 0 } : { $tag: 1, _0: v.min })
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
  #|   max: ((() => { const v = self.max; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   min: ((() => { const v = self.min; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   exact: ((() => { const v = self.exact; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   ideal: ((() => { const v = self.ideal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
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
  #|   max: (v.max === undefined ? { $tag: 0 } : { $tag: 1, _0: v.max }),
  #|   min: (v.min === undefined ? { $tag: 0 } : { $tag: 1, _0: v.min }),
  #|   exact: (v.exact === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exact }),
  #|   ideal: (v.ideal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ideal })
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
pub extern "js" fn MediaStream::set_onaddtrack(
  self : MediaStream,
  handler : (MediaStreamTrackEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onaddtrack = (e) => handler(e) }

///|
pub extern "js" fn MediaStream::clear_onaddtrack(self : MediaStream) -> Unit =
  #| (self) => { self.onaddtrack = null }

///|
pub extern "js" fn MediaStream::set_onremovetrack(
  self : MediaStream,
  handler : (MediaStreamTrackEvent) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onremovetrack = (e) => handler(e) }

///|
pub extern "js" fn MediaStream::clear_onremovetrack(self : MediaStream) -> Unit =
  #| (self) => { self.onremovetrack = null }

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
pub extern "js" fn MediaStreamTrack::as_canvas_capture_media_stream_track(
  self : MediaStreamTrack,
) -> CanvasCaptureMediaStreamTrack? =
  #| (self) => (self instanceof CanvasCaptureMediaStreamTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn MediaStreamTrack::as_browser_capture_media_stream_track(
  self : MediaStreamTrack,
) -> BrowserCaptureMediaStreamTrack? =
  #| (self) => (self instanceof BrowserCaptureMediaStreamTrack) ? { $tag: 1, _0: self } : { $tag: 0 }

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
pub extern "js" fn MediaStreamTrack::set_onmute(
  self : MediaStreamTrack,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onmute = (e) => handler(e) }

///|
pub extern "js" fn MediaStreamTrack::clear_onmute(
  self : MediaStreamTrack,
) -> Unit =
  #| (self) => { self.onmute = null }

///|
pub extern "js" fn MediaStreamTrack::set_onunmute(
  self : MediaStreamTrack,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onunmute = (e) => handler(e) }

///|
pub extern "js" fn MediaStreamTrack::clear_onunmute(
  self : MediaStreamTrack,
) -> Unit =
  #| (self) => { self.onunmute = null }

///|
pub extern "js" fn MediaStreamTrack::get_ready_state(
  self : MediaStreamTrack,
) -> MediaStreamTrackState =
  #| (self) => ['live', 'ended'].indexOf(self.readyState)

///|
pub extern "js" fn MediaStreamTrack::set_onended(
  self : MediaStreamTrack,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onended = (e) => handler(e) }

///|
pub extern "js" fn MediaStreamTrack::clear_onended(
  self : MediaStreamTrack,
) -> Unit =
  #| (self) => { self.onended = null }

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
pub extern "js" fn MediaStreamTrack::get_capture_handle(
  self : MediaStreamTrack,
) -> CaptureHandle? =
  #| (self) => (() => { const v = self.getCaptureHandle(); return v == null ? { $tag: 0 } : { $tag: 1, _0: v }; })()

///|
pub extern "js" fn MediaStreamTrack::set_oncapturehandlechange(
  self : MediaStreamTrack,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncapturehandlechange = (e) => handler(e) }

///|
pub extern "js" fn MediaStreamTrack::clear_oncapturehandlechange(
  self : MediaStreamTrack,
) -> Unit =
  #| (self) => { self.oncapturehandlechange = null }

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
pub extern "js" fn MediaStreamTrack::set_onisolationchange(
  self : MediaStreamTrack,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.onisolationchange = (e) => handler(e) }

///|
pub extern "js" fn MediaStreamTrack::clear_onisolationchange(
  self : MediaStreamTrack,
) -> Unit =
  #| (self) => { self.onisolationchange = null }

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
/// Error type for throwing methods
pub(all) enum MediaDevicesSelectAudioOutputError {
  NotFoundError(JsError)
  NotAllowedError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum MediaDevicesGetUserMediaError {
  TypeError(JsError)
  AbortError(JsError)
  NotFoundError(JsError)
  SecurityError(JsError)
  NotAllowedError(JsError)
  NotReadableError(JsError)
  InvalidStateError(JsError)
  OverconstrainedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum MediaDevicesGetDisplayMediaError {
  TypeError(JsError)
  AbortError(JsError)
  NotFoundError(JsError)
  NotAllowedError(JsError)
  NotReadableError(JsError)
  InvalidStateError(JsError)
  OverconstrainedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn MediaDevices::set_ondevicechange(
  self : MediaDevices,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.ondevicechange = (e) => handler(e) }

///|
pub extern "js" fn MediaDevices::clear_ondevicechange(
  self : MediaDevices,
) -> Unit =
  #| (self) => { self.ondevicechange = null }

///|
pub extern "js" fn MediaDevices::enumerate_devices(
  self : MediaDevices,
) -> Promise[Array[MediaDeviceInfo]] =
  #| (self) => self.enumerateDevices()

///|
pub extern "js" fn MediaDevices::select_audio_output(
  self : MediaDevices,
) -> Promise[Result[MediaDeviceInfo, MediaDevicesSelectAudioOutputError]] =
  #| (self) => self.selectAudioOutput().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotFoundError') return { $tag: 0, _0: e }; if (n === 'NotAllowedError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
extern "js" fn MediaDevices::select_audio_output_with_options_ffi(
  self : MediaDevices,
  options : JsValue,
) -> Promise[Result[MediaDeviceInfo, MediaDevicesSelectAudioOutputError]] =
  #| (self, options) => self.selectAudioOutput(options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotFoundError') return { $tag: 0, _0: e }; if (n === 'NotAllowedError') return { $tag: 1, _0: e }; if (n === 'InvalidStateError') return { $tag: 2, _0: e }; return { $tag: 3, _0: e }; })() }))

///|
pub fn MediaDevices::select_audio_output_with_options(
  self : MediaDevices,
  options : AudioOutputOptions,
) -> Promise[Result[MediaDeviceInfo, MediaDevicesSelectAudioOutputError]] {
  MediaDevices::select_audio_output_with_options_ffi(self, options.to_js())
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
pub extern "js" fn MediaDevices::set_supported_capture_actions(
  self : MediaDevices,
  actions : Array[String],
) -> Unit =
  #| (self, actions) => self.setSupportedCaptureActions(actions)

///|
pub extern "js" fn MediaDevices::set_oncaptureaction(
  self : MediaDevices,
  handler : (Event) -> Unit,
) -> Unit =
  #| (self, handler) => { self.oncaptureaction = (e) => handler(e) }

///|
pub extern "js" fn MediaDevices::clear_oncaptureaction(
  self : MediaDevices,
) -> Unit =
  #| (self) => { self.oncaptureaction = null }

///|
pub extern "js" fn MediaDevices::get_supported_constraints(
  self : MediaDevices,
) -> MediaTrackSupportedConstraints =
  #| (self) => self.getSupportedConstraints()

///|
pub extern "js" fn MediaDevices::get_user_media(
  self : MediaDevices,
) -> Promise[Result[MediaStream, MediaDevicesGetUserMediaError]] =
  #| (self) => self.getUserMedia().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'NotFoundError') return { $tag: 2, _0: e }; if (n === 'SecurityError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotReadableError') return { $tag: 5, _0: e }; if (n === 'InvalidStateError') return { $tag: 6, _0: e }; if (n === 'OverconstrainedError') return { $tag: 7, _0: e }; return { $tag: 8, _0: e }; })() }))

///|
extern "js" fn MediaDevices::get_user_media_with_constraints_ffi(
  self : MediaDevices,
  constraints : JsValue,
) -> Promise[Result[MediaStream, MediaDevicesGetUserMediaError]] =
  #| (self, constraints) => self.getUserMedia(constraints).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'NotFoundError') return { $tag: 2, _0: e }; if (n === 'SecurityError') return { $tag: 3, _0: e }; if (n === 'NotAllowedError') return { $tag: 4, _0: e }; if (n === 'NotReadableError') return { $tag: 5, _0: e }; if (n === 'InvalidStateError') return { $tag: 6, _0: e }; if (n === 'OverconstrainedError') return { $tag: 7, _0: e }; return { $tag: 8, _0: e }; })() }))

///|
pub fn MediaDevices::get_user_media_with_constraints(
  self : MediaDevices,
  constraints : MediaStreamConstraints,
) -> Promise[Result[MediaStream, MediaDevicesGetUserMediaError]] {
  MediaDevices::get_user_media_with_constraints_ffi(self, constraints.to_js())
}

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
pub extern "js" fn MediaDevices::get_display_media(
  self : MediaDevices,
) -> Promise[Result[MediaStream, MediaDevicesGetDisplayMediaError]] =
  #| (self) => self.getDisplayMedia().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'NotFoundError') return { $tag: 2, _0: e }; if (n === 'NotAllowedError') return { $tag: 3, _0: e }; if (n === 'NotReadableError') return { $tag: 4, _0: e }; if (n === 'InvalidStateError') return { $tag: 5, _0: e }; if (n === 'OverconstrainedError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }))

///|
extern "js" fn MediaDevices::get_display_media_with_options_ffi(
  self : MediaDevices,
  options : JsValue,
) -> Promise[Result[MediaStream, MediaDevicesGetDisplayMediaError]] =
  #| (self, options) => self.getDisplayMedia(options).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'TypeError') return { $tag: 0, _0: e }; if (n === 'AbortError') return { $tag: 1, _0: e }; if (n === 'NotFoundError') return { $tag: 2, _0: e }; if (n === 'NotAllowedError') return { $tag: 3, _0: e }; if (n === 'NotReadableError') return { $tag: 4, _0: e }; if (n === 'InvalidStateError') return { $tag: 5, _0: e }; if (n === 'OverconstrainedError') return { $tag: 6, _0: e }; return { $tag: 7, _0: e }; })() }))

///|
pub fn MediaDevices::get_display_media_with_options(
  self : MediaDevices,
  options : DisplayMediaStreamOptions,
) -> Promise[Result[MediaStream, MediaDevicesGetDisplayMediaError]] {
  MediaDevices::get_display_media_with_options_ffi(self, options.to_js())
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
) -> Array[MediaDeviceInfo] =
  #| (self) => self.devices

///|
pub extern "js" fn DeviceChangeEvent::get_user_inserted_devices(
  self : DeviceChangeEvent,
) -> Array[MediaDeviceInfo] =
  #| (self) => self.userInsertedDevices
