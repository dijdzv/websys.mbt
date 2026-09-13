// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/text-detection-api

///|
/// TextDetectorOptions dictionary
pub(all) struct TextDetectorOptions {
  languages : FixedArray[String]
}

///|
/// Create a new TextDetectorOptions with default values
pub fn TextDetectorOptions::default() -> TextDetectorOptions {
  TextDetectorOptions::{ languages: [], }
}

///|
extern "js" fn TextDetectorOptions::to_js_ffi(
  self : TextDetectorOptions,
) -> JsValue =
  #| (self) => ({
  #|   languages: self.languages
  #| })

///|
/// Convert to JsValue
pub fn TextDetectorOptions::to_js(self : TextDetectorOptions) -> JsValue {
  TextDetectorOptions::to_js_ffi(self)
}

///|
extern "js" fn TextDetectorOptions::from_js_ffi(
  value : JsValue,
) -> TextDetectorOptions =
  #| (v) => ({
  #|   languages: v.languages
  #| })

///|
/// Convert from JsValue
pub fn TextDetectorOptions::from_js(value : JsValue) -> TextDetectorOptions {
  TextDetectorOptions::from_js_ffi(value)
}

///|
/// TextDetectorCreateOptions dictionary
pub(all) struct TextDetectorCreateOptions {
  signal : AbortSignal?
  languages : FixedArray[String]?
}

///|
/// Create a new TextDetectorCreateOptions with default values
pub fn TextDetectorCreateOptions::default() -> TextDetectorCreateOptions {
  TextDetectorCreateOptions::{ signal: None, languages: None, }
}

///|
extern "js" fn TextDetectorCreateOptions::to_js_ffi(
  self : TextDetectorCreateOptions,
) -> JsValue =
  #| (self) => ({
  #|   signal: ((() => { const v = self.signal; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   languages: self.languages
  #| })

///|
/// Convert to JsValue
pub fn TextDetectorCreateOptions::to_js(
  self : TextDetectorCreateOptions,
) -> JsValue {
  TextDetectorCreateOptions::to_js_ffi(self)
}

///|
extern "js" fn TextDetectorCreateOptions::from_js_ffi(
  value : JsValue,
) -> TextDetectorCreateOptions =
  #| (v) => ({
  #|   signal: (v.signal === undefined ? { $tag: 0 } : { $tag: 1, _0: v.signal }),
  #|   languages: v.languages
  #| })

///|
/// Convert from JsValue
pub fn TextDetectorCreateOptions::from_js(
  value : JsValue,
) -> TextDetectorCreateOptions {
  TextDetectorCreateOptions::from_js_ffi(value)
}

///|
/// DetectedText dictionary
pub(all) struct DetectedText {
  boundingBox : DOMRectReadOnly
  rawValue : String
  cornerPoints : FixedArray[Point2D]
}

///|
/// Create a new DetectedText
pub fn DetectedText::new(boundingBox~ : DOMRectReadOnly) -> DetectedText {
  DetectedText::{ boundingBox, rawValue: "", cornerPoints: [], }
}

///|
extern "js" fn DetectedText::to_js_ffi(self : DetectedText) -> JsValue =
  #| (self) => ({
  #|   boundingBox: self.boundingBox,
  #|   rawValue: self.rawValue,
  #|   cornerPoints: self.cornerPoints
  #| })

///|
/// Convert to JsValue
pub fn DetectedText::to_js(self : DetectedText) -> JsValue {
  DetectedText::to_js_ffi(self)
}

///|
extern "js" fn DetectedText::from_js_ffi(value : JsValue) -> DetectedText =
  #| (v) => ({
  #|   boundingBox: v.boundingBox,
  #|   rawValue: v.rawValue,
  #|   cornerPoints: v.cornerPoints
  #| })

///|
/// Convert from JsValue
pub fn DetectedText::from_js(value : JsValue) -> DetectedText {
  DetectedText::from_js_ffi(value)
}

///|
/// TextDetector interface
pub type TextDetector

///|
pub extern "js" fn TextDetector::to_js_value(self : TextDetector) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to TextDetector (unchecked)
pub extern "js" fn TextDetector::from_js_value(v : JsValue) -> TextDetector =
  #| (v) => v

///|
/// Safely cast JsValue to TextDetector (checked with instanceof)
pub extern "js" fn TextDetector::from_js_value_opt(
  v : JsValue,
) -> TextDetector? =
  #| (v) => (v instanceof TextDetector) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to TextDetector (checked with instanceof)
pub extern "js" fn JsValue::as_text_detector(self : JsValue) -> TextDetector? =
  #| (self) => (self instanceof TextDetector) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to TextDetector (unchecked)
pub extern "js" fn JsValue::to_text_detector(self : JsValue) -> TextDetector =
  #| (self) => self

///|
pub extern "js" fn TextDetector::new() -> TextDetector =
  #| () => new TextDetector()

///|
extern "js" fn TextDetector::availability_ffi(
  options : JsValue,
) -> Promise[Availability] =
  #| (options) => TextDetector.availability(options)

///|
pub fn TextDetector::availability(
  options : TextDetectorOptions,
) -> Promise[Availability] {
  TextDetector::availability_ffi(options.to_js())
}

///|
pub extern "js" fn TextDetector::create() -> Promise[TextDetector] =
  #| () => TextDetector.create()

///|
extern "js" fn TextDetector::create_with_options_ffi(
  options : JsValue,
) -> Promise[TextDetector] =
  #| (options) => TextDetector.create(options)

///|
pub fn TextDetector::create_with_options(
  options : TextDetectorCreateOptions,
) -> Promise[TextDetector] {
  TextDetector::create_with_options_ffi(options.to_js())
}

///|
pub extern "js" fn TextDetector::detect(
  self : TextDetector,
  image : ImageBitmapSource,
) -> Promise[FixedArray[DetectedText]] =
  #| (self, image) => self.detect(image)

///|
pub extern "js" fn TextDetector::detect_with_canvas_image_source(
  self : TextDetector,
  image : CanvasImageSource,
) -> Promise[FixedArray[DetectedText]] =
  #| (self, image) => self.detect(image)

///|
pub extern "js" fn TextDetector::detect_with_blob(
  self : TextDetector,
  image : Blob,
) -> Promise[FixedArray[DetectedText]] =
  #| (self, image) => self.detect(image)

///|
pub extern "js" fn TextDetector::detect_with_image_data(
  self : TextDetector,
  image : ImageData,
) -> Promise[FixedArray[DetectedText]] =
  #| (self, image) => self.detect(image)
