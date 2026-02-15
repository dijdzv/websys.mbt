// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/webrtc-ice

///|
/// RTCIceParameters dictionary
pub(all) struct RTCIceParameters {
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
extern "js" fn RTCIceParameters::to_js_ffi(self : RTCIceParameters) -> JsValue =
  #| (self) => ({
  #|   iceLite: (self.iceLite === -1 ? undefined : self.iceLite),
  #|   usernameFragment: self.usernameFragment,
  #|   password: self.password
  #| })

///|
/// Convert to JsValue
pub fn RTCIceParameters::to_js(self : RTCIceParameters) -> JsValue {
  RTCIceParameters::to_js_ffi(self)
}

///|
extern "js" fn RTCIceParameters::from_js_ffi(
  value : JsValue,
) -> RTCIceParameters =
  #| (v) => ({
  #|   iceLite: (v.iceLite === undefined ? -1 : v.iceLite),
  #|   usernameFragment: v.usernameFragment,
  #|   password: v.password
  #| })

///|
/// Convert from JsValue
pub fn RTCIceParameters::from_js(value : JsValue) -> RTCIceParameters {
  RTCIceParameters::from_js_ffi(value)
}

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
