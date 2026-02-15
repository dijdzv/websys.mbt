// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/image-capture

///|
/// ConstrainPoint2D typedef
pub type ConstrainPoint2D

///|
pub extern "js" fn ConstrainPoint2D::to_js_value(
  self : ConstrainPoint2D,
) -> JsValue =
  #| (self) => self

///|
/// Create ConstrainPoint2D from Array[Point2D]
pub extern "js" fn ConstrainPoint2D::from_array_of_point_2d(
  v : Array[Point2D],
) -> ConstrainPoint2D =
  #| (v) => v

///|
/// Create ConstrainPoint2D from ConstrainPoint2DParameters
pub extern "js" fn ConstrainPoint2D::from_constrain_point_2d_parameters(
  v : ConstrainPoint2DParameters,
) -> ConstrainPoint2D =
  #| (v) => v

///|
/// Check if this ConstrainPoint2D is Array[Point2D]
pub extern "js" fn ConstrainPoint2D::is_array_of_point_2d(
  self : ConstrainPoint2D,
) -> Bool =
  #| (self) => Array.isArray(self)

///|
/// Check if this ConstrainPoint2D is ConstrainPoint2DParameters
pub extern "js" fn ConstrainPoint2D::is_constrain_point_2d_parameters(
  self : ConstrainPoint2D,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get ConstrainPoint2D as Array[Point2D]
pub extern "js" fn ConstrainPoint2D::as_array_of_point_2d(
  self : ConstrainPoint2D,
) -> Array[Point2D]? =
  #| (self) => (Array.isArray(self)) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ConstrainPoint2D as ConstrainPoint2DParameters
pub extern "js" fn ConstrainPoint2D::as_constrain_point_2d_parameters(
  self : ConstrainPoint2D,
) -> ConstrainPoint2DParameters? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Flatten Option[ConstrainPoint2D] to Array[Point2D]?
pub fn ConstrainPoint2D::bind_as_array_of_point_2d(
  value : ConstrainPoint2D?,
) -> Array[Point2D]? {
  match value {
    Some(v) => v.as_array_of_point_2d()
    None => None
  }
}

///|
/// Flatten Option[ConstrainPoint2D] to ConstrainPoint2DParameters?
pub fn ConstrainPoint2D::bind_as_constrain_point_2d_parameters(
  value : ConstrainPoint2D?,
) -> ConstrainPoint2DParameters? {
  match value {
    Some(v) => v.as_constrain_point_2d_parameters()
    None => None
  }
}

///|
/// RedEyeReduction enum
pub(all) enum RedEyeReduction {
  Never
  Always
  Controllable
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RedEyeReduction::to_string(self : RedEyeReduction) -> String {
  match self {
    RedEyeReduction::Never => "never"
    RedEyeReduction::Always => "always"
    RedEyeReduction::Controllable => "controllable"
  }
}

///|
/// Parse from string value
pub fn RedEyeReduction::from_string(s : String) -> RedEyeReduction? {
  match s {
    "never" => Some(RedEyeReduction::Never)
    "always" => Some(RedEyeReduction::Always)
    "controllable" => Some(RedEyeReduction::Controllable)
    _ => None
  }
}

///|
/// FillLightMode enum
pub(all) enum FillLightMode {
  Auto
  Off
  Flash
} derive(Eq, Show)

///|
/// Convert to string value
pub fn FillLightMode::to_string(self : FillLightMode) -> String {
  match self {
    FillLightMode::Auto => "auto"
    FillLightMode::Off => "off"
    FillLightMode::Flash => "flash"
  }
}

///|
/// Parse from string value
pub fn FillLightMode::from_string(s : String) -> FillLightMode? {
  match s {
    "auto" => Some(FillLightMode::Auto)
    "off" => Some(FillLightMode::Off)
    "flash" => Some(FillLightMode::Flash)
    _ => None
  }
}

///|
/// MeteringMode enum
pub(all) enum MeteringMode {
  None
  Manual
  SingleShot
  Continuous
} derive(Eq, Show)

///|
/// Convert to string value
pub fn MeteringMode::to_string(self : MeteringMode) -> String {
  match self {
    MeteringMode::None => "none"
    MeteringMode::Manual => "manual"
    MeteringMode::SingleShot => "single-shot"
    MeteringMode::Continuous => "continuous"
  }
}

///|
/// Parse from string value
pub fn MeteringMode::from_string(s : String) -> MeteringMode? {
  match s {
    "none" => Some(MeteringMode::None)
    "manual" => Some(MeteringMode::Manual)
    "single-shot" => Some(MeteringMode::SingleShot)
    "continuous" => Some(MeteringMode::Continuous)
    _ => None
  }
}

///|
/// PhotoCapabilities dictionary
pub(all) struct PhotoCapabilities {
  redEyeReduction : RedEyeReduction?
  imageHeight : MediaSettingsRange?
  imageWidth : MediaSettingsRange?
  fillLightMode : Array[FillLightMode]?
}

///|
/// Create a new PhotoCapabilities with default values
pub fn PhotoCapabilities::default() -> PhotoCapabilities {
  PhotoCapabilities::{
    redEyeReduction: None,
    imageHeight: None,
    imageWidth: None,
    fillLightMode: None,
  }
}

///|
extern "js" fn PhotoCapabilities::to_js_ffi(
  self : PhotoCapabilities,
) -> JsValue =
  #| (self) => ({
  #|   redEyeReduction: ((() => { const v = self.redEyeReduction; if (v === undefined) return undefined; return ['never', 'always', 'controllable'][v]; })()),
  #|   imageHeight: ((() => { const v = self.imageHeight; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   imageWidth: ((() => { const v = self.imageWidth; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   fillLightMode: ((() => { const v = self.fillLightMode; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn PhotoCapabilities::to_js(self : PhotoCapabilities) -> JsValue {
  PhotoCapabilities::to_js_ffi(self)
}

///|
extern "js" fn PhotoCapabilities::from_js_ffi(
  value : JsValue,
) -> PhotoCapabilities =
  #| (v) => ({
  #|   redEyeReduction: (v.redEyeReduction === undefined ? undefined : ['never', 'always', 'controllable'].indexOf(v.redEyeReduction)),
  #|   imageHeight: (v.imageHeight === undefined ? { $tag: 0 } : { $tag: 1, _0: v.imageHeight }),
  #|   imageWidth: (v.imageWidth === undefined ? { $tag: 0 } : { $tag: 1, _0: v.imageWidth }),
  #|   fillLightMode: (v.fillLightMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.fillLightMode })
  #| })

///|
/// Convert from JsValue
pub fn PhotoCapabilities::from_js(value : JsValue) -> PhotoCapabilities {
  PhotoCapabilities::from_js_ffi(value)
}

///|
/// PhotoSettings dictionary
pub(all) struct PhotoSettings {
  fillLightMode : FillLightMode?
  imageHeight : Double?
  imageWidth : Double?
  redEyeReduction : Bool?
}

///|
/// Create a new PhotoSettings with default values
pub fn PhotoSettings::default() -> PhotoSettings {
  PhotoSettings::{
    fillLightMode: None,
    imageHeight: None,
    imageWidth: None,
    redEyeReduction: None,
  }
}

///|
extern "js" fn PhotoSettings::to_js_ffi(self : PhotoSettings) -> JsValue =
  #| (self) => ({
  #|   fillLightMode: ((() => { const v = self.fillLightMode; if (v === undefined) return undefined; return ['auto', 'off', 'flash'][v]; })()),
  #|   imageHeight: ((() => { const v = self.imageHeight; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   imageWidth: ((() => { const v = self.imageWidth; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   redEyeReduction: (self.redEyeReduction === -1 ? undefined : self.redEyeReduction)
  #| })

///|
/// Convert to JsValue
pub fn PhotoSettings::to_js(self : PhotoSettings) -> JsValue {
  PhotoSettings::to_js_ffi(self)
}

///|
extern "js" fn PhotoSettings::from_js_ffi(value : JsValue) -> PhotoSettings =
  #| (v) => ({
  #|   fillLightMode: (v.fillLightMode === undefined ? undefined : ['auto', 'off', 'flash'].indexOf(v.fillLightMode)),
  #|   imageHeight: (v.imageHeight === undefined ? { $tag: 0 } : { $tag: 1, _0: v.imageHeight }),
  #|   imageWidth: (v.imageWidth === undefined ? { $tag: 0 } : { $tag: 1, _0: v.imageWidth }),
  #|   redEyeReduction: (v.redEyeReduction === undefined ? -1 : v.redEyeReduction)
  #| })

///|
/// Convert from JsValue
pub fn PhotoSettings::from_js(value : JsValue) -> PhotoSettings {
  PhotoSettings::from_js_ffi(value)
}

///|
/// MediaSettingsRange dictionary
pub(all) struct MediaSettingsRange {
  max : Double?
  min : Double?
  step : Double?
}

///|
/// Create a new MediaSettingsRange with default values
pub fn MediaSettingsRange::default() -> MediaSettingsRange {
  MediaSettingsRange::{ max: None, min: None, step: None }
}

///|
extern "js" fn MediaSettingsRange::to_js_ffi(
  self : MediaSettingsRange,
) -> JsValue =
  #| (self) => ({
  #|   max: ((() => { const v = self.max; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   min: ((() => { const v = self.min; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   step: ((() => { const v = self.step; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn MediaSettingsRange::to_js(self : MediaSettingsRange) -> JsValue {
  MediaSettingsRange::to_js_ffi(self)
}

