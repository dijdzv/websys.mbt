// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc-ice

///|
/// RTCIceParameters dictionary
pub struct RTCIceParameters {
  iceLite : Bool?
  usernameFragment : String?
  password : String?
}

///|
/// Create a new RTCIceParameters with default values
pub fn RTCIceParameters::default() -> RTCIceParameters {
  RTCIceParameters::{ iceLite: None, usernameFragment: None, password: None }
}

///|
/// Convert to JsValue
pub extern "js" fn RTCIceParameters::to_js(self : RTCIceParameters) -> JsValue =
  #| (self) => ({
  #|   iceLite: self.iceLite,
  #|   usernameFragment: self.usernameFragment,
  #|   password: self.password
  #| })

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
