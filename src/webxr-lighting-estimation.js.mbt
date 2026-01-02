// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-lighting-estimation

///|
/// XRReflectionFormat enum
pub(all) enum XRReflectionFormat {
  Srgba8
  Rgba16f
}

/// Convert to string value
pub fn XRReflectionFormat::to_string(self : XRReflectionFormat) -> String {
  match self {
    Srgba8 => "srgba8"
    Rgba16f => "rgba16f"
  }
}

/// Parse from string value
pub fn XRReflectionFormat::from_string(s : String) -> XRReflectionFormat? {
  match s {
    "srgba8" => Some(Srgba8)
    "rgba16f" => Some(Rgba16f)
    _ => None
  }
}

///|
/// XRLightProbeInit dictionary
pub struct XRLightProbeInit {
  reflectionFormat : XRReflectionFormat?
}

/// Create a new XRLightProbeInit with default values
pub fn XRLightProbeInit::default() -> XRLightProbeInit {
  XRLightProbeInit::{
    reflectionFormat: None,
  }
}

/// Convert to JsValue
pub extern "js" fn XRLightProbeInit::to_js(self : XRLightProbeInit) -> JsValue =
  #| (self) => ({
  #|   reflectionFormat: self.reflectionFormat
  #| })

///|
/// XRLightProbe interface
pub type XRLightProbe

pub extern "js" fn XRLightProbe::to_js_value(self : XRLightProbe) -> JsValue =
  #| (self) => self

pub extern "js" fn XRLightProbe::get_probe_space(self : XRLightProbe) -> XRSpace =
  #| (self) => self.probeSpace

pub extern "js" fn XRLightProbe::get_onreflectionchange(self : XRLightProbe) -> EventHandler =
  #| (self) => self.onreflectionchange

pub extern "js" fn XRLightProbe::set_onreflectionchange(self : XRLightProbe, value : EventHandler) -> Unit =
  #| (self, value) => { self.onreflectionchange = value }

///|
/// XRLightEstimate interface
pub type XRLightEstimate

pub extern "js" fn XRLightEstimate::to_js_value(self : XRLightEstimate) -> JsValue =
  #| (self) => self

pub extern "js" fn XRLightEstimate::get_spherical_harmonics_coefficients(self : XRLightEstimate) -> Float32Array =
  #| (self) => self.sphericalHarmonicsCoefficients

pub extern "js" fn XRLightEstimate::get_primary_light_direction(self : XRLightEstimate) -> DOMPointReadOnly =
  #| (self) => self.primaryLightDirection

pub extern "js" fn XRLightEstimate::get_primary_light_intensity(self : XRLightEstimate) -> DOMPointReadOnly =
  #| (self) => self.primaryLightIntensity