///|
extern "js" fn MediaSettingsRange::from_js_ffi(
  value : JsValue,
) -> MediaSettingsRange =
  #| (v) => ({
  #|   max: (v.max === undefined ? { $tag: 0 } : { $tag: 1, _0: v.max }),
  #|   min: (v.min === undefined ? { $tag: 0 } : { $tag: 1, _0: v.min }),
  #|   step: (v.step === undefined ? { $tag: 0 } : { $tag: 1, _0: v.step })
  #| })

///|
/// Convert from JsValue
pub fn MediaSettingsRange::from_js(value : JsValue) -> MediaSettingsRange {
  MediaSettingsRange::from_js_ffi(value)
}

///|
/// MediaTrackSupportedConstraints dictionary
pub(all) struct MediaTrackSupportedConstraints {
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
}

///|
/// Create a new MediaTrackSupportedConstraints with default values
pub fn MediaTrackSupportedConstraints::default() -> MediaTrackSupportedConstraints {
  MediaTrackSupportedConstraints::{
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
  }
}

///|
extern "js" fn MediaTrackSupportedConstraints::to_js_ffi(
  self : MediaTrackSupportedConstraints,
) -> JsValue =
  #| (self) => ({
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
  #|   torch: (self.torch === -1 ? undefined : self.torch),
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
  #|   suppressLocalAudioPlayback: (self.suppressLocalAudioPlayback === -1 ? undefined : self.suppressLocalAudioPlayback)
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
  #|   torch: (v.torch === undefined ? -1 : v.torch),
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
  #|   suppressLocalAudioPlayback: (v.suppressLocalAudioPlayback === undefined ? -1 : v.suppressLocalAudioPlayback)
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
}

