// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mst-content-hint

///|
/// RTCDegradationPreference enum
pub(all) enum RTCDegradationPreference {
  MaintainFramerate
  MaintainResolution
  Balanced
  MaintainFramerateAndResolution
} derive(Eq, Show)

///|
/// Convert to string value
pub fn RTCDegradationPreference::to_string(
  self : RTCDegradationPreference,
) -> String {
  match self {
    RTCDegradationPreference::MaintainFramerate => "maintain-framerate"
    RTCDegradationPreference::MaintainResolution => "maintain-resolution"
    RTCDegradationPreference::Balanced => "balanced"
    RTCDegradationPreference::MaintainFramerateAndResolution =>
      "maintain-framerate-and-resolution"
  }
}

///|
/// Parse from string value
pub fn RTCDegradationPreference::from_string(
  s : String,
) -> RTCDegradationPreference? {
  match s {
    "maintain-framerate" => Some(RTCDegradationPreference::MaintainFramerate)
    "maintain-resolution" => Some(RTCDegradationPreference::MaintainResolution)
    "balanced" => Some(RTCDegradationPreference::Balanced)
    "maintain-framerate-and-resolution" =>
      Some(RTCDegradationPreference::MaintainFramerateAndResolution)
    _ => None
  }
}

///|
/// RTCRtpSendParameters dictionary
pub(all) struct RTCRtpSendParameters {
  degradationPreference : RTCDegradationPreference?
  transactionId : String
  encodings : Array[RTCRtpEncodingParameters]
}

///|
/// Create a new RTCRtpSendParameters with default values
pub fn RTCRtpSendParameters::default() -> RTCRtpSendParameters {
  RTCRtpSendParameters::{
    degradationPreference: None,
    transactionId: "",
    encodings: [],
  }
}

///|
extern "js" fn RTCRtpSendParameters::to_js_ffi(
  self : RTCRtpSendParameters,
) -> JsValue =
  #| (self) => ({
  #|   degradationPreference: ((() => { const v = self.degradationPreference; if (v === undefined) return undefined; return ['maintain-framerate', 'maintain-resolution', 'balanced', 'maintain-framerate-and-resolution'][v]; })()),
  #|   transactionId: self.transactionId,
  #|   encodings: self.encodings
  #| })

///|
/// Convert to JsValue
pub fn RTCRtpSendParameters::to_js(self : RTCRtpSendParameters) -> JsValue {
  RTCRtpSendParameters::to_js_ffi(self)
}

///|
extern "js" fn RTCRtpSendParameters::from_js_ffi(
  value : JsValue,
) -> RTCRtpSendParameters =
  #| (v) => ({
  #|   degradationPreference: (v.degradationPreference === undefined ? undefined : ['maintain-framerate', 'maintain-resolution', 'balanced', 'maintain-framerate-and-resolution'].indexOf(v.degradationPreference)),
  #|   transactionId: v.transactionId,
  #|   encodings: v.encodings
  #| })

///|
/// Convert from JsValue
pub fn RTCRtpSendParameters::from_js(value : JsValue) -> RTCRtpSendParameters {
  RTCRtpSendParameters::from_js_ffi(value)
}
