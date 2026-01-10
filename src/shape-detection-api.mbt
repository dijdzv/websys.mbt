// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/shape-detection-api

///|
/// LandmarkType enum
pub(all) enum LandmarkType {
  Mouth
  Eye
  Nose
}

///|
/// Convert to string value
pub fn LandmarkType::to_string(self : LandmarkType) -> String {
  match self {
    LandmarkType::Mouth => "mouth"
    LandmarkType::Eye => "eye"
    LandmarkType::Nose => "nose"
  }
}

///|
/// Parse from string value
pub fn LandmarkType::from_string(s : String) -> LandmarkType? {
  match s {
    "mouth" => Some(LandmarkType::Mouth)
    "eye" => Some(LandmarkType::Eye)
    "nose" => Some(LandmarkType::Nose)
    _ => None
  }
}

///|
/// BarcodeFormat enum
pub(all) enum BarcodeFormat {
  Aztec
  Code128
  Code39
  Code93
  Codabar
  DataMatrix
  Ean13
  Ean8
  Itf
  Pdf417
  QrCode
  Unknown
  UpcA
  UpcE
}

///|
/// Convert to string value
pub fn BarcodeFormat::to_string(self : BarcodeFormat) -> String {
  match self {
    BarcodeFormat::Aztec => "aztec"
    BarcodeFormat::Code128 => "code_128"
    BarcodeFormat::Code39 => "code_39"
    BarcodeFormat::Code93 => "code_93"
    BarcodeFormat::Codabar => "codabar"
    BarcodeFormat::DataMatrix => "data_matrix"
    BarcodeFormat::Ean13 => "ean_13"
    BarcodeFormat::Ean8 => "ean_8"
    BarcodeFormat::Itf => "itf"
    BarcodeFormat::Pdf417 => "pdf417"
    BarcodeFormat::QrCode => "qr_code"
    BarcodeFormat::Unknown => "unknown"
    BarcodeFormat::UpcA => "upc_a"
    BarcodeFormat::UpcE => "upc_e"
  }
}

///|
/// Parse from string value
pub fn BarcodeFormat::from_string(s : String) -> BarcodeFormat? {
  match s {
    "aztec" => Some(BarcodeFormat::Aztec)
    "code_128" => Some(BarcodeFormat::Code128)
    "code_39" => Some(BarcodeFormat::Code39)
    "code_93" => Some(BarcodeFormat::Code93)
    "codabar" => Some(BarcodeFormat::Codabar)
    "data_matrix" => Some(BarcodeFormat::DataMatrix)
    "ean_13" => Some(BarcodeFormat::Ean13)
    "ean_8" => Some(BarcodeFormat::Ean8)
    "itf" => Some(BarcodeFormat::Itf)
    "pdf417" => Some(BarcodeFormat::Pdf417)
    "qr_code" => Some(BarcodeFormat::QrCode)
    "unknown" => Some(BarcodeFormat::Unknown)
    "upc_a" => Some(BarcodeFormat::UpcA)
    "upc_e" => Some(BarcodeFormat::UpcE)
    _ => None
  }
}

///|
/// FaceDetectorOptions dictionary
pub struct FaceDetectorOptions {
  maxDetectedFaces : Int?
  fastMode : Bool?
}

///|
/// Create a new FaceDetectorOptions with default values
pub fn FaceDetectorOptions::default() -> FaceDetectorOptions {
  FaceDetectorOptions::{ maxDetectedFaces: None, fastMode: None }
}

///|
/// Convert to JsValue
pub extern "js" fn FaceDetectorOptions::to_js(
  self : FaceDetectorOptions,
) -> JsValue =
  #| (self) => ({
  #|   maxDetectedFaces: self.maxDetectedFaces,
  #|   fastMode: self.fastMode
  #| })

///|
/// DetectedFace dictionary
pub struct DetectedFace {
  boundingBox : DOMRectReadOnly
  landmarks : Array[Landmark]
}

