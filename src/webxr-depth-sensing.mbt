// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-depth-sensing

///|
/// XRDepthType enum
pub(all) enum XRDepthType {
  Raw
  Smooth
}

///|
/// Convert to string value
pub fn XRDepthType::to_string(self : XRDepthType) -> String {
  match self {
    Raw => "raw"
    Smooth => "smooth"
  }
}

///|
/// Parse from string value
pub fn XRDepthType::from_string(s : String) -> XRDepthType? {
  match s {
    "raw" => Some(Raw)
    "smooth" => Some(Smooth)
    _ => None
  }
}

///|
/// XRDepthUsage enum
pub(all) enum XRDepthUsage {
  CpuOptimized
  GpuOptimized
}

///|
/// Convert to string value
pub fn XRDepthUsage::to_string(self : XRDepthUsage) -> String {
  match self {
    CpuOptimized => "cpu-optimized"
    GpuOptimized => "gpu-optimized"
  }
}

///|
/// Parse from string value
pub fn XRDepthUsage::from_string(s : String) -> XRDepthUsage? {
  match s {
    "cpu-optimized" => Some(CpuOptimized)
    "gpu-optimized" => Some(GpuOptimized)
    _ => None
  }
}

///|
/// XRDepthDataFormat enum
pub(all) enum XRDepthDataFormat {
  LuminanceAlpha
  Float32
  UnsignedShort
}

///|
/// Convert to string value
pub fn XRDepthDataFormat::to_string(self : XRDepthDataFormat) -> String {
  match self {
    LuminanceAlpha => "luminance-alpha"
    Float32 => "float32"
    UnsignedShort => "unsigned-short"
  }
}

///|
/// Parse from string value
pub fn XRDepthDataFormat::from_string(s : String) -> XRDepthDataFormat? {
  match s {
    "luminance-alpha" => Some(LuminanceAlpha)
    "float32" => Some(Float32)
    "unsigned-short" => Some(UnsignedShort)
    _ => None
  }
}

///|
/// XRDepthStateInit dictionary
pub struct XRDepthStateInit {
  usagePreference : Array[XRDepthUsage]
  dataFormatPreference : Array[XRDepthDataFormat]
  depthTypeRequest : Array[XRDepthType]?
  matchDepthView : Bool?
}

