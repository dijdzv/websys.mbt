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
