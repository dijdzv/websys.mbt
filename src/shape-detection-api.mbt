// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/shape-detection-api

///|
/// LandmarkType enum
pub(all) enum LandmarkType {
  Mouth
  Eye
  Nose
}

/// Convert to string value
pub fn LandmarkType::to_string(self : LandmarkType) -> String {
  match self {
    Mouth => "mouth"
    Eye => "eye"
    Nose => "nose"
  }
}

/// Parse from string value
pub fn LandmarkType::from_string(s : String) -> LandmarkType? {
  match s {
    "mouth" => Some(Mouth)
    "eye" => Some(Eye)
    "nose" => Some(Nose)
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

/// Convert to string value
pub fn BarcodeFormat::to_string(self : BarcodeFormat) -> String {
  match self {
    Aztec => "aztec"
    Code128 => "code_128"
    Code39 => "code_39"
    Code93 => "code_93"
    Codabar => "codabar"
    DataMatrix => "data_matrix"
    Ean13 => "ean_13"
    Ean8 => "ean_8"
    Itf => "itf"
    Pdf417 => "pdf417"
    QrCode => "qr_code"
    Unknown => "unknown"
    UpcA => "upc_a"
    UpcE => "upc_e"
  }
}

/// Parse from string value
pub fn BarcodeFormat::from_string(s : String) -> BarcodeFormat? {
  match s {
    "aztec" => Some(Aztec)
    "code_128" => Some(Code128)
    "code_39" => Some(Code39)
    "code_93" => Some(Code93)
    "codabar" => Some(Codabar)
    "data_matrix" => Some(DataMatrix)
    "ean_13" => Some(Ean13)
    "ean_8" => Some(Ean8)
    "itf" => Some(Itf)
    "pdf417" => Some(Pdf417)
    "qr_code" => Some(QrCode)
    "unknown" => Some(Unknown)
    "upc_a" => Some(UpcA)
    "upc_e" => Some(UpcE)
    _ => None
  }
}

///|
/// FaceDetectorOptions dictionary
pub struct FaceDetectorOptions {
  maxDetectedFaces : Int?
  fastMode : Bool?
}

/// Create a new FaceDetectorOptions with default values
pub fn FaceDetectorOptions::default() -> FaceDetectorOptions {
  FaceDetectorOptions::{
    maxDetectedFaces: None,
    fastMode: None,
  }
}

/// Convert to JsValue
pub extern "js" fn FaceDetectorOptions::to_js(self : FaceDetectorOptions) -> JsValue =
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

/// Create a new DetectedFace with default values
pub fn DetectedFace::default() -> DetectedFace {
  DetectedFace::{
    boundingBox: panic(),
    landmarks: [],
  }
}

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

/// Create a new Landmark with default values
pub fn Landmark::default() -> Landmark {
  Landmark::{
    locations: [],
    type_: None,
  }
}

/// Convert to JsValue
pub extern "js" fn Landmark::to_js(self : Landmark) -> JsValue =
  #| (self) => ({
  #|   locations: self.locations,
  #|   type: self.type_
  #| })

///|
/// BarcodeDetectorOptions dictionary
pub struct BarcodeDetectorOptions {
  formats : Array[BarcodeFormat]?
}

/// Create a new BarcodeDetectorOptions with default values
pub fn BarcodeDetectorOptions::default() -> BarcodeDetectorOptions {
  BarcodeDetectorOptions::{
    formats: None,
  }
}

/// Convert to JsValue
pub extern "js" fn BarcodeDetectorOptions::to_js(self : BarcodeDetectorOptions) -> JsValue =
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

/// Create a new DetectedBarcode with default values
pub fn DetectedBarcode::default() -> DetectedBarcode {
  DetectedBarcode::{
    boundingBox: panic(),
    rawValue: "",
    format: panic(),
    cornerPoints: [],
  }
}

/// Convert to JsValue
pub extern "js" fn DetectedBarcode::to_js(self : DetectedBarcode) -> JsValue =
  #| (self) => ({
  #|   boundingBox: self.boundingBox,
  #|   rawValue: self.rawValue,
  #|   format: self.format,
  #|   cornerPoints: self.cornerPoints
  #| })

///|
/// FaceDetector interface
pub type FaceDetector

pub extern "js" fn FaceDetector::to_js_value(self : FaceDetector) -> JsValue =
  #| (self) => self

pub extern "js" fn FaceDetector::new(face_detector_options : FaceDetectorOptions) -> FaceDetector =
  #| (face_detector_options) => new FaceDetector(face_detector_options)

pub extern "js" fn FaceDetector::detect(self : FaceDetector, image : ImageBitmapSource) -> Promise[Array[DetectedFace]] =
  #| (self, image) => self.detect(image)

///|
/// BarcodeDetector interface
pub type BarcodeDetector

pub extern "js" fn BarcodeDetector::to_js_value(self : BarcodeDetector) -> JsValue =
  #| (self) => self

pub extern "js" fn BarcodeDetector::new(barcode_detector_options : BarcodeDetectorOptions) -> BarcodeDetector =
  #| (barcode_detector_options) => new BarcodeDetector(barcode_detector_options)

pub extern "js" fn BarcodeDetector::get_supported_formats() -> Promise[Array[BarcodeFormat]] =
  #| () => BarcodeDetector.getSupportedFormats()

pub extern "js" fn BarcodeDetector::detect(self : BarcodeDetector, image : ImageBitmapSource) -> Promise[Array[DetectedBarcode]] =
  #| (self, image) => self.detect(image)

