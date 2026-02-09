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
pub(all) struct FaceDetectorOptions {
  maxDetectedFaces : Int?
  fastMode : Bool?
}

///|
/// Create a new FaceDetectorOptions with default values
pub fn FaceDetectorOptions::default() -> FaceDetectorOptions {
  FaceDetectorOptions::{ maxDetectedFaces: None, fastMode: None }
}

///|
extern "js" fn FaceDetectorOptions::to_js_ffi(
  self : FaceDetectorOptions,
) -> JsValue =
  #| (self) => ({
  #|   maxDetectedFaces: self.maxDetectedFaces,
  #|   fastMode: (self.fastMode === -1 ? undefined : self.fastMode)
  #| })

///|
/// Convert to JsValue
pub fn FaceDetectorOptions::to_js(self : FaceDetectorOptions) -> JsValue {
  FaceDetectorOptions::to_js_ffi(self)
}

///|
/// DetectedFace dictionary
pub(all) struct DetectedFace {
  boundingBox : DOMRectReadOnly
  landmarks : Array[Landmark]
}

///|
/// Create a new DetectedFace
pub fn DetectedFace::new(boundingBox~ : DOMRectReadOnly) -> DetectedFace {
  DetectedFace::{ boundingBox, landmarks: [] }
}

///|
extern "js" fn DetectedFace::to_js_ffi(self : DetectedFace) -> JsValue =
  #| (self) => ({
  #|   boundingBox: self.boundingBox,
  #|   landmarks: self.landmarks
  #| })

///|
/// Convert to JsValue
pub fn DetectedFace::to_js(self : DetectedFace) -> JsValue {
  DetectedFace::to_js_ffi(self)
}

///|
/// Landmark dictionary
pub(all) struct Landmark {
  locations : Array[Point2D]
  type_ : LandmarkType?
}

///|
/// Create a new Landmark with default values
pub fn Landmark::default() -> Landmark {
  Landmark::{ locations: [], type_: None }
}

///|
extern "js" fn Landmark::to_js_ffi(self : Landmark) -> JsValue =
  #| (self) => ({
  #|   locations: self.locations,
  #|   type: ((() => { const v = self.type_; if (v === undefined) return undefined; return ['mouth', 'eye', 'nose'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn Landmark::to_js(self : Landmark) -> JsValue {
  Landmark::to_js_ffi(self)
}

///|
/// BarcodeDetectorOptions dictionary
pub(all) struct BarcodeDetectorOptions {
  formats : Array[BarcodeFormat]?
}

///|
/// Create a new BarcodeDetectorOptions with default values
pub fn BarcodeDetectorOptions::default() -> BarcodeDetectorOptions {
  BarcodeDetectorOptions::{ formats: None }
}

///|
extern "js" fn BarcodeDetectorOptions::to_js_ffi(
  self : BarcodeDetectorOptions,
) -> JsValue =
  #| (self) => ({
  #|   formats: ((() => { const v = self.formats; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn BarcodeDetectorOptions::to_js(self : BarcodeDetectorOptions) -> JsValue {
  BarcodeDetectorOptions::to_js_ffi(self)
}

///|
/// DetectedBarcode dictionary
pub(all) struct DetectedBarcode {
  boundingBox : DOMRectReadOnly
  rawValue : String
  format : BarcodeFormat
  cornerPoints : Array[Point2D]
}

///|
/// Create a new DetectedBarcode
pub fn DetectedBarcode::new(
  boundingBox~ : DOMRectReadOnly,
  format~ : BarcodeFormat,
) -> DetectedBarcode {
  DetectedBarcode::{ boundingBox, rawValue: "", format, cornerPoints: [] }
}

///|
extern "js" fn DetectedBarcode::to_js_ffi(self : DetectedBarcode) -> JsValue =
  #| (self) => ({
  #|   boundingBox: self.boundingBox,
  #|   rawValue: self.rawValue,
  #|   format: ['aztec', 'code_128', 'code_39', 'code_93', 'codabar', 'data_matrix', 'ean_13', 'ean_8', 'itf', 'pdf417', 'qr_code', 'unknown', 'upc_a', 'upc_e'][self.format],
  #|   cornerPoints: self.cornerPoints
  #| })

///|
/// Convert to JsValue
pub fn DetectedBarcode::to_js(self : DetectedBarcode) -> JsValue {
  DetectedBarcode::to_js_ffi(self)
}

///|
/// FaceDetector interface
pub type FaceDetector

///|
pub extern "js" fn FaceDetector::to_js_value(self : FaceDetector) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to FaceDetector (unchecked)
pub extern "js" fn FaceDetector::from_js_value(v : JsValue) -> FaceDetector =
  #| (v) => v

