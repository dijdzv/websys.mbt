// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/handwriting-recognition

///|
/// HandwritingRecognitionType enum
pub(all) enum HandwritingRecognitionType {
  Text
  PerCharacter
} derive(Eq, Show)

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
} derive(Eq, Show)

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
pub(all) struct HandwritingModelConstraint {
  languages : Array[String]
}

///|
/// Create a new HandwritingModelConstraint with default values
pub fn HandwritingModelConstraint::default() -> HandwritingModelConstraint {
  HandwritingModelConstraint::{ languages: [] }
}

///|
extern "js" fn HandwritingModelConstraint::to_js_ffi(
  self : HandwritingModelConstraint,
) -> JsValue =
  #| (self) => ({
  #|   languages: self.languages
  #| })

///|
/// Convert to JsValue
pub fn HandwritingModelConstraint::to_js(
  self : HandwritingModelConstraint,
) -> JsValue {
  HandwritingModelConstraint::to_js_ffi(self)
}

///|
extern "js" fn HandwritingModelConstraint::from_js_ffi(
  value : JsValue,
) -> HandwritingModelConstraint =
  #| (v) => ({
  #|   languages: v.languages
  #| })

///|
/// Convert from JsValue
pub fn HandwritingModelConstraint::from_js(
  value : JsValue,
) -> HandwritingModelConstraint {
  HandwritingModelConstraint::from_js_ffi(value)
}

///|
/// HandwritingRecognizerQueryResult dictionary
pub(all) struct HandwritingRecognizerQueryResult {
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
extern "js" fn HandwritingRecognizerQueryResult::to_js_ffi(
  self : HandwritingRecognizerQueryResult,
) -> JsValue =
  #| (self) => ({
  #|   textAlternatives: (self.textAlternatives === -1 ? undefined : self.textAlternatives),
  #|   textSegmentation: (self.textSegmentation === -1 ? undefined : self.textSegmentation),
  #|   hints: ((() => { const v = self.hints; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn HandwritingRecognizerQueryResult::to_js(
  self : HandwritingRecognizerQueryResult,
) -> JsValue {
  HandwritingRecognizerQueryResult::to_js_ffi(self)
}

///|
extern "js" fn HandwritingRecognizerQueryResult::from_js_ffi(
  value : JsValue,
) -> HandwritingRecognizerQueryResult =
  #| (v) => ({
  #|   textAlternatives: (v.textAlternatives === undefined ? -1 : v.textAlternatives),
  #|   textSegmentation: (v.textSegmentation === undefined ? -1 : v.textSegmentation),
  #|   hints: (v.hints === undefined ? { $tag: 0 } : { $tag: 1, _0: v.hints })
  #| })

///|
/// Convert from JsValue
pub fn HandwritingRecognizerQueryResult::from_js(
  value : JsValue,
) -> HandwritingRecognizerQueryResult {
  HandwritingRecognizerQueryResult::from_js_ffi(value)
}

