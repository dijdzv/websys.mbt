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