///|
/// Create a new MediaTrackCapabilities with default values
pub fn MediaTrackCapabilities::default() -> MediaTrackCapabilities {
  MediaTrackCapabilities::{
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
  }
}

///|
extern "js" fn MediaTrackCapabilities::to_js_ffi(
  self : MediaTrackCapabilities,
) -> JsValue =
  #| (self) => ({
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
  #|   torch: ((() => { const v = self.torch; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
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
  #|   cursor: ((() => { const v = self.cursor; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
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
  #|   torch: (v.torch === undefined ? { $tag: 0 } : { $tag: 1, _0: v.torch }),
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
  #|   cursor: (v.cursor === undefined ? { $tag: 0 } : { $tag: 1, _0: v.cursor })
  #| })

///|
/// Convert from JsValue
pub fn MediaTrackCapabilities::from_js(
  value : JsValue,
) -> MediaTrackCapabilities {
  MediaTrackCapabilities::from_js_ffi(value)
}

///|
/// MediaTrackConstraintSet dictionary
pub(all) struct MediaTrackConstraintSet {
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
}

///|
/// Create a new MediaTrackConstraintSet with default values
pub fn MediaTrackConstraintSet::default() -> MediaTrackConstraintSet {
  MediaTrackConstraintSet::{
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
  }
}

