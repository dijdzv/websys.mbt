// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-depth-sensing

///|
/// XRDepthType enum
pub(all) enum XRDepthType {
  Raw
  Smooth
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XRDepthType::to_string(self : XRDepthType) -> String {
  match self {
    XRDepthType::Raw => "raw"
    XRDepthType::Smooth => "smooth"
  }
}

///|
/// Parse from string value
pub fn XRDepthType::from_string(s : String) -> XRDepthType? {
  match s {
    "raw" => Some(XRDepthType::Raw)
    "smooth" => Some(XRDepthType::Smooth)
    _ => None
  }
}

///|
/// XRDepthUsage enum
pub(all) enum XRDepthUsage {
  CpuOptimized
  GpuOptimized
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XRDepthUsage::to_string(self : XRDepthUsage) -> String {
  match self {
    XRDepthUsage::CpuOptimized => "cpu-optimized"
    XRDepthUsage::GpuOptimized => "gpu-optimized"
  }
}

///|
/// Parse from string value
pub fn XRDepthUsage::from_string(s : String) -> XRDepthUsage? {
  match s {
    "cpu-optimized" => Some(XRDepthUsage::CpuOptimized)
    "gpu-optimized" => Some(XRDepthUsage::GpuOptimized)
    _ => None
  }
}

///|
/// XRDepthDataFormat enum
pub(all) enum XRDepthDataFormat {
  LuminanceAlpha
  Float32
  UnsignedShort
} derive(Eq, Show)

///|
/// Convert to string value
pub fn XRDepthDataFormat::to_string(self : XRDepthDataFormat) -> String {
  match self {
    XRDepthDataFormat::LuminanceAlpha => "luminance-alpha"
    XRDepthDataFormat::Float32 => "float32"
    XRDepthDataFormat::UnsignedShort => "unsigned-short"
  }
}

///|
/// Parse from string value
pub fn XRDepthDataFormat::from_string(s : String) -> XRDepthDataFormat? {
  match s {
    "luminance-alpha" => Some(XRDepthDataFormat::LuminanceAlpha)
    "float32" => Some(XRDepthDataFormat::Float32)
    "unsigned-short" => Some(XRDepthDataFormat::UnsignedShort)
    _ => None
  }
}

///|
/// XRDepthStateInit dictionary
pub(all) struct XRDepthStateInit {
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
extern "js" fn XRDepthStateInit::to_js_ffi(self : XRDepthStateInit) -> JsValue =
  #| (self) => ({
  #|   usagePreference: self.usagePreference,
  #|   dataFormatPreference: self.dataFormatPreference,
  #|   depthTypeRequest: ((() => { const v = self.depthTypeRequest; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   matchDepthView: (self.matchDepthView === -1 ? undefined : self.matchDepthView)
  #| })

///|
/// Convert to JsValue
pub fn XRDepthStateInit::to_js(self : XRDepthStateInit) -> JsValue {
  XRDepthStateInit::to_js_ffi(self)
}

///|
extern "js" fn XRDepthStateInit::from_js_ffi(
  value : JsValue,
) -> XRDepthStateInit =
  #| (v) => ({
  #|   usagePreference: v.usagePreference,
  #|   dataFormatPreference: v.dataFormatPreference,
  #|   depthTypeRequest: (v.depthTypeRequest === undefined ? { $tag: 0 } : { $tag: 1, _0: v.depthTypeRequest }),
  #|   matchDepthView: (v.matchDepthView === undefined ? -1 : v.matchDepthView)
  #| })

///|
/// Convert from JsValue
pub fn XRDepthStateInit::from_js(value : JsValue) -> XRDepthStateInit {
  XRDepthStateInit::from_js_ffi(value)
}

///|
/// XRSessionInit dictionary
pub(all) struct XRSessionInit {
  depthSensing : XRDepthStateInit?
  requiredFeatures : Array[String]?
  optionalFeatures : Array[String]?
  domOverlay : Nullable[XRDOMOverlayInit]
}

///|
/// Create a new XRSessionInit with default values
pub fn XRSessionInit::default() -> XRSessionInit {
  XRSessionInit::{
    depthSensing: None,
    requiredFeatures: None,
    optionalFeatures: None,
    domOverlay: Nullable::Undefined,
  }
}

///|
extern "js" fn XRSessionInit::to_js_ffi(self : XRSessionInit) -> JsValue =
  #| (self) => ({
  #|   depthSensing: ((() => { const v = self.depthSensing; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   requiredFeatures: ((() => { const v = self.requiredFeatures; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   optionalFeatures: ((() => { const v = self.optionalFeatures; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })()),
  #|   domOverlay: ((() => { const v = self.domOverlay; if (v.$tag === 0) return undefined; if (v.$tag === 1) return null; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn XRSessionInit::to_js(self : XRSessionInit) -> JsValue {
  XRSessionInit::to_js_ffi(self)
}

///|
extern "js" fn XRSessionInit::from_js_ffi(value : JsValue) -> XRSessionInit =
  #| (v) => ({
  #|   depthSensing: (v.depthSensing === undefined ? { $tag: 0 } : { $tag: 1, _0: v.depthSensing }),
  #|   requiredFeatures: (v.requiredFeatures === undefined ? { $tag: 0 } : { $tag: 1, _0: v.requiredFeatures }),
  #|   optionalFeatures: (v.optionalFeatures === undefined ? { $tag: 0 } : { $tag: 1, _0: v.optionalFeatures }),
  #|   domOverlay: (v.domOverlay === undefined ? { $tag: 0 } : v.domOverlay === null ? { $tag: 1 } : { $tag: 2, _0: v.domOverlay })
  #| })

///|
/// Convert from JsValue
pub fn XRSessionInit::from_js(value : JsValue) -> XRSessionInit {
  XRSessionInit::from_js_ffi(value)
}

///|
/// XRDepthInformation interface
pub type XRDepthInformation

///|
pub extern "js" fn XRDepthInformation::to_js_value(
  self : XRDepthInformation,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRDepthInformation (unchecked)
pub extern "js" fn XRDepthInformation::from_js_value(
  v : JsValue,
) -> XRDepthInformation =
  #| (v) => v

///|
/// Safely cast JsValue to XRDepthInformation (checked with instanceof)
pub extern "js" fn XRDepthInformation::from_js_value_opt(
  v : JsValue,
) -> XRDepthInformation? =
  #| (v) => (v instanceof XRDepthInformation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRDepthInformation (checked with instanceof)
pub extern "js" fn JsValue::as_xr_depth_information(
  self : JsValue,
) -> XRDepthInformation? =
  #| (self) => (self instanceof XRDepthInformation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRDepthInformation (unchecked)
pub extern "js" fn JsValue::to_xr_depth_information(
  self : JsValue,
) -> XRDepthInformation =
  #| (self) => self

///|
pub extern "js" fn XRDepthInformation::as_xrcpu_depth_information(
  self : XRDepthInformation,
) -> XRCPUDepthInformation? =
  #| (self) => (self instanceof XRCPUDepthInformation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
pub extern "js" fn XRDepthInformation::as_xr_web_gl_depth_information(
  self : XRDepthInformation,
) -> XRWebGLDepthInformation? =
  #| (self) => (self instanceof XRWebGLDepthInformation) ? { $tag: 1, _0: self } : { $tag: 0 }

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
/// Cast JsValue to XRCPUDepthInformation (unchecked)
pub extern "js" fn XRCPUDepthInformation::from_js_value(
  v : JsValue,
) -> XRCPUDepthInformation =
  #| (v) => v

///|
/// Safely cast JsValue to XRCPUDepthInformation (checked with instanceof)
pub extern "js" fn XRCPUDepthInformation::from_js_value_opt(
  v : JsValue,
) -> XRCPUDepthInformation? =
  #| (v) => (v instanceof XRCPUDepthInformation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRCPUDepthInformation (checked with instanceof)
pub extern "js" fn JsValue::as_xrcpu_depth_information(
  self : JsValue,
) -> XRCPUDepthInformation? =
  #| (self) => (self instanceof XRCPUDepthInformation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRCPUDepthInformation (unchecked)
pub extern "js" fn JsValue::to_xrcpu_depth_information(
  self : JsValue,
) -> XRCPUDepthInformation =
  #| (self) => self

///|
pub extern "js" fn XRCPUDepthInformation::to_xr_depth_information(
  self : XRCPUDepthInformation,
) -> XRDepthInformation =
  #| (self) => self

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
/// Cast JsValue to XRWebGLDepthInformation (unchecked)
pub extern "js" fn XRWebGLDepthInformation::from_js_value(
  v : JsValue,
) -> XRWebGLDepthInformation =
  #| (v) => v

///|
/// Safely cast JsValue to XRWebGLDepthInformation (checked with instanceof)
pub extern "js" fn XRWebGLDepthInformation::from_js_value_opt(
  v : JsValue,
) -> XRWebGLDepthInformation? =
  #| (v) => (v instanceof XRWebGLDepthInformation) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRWebGLDepthInformation (checked with instanceof)
pub extern "js" fn JsValue::as_xr_web_gl_depth_information(
  self : JsValue,
) -> XRWebGLDepthInformation? =
  #| (self) => (self instanceof XRWebGLDepthInformation) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRWebGLDepthInformation (unchecked)
pub extern "js" fn JsValue::to_xr_web_gl_depth_information(
  self : JsValue,
) -> XRWebGLDepthInformation =
  #| (self) => self

///|
pub extern "js" fn XRWebGLDepthInformation::to_xr_depth_information(
  self : XRWebGLDepthInformation,
) -> XRDepthInformation =
  #| (self) => self

///|
pub extern "js" fn XRWebGLDepthInformation::get_texture(
  self : XRWebGLDepthInformation,
) -> WebGLTexture =
  #| (self) => self.texture

///|
pub extern "js" fn XRWebGLDepthInformation::get_texture_type(
  self : XRWebGLDepthInformation,
) -> XRTextureType =
  #| (self) => ['texture', 'texture-array'].indexOf(self.textureType)

///|
pub extern "js" fn XRWebGLDepthInformation::get_image_index(
  self : XRWebGLDepthInformation,
) -> Int? =
  #| (self) => (self.imageIndex) ?? undefined
