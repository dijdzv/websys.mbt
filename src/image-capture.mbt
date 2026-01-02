// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/image-capture

///|
/// ConstrainPoint2D typedef
pub type ConstrainPoint2D = JsValue

///|
/// RedEyeReduction enum
pub(all) enum RedEyeReduction {
  Never
  Always
  Controllable
}

/// Convert to string value
pub fn RedEyeReduction::to_string(self : RedEyeReduction) -> String {
  match self {
    Never => "never"
    Always => "always"
    Controllable => "controllable"
  }
}

/// Parse from string value
pub fn RedEyeReduction::from_string(s : String) -> RedEyeReduction? {
  match s {
    "never" => Some(Never)
    "always" => Some(Always)
    "controllable" => Some(Controllable)
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

/// Convert to string value
pub fn FillLightMode::to_string(self : FillLightMode) -> String {
  match self {
    Auto => "auto"
    Off => "off"
    Flash => "flash"
  }
}

/// Parse from string value
pub fn FillLightMode::from_string(s : String) -> FillLightMode? {
  match s {
    "auto" => Some(Auto)
    "off" => Some(Off)
    "flash" => Some(Flash)
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

/// Convert to string value
pub fn MeteringMode::to_string(self : MeteringMode) -> String {
  match self {
    None => "none"
    Manual => "manual"
    SingleShot => "single-shot"
    Continuous => "continuous"
  }
}

/// Parse from string value
pub fn MeteringMode::from_string(s : String) -> MeteringMode? {
  match s {
    "none" => Some(None)
    "manual" => Some(Manual)
    "single-shot" => Some(SingleShot)
    "continuous" => Some(Continuous)
    _ => None
  }
}

///|
/// PhotoCapabilities dictionary
pub struct PhotoCapabilities {
  redEyeReduction : RedEyeReduction?
  imageHeight : MediaSettingsRange?
  imageWidth : MediaSettingsRange?
  fillLightMode : JsValue?
}

/// Create a new PhotoCapabilities with default values
pub fn PhotoCapabilities::default() -> PhotoCapabilities {
  PhotoCapabilities::{
    redEyeReduction: None,
    imageHeight: None,
    imageWidth: None,
    fillLightMode: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PhotoCapabilities::to_js(self : PhotoCapabilities) -> JsValue =
  #| (self) => ({
  #|   redEyeReduction: self.redEyeReduction,
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

/// Create a new PhotoSettings with default values
pub fn PhotoSettings::default() -> PhotoSettings {
  PhotoSettings::{
    fillLightMode: None,
    imageHeight: None,
    imageWidth: None,
    redEyeReduction: None,
  }
}

/// Convert to JsValue
pub extern "js" fn PhotoSettings::to_js(self : PhotoSettings) -> JsValue =
  #| (self) => ({
  #|   fillLightMode: self.fillLightMode,
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

/// Create a new MediaSettingsRange with default values
pub fn MediaSettingsRange::default() -> MediaSettingsRange {
  MediaSettingsRange::{
    max: None,
    min: None,
    step: None,
  }
}

/// Convert to JsValue
pub extern "js" fn MediaSettingsRange::to_js(self : MediaSettingsRange) -> JsValue =
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

/// Convert to JsValue
pub extern "js" fn MediaTrackSupportedConstraints::to_js(self : MediaTrackSupportedConstraints) -> JsValue =
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
  whiteBalanceMode : JsValue?
  exposureMode : JsValue?
  focusMode : JsValue?
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
  torch : JsValue?
  width : ULongRange?
  height : ULongRange?
  aspectRatio : DoubleRange?
  frameRate : DoubleRange?
  facingMode : JsValue?
  resizeMode : JsValue?
  sampleRate : ULongRange?
  sampleSize : ULongRange?
  echoCancellation : JsValue?
  autoGainControl : JsValue?
  noiseSuppression : JsValue?
  latency : DoubleRange?
  channelCount : ULongRange?
  deviceId : String?
  groupId : String?
  backgroundBlur : JsValue?
  displaySurface : String?
  logicalSurface : Bool?
  cursor : JsValue?
}

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

/// Convert to JsValue
pub extern "js" fn MediaTrackCapabilities::to_js(self : MediaTrackCapabilities) -> JsValue =
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

/// Convert to JsValue
pub extern "js" fn MediaTrackConstraintSet::to_js(self : MediaTrackConstraintSet) -> JsValue =
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
  #|   suppressLocalAudioPlayback: self.suppressLocalAudioPlayback
  #| })

///|
/// MediaTrackSettings dictionary
pub struct MediaTrackSettings {
  whiteBalanceMode : String?
  exposureMode : String?
  focusMode : String?
  pointsOfInterest : JsValue?
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

/// Convert to JsValue
pub extern "js" fn MediaTrackSettings::to_js(self : MediaTrackSettings) -> JsValue =
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
  exact : JsValue?
  ideal : JsValue?
}

/// Create a new ConstrainPoint2DParameters with default values
pub fn ConstrainPoint2DParameters::default() -> ConstrainPoint2DParameters {
  ConstrainPoint2DParameters::{
    exact: None,
    ideal: None,
  }
}

/// Convert to JsValue
pub extern "js" fn ConstrainPoint2DParameters::to_js(self : ConstrainPoint2DParameters) -> JsValue =
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

/// Create a new Point2D with default values
pub fn Point2D::default() -> Point2D {
  Point2D::{
    x: None,
    y: None,
  }
}

/// Convert to JsValue
pub extern "js" fn Point2D::to_js(self : Point2D) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y
  #| })

///|
/// ImageCapture interface
pub type ImageCapture

pub extern "js" fn ImageCapture::to_js_value(self : ImageCapture) -> JsValue =
  #| (self) => self

pub extern "js" fn ImageCapture::new(video_track : MediaStreamTrack) -> ImageCapture =
  #| (video_track) => new ImageCapture(video_track)

pub extern "js" fn ImageCapture::take_photo(self : ImageCapture, photo_settings : PhotoSettings) -> JsValue =
  #| (self, photo_settings) => self.takePhoto(photo_settings)

pub extern "js" fn ImageCapture::get_photo_capabilities(self : ImageCapture) -> JsValue =
  #| (self) => self.getPhotoCapabilities()

pub extern "js" fn ImageCapture::get_photo_settings(self : ImageCapture) -> JsValue =
  #| (self) => self.getPhotoSettings()

pub extern "js" fn ImageCapture::grab_frame(self : ImageCapture) -> JsValue =
  #| (self) => self.grabFrame()

pub extern "js" fn ImageCapture::get_track(self : ImageCapture) -> MediaStreamTrack =
  #| (self) => self.track