///|
/// Safely cast JsValue to FaceDetector (checked with instanceof)
pub extern "js" fn FaceDetector::from_js_value_opt(
  v : JsValue,
) -> FaceDetector? =
  #| (v) => (v instanceof FaceDetector) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to FaceDetector (checked with instanceof)
pub extern "js" fn JsValue::as_face_detector(self : JsValue) -> FaceDetector? =
  #| (self) => (self instanceof FaceDetector) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to FaceDetector (unchecked)
pub extern "js" fn JsValue::to_face_detector(self : JsValue) -> FaceDetector =
  #| (self) => self

///|
pub extern "js" fn FaceDetector::new() -> FaceDetector =
  #| () => new FaceDetector()

///|
extern "js" fn FaceDetector::new_with_face_detector_options_ffi(
  face_detector_options : JsValue,
) -> FaceDetector =
  #| (face_detector_options) => new FaceDetector(face_detector_options)

///|
pub fn FaceDetector::new_with_face_detector_options(
  face_detector_options : FaceDetectorOptions,
) -> FaceDetector {
  FaceDetector::new_with_face_detector_options_ffi(
    face_detector_options.to_js(),
  )
}

///|
pub extern "js" fn FaceDetector::detect(
  self : FaceDetector,
  image : ImageBitmapSource,
) -> Promise[Array[DetectedFace]] =
  #| (self, image) => self.detect(image)

///|
pub extern "js" fn FaceDetector::detect_with_canvas_image_source(
  self : FaceDetector,
  image : CanvasImageSource,
) -> Promise[Array[DetectedFace]] =
  #| (self, image) => self.detect(image)

///|
pub extern "js" fn FaceDetector::detect_with_blob(
  self : FaceDetector,
  image : Blob,
) -> Promise[Array[DetectedFace]] =
  #| (self, image) => self.detect(image)

///|
pub extern "js" fn FaceDetector::detect_with_image_data(
  self : FaceDetector,
  image : ImageData,
) -> Promise[Array[DetectedFace]] =
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
/// Cast JsValue to BarcodeDetector (unchecked)
pub extern "js" fn BarcodeDetector::from_js_value(
  v : JsValue,
) -> BarcodeDetector =
  #| (v) => v

///|
/// Safely cast JsValue to BarcodeDetector (checked with instanceof)
pub extern "js" fn BarcodeDetector::from_js_value_opt(
  v : JsValue,
) -> BarcodeDetector? =
  #| (v) => (v instanceof BarcodeDetector) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to BarcodeDetector (checked with instanceof)
pub extern "js" fn JsValue::as_barcode_detector(
  self : JsValue,
) -> BarcodeDetector? =
  #| (self) => (self instanceof BarcodeDetector) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to BarcodeDetector (unchecked)
pub extern "js" fn JsValue::to_barcode_detector(
  self : JsValue,
) -> BarcodeDetector =
  #| (self) => self

///|
pub extern "js" fn BarcodeDetector::new() -> BarcodeDetector =
  #| () => new BarcodeDetector()

///|
extern "js" fn BarcodeDetector::new_with_barcode_detector_options_ffi(
  barcode_detector_options : JsValue,
) -> BarcodeDetector =
  #| (barcode_detector_options) => new BarcodeDetector(barcode_detector_options)

///|
pub fn BarcodeDetector::new_with_barcode_detector_options(
  barcode_detector_options : BarcodeDetectorOptions,
) -> BarcodeDetector {
  BarcodeDetector::new_with_barcode_detector_options_ffi(
    barcode_detector_options.to_js(),
  )
}

///|
pub extern "js" fn BarcodeDetector::get_supported_formats() -> Promise[
  Array[BarcodeFormat],
] =
  #| () => BarcodeDetector.getSupportedFormats()

///|
pub extern "js" fn BarcodeDetector::detect(
  self : BarcodeDetector,
  image : ImageBitmapSource,
) -> Promise[Array[DetectedBarcode]] =
  #| (self, image) => self.detect(image)

///|
pub extern "js" fn BarcodeDetector::detect_with_canvas_image_source(
  self : BarcodeDetector,
  image : CanvasImageSource,
) -> Promise[Array[DetectedBarcode]] =
  #| (self, image) => self.detect(image)

///|
pub extern "js" fn BarcodeDetector::detect_with_blob(
  self : BarcodeDetector,
  image : Blob,
) -> Promise[Array[DetectedBarcode]] =
  #| (self, image) => self.detect(image)

///|
pub extern "js" fn BarcodeDetector::detect_with_image_data(
  self : BarcodeDetector,
  image : ImageData,
) -> Promise[Array[DetectedBarcode]] =
  #| (self, image) => self.detect(image)