///|
/// Create a new DetectedFace with default values
pub fn DetectedFace::default() -> DetectedFace {
  DetectedFace::{ boundingBox: panic(), landmarks: [] }
}

///|
/// Convert to JsValue
pub extern "js" fn DetectedFace::to_js(self : DetectedFace) -> JsValue =
  #| (self) => ({
  #|   boundingBox: self.boundingBox,
  #|   landmarks: self.landmarks
  #| })

///|
/// Landmark dictionary
pub struct Landmark {
  locations : Array[Point2D]
  type_ : LandmarkType?
}

///|
/// Create a new Landmark with default values
pub fn Landmark::default() -> Landmark {
  Landmark::{ locations: [], type_: None }
}

///|
/// Convert to JsValue
pub extern "js" fn Landmark::to_js(self : Landmark) -> JsValue =
  #| (self) => ({
  #|   locations: self.locations,
  #|   type: ['mouth', 'eye', 'nose'][self.type_]
  #| })

///|
/// BarcodeDetectorOptions dictionary
pub struct BarcodeDetectorOptions {
  formats : Array[BarcodeFormat]?
}

///|
/// Create a new BarcodeDetectorOptions with default values
pub fn BarcodeDetectorOptions::default() -> BarcodeDetectorOptions {
  BarcodeDetectorOptions::{ formats: None }
}

///|
/// Convert to JsValue
pub extern "js" fn BarcodeDetectorOptions::to_js(
  self : BarcodeDetectorOptions,
) -> JsValue =
  #| (self) => ({
  #|   formats: self.formats
  #| })

///|
/// DetectedBarcode dictionary
pub struct DetectedBarcode {
  boundingBox : DOMRectReadOnly
  rawValue : String
  format : BarcodeFormat
  cornerPoints : Array[Point2D]
}

///|
/// Create a new DetectedBarcode with default values
pub fn DetectedBarcode::default() -> DetectedBarcode {
  DetectedBarcode::{
    boundingBox: panic(),
    rawValue: "",
    format: panic(),
    cornerPoints: [],
  }
}

///|
/// Convert to JsValue
pub extern "js" fn DetectedBarcode::to_js(self : DetectedBarcode) -> JsValue =
  #| (self) => ({
  #|   boundingBox: self.boundingBox,
  #|   rawValue: self.rawValue,
  #|   format: ['aztec', 'code_128', 'code_39', 'code_93', 'codabar', 'data_matrix', 'ean_13', 'ean_8', 'itf', 'pdf417', 'qr_code', 'unknown', 'upc_a', 'upc_e'][self.format],
  #|   cornerPoints: self.cornerPoints
  #| })

///|
/// FaceDetector interface
pub type FaceDetector

///|
pub extern "js" fn FaceDetector::to_js_value(self : FaceDetector) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn FaceDetector::new(
  face_detector_options : FaceDetectorOptions,
) -> FaceDetector =
  #| (face_detector_options) => new FaceDetector(face_detector_options)

///|
pub extern "js" fn FaceDetector::detect(
  self : FaceDetector,
  image : ImageBitmapSource,
) -> Promise[Unit] =
  #| (self, image) => self.detect(image)

///|
/// BarcodeDetector interface
pub type BarcodeDetector

///|
pub extern "js" fn BarcodeDetector::to_js_value(
  self : BarcodeDetector,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn BarcodeDetector::new(
  barcode_detector_options : BarcodeDetectorOptions,
) -> BarcodeDetector =
  #| (barcode_detector_options) => new BarcodeDetector(barcode_detector_options)

///|
pub extern "js" fn BarcodeDetector::get_supported_formats() -> Promise[Unit] =
  #| () => BarcodeDetector.getSupportedFormats()

///|
pub extern "js" fn BarcodeDetector::detect(
  self : BarcodeDetector,
  image : ImageBitmapSource,
) -> Promise[Unit] =
  #| (self, image) => self.detect(image)
