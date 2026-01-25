// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/text-detection-api

///|
/// DetectedText dictionary
pub struct DetectedText {
  boundingBox : DOMRectReadOnly
  rawValue : String
  cornerPoints : Array[Point2D]
}

///|
/// Create a new DetectedText with default values
pub fn DetectedText::default() -> DetectedText {
  DetectedText::{ boundingBox: panic(), rawValue: "", cornerPoints: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn DetectedText::to_js(self : DetectedText) -> JsValue =
  #| (self) => ({
  #|   boundingBox: self.boundingBox,
  #|   rawValue: self.rawValue,
  #|   cornerPoints: self.cornerPoints
  #| })

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
pub extern "js" fn TextDetector::detect(
  self : TextDetector,
  image : ImageBitmapSource,
) -> Promise[Array[DetectedText]] =
  #| (self, image) => self.detect(image)
