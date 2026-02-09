// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webxr-lighting-estimation

///|
/// XRReflectionFormat enum
pub(all) enum XRReflectionFormat {
  Srgba8
  Rgba16f
}

///|
/// Convert to string value
pub fn XRReflectionFormat::to_string(self : XRReflectionFormat) -> String {
  match self {
    XRReflectionFormat::Srgba8 => "srgba8"
    XRReflectionFormat::Rgba16f => "rgba16f"
  }
}

///|
/// Parse from string value
pub fn XRReflectionFormat::from_string(s : String) -> XRReflectionFormat? {
  match s {
    "srgba8" => Some(XRReflectionFormat::Srgba8)
    "rgba16f" => Some(XRReflectionFormat::Rgba16f)
    _ => None
  }
}

///|
/// XRLightProbeInit dictionary
pub(all) struct XRLightProbeInit {
  reflectionFormat : XRReflectionFormat?
}

///|
/// Create a new XRLightProbeInit with default values
pub fn XRLightProbeInit::default() -> XRLightProbeInit {
  XRLightProbeInit::{ reflectionFormat: None }
}

///|
extern "js" fn XRLightProbeInit::to_js_ffi(self : XRLightProbeInit) -> JsValue =
  #| (self) => ({
  #|   reflectionFormat: ((() => { const v = self.reflectionFormat; if (v === undefined) return undefined; return ['srgba8', 'rgba16f'][v]; })())
  #| })

///|
/// Convert to JsValue
pub fn XRLightProbeInit::to_js(self : XRLightProbeInit) -> JsValue {
  XRLightProbeInit::to_js_ffi(self)
}

///|
/// XRLightProbe interface
pub type XRLightProbe

///|
pub extern "js" fn XRLightProbe::to_js_value(self : XRLightProbe) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRLightProbe (unchecked)
pub extern "js" fn XRLightProbe::from_js_value(v : JsValue) -> XRLightProbe =
  #| (v) => v

///|
/// Safely cast JsValue to XRLightProbe (checked with instanceof)
pub extern "js" fn XRLightProbe::from_js_value_opt(
  v : JsValue,
) -> XRLightProbe? =
  #| (v) => (v instanceof XRLightProbe) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRLightProbe (checked with instanceof)
pub extern "js" fn JsValue::as_xr_light_probe(self : JsValue) -> XRLightProbe? =
  #| (self) => (self instanceof XRLightProbe) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRLightProbe (unchecked)
pub extern "js" fn JsValue::to_xr_light_probe(self : JsValue) -> XRLightProbe =
  #| (self) => self

///|
pub extern "js" fn XRLightProbe::to_event_target(
  self : XRLightProbe,
) -> EventTarget =
  #| (self) => self

///|
pub extern "js" fn XRLightProbe::get_probe_space(
  self : XRLightProbe,
) -> XRSpace =
  #| (self) => self.probeSpace

///|
pub extern "js" fn XRLightProbe::get_onreflectionchange(
  self : XRLightProbe,
) -> EventHandler =
  #| (self) => self.onreflectionchange

///|
pub extern "js" fn XRLightProbe::set_onreflectionchange(
  self : XRLightProbe,
  value : EventHandler,
) -> Unit =
  #| (self, value) => { self.onreflectionchange = value }

///|
/// XRLightEstimate interface
pub type XRLightEstimate

///|
pub extern "js" fn XRLightEstimate::to_js_value(
  self : XRLightEstimate,
) -> JsValue =
  #| (self) => self

///|
/// Cast JsValue to XRLightEstimate (unchecked)
pub extern "js" fn XRLightEstimate::from_js_value(
  v : JsValue,
) -> XRLightEstimate =
  #| (v) => v

///|
/// Safely cast JsValue to XRLightEstimate (checked with instanceof)
pub extern "js" fn XRLightEstimate::from_js_value_opt(
  v : JsValue,
) -> XRLightEstimate? =
  #| (v) => (v instanceof XRLightEstimate) ? { $tag: 1, _0: v } : { $tag: 0 }

///|
/// Safely cast JsValue to XRLightEstimate (checked with instanceof)
pub extern "js" fn JsValue::as_xr_light_estimate(
  self : JsValue,
) -> XRLightEstimate? =
  #| (self) => (self instanceof XRLightEstimate) ? { $tag: 1, _0: self } : { $tag: 0 }

///|
/// Cast JsValue to XRLightEstimate (unchecked)
pub extern "js" fn JsValue::to_xr_light_estimate(
  self : JsValue,
) -> XRLightEstimate =
  #| (self) => self

///|
pub extern "js" fn XRLightEstimate::get_spherical_harmonics_coefficients(
  self : XRLightEstimate,
) -> Float32Array =
  #| (self) => self.sphericalHarmonicsCoefficients

///|
pub extern "js" fn XRLightEstimate::get_primary_light_direction(
  self : XRLightEstimate,
) -> DOMPointReadOnly =
  #| (self) => self.primaryLightDirection

///|
pub extern "js" fn XRLightEstimate::get_primary_light_intensity(
  self : XRLightEstimate,
) -> DOMPointReadOnly =
  #| (self) => self.primaryLightIntensity