///|
extern "js" fn MediaTrackConstraintSet::to_js_ffi(
  self : MediaTrackConstraintSet,
) -> JsValue =
  #| (self) => ({
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
  #|   suppressLocalAudioPlayback: ((() => { const v = self.suppressLocalAudioPlayback; if (v === undefined || v.$tag !== 1) return undefined; return v._0.to_js_value(); })())
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
  #|   suppressLocalAudioPlayback: (v.suppressLocalAudioPlayback === undefined ? { $tag: 0 } : { $tag: 1, _0: v.suppressLocalAudioPlayback })
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
}

///|
/// Create a new MediaTrackSettings with default values
pub fn MediaTrackSettings::default() -> MediaTrackSettings {
  MediaTrackSettings::{
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
  }
}

///|
extern "js" fn MediaTrackSettings::to_js_ffi(
  self : MediaTrackSettings,
) -> JsValue =
  #| (self) => ({
  #|   whiteBalanceMode: self.whiteBalanceMode,
  #|   exposureMode: self.exposureMode,
  #|   focusMode: self.focusMode,
  #|   pointsOfInterest: ((() => { const v = self.pointsOfInterest; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
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
  #|   torch: (self.torch === -1 ? undefined : self.torch),
  #|   width: self.width,
  #|   height: self.height,
  #|   aspectRatio: ((() => { const v = self.aspectRatio; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   frameRate: ((() => { const v = self.frameRate; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   facingMode: self.facingMode,
  #|   resizeMode: self.resizeMode,
  #|   sampleRate: self.sampleRate,
  #|   sampleSize: self.sampleSize,
  #|   echoCancellation: ((() => { const v = self.echoCancellation; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   autoGainControl: (self.autoGainControl === -1 ? undefined : self.autoGainControl),
  #|   noiseSuppression: (self.noiseSuppression === -1 ? undefined : self.noiseSuppression),
  #|   latency: ((() => { const v = self.latency; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   channelCount: self.channelCount,
  #|   deviceId: self.deviceId,
  #|   groupId: self.groupId,
  #|   backgroundBlur: (self.backgroundBlur === -1 ? undefined : self.backgroundBlur),
  #|   displaySurface: self.displaySurface,
  #|   logicalSurface: (self.logicalSurface === -1 ? undefined : self.logicalSurface),
  #|   cursor: self.cursor,
  #|   restrictOwnAudio: (self.restrictOwnAudio === -1 ? undefined : self.restrictOwnAudio),
  #|   suppressLocalAudioPlayback: (self.suppressLocalAudioPlayback === -1 ? undefined : self.suppressLocalAudioPlayback),
  #|   screenPixelRatio: ((() => { const v = self.screenPixelRatio; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
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
  #|   whiteBalanceMode: v.whiteBalanceMode,
  #|   exposureMode: v.exposureMode,
  #|   focusMode: v.focusMode,
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
  #|   torch: (v.torch === undefined ? -1 : v.torch),
  #|   width: v.width,
  #|   height: v.height,
  #|   aspectRatio: (v.aspectRatio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.aspectRatio }),
  #|   frameRate: (v.frameRate === undefined ? { $tag: 0 } : { $tag: 1, _0: v.frameRate }),
  #|   facingMode: v.facingMode,
  #|   resizeMode: v.resizeMode,
  #|   sampleRate: v.sampleRate,
  #|   sampleSize: v.sampleSize,
  #|   echoCancellation: (v.echoCancellation === undefined ? { $tag: 0 } : { $tag: 1, _0: v.echoCancellation }),
  #|   autoGainControl: (v.autoGainControl === undefined ? -1 : v.autoGainControl),
  #|   noiseSuppression: (v.noiseSuppression === undefined ? -1 : v.noiseSuppression),
  #|   latency: (v.latency === undefined ? { $tag: 0 } : { $tag: 1, _0: v.latency }),
  #|   channelCount: v.channelCount,
  #|   deviceId: v.deviceId,
  #|   groupId: v.groupId,
  #|   backgroundBlur: (v.backgroundBlur === undefined ? -1 : v.backgroundBlur),
  #|   displaySurface: v.displaySurface,
  #|   logicalSurface: (v.logicalSurface === undefined ? -1 : v.logicalSurface),
  #|   cursor: v.cursor,
  #|   restrictOwnAudio: (v.restrictOwnAudio === undefined ? -1 : v.restrictOwnAudio),
  #|   suppressLocalAudioPlayback: (v.suppressLocalAudioPlayback === undefined ? -1 : v.suppressLocalAudioPlayback),
  #|   screenPixelRatio: (v.screenPixelRatio === undefined ? { $tag: 0 } : { $tag: 1, _0: v.screenPixelRatio })
  #| })

