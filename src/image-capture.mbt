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
  #|   imageHeight: self.imageHeight,
  #|   imageWidth: self.imageWidth,
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
  #|   imageHeight: v.imageHeight,
  #|   imageWidth: v.imageWidth,
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
  #|   max: self.max,
  #|   min: self.min,
  #|   step: self.step
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
  #|   max: v.max,
  #|   min: v.min,
  #|   step: v.step
  #| })

///|
/// Convert from JsValue
pub fn MediaSettingsRange::from_js(value : JsValue) -> MediaSettingsRange {
  MediaSettingsRange::from_js_ffi(value)
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
  #|   x: self.x,
  #|   y: self.y
  #| })

///|
/// Convert to JsValue
pub fn Point2D::to_js(self : Point2D) -> JsValue {
  Point2D::to_js_ffi(self)
}

///|
extern "js" fn Point2D::from_js_ffi(value : JsValue) -> Point2D =
  #| (v) => ({
  #|   x: v.x,
  #|   y: v.y
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
extern "js" fn ImageCapture::take_photo_with_photo_settings_ffi(
  self : ImageCapture,
  photo_settings : JsValue,
) -> Promise[Blob] =
  #| (self, photo_settings) => self.takePhoto(photo_settings)

///|
pub fn ImageCapture::take_photo_with_photo_settings(
  self : ImageCapture,
  photo_settings : PhotoSettings,
) -> Promise[Blob] {
  ImageCapture::take_photo_with_photo_settings_ffi(self, photo_settings.to_js())
}

///|
pub extern "js" fn ImageCapture::get_photo_capabilities(
  self : ImageCapture,
) -> Promise[PhotoCapabilities] =
  #| (self) => self.getPhotoCapabilities().then(v => ({
  #|   redEyeReduction: (v.redEyeReduction === undefined ? undefined : ['never', 'always', 'controllable'].indexOf(v.redEyeReduction)),
  #|   imageHeight: (v.imageHeight === undefined ? { $tag: 0 } : { $tag: 1, _0: v.imageHeight }),
  #|   imageWidth: (v.imageWidth === undefined ? { $tag: 0 } : { $tag: 1, _0: v.imageWidth }),
  #|   fillLightMode: (v.fillLightMode === undefined ? { $tag: 0 } : { $tag: 1, _0: v.fillLightMode })
  #| }))

///|
pub extern "js" fn ImageCapture::get_photo_settings(
  self : ImageCapture,
) -> Promise[PhotoSettings] =
  #| (self) => self.getPhotoSettings().then(v => ({
  #|   fillLightMode: (v.fillLightMode === undefined ? undefined : ['auto', 'off', 'flash'].indexOf(v.fillLightMode)),
  #|   imageHeight: v.imageHeight,
  #|   imageWidth: v.imageWidth,
  #|   redEyeReduction: (v.redEyeReduction === undefined ? -1 : v.redEyeReduction)
  #| }))

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
