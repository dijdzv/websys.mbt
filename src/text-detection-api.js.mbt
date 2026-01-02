// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/text-detection-api

///|
/// DetectedText dictionary
pub struct DetectedText {
  boundingBox : DOMRectReadOnly
  rawValue : String
  cornerPoints : JsValue
}

/// Create a new DetectedText with default values
pub fn DetectedText::default() -> DetectedText {
  DetectedText::{
    boundingBox: panic(),
    rawValue: "",
    cornerPoints: panic(),
  }
}

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

pub extern "js" fn TextDetector::to_js_value(self : TextDetector) -> JsValue =
  #| (self) => self

pub extern "js" fn TextDetector::new() -> TextDetector =
  #| () => new TextDetector()

pub extern "js" fn TextDetector::detect(self : TextDetector, image : ImageBitmapSource) -> JsValue =
  #| (self, image) => self.detect(image)

