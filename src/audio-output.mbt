// Generated from WebIDL - DO NOT EDIT
// Source: @webref/idl/audio-output

///|
/// AudioOutputOptions dictionary
pub(all) struct AudioOutputOptions {
  deviceId : String?
}

///|
/// Create a new AudioOutputOptions with default values
pub fn AudioOutputOptions::default() -> AudioOutputOptions {
  AudioOutputOptions::{ deviceId: None }
}

///|
extern "js" fn AudioOutputOptions::to_js_ffi(
  self : AudioOutputOptions,
) -> JsValue =
  #| (self) => ({
  #|   deviceId: self.deviceId
  #| })

///|
/// Convert to JsValue
pub fn AudioOutputOptions::to_js(self : AudioOutputOptions) -> JsValue {
  AudioOutputOptions::to_js_ffi(self)
}

///|
extern "js" fn AudioOutputOptions::from_js_ffi(
  value : JsValue,
) -> AudioOutputOptions =
  #| (v) => ({
  #|   deviceId: v.deviceId
  #| })

///|
/// Convert from JsValue
pub fn AudioOutputOptions::from_js(value : JsValue) -> AudioOutputOptions {
  AudioOutputOptions::from_js_ffi(value)
}
