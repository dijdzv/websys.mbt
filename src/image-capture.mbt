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
pub extern "js" fn ConstrainPoint2D::from_array_of_point2_d(
  v : Array[Point2D],
) -> ConstrainPoint2D =
  #| (v) => v

///|
/// Create ConstrainPoint2D from ConstrainPoint2DParameters
pub extern "js" fn ConstrainPoint2D::from_constrain_point2_d_parameters(
  v : ConstrainPoint2DParameters,
) -> ConstrainPoint2D =
  #| (v) => v

///|
/// Check if this ConstrainPoint2D is Array[Point2D]
pub extern "js" fn ConstrainPoint2D::is_array_of_point2_d(
  self : ConstrainPoint2D,
) -> Bool =
  #| (self) => Array.isArray(self)

///|
/// Check if this ConstrainPoint2D is ConstrainPoint2DParameters
pub extern "js" fn ConstrainPoint2D::is_constrain_point2_d_parameters(
  self : ConstrainPoint2D,
) -> Bool =
  #| (self) => typeof self === 'object' && self !== null

///|
/// Try to get ConstrainPoint2D as Array[Point2D]
pub extern "js" fn ConstrainPoint2D::as_array_of_point2_d(
  self : ConstrainPoint2D,
) -> Array[Point2D]? =
  #| (self) => (Array.isArray(self)) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Try to get ConstrainPoint2D as ConstrainPoint2DParameters
pub extern "js" fn ConstrainPoint2D::as_constrain_point2_d_parameters(
  self : ConstrainPoint2D,
) -> ConstrainPoint2DParameters? =
  #| (self) => (typeof self === 'object' && self !== null) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// RedEyeReduction enum
pub(all) enum RedEyeReduction {
  Never
  Always
  Controllable
}

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
}

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
}

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
pub struct PhotoCapabilities {
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
/// Convert to JsValue
pub extern "js" fn PhotoCapabilities::to_js(
  self : PhotoCapabilities,
) -> JsValue =
  #| (self) => ({
  #|   redEyeReduction: ['never', 'always', 'controllable'][self.redEyeReduction],
  #|   imageHeight: self.imageHeight,
  #|   imageWidth: self.imageWidth,
  #|   fillLightMode: self.fillLightMode
  #| })

///|
/// PhotoSettings dictionary
pub struct PhotoSettings {
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
/// Convert to JsValue
pub extern "js" fn PhotoSettings::to_js(self : PhotoSettings) -> JsValue =
  #| (self) => ({
  #|   fillLightMode: ['auto', 'off', 'flash'][self.fillLightMode],
  #|   imageHeight: self.imageHeight,
  #|   imageWidth: self.imageWidth,
  #|   redEyeReduction: self.redEyeReduction
  #| })

///|
/// MediaSettingsRange dictionary
pub struct MediaSettingsRange {
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
/// Convert to JsValue
pub extern "js" fn MediaSettingsRange::to_js(
  self : MediaSettingsRange,
) -> JsValue =
  #| (self) => ({
  #|   max: self.max,
  #|   min: self.min,
  #|   step: self.step
  #| })

///|
/// MediaTrackSupportedConstraints dictionary
pub struct MediaTrackSupportedConstraints {
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
/// Convert to JsValue
pub extern "js" fn MediaTrackSupportedConstraints::to_js(
  self : MediaTrackSupportedConstraints,
) -> JsValue =
  #| (self) => ({
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
  #|   torch: self.torch,
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
  #|   suppressLocalAudioPlayback: self.suppressLocalAudioPlayback
  #| })

///|
/// MediaTrackCapabilities dictionary
pub struct MediaTrackCapabilities {
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
  echoCancellation : Array[JsValue]?
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
/// Convert to JsValue
pub extern "js" fn MediaTrackCapabilities::to_js(
  self : MediaTrackCapabilities,
) -> JsValue =
  #| (self) => ({
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
  #|   torch: self.torch,
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
  #|   cursor: self.cursor
  #| })

///|
/// MediaTrackConstraintSet dictionary
pub struct MediaTrackConstraintSet {
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
  pan : JsValue?
  tilt : JsValue?
  zoom : JsValue?
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
/// Convert to JsValue
pub extern "js" fn MediaTrackConstraintSet::to_js(
  self : MediaTrackConstraintSet,
) -> JsValue =
  #| (self) => ({
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
  #|   suppressLocalAudioPlayback: self.suppressLocalAudioPlayback.to_js_value()
  #| })

///|
/// MediaTrackSettings dictionary
pub struct MediaTrackSettings {
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
  echoCancellation : JsValue?
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
/// Convert to JsValue
pub extern "js" fn MediaTrackSettings::to_js(
  self : MediaTrackSettings,
) -> JsValue =
  #| (self) => ({
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
  #|   torch: self.torch,
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
  #|   screenPixelRatio: self.screenPixelRatio
  #| })

///|
/// ConstrainPoint2DParameters dictionary
pub struct ConstrainPoint2DParameters {
  exact : Array[Point2D]?
  ideal : Array[Point2D]?
}

///|
/// Create a new ConstrainPoint2DParameters with default values
pub fn ConstrainPoint2DParameters::default() -> ConstrainPoint2DParameters {
  ConstrainPoint2DParameters::{ exact: None, ideal: None }
}

///|
/// Convert to JsValue
pub extern "js" fn ConstrainPoint2DParameters::to_js(
  self : ConstrainPoint2DParameters,
) -> JsValue =
  #| (self) => ({
  #|   exact: self.exact,
  #|   ideal: self.ideal
  #| })

///|
/// Point2D dictionary
pub struct Point2D {
  x : Double?
  y : Double?
}

///|
/// Create a new Point2D with default values
pub fn Point2D::default() -> Point2D {
  Point2D::{ x: None, y: None }
}

///|
/// Convert to JsValue
pub extern "js" fn Point2D::to_js(self : Point2D) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y
  #| })

///|
/// ImageCapture interface
pub type ImageCapture

///|
pub extern "js" fn ImageCapture::to_js_value(self : ImageCapture) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn ImageCapture::new(
  video_track : MediaStreamTrack,
) -> ImageCapture =
  #| (video_track) => new ImageCapture(video_track)

///|
pub extern "js" fn ImageCapture::take_photo(
  self : ImageCapture,
) -> Promise[Blob] =
  #| (self) => self.takePhoto()

///|
pub extern "js" fn ImageCapture::take_photo_with_photo_settings(
  self : ImageCapture,
  photo_settings : PhotoSettings,
) -> Promise[Blob] =
  #| (self, photo_settings) => self.takePhoto(photo_settings)

///|
pub extern "js" fn ImageCapture::get_photo_capabilities(
  self : ImageCapture,
) -> Promise[PhotoCapabilities] =
  #| (self) => self.getPhotoCapabilities()

///|
pub extern "js" fn ImageCapture::get_photo_settings(
  self : ImageCapture,
) -> Promise[PhotoSettings] =
  #| (self) => self.getPhotoSettings()

///|
pub extern "js" fn ImageCapture::grab_frame(
  self : ImageCapture,
) -> Promise[ImageBitmap] =
  #| (self) => self.grabFrame()

///|
pub extern "js" fn ImageCapture::get_track(
  self : ImageCapture,
) -> MediaStreamTrack =
  #| (self) => self.track