///|
/// Create a new XRDepthStateInit with default values
pub fn XRDepthStateInit::default() -> XRDepthStateInit {
  XRDepthStateInit::{
    usagePreference: [],
    dataFormatPreference: [],
    depthTypeRequest: None,
    matchDepthView: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn XRDepthStateInit::to_js(self : XRDepthStateInit) -> JsValue =
  #| (self) => ({
  #|   usagePreference: self.usagePreference,
  #|   dataFormatPreference: self.dataFormatPreference,
  #|   depthTypeRequest: self.depthTypeRequest,
  #|   matchDepthView: self.matchDepthView
  #| })

///|
/// XRSessionInit dictionary
pub struct XRSessionInit {
  depthSensing : XRDepthStateInit?
  domOverlay : Nullable[XRDOMOverlayInit]
  requiredFeatures : Array[String]?
  optionalFeatures : Array[String]?
}

///|
/// Create a new XRSessionInit with default values
pub fn XRSessionInit::default() -> XRSessionInit {
  XRSessionInit::{
    depthSensing: None,
    domOverlay: Nullable::Undefined,
    requiredFeatures: None,
    optionalFeatures: None,
  }
}

///|
/// Convert to JsValue
pub extern "js" fn XRSessionInit::to_js(self : XRSessionInit) -> JsValue =
  #| (self) => ({
  #|   depthSensing: self.depthSensing,
  #|   domOverlay: ((() => { const v = self.domOverlay; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v.$0; })()),
  #|   requiredFeatures: self.requiredFeatures,
  #|   optionalFeatures: self.optionalFeatures
  #| })

///|
/// XRDepthInformation interface
pub type XRDepthInformation

///|
pub extern "js" fn XRDepthInformation::to_js_value(
  self : XRDepthInformation,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XRDepthInformation::get_width(
  self : XRDepthInformation,
) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn XRDepthInformation::get_height(
  self : XRDepthInformation,
) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn XRDepthInformation::get_norm_depth_buffer_from_norm_view(
  self : XRDepthInformation,
) -> XRRigidTransform =
  #| (self) => self.normDepthBufferFromNormView

///|
pub extern "js" fn XRDepthInformation::get_raw_value_to_meters(
  self : XRDepthInformation,
) -> Double =
  #| (self) => self.rawValueToMeters

///|
pub extern "js" fn XRDepthInformation::get_projection_matrix(
  self : XRDepthInformation,
) -> Float32Array =
  #| (self) => self.projectionMatrix

///|
pub extern "js" fn XRDepthInformation::get_transform(
  self : XRDepthInformation,
) -> XRRigidTransform =
  #| (self) => self.transform

///|
/// XRCPUDepthInformation interface
pub type XRCPUDepthInformation

///|
pub extern "js" fn XRCPUDepthInformation::to_js_value(
  self : XRCPUDepthInformation,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XRCPUDepthInformation::get_width(
  self : XRCPUDepthInformation,
) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn XRCPUDepthInformation::get_height(
  self : XRCPUDepthInformation,
) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn XRCPUDepthInformation::get_norm_depth_buffer_from_norm_view(
  self : XRCPUDepthInformation,
) -> XRRigidTransform =
  #| (self) => self.normDepthBufferFromNormView

///|
pub extern "js" fn XRCPUDepthInformation::get_raw_value_to_meters(
  self : XRCPUDepthInformation,
) -> Double =
  #| (self) => self.rawValueToMeters

///|
pub extern "js" fn XRCPUDepthInformation::get_projection_matrix(
  self : XRCPUDepthInformation,
) -> Float32Array =
  #| (self) => self.projectionMatrix

///|
pub extern "js" fn XRCPUDepthInformation::get_transform(
  self : XRCPUDepthInformation,
) -> XRRigidTransform =
  #| (self) => self.transform

///|
pub extern "js" fn XRCPUDepthInformation::get_data(
  self : XRCPUDepthInformation,
) -> ArrayBuffer =
  #| (self) => self.data

///|
pub extern "js" fn XRCPUDepthInformation::get_depth_in_meters(
  self : XRCPUDepthInformation,
  x : Double,
  y : Double,
) -> Double =
  #| (self, x, y) => self.getDepthInMeters(x, y)

///|
/// XRWebGLDepthInformation interface
pub type XRWebGLDepthInformation

///|
pub extern "js" fn XRWebGLDepthInformation::to_js_value(
  self : XRWebGLDepthInformation,
) -> JsValue =
  #| (self) => self

///|
pub extern "js" fn XRWebGLDepthInformation::get_width(
  self : XRWebGLDepthInformation,
) -> Int =
  #| (self) => self.width

///|
pub extern "js" fn XRWebGLDepthInformation::get_height(
  self : XRWebGLDepthInformation,
) -> Int =
  #| (self) => self.height

///|
pub extern "js" fn XRWebGLDepthInformation::get_norm_depth_buffer_from_norm_view(
  self : XRWebGLDepthInformation,
) -> XRRigidTransform =
  #| (self) => self.normDepthBufferFromNormView

///|
pub extern "js" fn XRWebGLDepthInformation::get_raw_value_to_meters(
  self : XRWebGLDepthInformation,
) -> Double =
  #| (self) => self.rawValueToMeters

///|
pub extern "js" fn XRWebGLDepthInformation::get_projection_matrix(
  self : XRWebGLDepthInformation,
) -> Float32Array =
  #| (self) => self.projectionMatrix

///|
pub extern "js" fn XRWebGLDepthInformation::get_transform(
  self : XRWebGLDepthInformation,
) -> XRRigidTransform =
  #| (self) => self.transform

///|
pub extern "js" fn XRWebGLDepthInformation::get_texture(
  self : XRWebGLDepthInformation,
) -> WebGLTexture =
  #| (self) => self.texture

///|
pub extern "js" fn XRWebGLDepthInformation::get_texture_type(
  self : XRWebGLDepthInformation,
) -> XRTextureType =
  #| (self) => self.textureType

///|
pub extern "js" fn XRWebGLDepthInformation::get_image_index(
  self : XRWebGLDepthInformation,
) -> Int? =
  #| (self) => self.imageIndex
