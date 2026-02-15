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
  #|   iceServers: ((() => { const v = self.iceServers; if (v === undefined || v.$tag !== 1) return undefined; return v._0; })())
  #| })

///|
/// Convert to JsValue
pub fn RTCIceGatherOptions::to_js(self : RTCIceGatherOptions) -> JsValue {
  RTCIceGatherOptions::to_js_ffi(self)
}

///|
extern "js" fn RTCIceGatherOptions::from_js_ffi(
  value : JsValue,
) -> RTCIceGatherOptions =
  #| (v) => ({
  #|   gatherPolicy: (v.gatherPolicy === undefined ? undefined : ['relay', 'all'].indexOf(v.gatherPolicy)),
  #|   iceServers: (v.iceServers === undefined ? { $tag: 0 } : { $tag: 1, _0: v.iceServers })
  #| })

///|
/// Convert from JsValue
pub fn RTCIceGatherOptions::from_js(value : JsValue) -> RTCIceGatherOptions {
  RTCIceGatherOptions::from_js_ffi(value)
}