///|
/// Convert from JsValue
pub fn MediaTrackSettings::from_js(value : JsValue) -> MediaTrackSettings {
  MediaTrackSettings::from_js_ffi(value)
}

///|
/// ConstrainPoint2DParameters dictionary
pub(all) struct ConstrainPoint2DParameters {
  exact : Array[Point2D]?
  ideal : Array[Point2D]?
}

///|
/// Create a new ConstrainPoint2DParameters with default values
pub fn ConstrainPoint2DParameters::default() -> ConstrainPoint2DParameters {
  ConstrainPoint2DParameters::{ exact: None, ideal: None }
}

///|
extern "js" fn ConstrainPoint2DParameters::to_js_ffi(
  self : ConstrainPoint2DParameters,
) -> JsValue =
  #| (self) => ({
  #|   exact: ((() => { const v = self.exact; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   ideal: ((() => { const v = self.ideal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn ConstrainPoint2DParameters::to_js(
  self : ConstrainPoint2DParameters,
) -> JsValue {
  ConstrainPoint2DParameters::to_js_ffi(self)
}

///|
extern "js" fn ConstrainPoint2DParameters::from_js_ffi(
  value : JsValue,
) -> ConstrainPoint2DParameters =
  #| (v) => ({
  #|   exact: (v.exact === undefined ? { $tag: 0 } : { $tag: 1, _0: v.exact }),
  #|   ideal: (v.ideal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.ideal })
  #| })

///|
/// Convert from JsValue
pub fn ConstrainPoint2DParameters::from_js(
  value : JsValue,
) -> ConstrainPoint2DParameters {
  ConstrainPoint2DParameters::from_js_ffi(value)
}

///|
/// Point2D dictionary
pub(all) struct Point2D {
  x : Double?
  y : Double?
}

///|
/// Create a new Point2D with default values
pub fn Point2D::default() -> Point2D {
  Point2D::{ x: None, y: None }
}

///|
extern "js" fn Point2D::to_js_ffi(self : Point2D) -> JsValue =
  #| (self) => ({
  #|   x: ((() => { const v = self.x; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   y: ((() => { const v = self.y; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn Point2D::to_js(self : Point2D) -> JsValue {
  Point2D::to_js_ffi(self)
}

///|
extern "js" fn Point2D::from_js_ffi(value : JsValue) -> Point2D =
  #| (v) => ({
  #|   x: (v.x === undefined ? { $tag: 0 } : { $tag: 1, _0: v.x }),
  #|   y: (v.y === undefined ? { $tag: 0 } : { $tag: 1, _0: v.y })
  #| })

///|
/// Convert from JsValue
pub fn Point2D::from_js(value : JsValue) -> Point2D {
  Point2D::from_js_ffi(value)
}

///|
/// ImageCapture interface
pub type ImageCapture

///|
pub extern "js" fn ImageCapture::to_js_value(self : ImageCapture) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to ImageCapture (unchecked)
pub extern "js" fn ImageCapture::from_js_value(v : JsValue) -> ImageCapture =
  #| (v) => v

///|
/// Safely cast JsValue to ImageCapture (checked with instanceof)
pub extern "js" fn ImageCapture::from_js_value_opt(
  v : JsValue,
) -> ImageCapture? =
  #| (v) => (v instanceof ImageCapture) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to ImageCapture (checked with instanceof)
pub extern "js" fn JsValue::as_image_capture(self : JsValue) -> ImageCapture? =
  #| (self) => (self instanceof ImageCapture) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to ImageCapture (unchecked)
