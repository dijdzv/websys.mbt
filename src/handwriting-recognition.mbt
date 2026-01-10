// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/handwriting-recognition

///|
/// HandwritingRecognitionType enum
pub(all) enum HandwritingRecognitionType {
  Text
  PerCharacter
}

///|
/// Convert to string value
pub fn HandwritingRecognitionType::to_string(
  self : HandwritingRecognitionType,
) -> String {
  match self {
    HandwritingRecognitionType::Text => "text"
    HandwritingRecognitionType::PerCharacter => "per-character"
  }
}

///|
/// Parse from string value
pub fn HandwritingRecognitionType::from_string(
  s : String,
) -> HandwritingRecognitionType? {
  match s {
    "text" => Some(HandwritingRecognitionType::Text)
    "per-character" => Some(HandwritingRecognitionType::PerCharacter)
    _ => None
  }
}

///|
/// HandwritingInputType enum
pub(all) enum HandwritingInputType {
  Mouse
  Stylus
  Touch
}

///|
/// Convert to string value
pub fn HandwritingInputType::to_string(self : HandwritingInputType) -> String {
  match self {
    HandwritingInputType::Mouse => "mouse"
    HandwritingInputType::Stylus => "stylus"
    HandwritingInputType::Touch => "touch"
  }
}

///|
/// Parse from string value
pub fn HandwritingInputType::from_string(s : String) -> HandwritingInputType? {
  match s {
    "mouse" => Some(HandwritingInputType::Mouse)
    "stylus" => Some(HandwritingInputType::Stylus)
    "touch" => Some(HandwritingInputType::Touch)
    _ => None
  }
}

///|
/// HandwritingModelConstraint dictionary
pub struct HandwritingModelConstraint {
  languages : Array[String]
}

