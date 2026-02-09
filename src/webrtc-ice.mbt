// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc-ice

///|
/// RTCIceGatherOptions dictionary
pub(all) struct RTCIceGatherOptions {
  gatherPolicy : RTCIceTransportPolicy?
  iceServers : Array[RTCIceServer]?
}

///|
/// Create a new RTCIceGatherOptions with default values
pub fn RTCIceGatherOptions::default() -> RTCIceGatherOptions {
  RTCIceGatherOptions::{ gatherPolicy: None, iceServers: None }
}

///|
extern "js" fn RTCIceGatherOptions::to_js_ffi(
  self : RTCIceGatherOptions,
) -> JsValue =
  #| (self) => ({
  #|   gatherPolicy: ((() => { const v = self.gatherPolicy; if (v === undefined) return undefined; return ['relay', 'all'][v]; })()),
  #|   iceServers: ((() => { const v = self.iceServers; if (v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RTCIceGatherOptions::to_js(self : RTCIceGatherOptions) -> JsValue {
  RTCIceGatherOptions::to_js_ffi(self)
}
