// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/mst-content-hint

///|
/// RTCDegradationPreference enum
pub(all) enum RTCDegradationPreference {
  MaintainFramerate
  MaintainResolution
  Balanced
  MaintainFramerateAndResolution
}

///|
/// Convert to string value
pub fn RTCDegradationPreference::to_string(
  self : RTCDegradationPreference,
) -> String {
  match self {
    MaintainFramerate => "maintain-framerate"
    MaintainResolution => "maintain-resolution"
    Balanced => "balanced"
    MaintainFramerateAndResolution => "maintain-framerate-and-resolution"
  }
}

///|
/// Parse from string value
pub fn RTCDegradationPreference::from_string(
  s : String,
) -> RTCDegradationPreference? {
  match s {
    "maintain-framerate" => Some(MaintainFramerate)
    "maintain-resolution" => Some(MaintainResolution)
    "balanced" => Some(Balanced)
    "maintain-framerate-and-resolution" => Some(MaintainFramerateAndResolution)
    _ => None
  }
}

///|
/// RTCRtpSendParameters dictionary
pub struct RTCRtpSendParameters {
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
/// Convert to JsValue
pub extern "js" fn RTCRtpSendParameters::to_js(
  self : RTCRtpSendParameters,
) -> JsValue =
  #| (self) => ({
  #|   degradationPreference: ['maintain-framerate', 'maintain-resolution', 'balanced', 'maintain-framerate-and-resolution'][self.degradationPreference],
  #|   transactionId: self.transactionId,
  #|   encodings: self.encodings
  #| })