///|
/// Create a new HandwritingModelConstraint with default values
pub fn HandwritingModelConstraint::default() -> HandwritingModelConstraint {
  HandwritingModelConstraint::{ languages: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn HandwritingModelConstraint::to_js(
  self : HandwritingModelConstraint,
) -> JsValue =
  #| (self) => ({
  #|   languages: self.languages
  #| })

///|
/// HandwritingRecognizerQueryResult dictionary
pub struct HandwritingRecognizerQueryResult {
  textAlternatives : Bool?
  textSegmentation : Bool?
  hints : HandwritingHintsQueryResult?
}

///|
/// Create a new HandwritingRecognizerQueryResult with default values
pub fn HandwritingRecognizerQueryResult::default() -> HandwritingRecognizerQueryResult {
  HandwritingRecognizerQueryResult::{
    textAlternatives: None,
    textSegmentation: None,
    hints: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn HandwritingRecognizerQueryResult::to_js(
  self : HandwritingRecognizerQueryResult,
) -> JsValue =
  #| (self) => ({
  #|   textAlternatives: self.textAlternatives,
  #|   textSegmentation: self.textSegmentation,
  #|   hints: self.hints
  #| })

///|
/// HandwritingHintsQueryResult dictionary
pub struct HandwritingHintsQueryResult {
  recognitionType : Array[HandwritingRecognitionType]?
  inputType : Array[HandwritingInputType]?
  textContext : Bool?
  alternatives : Bool?
}

///|
/// Create a new HandwritingHintsQueryResult with default values
pub fn HandwritingHintsQueryResult::default() -> HandwritingHintsQueryResult {
  HandwritingHintsQueryResult::{
    recognitionType: None,
    inputType: None,
    textContext: None,
    alternatives: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn HandwritingHintsQueryResult::to_js(
  self : HandwritingHintsQueryResult,
) -> JsValue =
  #| (self) => ({
  #|   recognitionType: self.recognitionType,
  #|   inputType: self.inputType,
  #|   textContext: self.textContext,
  #|   alternatives: self.alternatives
  #| })

///|
/// HandwritingHints dictionary
pub struct HandwritingHints {
  recognitionType : String?
  inputType : String?
  textContext : String?
  alternatives : Int?
}

///|
/// Create a new HandwritingHints with default values
pub fn HandwritingHints::default() -> HandwritingHints {
  HandwritingHints::{
    recognitionType: None,
    inputType: None,
    textContext: None,
    alternatives: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn HandwritingHints::to_js(self : HandwritingHints) -> JsValue =
  #| (self) => ({
  #|   recognitionType: self.recognitionType,
  #|   inputType: self.inputType,
  #|   textContext: self.textContext,
  #|   alternatives: self.alternatives
  #| })

///|
/// HandwritingPoint dictionary
pub struct HandwritingPoint {
  x : Double
  y : Double
  t : DOMHighResTimeStamp?
}

///|
/// Create a new HandwritingPoint with default values
pub fn HandwritingPoint::default() -> HandwritingPoint {
  HandwritingPoint::{ x: 0, y: 0, t: None }
}

///|
/// Convert to JsValue
pub extern "js" fn HandwritingPoint::to_js(self : HandwritingPoint) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y,
  #|   t: self.t
  #| })

///|
/// HandwritingPrediction dictionary
pub struct HandwritingPrediction {
  text : String
  segmentationResult : Array[HandwritingSegment]?
}

///|
/// Create a new HandwritingPrediction with default values
pub fn HandwritingPrediction::default() -> HandwritingPrediction {
  HandwritingPrediction::{ text: "", segmentationResult: None }
}

///|
/// Convert to JsValue
pub extern "js" fn HandwritingPrediction::to_js(
  self : HandwritingPrediction,
) -> JsValue =
  #| (self) => ({
  #|   text: self.text,
  #|   segmentationResult: self.segmentationResult
  #| })

///|
/// HandwritingSegment dictionary
pub struct HandwritingSegment {
  grapheme : String
  beginIndex : Int
  endIndex : Int
  drawingSegments : Array[HandwritingDrawingSegment]
}

///|
/// Create a new HandwritingSegment with default values
pub fn HandwritingSegment::default() -> HandwritingSegment {
  HandwritingSegment::{
    grapheme: "",
    beginIndex: 0,
    endIndex: 0,
    drawingSegments: [],
  }
}

///|
/// Convert to JsValue
pub extern "js" fn HandwritingSegment::to_js(
  self : HandwritingSegment,
) -> JsValue =
  #| (self) => ({
  #|   grapheme: self.grapheme,
  #|   beginIndex: self.beginIndex,
  #|   endIndex: self.endIndex,
  #|   drawingSegments: self.drawingSegments
  #| })

///|
/// HandwritingDrawingSegment dictionary
pub struct HandwritingDrawingSegment {
  strokeIndex : Int
  beginPointIndex : Int
  endPointIndex : Int
}

///|
/// Create a new HandwritingDrawingSegment with default values
pub fn HandwritingDrawingSegment::default() -> HandwritingDrawingSegment {
  HandwritingDrawingSegment::{
    strokeIndex: 0,
    beginPointIndex: 0,
    endPointIndex: 0,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn HandwritingDrawingSegment::to_js(
  self : HandwritingDrawingSegment,
) -> JsValue =
  #| (self) => ({
  #|   strokeIndex: self.strokeIndex,
  #|   beginPointIndex: self.beginPointIndex,
  #|   endPointIndex: self.endPointIndex
  #| })

///|
/// HandwritingRecognizer interface
pub type HandwritingRecognizer

///|
pub extern "js" fn HandwritingRecognizer::to_js_value(
  self : HandwritingRecognizer,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn HandwritingRecognizer::start_drawing(
  self : HandwritingRecognizer,
) -> HandwritingDrawing =
  #| (self) => self.startDrawing()

///|
pub extern "js" fn HandwritingRecognizer::start_drawing_with_hints(
  self : HandwritingRecognizer,
  hints : HandwritingHints,
) -> HandwritingDrawing =
  #| (self, hints) => self.startDrawing(hints)

///|
pub extern "js" fn HandwritingRecognizer::finish(
  self : HandwritingRecognizer,
) -> Unit =
  #| (self) => self.finish()

///|
/// HandwritingDrawing interface
pub type HandwritingDrawing

///|
pub extern "js" fn HandwritingDrawing::to_js_value(
  self : HandwritingDrawing,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn HandwritingDrawing::add_stroke(
  self : HandwritingDrawing,
  stroke : HandwritingStroke,
) -> Unit =
  #| (self, stroke) => self.addStroke(stroke)

///|
pub extern "js" fn HandwritingDrawing::remove_stroke(
  self : HandwritingDrawing,
  stroke : HandwritingStroke,
) -> Unit =
  #| (self, stroke) => self.removeStroke(stroke)

///|
pub extern "js" fn HandwritingDrawing::clear(self : HandwritingDrawing) -> Unit =
  #| (self) => self.clear()

///|
pub extern "js" fn HandwritingDrawing::get_strokes(
  self : HandwritingDrawing,
) -> Array[HandwritingStroke] =
  #| (self) => self.getStrokes()

///|
pub extern "js" fn HandwritingDrawing::get_prediction(
  self : HandwritingDrawing,
) -> Promise[Unit] =
  #| (self) => self.getPrediction()

///|
/// HandwritingStroke interface
pub type HandwritingStroke

///|
pub extern "js" fn HandwritingStroke::to_js_value(
  self : HandwritingStroke,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn HandwritingStroke::new() -> HandwritingStroke =
  #| () => new HandwritingStroke()

///|
pub extern "js" fn HandwritingStroke::add_point(
  self : HandwritingStroke,
  point : HandwritingPoint,
) -> Unit =
  #| (self, point) => self.addPoint(point)

///|
pub extern "js" fn HandwritingStroke::get_points(
  self : HandwritingStroke,
) -> Array[HandwritingPoint] =
  #| (self) => self.getPoints()

///|
pub extern "js" fn HandwritingStroke::clear(self : HandwritingStroke) -> Unit =
  #| (self) => self.clear()