///|
/// HandwritingHintsQueryResult dictionary
pub(all) struct HandwritingHintsQueryResult {
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
extern "js" fn HandwritingHintsQueryResult::to_js_ffi(
  self : HandwritingHintsQueryResult,
) -> JsValue =
  #| (self) => ({
  #|   recognitionType: ((() => { const v = self.recognitionType; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   inputType: ((() => { const v = self.inputType; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   textContext: (self.textContext === -1 ? undefined : self.textContext),
  #|   alternatives: (self.alternatives === -1 ? undefined : self.alternatives)
  #| })

///|
/// Convert to JsValue
pub fn HandwritingHintsQueryResult::to_js(
  self : HandwritingHintsQueryResult,
) -> JsValue {
  HandwritingHintsQueryResult::to_js_ffi(self)
}

///|
extern "js" fn HandwritingHintsQueryResult::from_js_ffi(
  value : JsValue,
) -> HandwritingHintsQueryResult =
  #| (v) => ({
  #|   recognitionType: (v.recognitionType === undefined ? { $tag: 0 } : { $tag: 1, _0: v.recognitionType }),
  #|   inputType: (v.inputType === undefined ? { $tag: 0 } : { $tag: 1, _0: v.inputType }),
  #|   textContext: (v.textContext === undefined ? -1 : v.textContext),
  #|   alternatives: (v.alternatives === undefined ? -1 : v.alternatives)
  #| })

///|
/// Convert from JsValue
pub fn HandwritingHintsQueryResult::from_js(
  value : JsValue,
) -> HandwritingHintsQueryResult {
  HandwritingHintsQueryResult::from_js_ffi(value)
}

///|
/// HandwritingHints dictionary
pub(all) struct HandwritingHints {
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
extern "js" fn HandwritingHints::to_js_ffi(self : HandwritingHints) -> JsValue =
  #| (self) => ({
  #|   recognitionType: self.recognitionType,
  #|   inputType: self.inputType,
  #|   textContext: self.textContext,
  #|   alternatives: self.alternatives
  #| })

///|
/// Convert to JsValue
pub fn HandwritingHints::to_js(self : HandwritingHints) -> JsValue {
  HandwritingHints::to_js_ffi(self)
}

///|
extern "js" fn HandwritingHints::from_js_ffi(
  value : JsValue,
) -> HandwritingHints =
  #| (v) => ({
  #|   recognitionType: v.recognitionType,
  #|   inputType: v.inputType,
  #|   textContext: v.textContext,
  #|   alternatives: v.alternatives
  #| })

///|
/// Convert from JsValue
pub fn HandwritingHints::from_js(value : JsValue) -> HandwritingHints {
  HandwritingHints::from_js_ffi(value)
}

///|
/// HandwritingPoint dictionary
pub(all) struct HandwritingPoint {
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
extern "js" fn HandwritingPoint::to_js_ffi(self : HandwritingPoint) -> JsValue =
  #| (self) => ({
  #|   x: self.x,
  #|   y: self.y,
  #|   t: ((() => { const v = self.t; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn HandwritingPoint::to_js(self : HandwritingPoint) -> JsValue {
  HandwritingPoint::to_js_ffi(self)
}

///|
extern "js" fn HandwritingPoint::from_js_ffi(
  value : JsValue,
) -> HandwritingPoint =
  #| (v) => ({
  #|   x: v.x,
  #|   y: v.y,
  #|   t: (v.t === undefined ? { $tag: 0 } : { $tag: 1, _0: v.t })
  #| })

///|
/// Convert from JsValue
pub fn HandwritingPoint::from_js(value : JsValue) -> HandwritingPoint {
  HandwritingPoint::from_js_ffi(value)
}

///|
/// HandwritingPrediction dictionary
pub(all) struct HandwritingPrediction {
  text : String
  segmentationResult : Array[HandwritingSegment]?
}

///|
/// Create a new HandwritingPrediction with default values
pub fn HandwritingPrediction::default() -> HandwritingPrediction {
  HandwritingPrediction::{ text: "", segmentationResult: None }
}

///|
extern "js" fn HandwritingPrediction::to_js_ffi(
  self : HandwritingPrediction,
) -> JsValue =
  #| (self) => ({
  #|   text: self.text,
  #|   segmentationResult: ((() => { const v = self.segmentationResult; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn HandwritingPrediction::to_js(self : HandwritingPrediction) -> JsValue {
  HandwritingPrediction::to_js_ffi(self)
}

///|
extern "js" fn HandwritingPrediction::from_js_ffi(
  value : JsValue,
) -> HandwritingPrediction =
  #| (v) => ({
  #|   text: v.text,
  #|   segmentationResult: (v.segmentationResult === undefined ? { $tag: 0 } : { $tag: 1, _0: v.segmentationResult })
  #| })

///|
/// Convert from JsValue
pub fn HandwritingPrediction::from_js(value : JsValue) -> HandwritingPrediction {
  HandwritingPrediction::from_js_ffi(value)
}

///|
/// HandwritingSegment dictionary
pub(all) struct HandwritingSegment {
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
extern "js" fn HandwritingSegment::to_js_ffi(
  self : HandwritingSegment,
) -> JsValue =
  #| (self) => ({
  #|   grapheme: self.grapheme,
  #|   beginIndex: self.beginIndex,
  #|   endIndex: self.endIndex,
  #|   drawingSegments: self.drawingSegments
  #| })

///|
/// Convert to JsValue
pub fn HandwritingSegment::to_js(self : HandwritingSegment) -> JsValue {
  HandwritingSegment::to_js_ffi(self)
}

///|
extern "js" fn HandwritingSegment::from_js_ffi(
  value : JsValue,
) -> HandwritingSegment =
  #| (v) => ({
  #|   grapheme: v.grapheme,
  #|   beginIndex: v.beginIndex,
  #|   endIndex: v.endIndex,
  #|   drawingSegments: v.drawingSegments
  #| })

///|
/// Convert from JsValue
pub fn HandwritingSegment::from_js(value : JsValue) -> HandwritingSegment {
  HandwritingSegment::from_js_ffi(value)
}

///|
/// HandwritingDrawingSegment dictionary
pub(all) struct HandwritingDrawingSegment {
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
extern "js" fn HandwritingDrawingSegment::to_js_ffi(
  self : HandwritingDrawingSegment,
) -> JsValue =
  #| (self) => ({
  #|   strokeIndex: self.strokeIndex,
  #|   beginPointIndex: self.beginPointIndex,
  #|   endPointIndex: self.endPointIndex
  #| })

///|
/// Convert to JsValue
pub fn HandwritingDrawingSegment::to_js(
  self : HandwritingDrawingSegment,
) -> JsValue {
  HandwritingDrawingSegment::to_js_ffi(self)
}

///|
extern "js" fn HandwritingDrawingSegment::from_js_ffi(
  value : JsValue,
) -> HandwritingDrawingSegment =
  #| (v) => ({
  #|   strokeIndex: v.strokeIndex,
  #|   beginPointIndex: v.beginPointIndex,
  #|   endPointIndex: v.endPointIndex
  #| })

///|
/// Convert from JsValue
pub fn HandwritingDrawingSegment::from_js(
  value : JsValue,
) -> HandwritingDrawingSegment {
  HandwritingDrawingSegment::from_js_ffi(value)
}

///|
/// HandwritingRecognizer interface
pub type HandwritingRecognizer

///|
pub extern "js" fn HandwritingRecognizer::to_js_value(
  self : HandwritingRecognizer,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to HandwritingRecognizer (unchecked)
pub extern "js" fn HandwritingRecognizer::from_js_value(
  v : JsValue,
) -> HandwritingRecognizer =
  #| (v) => v

///|
/// Safely cast JsValue to HandwritingRecognizer (checked with instanceof)
pub extern "js" fn HandwritingRecognizer::from_js_value_opt(
  v : JsValue,
) -> HandwritingRecognizer? =
  #| (v) => (v instanceof HandwritingRecognizer) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HandwritingRecognizer (checked with instanceof)
pub extern "js" fn JsValue::as_handwriting_recognizer(
  self : JsValue,
) -> HandwritingRecognizer? =
  #| (self) => (self instanceof HandwritingRecognizer) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HandwritingRecognizer (unchecked)
pub extern "js" fn JsValue::to_handwriting_recognizer(
  self : JsValue,
) -> HandwritingRecognizer =
  #| (self) => self

///|
pub extern "js" fn HandwritingRecognizer::start_drawing(
  self : HandwritingRecognizer,
) -> HandwritingDrawing =
  #| (self) => self.startDrawing()

///|
extern "js" fn HandwritingRecognizer::start_drawing_with_hints_ffi(
  self : HandwritingRecognizer,
  hints : JsValue,
) -> HandwritingDrawing =
  #| (self, hints) => self.startDrawing(hints)

///|
pub fn HandwritingRecognizer::start_drawing_with_hints(
  self : HandwritingRecognizer,
  hints : HandwritingHints,
) -> HandwritingDrawing {
  HandwritingRecognizer::start_drawing_with_hints_ffi(self, hints.to_js())
}

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
/// Cast JsValue to HandwritingDrawing (unchecked)
pub extern "js" fn HandwritingDrawing::from_js_value(
  v : JsValue,
) -> HandwritingDrawing =
  #| (v) => v

///|
/// Safely cast JsValue to HandwritingDrawing (checked with instanceof)
pub extern "js" fn HandwritingDrawing::from_js_value_opt(
  v : JsValue,
) -> HandwritingDrawing? =
  #| (v) => (v instanceof HandwritingDrawing) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HandwritingDrawing (checked with instanceof)
pub extern "js" fn JsValue::as_handwriting_drawing(
  self : JsValue,
) -> HandwritingDrawing? =
  #| (self) => (self instanceof HandwritingDrawing) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HandwritingDrawing (unchecked)
pub extern "js" fn JsValue::to_handwriting_drawing(
  self : JsValue,
) -> HandwritingDrawing =
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
) -> Promise[Array[HandwritingPrediction]] =
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
/// Cast JsValue to HandwritingStroke (unchecked)
pub extern "js" fn HandwritingStroke::from_js_value(
  v : JsValue,
) -> HandwritingStroke =
  #| (v) => v

///|
/// Safely cast JsValue to HandwritingStroke (checked with instanceof)
pub extern "js" fn HandwritingStroke::from_js_value_opt(
  v : JsValue,
) -> HandwritingStroke? =
  #| (v) => (v instanceof HandwritingStroke) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to HandwritingStroke (checked with instanceof)
pub extern "js" fn JsValue::as_handwriting_stroke(
  self : JsValue,
) -> HandwritingStroke? =
  #| (self) => (self instanceof HandwritingStroke) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to HandwritingStroke (unchecked)
pub extern "js" fn JsValue::to_handwriting_stroke(
  self : JsValue,
) -> HandwritingStroke =
  #| (self) => self

///|
pub extern "js" fn HandwritingStroke::new() -> HandwritingStroke =
  #| () => new HandwritingStroke()

///|
extern "js" fn HandwritingStroke::add_point_ffi(
  self : HandwritingStroke,
  point : JsValue,
) -> Unit =
  #| (self, point) => self.addPoint(point)

///|
pub fn HandwritingStroke::add_point(
  self : HandwritingStroke,
  point : HandwritingPoint,
) -> Unit {
  HandwritingStroke::add_point_ffi(self, point.to_js())
}

///|
pub extern "js" fn HandwritingStroke::get_points(
  self : HandwritingStroke,
) -> Array[HandwritingPoint] =
  #| (self) => self.getPoints()

///|
pub extern "js" fn HandwritingStroke::clear(self : HandwritingStroke) -> Unit =
  #| (self) => self.clear()