pub extern "js" fn JsValue::to_image_capture(self : JsValue) -> ImageCapture =
  #| (self) => self

///|
/// Error type for throwing methods
pub(all) enum ImageCaptureConstructorError {
  NotSupportedError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum ImageCaptureTakePhotoError {
  UnknownError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum ImageCaptureGetPhotoCapabilitiesError {
  OperationError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum ImageCaptureGetPhotoSettingsError {
  OperationError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
/// Error type for throwing methods
pub(all) enum ImageCaptureGrabFrameError {
  UnknownError(JsError)
  InvalidStateError(JsError)
  OtherError(JsError)
} derive(Show)

///|
pub extern "js" fn ImageCapture::new(
  video_track : MediaStreamTrack,
) -> Result[ImageCapture, ImageCaptureConstructorError] =
  #| (video_track) => (() => { try { return { $tag: 1, _0: new ImageCapture(video_track) }; } catch(e) { return { $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'NotSupportedError') return { $tag: 0, _0: e }; return { $tag: 1, _0: e }; })() }; } })()

///|
pub extern "js" fn ImageCapture::take_photo(
  self : ImageCapture,
) -> Promise[Result[Blob, ImageCaptureTakePhotoError]] =
  #| (self) => self.takePhoto().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
extern "js" fn ImageCapture::take_photo_with_photo_settings_ffi(
  self : ImageCapture,
  photo_settings : JsValue,
) -> Promise[Result[Blob, ImageCaptureTakePhotoError]] =
  #| (self, photo_settings) => self.takePhoto(photo_settings).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub fn ImageCapture::take_photo_with_photo_settings(
  self : ImageCapture,
  photo_settings : PhotoSettings,
) -> Promise[Result[Blob, ImageCaptureTakePhotoError]] {
  ImageCapture::take_photo_with_photo_settings_ffi(self, photo_settings.to_js())
}

///|
pub extern "js" fn ImageCapture::get_photo_capabilities(
  self : ImageCapture,
) -> Promise[Result[PhotoCapabilities, ImageCaptureGetPhotoCapabilitiesError]] =
  #| (self) => self.getPhotoCapabilities().then(v => ({
  #|   redEyeReduction: (v.redEyeReduction === undefined ? undefined : ['never', 'always', 'controllable'].indexOf(v.redEyeReduction)),
  #|   imageHeight: (v.imageHeight === undefined ? { $tag: 0 } : { $tag: 1, _0: v.imageHeight }),
  #|   imageWidth: (v.imageWidth === undefined ? { $tag: 0 } : { $tag: 1, _0: v.imageWidth }),
  #|   fillLightMode: (v.fillLightMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.fillLightMode })
  #| })).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'OperationError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub extern "js" fn ImageCapture::get_photo_settings(
  self : ImageCapture,
) -> Promise[Result[PhotoSettings, ImageCaptureGetPhotoSettingsError]] =
  #| (self) => self.getPhotoSettings().then(v => ({
  #|   fillLightMode: (v.fillLightMode === undefined ? undefined : ['auto', 'off', 'flash'].indexOf(v.fillLightMode)),
  #|   imageHeight: (v.imageHeight === undefined ? { $tag: 0 } : { $tag: 1, _0: v.imageHeight }),
  #|   imageWidth: (v.imageWidth === undefined ? { $tag: 0 } : { $tag: 1, _0: v.imageWidth }),
  #|   redEyeReduction: (v.redEyeReduction === undefined ? -1 : v.redEyeReduction)
  #| })).then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'OperationError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub extern "js" fn ImageCapture::grab_frame(
  self : ImageCapture,
) -> Promise[Result[ImageBitmap, ImageCaptureGrabFrameError]] =
  #| (self) => self.grabFrame().then(r => ({ $tag: 1, _0: r })).catch(e => ({ $tag: 0, _0: (() => { const n = (e && e.name) || ''; if (n === 'UnknownError') return { $tag: 0, _0: e }; if (n === 'InvalidStateError') return { $tag: 1, _0: e }; return { $tag: 2, _0: e }; })() }))

///|
pub extern "js" fn ImageCapture::get_track(
  self : ImageCapture,
) -> MediaStreamTrack =
  #| (self) => self.track
