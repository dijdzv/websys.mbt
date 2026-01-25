// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc-ice

///|
/// RTCIceGatherOptions dictionary
pub struct RTCIceGatherOptions {
  gatherPolicy : RTCIceTransportPolicy?
  iceServers : Array[RTCIceServer]?
}

///|
/// Create a new RTCIceGatherOptions with default values
pub fn RTCIceGatherOptions::default() -> RTCIceGatherOptions {
  RTCIceGatherOptions::{ gatherPolicy: None, iceServers: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCIceGatherOptions::to_js(
  self : RTCIceGatherOptions,
) -> JsValue =
  #| (self) => ({
  #|   gatherPolicy: ['relay', 'all'][self.gatherPolicy],
  #|   iceServers: self.iceServers
  #| })
